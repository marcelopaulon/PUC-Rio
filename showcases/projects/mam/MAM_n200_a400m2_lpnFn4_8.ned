
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn4_8
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
        @display("p=97.12,129.11");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=131.45,35.21");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=92.17,81.23");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=6.30,105.65");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=41.11,106.85");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=17.55,140.68");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=47.09,80.70");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=92.91,30.43");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=118.38,29.04");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=52.86,36.10");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=58.17,58.89");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=60.07,108.03");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=4.15,59.80");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=1.44,94.68");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=13.76,86.08");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=23.05,115.44");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=6.59,117.12");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=27.54,83.16");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=25.56,46.98");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=77.97,58.47");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=68.75,10.60");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=185.69,51.85");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=109.63,69.91");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=71.58,43.39");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=92.57,64.20");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=69.63,140.35");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=90.73,41.83");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=58.42,4.80");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=77.80,30.37");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=133.86,19.37");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=196.54,10.77");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=155.65,74.57");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=155.85,52.64");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=227.03,19.69");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=186.66,3.85");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=209.71,9.68");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=135.75,62.37");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=112.84,98.01");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=32.91,8.00");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=26.45,21.30");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=85.37,18.31");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=120.39,78.13");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=217.81,99.61");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=176.63,80.89");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=60.49,77.34");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=68.17,118.63");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=35.99,146.59");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=79.21,118.77");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=58.42,200.60");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=126.77,169.83");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=73.10,202.33");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=186.41,21.62");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=136.89,125.30");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=21.77,160.08");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=87.30,191.64");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=61.25,146.95");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=44.25,62.17");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=100.90,42.36");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=170.43,38.57");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=58.61,44.41");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=61.62,26.52");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=71.69,175.68");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=42.46,2.16");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=51.58,120.89");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=102.89,89.85");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=33.43,95.94");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=7.08,154.88");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=91.89,111.87");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=9.84,10.47");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=78.54,94.67");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=87.53,1.11");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=154.37,29.29");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=148.88,93.54");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=99.47,56.57");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=125.01,46.49");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=38.09,234.64");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=16.42,100.61");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=54.20,16.47");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=140.48,27.44");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=197.27,79.84");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=168.91,2.17");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=138.53,97.66");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=139.06,49.41");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=204.43,41.57");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=278.04,3.84");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=251.47,34.53");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=138.03,76.20");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=130.70,109.69");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=38.57,26.14");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=111.69,4.86");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=10.53,49.26");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=43.04,138.72");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=303.56,60.79");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=149.61,105.72");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=28.60,36.22");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=64.46,160.88");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=41.22,127.09");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=123.85,94.91");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=25.06,174.28");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=81.62,69.77");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=113.29,139.04");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=218.51,53.76");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=168.40,115.78");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=28.28,72.04");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=92.72,161.74");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=6.50,131.02");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=60.75,87.48");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=171.92,19.40");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=125.24,57.43");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=68.56,130.32");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=6.66,73.93");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=25.51,60.35");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=2.12,83.17");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=40.37,46.72");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=9.60,181.03");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=39.43,167.57");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=17.99,74.57");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=110.42,81.23");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=1.04,27.76");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=157.12,86.71");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=153.92,18.87");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=193.63,44.67");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=114.11,164.36");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=109.02,116.63");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=79.96,80.86");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=48.12,91.68");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=153.68,0.28");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=131.39,5.89");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=105.56,15.88");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=169.70,52.49");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=238.82,4.77");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=200.90,62.17");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=240.87,42.55");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=225.26,44.85");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=196.38,23.29");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=214.62,19.39");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=83.82,145.76");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=179.81,108.83");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=50.14,51.27");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=13.39,0.24");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=67.62,64.95");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=91.00,95.56");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=237.21,27.97");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=212.19,87.57");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=30.97,107.81");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=53.28,138.68");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=47.63,210.31");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=117.67,109.84");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=67.29,214.49");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=163.17,152.61");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=98.28,140.27");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=216.80,71.88");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=156.10,129.57");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=47.35,151.79");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=60.91,172.14");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=7.58,200.80");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=0.27,0.31");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=163.87,60.79");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=115.03,40.01");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=53.99,69.14");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=104.31,27.27");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=57.22,97.54");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=14.17,36.56");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=29.80,129.52");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=76.49,159.34");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=34.59,188.00");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=12.47,191.35");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=12.37,169.73");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=14.24,22.74");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=131.10,134.04");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=143.11,0.07");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=224.86,120.94");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=198.52,104.08");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=131.48,87.66");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=174.54,70.92");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=107.23,211.73");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=0.38,50.33");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=93.66,12.47");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=78.89,10.14");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=141.40,38.28");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=160.49,42.07");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=150.51,63.59");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=205.93,28.65");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=301.43,24.07");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=229.89,75.81");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=251.13,96.83");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=169.90,136.08");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=183.53,141.88");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=22.38,11.40");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=78.28,106.37");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=0.43,16.30");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=164.30,98.43");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=302.88,101.75");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=189.81,109.86");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=2.12,143.88");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=153.81,147.23");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=56.06,217.06");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=105.70,189.79");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=112.98,177.83");
    }

}

