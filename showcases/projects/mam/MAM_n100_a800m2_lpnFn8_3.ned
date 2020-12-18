
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a800m2_lpnFn8_3
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=98.28,87.22");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=129.85,75.73");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=133.34,62.96");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=151.13,91.55");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=208.53,23.01");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=272.90,47.29");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=282.75,89.36");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=337.36,153.89");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=345.52,210.73");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=243.66,150.04");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=218.12,167.42");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=219.69,190.32");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=55.50,156.29");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=168.23,133.40");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=128.63,90.19");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=139.00,35.66");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=188.60,101.91");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=176.81,29.28");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=317.97,104.49");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=338.17,105.38");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=392.59,81.63");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=326.31,230.57");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=273.72,140.66");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=195.49,145.72");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=191.76,246.68");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=54.14,25.26");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=118.43,52.11");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=115.34,22.18");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=51.48,10.08");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=202.42,125.49");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=190.11,90.41");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=298.35,60.32");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=348.78,163.18");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=391.15,134.14");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=360.91,139.19");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=307.99,147.59");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=251.90,215.20");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=225.20,141.70");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=55.72,44.09");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=80.30,174.08");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=164.24,148.71");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=116.77,160.80");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=101.59,112.80");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=226.96,43.28");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=186.10,24.72");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=228.64,21.31");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=254.28,125.55");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=279.26,204.46");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=192.88,190.56");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=186.95,181.96");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=296.91,184.36");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=144.57,11.26");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=88.24,29.29");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=143.38,78.36");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=166.91,11.26");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=152.49,41.45");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=190.40,15.04");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=328.02,118.21");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=301.08,91.75");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=343.49,233.19");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=366.20,271.11");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=229.31,176.62");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=200.35,172.18");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=203.71,230.69");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=182.37,62.64");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=96.60,175.03");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=139.44,134.89");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=225.35,56.01");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=203.51,108.80");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=238.61,7.00");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=205.47,4.58");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=289.00,70.16");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=351.96,188.96");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=391.26,238.55");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=309.89,123.16");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=212.01,207.02");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=226.61,237.77");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=149.99,67.27");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=139.48,158.30");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=36.71,93.00");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=130.10,40.56");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=142.01,110.29");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=170.42,83.62");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=225.55,8.39");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=251.67,85.25");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=329.93,138.98");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=315.33,210.04");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=258.97,232.87");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=208.61,71.50");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=213.16,91.37");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=113.96,128.95");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=56.91,126.20");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=109.37,104.86");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=76.92,130.88");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=135.78,97.79");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=209.13,45.01");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=341.45,86.74");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=279.27,62.46");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=345.65,129.69");
    }

}

