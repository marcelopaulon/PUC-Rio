
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn12_3
{
    parameters:
        @display("bgb=1000,1000;bgg=100,1,grey95;bgu=m");
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=117.09,127.01");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=56.38,154.37");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=81.66,142.93");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=94.78,117.21");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=64.78,49.72");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=139.14,128.09");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=51.48,199.91");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=122.80,229.91");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=173.69,134.04");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=110.35,82.17");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=106.80,186.72");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=1.25,89.03");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=58.02,175.02");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=79.85,82.33");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=23.93,116.52");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=47.72,165.02");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=74.41,224.68");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=34.66,211.72");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=52.75,55.52");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=118.34,111.22");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=35.84,158.21");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=74.44,113.17");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=48.06,93.19");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=162.59,51.48");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=45.90,142.50");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=197.54,173.50");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=38.56,195.88");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=28.18,59.66");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=23.81,166.85");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=96.85,51.90");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=137.75,143.76");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=121.96,212.55");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=93.07,153.86");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=30.03,135.22");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=93.40,135.06");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=71.81,196.60");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=41.01,132.01");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=61.38,213.00");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=103.62,170.73");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=83.95,31.20");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=107.51,219.08");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=67.57,164.21");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=128.35,95.19");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=66.28,59.69");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=80.63,95.17");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=144.82,189.42");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=75.79,132.67");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=135.50,159.58");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=71.10,178.05");
    }

}

