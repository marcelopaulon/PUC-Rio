
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn1-9
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
        @display("p=56.00,64.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=81.41,60.31");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=123.23,136.44");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=177.33,83.74");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=144.72,58.12");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=192.00,121.85");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=191.56,109.01");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=107.63,140.39");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=201.86,170.93");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=197.20,186.56");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=213.64,246.16");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=264.30,287.96");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=246.04,245.81");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=188.44,316.66");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=168.75,332.68");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=239.04,366.90");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=124.26,317.75");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=148.80,276.12");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=128.98,306.66");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=151.44,327.05");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=225.68,262.33");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=198.19,287.52");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=258.57,317.62");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=182.71,358.35");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=284.44,186.00");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=270.85,171.94");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=282.89,142.64");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=225.78,211.38");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=139.92,167.99");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=185.30,135.72");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=130.95,102.68");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=164.65,56.18");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=173.37,123.09");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=134.70,127.49");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=181.24,18.98");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=192.19,42.82");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=258.97,61.72");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=254.85,7.53");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=197.17,79.09");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=197.95,153.15");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=149.44,82.51");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=100.03,127.86");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=69.33,163.92");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=56.05,130.04");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=108.61,98.09");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=114.71,116.41");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=105.17,187.16");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=194.06,229.42");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=158.46,269.90");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=120.04,222.44");
    }

}

