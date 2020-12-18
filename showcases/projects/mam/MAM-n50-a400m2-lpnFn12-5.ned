
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn12-5
{
    parameters:
        @display("bgb=800,800;bgg=100,1,grey95;bgu=m");
        @figure[title](type=label; pos=0,-1; anchor=sw; color=darkblue);

        @figure[rcvdPkText](type=indicatorText; pos=50,50; anchor=w; font=,18; textFormat="packets received: %g"; initialValue=0);
        @statistic[packetReceived](source=collector1.app[0].packetReceived; record=figure(count); targetFigure=rcvdPkText);

    submodules:
        visualizer: <default("IntegratedCanvasVisualizer")> like IIntegratedVisualizer if hasVisualizer() {
            @display("p=0,0");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=1,0");
        }
        radioMedium: <default("Ieee802154NarrowbandScalarRadioMedium")> like IRadioMedium {
            @display("p=2,0");
        }
        physicalEnvironment: PhysicalEnvironment {
            @display("p=3,0");
        }
        collector1: <default("WirelessHost")> like INetworkNode {
            @display("p=100,100");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=70.00,24.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=77.61,13.11");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=60.56,9.40");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=80.64,24.13");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=6.04,53.14");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=36.64,39.38");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=151.07,40.88");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=34.81,7.08");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=78.53,43.52");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=61.77,58.97");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=19.60,4.72");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=80.77,74.78");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=33.11,52.69");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=70.10,64.93");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=22.06,50.03");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=106.14,45.09");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=144.60,81.96");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=118.07,2.31");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=131.60,21.27");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=57.75,83.74");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=100.17,55.81");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=106.90,15.83");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=1.23,22.69");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=98.74,78.74");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=5.61,75.09");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=120.60,59.90");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=153.99,11.20");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=20.74,66.36");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=31.36,102.73");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=84.36,62.49");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=61.30,37.08");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=12.65,25.13");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=66.57,104.57");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=54.39,111.88");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=68.03,85.42");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=44.46,10.80");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=133.58,66.83");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=120.86,36.70");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=93.19,22.82");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=67.94,44.80");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=131.52,3.62");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=41.22,77.28");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=8.14,3.29");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=128.35,83.50");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=0.36,84.98");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=48.11,59.29");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=15.10,80.56");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=91.53,10.24");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=174.21,23.08");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=18.46,103.91");
    }

}

