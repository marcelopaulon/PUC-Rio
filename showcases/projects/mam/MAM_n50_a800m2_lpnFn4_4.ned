
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn4_4
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=148.82,131.80");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=199.89,202.75");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=145.95,268.24");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=129.48,175.39");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=108.91,220.22");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=186.24,196.74");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=202.47,125.80");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=238.89,73.51");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=299.03,61.41");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=260.43,118.66");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=219.34,47.93");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=280.25,40.42");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=67.65,81.31");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=135.19,145.86");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=181.43,184.20");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=150.09,345.93");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=131.06,160.16");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=196.76,184.29");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=205.85,172.75");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=282.03,111.32");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=276.25,101.69");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=305.22,76.50");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=219.86,201.68");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=270.14,16.56");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=353.35,38.93");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=127.32,121.18");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=151.83,182.10");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=209.28,144.93");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=122.78,327.96");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=109.20,193.90");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=165.11,150.13");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=203.04,269.19");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=224.95,152.20");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=194.05,55.72");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=262.90,108.29");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=280.04,134.52");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=151.40,47.11");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=332.92,125.33");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=118.79,16.98");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=130.54,203.89");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=219.33,183.72");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=144.43,285.31");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=205.28,157.16");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=76.02,147.01");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=144.77,239.40");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=279.73,67.21");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=242.21,89.06");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=261.97,28.99");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=299.90,118.65");
    }

}

