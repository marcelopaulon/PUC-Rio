
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a1000m2_lpnFn12_3
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=139.91,144.84");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=179.22,165.27");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=140.56,94.62");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=221.76,83.80");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=257.44,139.99");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=245.22,168.73");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=227.50,153.48");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=204.68,116.73");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=106.84,39.32");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=152.27,153.39");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=215.25,250.75");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=83.70,65.86");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=282.16,143.73");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=224.79,183.45");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=265.00,112.95");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=216.41,142.97");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=120.55,108.90");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=17.80,45.03");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=188.48,132.84");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=173.97,178.28");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=181.25,62.61");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=220.32,93.85");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=297.47,206.16");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=261.85,221.00");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=165.69,195.23");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=166.77,114.58");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=68.05,63.63");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=56.01,143.44");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=207.45,195.37");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=237.13,89.02");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=240.73,75.93");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=339.08,125.97");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=249.39,180.80");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=142.04,175.36");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=247.54,97.19");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=127.82,79.10");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=158.72,169.72");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=135.64,116.04");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=127.39,89.73");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=274.33,65.97");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=221.96,48.86");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=283.72,117.70");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=205.97,105.69");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=251.68,72.78");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=179.97,51.85");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=84.45,142.55");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=124.89,196.88");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=173.69,152.21");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=284.19,73.64");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=231.18,196.91");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=252.23,229.14");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=238.76,157.50");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=251.24,199.76");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=42.71,115.99");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=112.18,147.38");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=180.64,115.64");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=167.69,83.16");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=311.60,60.06");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=207.84,133.66");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=308.28,176.15");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=292.60,165.95");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=150.49,199.62");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=40.53,48.35");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=118.04,70.00");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=186.27,175.68");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=103.15,140.81");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=195.55,84.68");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=285.71,91.76");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=201.10,242.61");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=188.86,75.83");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=152.23,111.37");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=85.67,124.43");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=140.60,124.80");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=253.61,115.74");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=229.31,104.97");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=250.18,56.06");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=217.82,156.15");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=225.07,74.29");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=183.61,237.09");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=245.64,43.31");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=38.17,126.64");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=92.48,89.30");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=205.04,252.65");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=229.07,61.60");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=211.61,17.50");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=327.56,129.62");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=278.13,189.08");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=249.09,147.79");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=155.26,139.79");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=31.81,102.71");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=183.38,218.42");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=194.44,253.76");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=201.56,153.38");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=298.24,123.96");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=324.44,94.10");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=215.76,210.04");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=228.32,167.29");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=217.33,118.89");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=130.93,67.16");
    }

}

