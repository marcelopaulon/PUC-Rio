
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn4_8
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
        @display("p=100.00,900.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=164.59,916.48");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=131.36,927.47");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=196.81,885.72");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=190.24,873.35");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=232.02,853.05");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=240.88,754.73");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=248.05,828.32");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=257.85,907.61");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=233.90,964.61");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=245.77,868.29");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=231.97,879.94");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=202.56,778.18");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=101.92,922.14");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=170.35,866.86");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=74.81,910.74");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=257.37,823.86");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=133.32,871.12");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=310.21,836.94");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=320.12,791.14");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=174.56,778.73");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=227.61,947.86");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=296.07,896.61");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=237.00,814.60");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=209.83,841.59");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=195.00,788.00");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=68.78,853.18");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=154.40,977.45");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=137.07,944.58");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=195.92,907.21");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=144.96,929.00");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=300.51,829.94");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=247.19,742.83");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=195.58,854.18");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=277.93,949.39");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=198.12,938.74");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=267.56,816.42");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=232.51,838.72");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=257.94,857.21");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=133.66,810.24");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=176.01,936.84");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=154.81,948.21");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=287.02,919.91");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=166.36,788.35");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=232.83,866.34");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=187.81,757.58");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=281.35,861.31");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=250.73,930.58");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=219.47,987.91");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=268.49,780.64");
    }

}

