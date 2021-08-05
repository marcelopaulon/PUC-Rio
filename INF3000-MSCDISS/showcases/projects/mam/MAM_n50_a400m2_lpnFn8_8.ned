
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn8_8
{
    parameters:
        @display("bgb=400,400;bgg=100,1,grey95;bgu=m");
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=133.34,182.86");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=110.13,198.91");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=92.20,189.10");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=8.49,187.44");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=41.00,142.86");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=125.77,140.22");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=111.47,136.96");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=60.75,191.18");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=150.69,278.16");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=57.77,254.39");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=0.84,224.49");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=94.60,128.39");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=120.35,117.70");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=119.82,91.27");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=162.53,192.16");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=168.31,242.20");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=60.42,116.59");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=20.80,196.48");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=10.67,161.28");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=162.78,115.04");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=149.80,92.54");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=166.41,126.29");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=123.68,156.74");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=146.46,167.57");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=48.65,246.21");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=15.02,85.07");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=164.92,159.53");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=56.05,162.99");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=182.36,123.66");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=133.51,222.13");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=89.65,201.96");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=77.54,162.67");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=27.22,168.57");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=149.77,137.47");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=57.63,176.08");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=103.56,231.26");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=78.41,252.20");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=161.32,228.46");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=74.48,191.42");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=60.86,145.90");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=162.92,93.03");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=83.48,183.43");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=211.91,151.57");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=69.32,220.90");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=56.75,236.65");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=14.37,113.27");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=53.84,103.52");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=144.58,148.93");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=123.96,61.36");
    }

}

