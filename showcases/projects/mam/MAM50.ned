//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
//

package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM50
{
    parameters:
        @display("bgb=2074.912,1461.312;bgg=100,1,grey95");
        @figure[title](type=label; pos=0,-1; anchor=sw; color=darkblue);

        @figure[rcvdPkText](type=indicatorText; pos=380,20; anchor=w; font=,18; textFormat="packets received: %g"; initialValue=0);
        @statistic[packetReceived](source=collector1.app[0].packetReceived; record=figure(count); targetFigure=rcvdPkText);

    submodules:
        visualizer: <default("IntegratedCanvasVisualizer")> like IIntegratedVisualizer if hasVisualizer() {
            @display("p=1003.968,29.232");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=787.24805,25.2");
        }
        radioMedium: <default("Ieee802154NarrowbandScalarRadioMedium")> like IRadioMedium {
            @display("p=859.82404,28.224");
        }
        physicalEnvironment: PhysicalEnvironment {
            @display("p=935.424,29.232");
        }
        host1: <default("SensorNode")> like INetworkNode {
            @display("p=1155.456,579.616");
        }
        host2: <default("SensorNode")> like INetworkNode {
            @display("p=383.264,494.656");
        }
        host3: <default("SensorNode")> like INetworkNode {
            @display("p=674.01605,473.888");
        }
        host_rly_4: <default("SensorNode")> like INetworkNode {
            @display("p=1070.4961,505.984");
        }
        host_rly_5: <default("SensorNode")> like INetworkNode {
            @display("p=825.056,254.88");
        }
        host_rly_6: <default("SensorNode")> like INetworkNode {
            @display("p=600.38403,371.936");
        }
        host_rly_7: <default("SensorNode")> like INetworkNode {
            @display("p=898.68805,347.392");
        }
        host_rly_8: <default("SensorNode")> like INetworkNode {
            @display("p=513.536,483.328");
        }
        host_rly_9: <default("SensorNode")> like INetworkNode {
            @display("p=738.208,328.51202");
        }
        host_rly_10: <default("SensorNode")> like INetworkNode {
            @display("p=977.984,421.02402");
        }
        collector1: <default("WirelessHost")> like INetworkNode {
            @display("p=1081.824,347.392");
        }
        host11: <default("SensorNode")> like INetworkNode {
            @display("p=73.632,723.104");
        }
        host12: <default("SensorNode")> like INetworkNode {
            @display("p=349.28,960.992");
        }
        host_rly_13: <default("SensorNode")> like INetworkNode {
            @display("p=500.32,606.04803");
        }
        host_rly_14: <default("SensorNode")> like INetworkNode {
            @display("p=275.648,723.104");
        }
        host_rly_15: <default("SensorNode")> like INetworkNode {
            @display("p=573.952,698.56");
        }
        host_rly_16: <default("SensorNode")> like INetworkNode {
            @display("p=162.36801,753.312");
        }
        host_rly_17: <default("SensorNode")> like INetworkNode {
            @display("p=413.47202,679.68");
        }
        host18: <default("SensorNode")> like INetworkNode {
            @display("p=483.328,825.056");
        }
        host19: <default("SensorNode")> like INetworkNode {
            @display("p=449.34402,1155.456");
        }
        host_rly_20: <default("SensorNode")> like INetworkNode {
            @display("p=600.38403,866.59204");
        }
        host_rly_21: <default("SensorNode")> like INetworkNode {
            @display("p=375.712,1053.504");
        }
        host_rly_22: <default("SensorNode")> like INetworkNode {
            @display("p=674.01605,1028.9601");
        }
        host_rly_23: <default("SensorNode")> like INetworkNode {
            @display("p=262.432,1083.712");
        }
        host_rly_24: <default("SensorNode")> like INetworkNode {
            @display("p=513.536,1008.192");
        }
        host25: <default("SensorNode")> like INetworkNode {
            @display("p=772.192,960.992");
        }
        host26: <default("SensorNode")> like INetworkNode {
            @display("p=747.648,1263.072");
        }
        host_rly_27: <default("SensorNode")> like INetworkNode {
            @display("p=934.56006,1053.504");
        }
        host_rly_28: <default("SensorNode")> like INetworkNode {
            @display("p=664.57605,1189.4401");
        }
        host_rly_29: <default("SensorNode")> like INetworkNode {
            @display("p=977.984,1189.4401");
        }
        host_rly_30: <default("SensorNode")> like INetworkNode {
            @display("p=551.296,1219.6481");
        }
        host_rly_31: <default("SensorNode")> like INetworkNode {
            @display("p=802.4,1144.128");
        }
        host32: <default("SensorNode")> like INetworkNode {
            @display("p=1227.2001,1138.464");
        }
        host33: <default("SensorNode")> like INetworkNode {
            @display("p=1516.0641,1274.4");
        }
        host_rly_34: <default("SensorNode")> like INetworkNode {
            @display("p=1153.568,1036.5121");
        }
        host_rly_35: <default("SensorNode")> like INetworkNode {
            @display("p=1451.8721,1011.968");
        }
        host_rly_36: <default("SensorNode")> like INetworkNode {
            @display("p=1040.2881,1066.7201");
        }
        host_rly_37: <default("SensorNode")> like INetworkNode {
            @display("p=1291.3921,991.2");
        }
        host_rly_38: <default("SensorNode")> like INetworkNode {
            @display("p=1640.672,1066.7201");
        }
        host_rly_39: <default("SensorNode")> like INetworkNode {
            @display("p=1442.432,1172.448");
        }
        host_rly_40: <default("SensorNode")> like INetworkNode {
            @display("p=1755.8401,1172.448");
        }
        host_rly_41: <default("SensorNode")> like INetworkNode {
            @display("p=1329.1521,1202.656");
        }
        host_rly_42: <default("SensorNode")> like INetworkNode {
            @display("p=1580.2561,1127.136");
        }
        host43: <default("SensorNode")> like INetworkNode {
            @display("p=1340.4801,802.4");
        }
        host44: <default("SensorNode")> like INetworkNode {
            @display("p=1629.344,938.33606");
        }
        host_rly_45: <default("SensorNode")> like INetworkNode {
            @display("p=1091.264,853.37604");
        }
        host_rly_46: <default("SensorNode")> like INetworkNode {
            @display("p=1266.848,700.448");
        }
        host_rly_47: <default("SensorNode")> like INetworkNode {
            @display("p=1442.432,772.192");
        }
        host_rly_48: <default("SensorNode")> like INetworkNode {
            @display("p=1153.568,728.768");
        }
        host_rly_49: <default("SensorNode")> like INetworkNode {
            @display("p=1733.1841,898.68805");
        }
        host_rly_50: <default("SensorNode")> like INetworkNode {
            @display("p=1555.712,836.38403");
        }
}
