
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn4_7
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
        @display("p=131.91,151.20");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=111.20,157.17");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=131.84,89.02");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=124.37,44.55");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=33.03,77.41");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=20.26,101.75");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=59.02,164.51");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=140.12,131.08");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=189.84,106.33");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=123.19,54.62");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=169.79,22.34");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=97.96,3.56");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=101.47,87.93");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=107.77,121.41");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=84.55,87.44");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=131.30,181.18");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=58.27,82.64");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=14.56,170.56");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=35.52,21.84");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=74.37,125.41");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=169.16,85.34");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=213.57,179.73");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=153.93,69.31");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=147.66,40.10");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=150.43,10.80");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=45.41,123.68");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=185.68,130.93");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=146.95,93.52");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=100.67,158.36");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=41.42,39.82");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=22.90,73.69");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=32.70,102.27");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=100.50,246.74");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=114.98,103.39");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=107.17,78.82");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=73.51,67.23");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=152.21,57.89");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=4.48,32.96");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=5.99,88.71");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=150.85,197.86");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=115.07,141.81");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=188.03,40.52");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=138.16,17.35");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=55.66,66.09");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=29.35,168.25");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=53.28,193.93");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=181.73,167.29");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=270.23,160.24");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=116.01,128.03");
    }

}

