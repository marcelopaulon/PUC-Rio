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

#ifndef __INET_MAMNODEAPP_H
#define __INET_MAMNODEAPP_H

#include <vector>

#include "inet/common/INETDefs.h"

#include "inet/applications/mamapp/BMeshPacket_m.h"
#include "inet/applications/base/ApplicationBase.h"
#include "inet/transportlayer/contract/udp/UdpSocket.h"

#include "LruCache.h"

namespace inet {

/**
 * UDP application. See NED for more info.
 */
class INET_API MamNodeApp : public ApplicationBase, public UdpSocket::ICallback
{
  protected:
    enum SelfMsgKinds { START = 1, SEND, STOP, SEND_DATA };

    // parameters
    std::vector<L3Address> destAddresses;
    std::vector<std::string> destAddressStr;
    int localPort = -1, destPort = -1;
    simtime_t startTime;
    simtime_t stopTime;
    bool dontFragment = false;
    const char *packetName = nullptr;

    bool relayNode = false;

    bool mamRelay = true;

    // state
    UdpSocket socket;
    cMessage *selfMsg = nullptr;

    std::string nodeUuid;

    simtime_t lastFoundSinkSent;
    simtime_t lastSensorDataSent;

    bool scheduledSendData = false;

    // Cache up to 100 packet id's recently sent
    cache::lru_cache<std::string, simtime_t> dataSendCache;

    // statistics
    int numSent = 0;
    int numReceived = 0;

    int numDataSent = 0;
    int numDataResent = 0;
    int numDataAckReceived = 0;

    int dataSendSequence = 0;

    int sinkHops;
    L3Address mobileSink;
    simtime_t sinkBestRouteExpiry;

    simsignal_t dataSentSignal = cComponent::registerSignal("dataSent");
    simsignal_t dataResentSignal = cComponent::registerSignal("dataResent");
    simsignal_t dataAckSignal = cComponent::registerSignal("dataAck");

    std::set<std::string> uniqueDataSenders;

  protected:
    virtual int numInitStages() const override { return NUM_INIT_STAGES; }
    virtual void initialize(int stage) override;
    virtual void handleMessageWhenUp(cMessage *msg) override;
    virtual void finish() override;
    virtual void refreshDisplay() const override;

    // chooses random destination address
    virtual L3Address chooseDestAddr();
    virtual void processPacket(Packet *msg);
    virtual void setSocketOptions();

    virtual void processStart();
    virtual void processSend();
    virtual void processSendData();
    virtual void processStop();
    virtual void processDiscovery(L3Address &src);
    virtual void processFoundMobileSink(L3Address &src, int hops);
    virtual void processDataSend(Packet *packet, L3Address &dest);

    virtual void sendData(Packet *packet, L3Address &dest);
    virtual void sendDataSentAck(Packet *packet, L3Address &dest);

    virtual void sendMyDataToSink();

    virtual void broadcastSimpleMessage(const char *msg);
    virtual void broadcastSimpleMessage(const char *msg, int hops);
    virtual void sendSimpleMessage(const char *msg, L3Address &dest, int hops);

    virtual void handleStartOperation(LifecycleOperation *operation) override;
    virtual void handleStopOperation(LifecycleOperation *operation) override;
    virtual void handleCrashOperation(LifecycleOperation *operation) override;

    virtual void socketDataArrived(UdpSocket *socket, Packet *packet) override;
    virtual void socketErrorArrived(UdpSocket *socket, Indication *indication) override;
    virtual void socketClosed(UdpSocket *socket) override;

    virtual unsigned int random_char();
    virtual std::string generate_hex(const unsigned int len);
  public:
    MamNodeApp() : dataSendCache(100) {}
    ~MamNodeApp();
};

} // namespace inet

#endif // ifndef __INET_MAMNODEAPP_H

