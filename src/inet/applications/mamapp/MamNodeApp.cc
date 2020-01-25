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
#include <sstream>
#include <random>
#include <string>

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
#include "inet/applications/mamapp/Md5.h"

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
        numDataSent = 0;
        numDataResent = 0;
        numDataAckReceived = 0;
        WATCH(numSent);
        WATCH(numReceived);
        WATCH(numDataSent);
        WATCH(numDataResent);
        WATCH(numDataAckReceived);

        L3Address empty;
        mobileSink = empty;

        scheduledSendData = false;

        localPort = par("localPort");
        destPort = par("destPort");
        startTime = par("startTime");
        stopTime = par("stopTime");
        packetName = par("packetName");
        dontFragment = par("dontFragment");

        relayNode = par("relayNode");

        const char *relayMode = par("relayMode");
        if (strcmp(relayMode, "BMesh") == 0) {
            mamRelay = false;
        }
        else if (strcmp(relayMode, "MAM") == 0) {
            mamRelay = true;
        }
        else {
            throw cRuntimeError ("Invalid relay mode: \"%s\"", relayMode);
        }

        nodeUuid = generate_hex(32);
        WATCH(nodeUuid);

        if (stopTime >= SIMTIME_ZERO && stopTime < startTime)
            throw cRuntimeError("Invalid startTime/stopTime parameters");
        selfMsg = new cMessage("sendTimer");
    }
}

void MamNodeApp::finish()
{
    recordScalar("packets sent", numSent);
    recordScalar("packets received", numReceived);
    recordScalar("data packets sent", numDataSent);
    recordScalar("data packets resent", numDataResent);
    recordScalar("ack packets received", numDataAckReceived);

    EV_INFO << getFullPath() << ": sent " << numDataSent << " data packets\n";

    EV_INFO << getFullPath() << ": resent " << numDataResent << " data packets\n";

    EV_INFO << getFullPath() << ": received " << numDataAckReceived << " data ack packets\n";

    EV_INFO << getFullPath() << ": failed to send " << (numDataSent + numDataResent) - numDataAckReceived << " data packets\n";

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

void MamNodeApp::processSendData()
{
    scheduledSendData = false;

    L3Address empty;
    if (!mamRelay || mobileSink != empty) {
        std::ostringstream str;
        str << "DATA_SEND";

        L3Address addr;

        if (mamRelay) {
            // Mobile sink address - MAM Bluetooth Mesh customized relay feature
            addr = mobileSink;
        }
        else {
            // Broadcast address - Bluetooth Mesh regular relay feature
            addr.set(Ipv4Address(0xFFFFFFFF));
        }

        Packet *packet = new Packet(str.str().c_str());

        if (dontFragment)
            packet->addTagIfAbsent<FragmentationReq>()->setDontFragment(true);

        const auto& payload = makeShared<BMeshPacket>();
        payload->setChunkLength(B(11)); // 11 bytes (3 bytes opcode + 8 bytes of data)
        payload->setHops(127);
        payload->setPacketUuid(generate_hex(32).c_str());
        payload->setSrcUuid(nodeUuid.c_str());
        payload->setSequence(++dataSendSequence);
        payload->addTag<CreationTimeTag>()->setCreationTime(simTime());
        packet->insertAtBack(payload);

        emit(packetSentSignal, packet);
        socket.sendTo(packet, addr, destPort);

        lastSensorDataSent = simTime();
    } else {
        EV_ERROR << "MOBILE SINK NOT FOUND WHEN TRYING TO SEND DATA";
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

            case SEND_DATA:
                processSendData();
                break;

            case STOP:
                processStop();
                break;

            default:
                throw cRuntimeError("Invalid kind %d in self message", (int)selfMsg->getKind());
        }
    }
    else {
        auto packet = check_and_cast<Packet *>(msg);

        auto l3Addresses = packet->getTag<L3AddressInd>();
        L3Address srcAddr = l3Addresses->getSrcAddress();

        if (srcAddr.str() == "127.0.0.1") {
            delete msg;
            return;
        }

        if (strcmp(msg->getName(), "FOUND_MOBILE_SINK") == 0) {
            auto bmeshData = dynamicPtrCast<const BMeshPacket>(packet->peekAtBack());

            processFoundMobileSink(srcAddr, bmeshData->getHops());
            delete msg;
        }
        else if (strcmp(msg->getName(), "DISCONNECTED_MOBILE_SINK") == 0) {
            // If the src is the mobile sink currently connected to
            if (srcAddr == mobileSink) {
                L3Address empty;
                mobileSink = empty;
            }

            if (relayNode) {
                broadcastSimpleMessage("DISCONNECTED_MOBILE_SINK");
            }

            delete msg;
        }
        else if (strcmp(msg->getName(), "MAMCDISCOVERY") == 0) {
            processDiscovery(srcAddr);
            delete msg;
        }
        else if (strcmp(msg->getName(), "DATA_SEND") == 0) {
            processDataSend(packet, srcAddr);
            // Do not delete msg as it'll be forwarded somewhere. Only the sink should delete it?
        }
        else {
            socket.processMessage(msg);
        }
    }
}

void MamNodeApp::processDiscovery(L3Address &src) {
    // Discovery messages are from the sink, so it is the optimal route for this node
    mobileSink = L3Address(src);
    sinkHops = 128;
    sinkBestRouteExpiry = simTime() + simtime_t(200, SIMTIME_MS);

    if (relayNode) {
        broadcastSimpleMessage("FOUND_MOBILE_SINK");
    }
}

