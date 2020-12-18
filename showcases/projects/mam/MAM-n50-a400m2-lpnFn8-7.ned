
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn8-7
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
        @display("p=167.00,53.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=145.68,70.06");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=117.26,79.40");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=181.32,135.27");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=159.73,209.54");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=154.27,195.36");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=135.68,107.12");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=220.15,78.40");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=86.02,48.48");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=93.57,35.51");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=169.40,131.62");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=158.18,223.14");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=242.89,181.14");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=73.58,72.36");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=195.18,144.35");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=69.62,47.50");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=126.82,87.55");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=142.62,119.76");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=82.76,204.49");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=147.45,206.24");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=122.11,128.12");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=184.37,27.04");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=141.32,131.42");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=160.99,13.85");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=191.21,182.49");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=167.64,219.77");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=232.43,243.97");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=118.31,114.71");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=158.74,92.60");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=88.93,97.86");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=100.13,172.78");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=137.87,90.84");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=117.28,203.36");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=179.42,174.22");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=198.47,120.17");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=185.47,85.12");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=143.52,30.35");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=114.96,42.42");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=184.76,101.90");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=182.81,245.28");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=146.94,277.08");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=131.59,57.76");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=204.36,52.99");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=217.28,105.15");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=138.92,153.52");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=140.04,185.50");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=147.72,239.13");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=127.56,139.95");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=133.97,73.12");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=154.38,81.08");
    }

}

