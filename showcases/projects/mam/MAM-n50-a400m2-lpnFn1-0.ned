
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn1-0
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
        @display("p=84.00,230.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=107.20,228.38");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=153.70,296.25");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=159.88,321.21");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=129.17,361.46");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=68.12,397.36");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=8.47,336.31");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=30.63,341.94");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=42.23,274.21");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=121.36,300.81");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=139.65,321.63");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=168.21,333.43");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=140.57,289.21");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=121.39,281.71");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=60.49,265.64");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=52.59,240.71");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=125.20,239.78");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=53.10,255.39");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=12.72,233.21");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=11.20,189.94");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=51.94,126.91");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=73.70,73.22");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=74.38,61.91");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=136.77,57.15");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=197.78,5.22");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=202.22,97.92");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=169.55,160.07");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=114.03,206.53");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=103.38,178.47");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=122.85,132.86");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=62.95,172.35");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=50.10,153.93");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=27.61,155.14");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=81.81,98.00");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=152.63,149.96");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=127.49,164.99");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=131.20,176.29");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=144.05,174.17");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=139.02,160.56");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=212.76,176.04");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=139.16,208.77");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=147.61,185.89");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=158.56,200.07");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=178.56,169.57");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=183.37,123.48");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=184.41,218.11");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=256.75,183.88");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=254.91,119.17");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=305.33,148.77");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=298.16,164.39");
    }

}