void MamNodeApp::sendMyDataToSink() {
    if (scheduledSendData) {
        // Data send is already scheduled. Skipping.
        return;
    }

    L3Address empty;
    // We should schedule the message to be sent if there is a known route to it (mobileSink != empty)
    // or if we are not using mam custom relay (but using Blueooth Mesh's default relay behavior)
    if (mobileSink != empty || !mamRelay) {

        simtime_t start = std::max(lastSensorDataSent + simtime_t(100, SIMTIME_MS), simTime());

        scheduledSendData = true;

        cancelEvent(selfMsg);
        selfMsg->setKind(SEND_DATA);
        scheduleAt(start, selfMsg);
    }
}

void MamNodeApp::processFoundMobileSink(L3Address &src, int hops) {
    // Mam Relay behavior to set the route to sink
    if (mamRelay) {
        L3Address empty;

        // If sink not set (or expired) or the incoming route sink is closer
        if (mobileSink == empty || simTime() > sinkBestRouteExpiry || hops > sinkHops) {
            mobileSink = L3Address(src);
            sinkHops = hops;
            sinkBestRouteExpiry = simTime() + simtime_t(200, SIMTIME_MS);
        }
    }

    sendMyDataToSink();

    if (relayNode) {
        if (mamRelay) {
            // Check last time sent found mobile sink broadcast and only send it if > 100ms
            if (simTime().inUnit(SIMTIME_MS) - lastFoundSinkSent.inUnit(SIMTIME_MS) > 100) {
                lastFoundSinkSent = simTime();
                broadcastSimpleMessage("FOUND_MOBILE_SINK");
            }
        }
        else {
            if (hops > 0) {
                // Bluetooth Mesh relay should relay the message without a timeout but decrease its ttl
                // use cache
                std::string key = md5("FOUND_MOBILE_SINK_" + src.str());
                double msd = simTime().dbl() * 1000;
                long ms = static_cast<long>(msd);
                bool inCache = dataSendCache.exists(key, ms);

                if (!inCache) {
                    dataSendCache.put(key, 1, ms + 1000); // Expire in 1 second
                    broadcastSimpleMessage("FOUND_MOBILE_SINK", hops--);
                }
            }
        }
    }
}

void MamNodeApp::processDataSend(Packet *packet, L3Address &src) {
    // Only relay nodes are interested in Data Send messages
    if (!relayNode) {
        delete packet;
        return;
    }

    L3Address empty;
    if (mamRelay && mobileSink == empty) {
        sendSimpleMessage("DISCONNECTED_MOBILE_SINK", src, 127);
        delete packet;
        return;
    }

    // We'll try to break loops for cases where awaiting for heartbeats
    // from the mobile sink have not timed out yet by using a simple cache with TTL for the packet destination + id
    // If it's on cache, drop the packet. Still need to figure out the implications of doing this..... TODO

    auto bmeshData = dynamicPtrCast<const BMeshPacket>(packet->peekAtBack());
    auto key = bmeshData->getPacketUuid();
    double msd = simTime().dbl() * 1000;
    long ms = static_cast<long>(msd);
    bool inCache = dataSendCache.exists(key, ms);

    if (!inCache) {
        dataSendCache.put(key, 1, ms + 1000); // Expire in 1 second

        if (mamRelay) {
            sendData(packet, mobileSink); // DATA_SEND
        }
        else {
            L3Address broadcastAddr;
            broadcastAddr.set(Ipv4Address(0xFFFFFFFF));
            sendData(packet, broadcastAddr); // DATA_SEND
        }

        //sendDataSentAck(packet, src); // DATA_SENT
    }
    else {
        delete packet;
    }
}

void MamNodeApp::sendDataSentAck(Packet *packet, L3Address &dest) {
    std::ostringstream str;
    str << "ACK-" << packet->getId();

    sendSimpleMessage(str.str().c_str(), dest, 127);
}

void MamNodeApp::broadcastSimpleMessage(const char *msg)
{
    broadcastSimpleMessage(msg, 127);
}

void MamNodeApp::broadcastSimpleMessage(const char *msg, int hops)
{
    if (hops < 0) {
        throw cRuntimeError ("Invalid number of hops: %d", hops);
    }

    L3Address broadcastAddr;
    broadcastAddr.set(Ipv4Address(0xFFFFFFFF));

    sendSimpleMessage(msg, broadcastAddr, hops);
}

void MamNodeApp::sendSimpleMessage(const char *msg, L3Address &dest, int hops)
{
    if (hops < 0) {
        throw cRuntimeError ("Invalid number of hops: %d", hops);
    }

    std::ostringstream str;
    str << msg;
    Packet *packet = new Packet(str.str().c_str());

    if (dontFragment)
        packet->addTagIfAbsent<FragmentationReq>()->setDontFragment(true);

    const auto& payload = makeShared<BMeshPacket>();
    payload->setChunkLength(B(1));
    payload->setHops(hops);
    payload->addTag<CreationTimeTag>()->setCreationTime(simTime());
    packet->insertAtBack(payload);

    emit(packetSentSignal, packet);
    socket.sendTo(packet, dest, destPort);
}


void MamNodeApp::sendData(Packet *packet, L3Address &dest) {
    emit(packetSentSignal, packet);
    emit(dataSentSignal, packet);
    numDataSent++;
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

    EV_ERROR << "Socket Closed" << endl;

    L3Address empty;
    mobileSink = empty;
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

unsigned int MamNodeApp::random_char()
{
    std::random_device rd;
    std::mt19937 gen(rd());
    std::uniform_int_distribution<> dis(0, 255);
    return dis(gen);
}

std::string MamNodeApp::generate_hex(const unsigned int len)
{
    std::stringstream ss;
    for (unsigned int i = 0; i < len; i++) {
        const auto rc = random_char();
        std::stringstream hexstream;
        hexstream << std::hex << rc;
        auto hex = hexstream.str();
        ss << (hex.length() < 2 ? '0' + hex : hex);
    }
    return ss.str();
}

} // namespace inet
