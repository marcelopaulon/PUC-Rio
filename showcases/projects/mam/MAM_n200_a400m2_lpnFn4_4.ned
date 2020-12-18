
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn4_4
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
            @display("p=100,100");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=56.52,166.70");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=9.21,103.96");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=60.43,67.71");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=155.04,56.00");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=123.80,69.16");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=178.27,9.16");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=180.04,33.28");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=217.99,50.25");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=213.93,80.89");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=196.39,68.82");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=274.39,114.24");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=196.69,1.13");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=226.59,18.05");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=277.66,76.51");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=288.46,87.61");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=385.02,71.68");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=395.81,97.73");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=297.96,100.50");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=291.00,124.94");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=308.95,124.20");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=289.87,108.68");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=206.26,151.45");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=233.05,87.89");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=208.82,92.96");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=198.66,89.92");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=266.01,73.60");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=253.83,27.90");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=277.72,94.27");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=238.38,153.81");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=132.81,109.21");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=206.09,115.76");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=193.52,20.42");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=201.57,38.60");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=185.50,67.32");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=190.45,33.52");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=132.84,56.97");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=121.77,7.15");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=134.57,10.87");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=149.45,90.48");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=151.36,150.33");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=90.62,204.16");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=123.30,181.41");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=216.89,172.98");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=193.93,185.85");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=208.79,252.12");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=296.14,289.37");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=251.61,298.11");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=280.14,217.17");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=318.46,258.25");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=75.68,80.44");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=49.81,103.38");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=21.94,170.78");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=40.87,77.88");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=140.10,126.54");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=203.44,23.43");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=253.54,48.96");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=227.09,55.86");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=221.26,5.93");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=194.48,51.44");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=162.69,18.58");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=209.43,141.50");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=258.12,7.58");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=272.32,12.43");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=344.08,121.15");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=341.08,20.79");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=364.09,73.08");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=361.14,25.67");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=332.31,76.06");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=288.31,159.27");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=292.14,143.02");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=265.59,91.66");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=247.76,173.13");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=169.50,139.96");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=185.74,171.37");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=261.19,148.25");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=227.39,74.08");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=207.67,52.12");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=224.19,117.53");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=271.84,137.30");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=121.84,121.90");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=227.20,206.48");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=93.93,12.40");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=233.64,28.34");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=183.29,108.46");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=220.60,36.79");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=126.41,47.45");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=169.26,60.02");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=148.46,27.15");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=86.19,126.46");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=141.46,225.37");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=62.42,119.01");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=146.03,174.87");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=190.08,123.97");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=157.09,123.29");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=221.39,294.21");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=345.89,238.77");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=287.18,327.66");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=241.19,213.58");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=389.32,259.43");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=142.04,42.75");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=80.62,182.28");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=71.26,105.39");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=3.75,125.29");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=119.53,79.98");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=128.64,152.38");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=125.50,16.72");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=249.05,60.20");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=175.53,51.04");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=202.52,133.97");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=234.50,47.09");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=290.32,192.81");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=237.85,3.85");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=311.95,48.46");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=341.61,49.04");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=345.72,133.32");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=350.92,95.37");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=335.67,167.10");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=375.53,157.90");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=258.02,103.86");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=357.00,108.36");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=280.87,196.48");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=305.19,157.27");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=245.68,35.28");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=165.59,33.36");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=185.32,97.35");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=262.65,130.50");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=292.65,2.38");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=224.91,155.63");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=169.95,102.97");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=58.27,87.36");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=120.26,103.69");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=252.22,17.33");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=126.40,90.49");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=195.32,107.56");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=103.79,10.19");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=210.21,71.19");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=127.16,27.86");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=172.25,21.62");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=120.61,56.72");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=155.23,110.18");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=49.79,231.47");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=136.25,193.20");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=193.57,149.26");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=207.37,196.09");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=113.23,254.77");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=295.10,342.81");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=255.57,256.81");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=354.51,218.09");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=297.26,305.26");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=102.03,31.45");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=113.33,152.89");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=5.01,149.14");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=20.49,68.04");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=83.12,23.36");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=116.94,165.68");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=163.10,48.56");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=153.23,44.46");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=236.70,129.16");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=225.44,138.71");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=172.65,84.96");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=296.18,56.73");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=203.72,8.58");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=305.74,73.15");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=242.27,92.87");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=266.96,59.56");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=324.14,31.12");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=387.07,84.63");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=311.04,82.58");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=244.39,110.14");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=351.15,145.91");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=316.89,116.72");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=215.38,124.63");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=209.53,103.54");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=172.29,127.25");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=202.59,78.17");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=340.36,86.74");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=294.27,66.99");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=245.70,162.30");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=165.97,154.14");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=146.57,140.75");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=255.39,75.47");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=154.32,73.10");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=164.21,8.25");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=116.22,134.53");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=167.31,75.50");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=137.45,72.52");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=80.86,47.83");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=78.56,9.06");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=102.28,149.20");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=138.80,91.26");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=77.07,194.10");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=145.06,210.69");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=172.89,188.25");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=225.65,229.34");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=302.98,254.60");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=270.52,346.15");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=249.53,228.85");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=292.58,226.94");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=316.73,316.12");
    }

}

