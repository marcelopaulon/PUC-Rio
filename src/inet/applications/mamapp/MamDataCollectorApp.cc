//
// Copyright (C) 2000 Institut fuer Telematik, Universitaet Karlsruhe
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

#include "inet/applications/mamapp/BMeshPacket_m.h"
#include "inet/applications/mamapp/MamDataCollectorApp.h"
#include "inet/common/ModuleAccess.h"
#include "inet/common/packet/Packet.h"
#include "inet/common/TagBase_m.h"
#include "inet/common/TimeTag_m.h"
#include "inet/networklayer/common/FragmentationTag_m.h"
#include "inet/networklayer/common/L3AddressResolver.h"
#include "inet/transportlayer/contract/udp/UdpControlInfo_m.h"

namespace inet {

Define_Module(MamDataCollectorApp);

MamDataCollectorApp::~MamDataCollectorApp()
{
    cancelAndDelete(selfMsg);
}

void MamDataCollectorApp::initialize(int stage)
{
    ApplicationBase::initialize(stage);

    if (stage == INITSTAGE_LOCAL) {
        numSentDiscovery = 0;
        WATCH(numSentDiscovery);

        numReceived = 0;
        numUnique = 0;
        numSenders = 0;

        WATCH(numReceived);
        WATCH(numUnique);
        WATCH(numSenders);

        localPort = par("localPort");
        destPort = par("destPort");
        startTime = par("startTime");
        stopTime = par("stopTime");
        dontFragment = par("dontFragment");

        if (stopTime >= SIMTIME_ZERO && stopTime < startTime)
            throw cRuntimeError("Invalid startTime/stopTime parameters");
        selfMsg = new cMessage("UDPSinkTimer");
    }
}

void MamDataCollectorApp::handleMessageWhenUp(cMessage *msg)
{
    if (msg->isSelfMessage()) {
        ASSERT(msg == selfMsg);
        switch (selfMsg->getKind()) {
            case START:
                processStart();
                break;

            case STOP:
                processStop();
                break;

            case DISCOVERY:
                processDiscovery();
                break;

            default:
                throw cRuntimeError("Invalid kind %d in self message", (int)selfMsg->getKind());
        }
    }
    else if (msg->arrivedOn("socketIn"))
        socket.processMessage(msg);
    else
        throw cRuntimeError("Unknown incoming gate: '%s'", msg->getArrivalGate()->getFullName());
}

void MamDataCollectorApp::socketDataArrived(UdpSocket *socket, Packet *packet)
{
    // process incoming packet
    processPacket(packet);
}

void MamDataCollectorApp::socketErrorArrived(UdpSocket *socket, Indication *indication)
{
    EV_WARN << "Ignoring UDP error report " << indication->getName() << endl;
    delete indication;
}

void MamDataCollectorApp::socketClosed(UdpSocket *socket)
{
    if (operationalState == State::STOPPING_OPERATION)
        startActiveOperationExtraTimeOrFinish(par("stopOperationExtraTime"));
}

void MamDataCollectorApp::refreshDisplay() const
{
    ApplicationBase::refreshDisplay();

    char buf[100];
    sprintf(buf, "rcvd: %d pks (%d unique from %d senders)", numReceived, numUnique, numSenders);
    getDisplayString().setTagArg("t", 0, buf);
}

void MamDataCollectorApp::finish()
{
    ApplicationBase::finish();
    EV_INFO << getFullPath() << ": received " << numReceived << " packets (" << numUnique <<
            " unique from " << numSenders << " senders)\n";

    char buf[10000] = "";

    for (auto it = uniqueDataSenders.begin(); it != uniqueDataSenders.end(); it++) {
        sprintf(buf + strlen(buf), " %s", (*it).c_str());
    }

    EV_INFO << buf << "\n";
}

void MamDataCollectorApp::setSocketOptions()
{
    //bool receiveBroadcast = par("receiveBroadcast");
    //if (receiveBroadcast)
    socket.setBroadcast(true);

    MulticastGroupList mgl = getModuleFromPar<IInterfaceTable>(par("interfaceTableModule"), this)->collectMulticastGroups();
    socket.joinLocalMulticastGroups(mgl);

    // join multicastGroup
    const char *groupAddr = par("multicastGroup");
    multicastGroup = L3AddressResolver().resolve(groupAddr);
    if (!multicastGroup.isUnspecified()) {
        if (!multicastGroup.isMulticast())
            throw cRuntimeError("Wrong multicastGroup setting: not a multicast address: %s", groupAddr);
        socket.joinMulticastGroup(multicastGroup);
    }
    socket.setCallback(this);
}

void MamDataCollectorApp::processStart()
{
    socket.setOutputGate(gate("socketOut"));
    socket.bind(localPort);
    setSocketOptions();

    if (stopTime >= SIMTIME_ZERO) {
        selfMsg->setKind(STOP);
        scheduleAt(stopTime, selfMsg);
    }
    else {
        selfMsg->setKind(DISCOVERY);
        scheduleAt(simTime() + par("sendDiscoveryInterval"), selfMsg);
    }
}

void MamDataCollectorApp::processDiscovery()
{
    sendDiscoveryPacket();
    simtime_t d = simTime() + par("sendDiscoveryInterval");
    if (stopTime < SIMTIME_ZERO || d < stopTime) {
        selfMsg->setKind(DISCOVERY);
        scheduleAt(d, selfMsg);
    }
    else {
        selfMsg->setKind(STOP);
        scheduleAt(stopTime, selfMsg);
    }
}

void MamDataCollectorApp::sendDiscoveryPacket()
{
    std::ostringstream str;
    str << "MAMCDISCOVERY";
    Packet *packet = new Packet(str.str().c_str());

    if (dontFragment)
        packet->addTagIfAbsent<FragmentationReq>()->setDontFragment(true);

    const auto& payload = makeShared<BMeshPacket>();
    payload->setChunkLength(B(1));
    payload->addTag<CreationTimeTag>()->setCreationTime(simTime());
    packet->insertAtBack(payload);
    L3Address broadcastAddr;
    broadcastAddr.set(Ipv4Address(0xFFFFFFFF));

    //char addr[1024] = "host1";
    //L3AddressResolver().tryResolve(addr, broadcastAddr);

    emit(packetSentSignal, packet);
    socket.sendTo(packet, broadcastAddr, destPort);
    numSentDiscovery++;
}

void MamDataCollectorApp::processStop()
{
    if (!multicastGroup.isUnspecified())
        socket.leaveMulticastGroup(multicastGroup); // FIXME should be done by socket.close()
    socket.close();
}

void MamDataCollectorApp::processPacket(Packet *pk)
{
    EV_INFO << "Received packet: " << UdpSocket::getReceivedPacketInfo(pk) << endl;
    emit(packetReceivedSignal, pk);

    auto bmeshData = dynamicPtrCast<const BMeshPacket>(pk->popAtBack());

    int sequence = bmeshData->getSequence();
    std::string packetId = bmeshData->getPacketUuid();

    if (sequence > 0) {
        uniqueDataSendPacketHashes.insert(bmeshData->getPacketUuid());
        uniqueDataSenders.insert(bmeshData->getSrcUuid());

        numUnique = uniqueDataSendPacketHashes.size();
        numSenders = uniqueDataSenders.size();

        numReceived++;
    }

    delete pk;
}

void MamDataCollectorApp::handleStartOperation(LifecycleOperation *operation)
{
    simtime_t start = std::max(startTime, simTime());
    if ((stopTime < SIMTIME_ZERO) || (start < stopTime) || (start == stopTime && startTime == stopTime)) {
        selfMsg->setKind(START);
        scheduleAt(start, selfMsg);
    }
}

void MamDataCollectorApp::handleStopOperation(LifecycleOperation *operation)
{
    cancelEvent(selfMsg);
    if (!multicastGroup.isUnspecified())
        socket.leaveMulticastGroup(multicastGroup); // FIXME should be done by socket.close()
    socket.close();
    delayActiveOperationFinish(par("stopOperationTimeout"));
}

void MamDataCollectorApp::handleCrashOperation(LifecycleOperation *operation)
{
    cancelEvent(selfMsg);
    if (operation->getRootModule() != getContainingNode(this)) {     // closes socket when the application crashed only
        if (!multicastGroup.isUnspecified())
            socket.leaveMulticastGroup(multicastGroup); // FIXME should be done by socket.close()
        socket.destroy();    //TODO  in real operating systems, program crash detected by OS and OS closes sockets of crashed programs.
    }
}

} // namespace inet

