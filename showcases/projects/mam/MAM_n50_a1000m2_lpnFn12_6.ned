
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn12_6
{
    parameters:
        @display("bgb=2000,2000;bgg=100,1,grey95;bgu=m");
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
        @display("p=95.22,840.69");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=119.76,888.35");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=196.02,869.06");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=181.24,827.68");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=142.01,873.91");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=101.77,820.55");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=81.19,869.66");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=289.17,897.92");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=175.42,740.55");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=67.13,954.16");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=58.51,834.99");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=131.73,863.15");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=233.03,918.90");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=234.27,810.77");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=94.88,810.23");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=103.68,918.30");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=159.67,867.51");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=205.08,913.53");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=191.14,777.56");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=130.03,977.25");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=115.07,824.43");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=91.88,921.89");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=254.35,887.07");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=222.61,809.92");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=46.79,904.24");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=17.46,853.60");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=159.91,954.18");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=151.49,852.18");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=265.98,778.16");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=133.37,827.69");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=3.80,867.23");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=182.10,965.01");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=261.48,860.79");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=183.76,813.66");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=115.31,908.35");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=53.26,766.93");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=158.06,924.38");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=211.41,841.92");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=166.67,788.97");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=51.21,916.80");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=88.76,933.03");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=183.58,873.09");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=183.94,914.26");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=214.70,860.13");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=46.85,949.62");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=118.41,877.92");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=149.70,886.17");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=163.96,885.98");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=145.76,767.16");
    }

}

