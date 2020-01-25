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

package inet.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM1
{
    parameters:
        @display("bgb=1374.2261,940.184;bgg=100,1,grey95");
        @figure[title](type=label; pos=0,-1; anchor=sw; color=darkblue);

        @figure[rcvdPkText](type=indicatorText; pos=380,20; anchor=w; font=,18; textFormat="packets received: %g"; initialValue=0);
        @statistic[packetReceived](source=host2.app[0].packetReceived; record=figure(count); targetFigure=rcvdPkText);

    submodules:
        visualizer: <default("IntegratedCanvasVisualizer")> like IIntegratedVisualizer if hasVisualizer() {
            @display("p=1003.968,29.232");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=787.24805,25.2");
        }
        radioMedium: <default("UnitDiskRadioMedium")> like IRadioMedium {
            @display("p=859.82404,28.224");
        }
        physicalEnvironment: PhysicalEnvironment {
            @display("p=935.424,29.232");
        }
        host1: <default("SensorNode")> like INetworkNode {
            @display("p=49.088,572.064");
        }
        host2: <default("SensorNode")> like INetworkNode {
            @display("p=366.272,207.68001");
        }
        host3: <default("SensorNode")> like INetworkNode {
            @display("p=366.272,485.216");
        }
        host_rly_4: <default("SensorNode")> like INetworkNode {
            @display("p=468.22403,645.69604");
        }
        host_rly_5: <default("SensorNode")> like INetworkNode {
            @display("p=621.15204,258.656");
        }
        host_rly_6: <default("SensorNode")> like INetworkNode {
            @display("p=320.96002,354.944");
        }
        host_rly_7: <default("SensorNode")> like INetworkNode {
            @display("p=768.416,460.67203");
        }
        host_rly_8: <default("SensorNode")> like INetworkNode {
            @display("p=158.59201,439.90402");
        }
        host_rly_9: <default("SensorNode")> like INetworkNode {
            @display("p=483.328,366.272");
        }
        host_rly_10: <default("SensorNode")> like INetworkNode {
            @display("p=621.15204,547.52");
        }
        collector1: <default("WirelessHost")> like INetworkNode {
            @display("p=394.592,460.67203");
        }
}
