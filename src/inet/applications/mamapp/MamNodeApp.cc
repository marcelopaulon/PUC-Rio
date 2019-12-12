//
// Copyright (C) 2000 Institut fuer Telematik, Universitaet Karlsruhe
// Copyright (C) 2004,2011 Andras Varga
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public License
// along with this program; if not, see <http://www.gnu.org/licenses/>.
//

#include <string.h>

#include "inet/applications/base/ApplicationPacket_m.h"
#include "inet/applications/mamapp/MamNodeApp.h"
#include "inet/common/ModuleAccess.h"
#include "inet/common/TagBase_m.h"
#include "inet/common/TimeTag_m.h"
#include "inet/common/lifecycle/ModuleOperations.h"
#include "inet/common/packet/Packet.h"
#include "inet/networklayer/common/FragmentationTag_m.h"
#include "inet/networklayer/common/L3AddressResolver.h"
#include "inet/networklayer/common/L3AddressTag_m.h"
#include "inet/transportlayer/contract/udp/UdpControlInfo_m.h"

namespace inet {

Define_Module(MamNodeApp);

MamNodeApp::~MamNodeApp()
{
    cancelAndDelete(selfMsg);
}

void MamNodeApp::initialize(int stage)
{
    ApplicationBase::initialize(stage);

    if (stage == INITSTAGE_LOCAL) {
        numSent = 0;
        numReceived = 0;
        WATCH(numSent);
        WATCH(numReceived);

        localPort = par("localPort");
        destPort = par("destPort");
        startTime = par("startTime");
        stopTime = par("stopTime");
        packetName = par("packetName");
        dontFragment = par("dontFragment");
        if (stopTime >= SIMTIME_ZERO && stopTime < startTime)
            throw cRuntimeError("Invalid startTime/stopTime parameters");
        selfMsg = new cMessage("sendTimer");
    }
}

void MamNodeApp::finish()
{
    recordScalar("packets sent", numSent);
    recordScalar("packets received", numReceived);
    ApplicationBase::finish();
}

void MamNodeApp::setSocketOptions()
{
    int timeToLive = par("timeToLive");
    if (timeToLive != -1)
        socket.setTimeToLive(timeToLive);

    int typeOfService = par("typeOfService");
    if (typeOfService != -1)
        socket.setTypeOfService(typeOfService);

    const char *multicastInterface = par("multicastInterface");
    if (multicastInterface[0]) {
        IInterfaceTable *ift = getModuleFromPar<IInterfaceTable>(par("interfaceTableModule"), this);
        InterfaceEntry *ie = ift->getInterfaceByName(multicastInterface);
        if (!ie)
            throw cRuntimeError("Wrong multicastInterface setting: no interface named \"%s\"", multicastInterface);
        socket.setMulticastOutputInterface(ie->getInterfaceId());
    }

    socket.setBroadcast(true); // Used for receiving the discovery messages

    bool joinLocalMulticastGroups = par("joinLocalMulticastGroups");
    if (joinLocalMulticastGroups) {
        MulticastGroupList mgl = getModuleFromPar<IInterfaceTable>(par("interfaceTableModule"), this)->collectMulticastGroups();
        socket.joinLocalMulticastGroups(mgl);
    }
    socket.setCallback(this);
}

L3Address MamNodeApp::chooseDestAddr()
{
    int k = intrand(destAddresses.size());
    if (destAddresses[k].isUnspecified() || destAddresses[k].isLinkLocal()) {
        L3AddressResolver().tryResolve(destAddressStr[k].c_str(), destAddresses[k]);
    }
    return destAddresses[k];
}

void MamNodeApp::sendPacket()
{
    std::ostringstream str;
    str << packetName << "-" << numSent;
    Packet *packet = new Packet(str.str().c_str());
    if(dontFragment)
        packet->addTagIfAbsent<FragmentationReq>()->setDontFragment(true);
    const auto& payload = makeShared<ApplicationPacket>();
    payload->setChunkLength(B(par("messageLength")));
    payload->setSequenceNumber(numSent);
    payload->addTag<CreationTimeTag>()->setCreationTime(simTime());
    packet->insertAtBack(payload);
    L3Address destAddr = chooseDestAddr();
    emit(packetSentSignal, packet);
    socket.sendTo(packet, destAddr, destPort);
    numSent++;
}

void MamNodeApp::processStart()
{
    socket.setOutputGate(gate("socketOut"));
    const char *localAddress = par("localAddress");
    socket.bind(*localAddress ? L3AddressResolver().resolve(localAddress) : L3Address(), localPort);
    setSocketOptions();

    const char *destAddrs = par("destAddresses");
    cStringTokenizer tokenizer(destAddrs);
    const char *token;

    while ((token = tokenizer.nextToken()) != nullptr) {
        destAddressStr.push_back(token);
        L3Address result;
        L3AddressResolver().tryResolve(token, result);
        if (result.isUnspecified())
            EV_ERROR << "cannot resolve destination address: " << token << endl;
        destAddresses.push_back(result);
    }

    if (!destAddresses.empty()) {
        selfMsg->setKind(SEND);
        processSend();
    }
    else {
        if (stopTime >= SIMTIME_ZERO) {
            selfMsg->setKind(STOP);
            scheduleAt(stopTime, selfMsg);
        }
    }
}

void MamNodeApp::processSend()
{
    //sendPacket();
    simtime_t d = simTime() + par("sendInterval");
    if (stopTime < SIMTIME_ZERO || d < stopTime) {
        selfMsg->setKind(SEND);
        scheduleAt(d, selfMsg);
    }
    else {
        selfMsg->setKind(STOP);
        scheduleAt(stopTime, selfMsg);
    }
}

void MamNodeApp::processStop()
{
    socket.close();
}

void MamNodeApp::handleMessageWhenUp(cMessage *msg)
{
    if (msg->isSelfMessage()) {
        ASSERT(msg == selfMsg);
        switch (selfMsg->getKind()) {
            case START:
                processStart();
                break;

            case SEND:
                processSend();
                break;

            case STOP:
                processStop();
                break;

            default:
                throw cRuntimeError("Invalid kind %d in self message", (int)selfMsg->getKind());
        }
    }
    else {
        if (strcmp(msg->getName(), "FOUND_MOBILE_SINK") == 0) {
            EV_ERROR << "RECEIVED FOUND MOBILE SINK MESSAGE " << endl;

            auto packet = check_and_cast<Packet *>(msg);

            auto l3Addresses = packet->getTag<L3AddressInd>();
            L3Address srcAddr = l3Addresses->getSrcAddress();

            processFoundMobileSink(srcAddr);
            delete msg;
        }
        else if (strcmp(msg->getName(), "DISCONNECTED_MOBILE_SINK") == 0) {
            EV_ERROR << "RECEIVED DISCONNECTED_MOBILE_SINK MESSAGE " << endl;
            auto packet = check_and_cast<Packet *>(msg);

            auto l3Addresses = packet->getTag<L3AddressInd>();
            L3Address srcAddr = l3Addresses->getSrcAddress();

            // If the src is the mobile sink currently connected to
            if (srcAddr == mobileSink) {
                L3Address empty;
                mobileSink = empty;
            }

            broadcastSimpleMessage("DISCONNECTED_MOBILE_SINK");
            delete msg;
        }
        else if (strcmp(msg->getName(), "MAMCDISCOVERY") == 0) {
            EV_ERROR << "RECEIVED DISCOVERY MESSAGE " << endl;
            auto packet = check_and_cast<Packet *>(msg);

            auto l3Addresses = packet->getTag<L3AddressInd>();
            L3Address srcAddr = l3Addresses->getSrcAddress();

            processDiscovery(srcAddr);
            delete msg;
        }
        else if (strcmp(msg->getName(), "DATA_SEND") == 0) {
            EV_ERROR << "RECEIVED DATA_SEND MESSAGE " << endl;
            auto packet = check_and_cast<Packet *>(msg);

            auto l3Addresses = packet->getTag<L3AddressInd>();
            L3Address srcAddr = l3Addresses->getSrcAddress();

            processDataSend(packet, srcAddr);
            delete msg;
        }
        else {
            socket.processMessage(msg);
        }
    }
}

void MamNodeApp::processDiscovery(L3Address &src) {
    EV_ERROR << "PROCESSING processDiscovery MESSAGE " << endl;

    mobileSink = L3Address(src);
    sendMyDataToSink();
    broadcastSimpleMessage("FOUND_MOBILE_SINK");
}

void MamNodeApp::sendMyDataToSink() {

}

void MamNodeApp::processFoundMobileSink(L3Address &src) {
    EV_ERROR << "PROCESSING processFoundMobileSink MESSAGE " << endl;

    mobileSink = L3Address(src);

    // TODO check that there is data to be sent (maybe do that inside sendMyDataToSink?)
    sendMyDataToSink();

    // TODO check last time sent found mobile sink broadcast
    broadcastSimpleMessage("FOUND_MOBILE_SINK");
}

void MamNodeApp::processDataSend(Packet *packet, L3Address &src) {
    L3Address empty;
    if (mobileSink == empty) {
        sendSimpleMessage("DISCONNECTED_MOBILE_SINK", src);
        return;
    }

    EV_ERROR << "PROCESSING processDataSend MESSAGE " << endl;
    sendData(packet, mobileSink); // DATA_SEND
    sendDataSentAck(packet, src); // DATA_SENT
}

void MamNodeApp::sendData(Packet *packet, L3Address &dest) {

}


void MamNodeApp::sendDataSentAck(Packet *packet, L3Address &dest) {

}

void MamNodeApp::broadcastSimpleMessage(const char *msg)
{
    L3Address broadcastAddr;
    broadcastAddr.set(Ipv4Address(0xFFFFFFFF));

    sendSimpleMessage(msg, broadcastAddr);
}

void MamNodeApp::sendSimpleMessage(const char *msg, L3Address &dest)
{
    std::ostringstream str;
    str << msg;
    Packet *packet = new Packet(str.str().c_str());

    if (dontFragment)
        packet->addTagIfAbsent<FragmentationReq>()->setDontFragment(true);

    const auto& payload = makeShared<ApplicationPacket>();
    payload->setChunkLength(B(1));
    payload->setSequenceNumber(1);
    payload->addTag<CreationTimeTag>()->setCreationTime(simTime());
    packet->insertAtBack(payload);

    emit(packetSentSignal, packet);
    socket.sendTo(packet, dest, destPort);
}

void MamNodeApp::socketDataArrived(UdpSocket *socket, Packet *packet)
{
    // process incoming packet
    processPacket(packet);
}

void MamNodeApp::socketErrorArrived(UdpSocket *socket, Indication *indication)
{
    EV_WARN << "Ignoring UDP error report " << indication->getName() << endl;
    delete indication;
}

void MamNodeApp::socketClosed(UdpSocket *socket)
{
    if (operationalState == State::STOPPING_OPERATION)
        startActiveOperationExtraTimeOrFinish(par("stopOperationExtraTime"));
}

void MamNodeApp::refreshDisplay() const
{
    ApplicationBase::refreshDisplay();

    char buf[100];
    sprintf(buf, "rcvd: %d pks\nsent: %d pks", numReceived, numSent);
    getDisplayString().setTagArg("t", 0, buf);
}

void MamNodeApp::processPacket(Packet *pk)
{
    emit(packetReceivedSignal, pk);
    EV_INFO << "Received packet: " << UdpSocket::getReceivedPacketInfo(pk) << endl;
    delete pk;
    numReceived++;
}

void MamNodeApp::handleStartOperation(LifecycleOperation *operation)
{
    simtime_t start = std::max(startTime, simTime());
    if ((stopTime < SIMTIME_ZERO) || (start < stopTime) || (start == stopTime && startTime == stopTime)) {
        selfMsg->setKind(START);
        scheduleAt(start, selfMsg);
    }
}

void MamNodeApp::handleStopOperation(LifecycleOperation *operation)
{
    cancelEvent(selfMsg);
    socket.close();
    delayActiveOperationFinish(par("stopOperationTimeout"));
}

void MamNodeApp::handleCrashOperation(LifecycleOperation *operation)
{
    cancelEvent(selfMsg);
    socket.destroy();         //TODO  in real operating systems, program crash detected by OS and OS closes sockets of crashed programs.
}

} // namespace inet

