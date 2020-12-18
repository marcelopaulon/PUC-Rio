
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn4_2
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
        @display("p=89.03,94.74");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=149.38,42.09");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=136.50,45.78");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=185.08,43.19");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=218.31,64.14");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=265.91,83.66");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=309.30,106.58");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=278.28,145.90");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=238.10,219.69");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=313.13,241.78");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=287.55,156.27");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=224.22,110.57");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=206.85,54.64");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=239.98,77.29");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=164.80,125.64");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=244.85,133.58");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=221.21,89.78");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=151.87,105.13");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=231.55,54.81");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=217.00,37.12");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=139.36,97.45");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=65.18,129.81");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=97.63,84.80");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=147.13,158.57");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=149.37,120.81");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=71.62,91.99");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=174.39,43.44");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=73.07,81.36");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=159.21,1.61");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=243.37,92.12");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=286.23,69.58");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=321.75,85.71");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=254.14,218.34");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=210.43,135.68");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=227.66,238.04");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=226.89,182.23");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=203.92,117.73");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=165.00,68.48");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=234.00,102.48");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=172.30,132.32");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=196.71,110.40");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=186.29,84.22");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=187.10,141.92");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=306.00,44.24");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=131.06,20.02");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=148.44,132.79");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=47.48,46.12");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=51.88,91.79");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=136.63,177.12");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=92.66,122.51");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=43.29,174.91");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=72.82,43.03");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=91.06,72.88");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=204.83,33.67");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=297.03,65.63");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=299.54,129.86");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=289.24,134.04");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=247.94,164.58");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=181.84,154.97");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=281.60,164.72");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=287.48,172.93");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=175.68,107.14");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=127.98,101.68");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=327.68,62.72");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=200.56,184.49");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=258.54,160.90");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=308.00,87.09");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=142.19,108.17");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=244.66,117.60");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=191.98,23.03");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=114.65,63.68");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=115.58,117.42");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=142.72,76.46");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=101.43,149.36");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=107.65,92.17");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=166.04,88.36");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=179.07,61.75");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=224.67,74.09");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=180.12,16.93");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=221.52,157.84");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=278.96,37.74");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=256.53,114.77");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=211.36,162.88");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=303.85,187.18");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=316.61,226.85");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=322.35,194.35");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=260.21,137.75");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=203.17,70.52");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=272.61,52.19");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=126.84,51.89");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=166.42,162.37");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=274.75,124.98");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=132.70,88.73");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=251.69,10.13");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=212.03,12.85");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=81.70,118.15");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=152.64,167.26");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=107.86,140.66");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=161.73,151.09");
    }

}

