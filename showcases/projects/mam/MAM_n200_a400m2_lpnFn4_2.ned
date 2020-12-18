
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn4_2
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
        @display("p=96.38,49.76");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=79.95,79.31");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=44.89,8.82");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=17.62,27.83");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=85.53,69.15");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=66.23,20.53");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=69.07,7.29");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=98.16,74.30");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=75.90,34.01");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=157.85,45.65");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=186.07,61.65");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=225.99,66.75");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=177.77,5.10");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=187.10,14.50");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=255.90,51.87");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=335.52,34.85");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=319.96,69.69");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=336.05,123.04");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=291.16,126.00");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=379.76,137.16");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=314.77,199.27");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=290.21,211.59");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=294.12,238.70");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=286.98,145.83");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=225.80,136.38");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=248.74,156.32");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=219.94,164.66");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=215.83,152.40");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=279.64,134.16");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=306.76,149.18");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=395.61,145.83");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=315.07,117.70");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=350.25,31.74");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=336.13,100.55");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=259.95,81.30");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=210.69,58.28");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=197.61,97.52");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=189.29,112.14");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=249.33,168.80");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=214.16,106.02");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=227.76,147.31");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=197.35,64.41");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=294.48,48.80");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=223.40,44.24");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=313.10,9.77");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=270.98,71.21");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=250.48,34.99");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=201.37,13.76");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=224.22,83.03");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=41.73,131.44");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=34.14,24.86");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=64.61,77.86");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=5.35,88.83");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=91.00,58.34");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=128.97,39.56");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=10.39,11.69");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=55.38,10.20");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=131.85,98.53");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=107.59,44.92");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=138.37,78.30");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=145.87,54.43");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=153.91,116.95");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=147.27,30.02");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=172.13,24.71");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=237.21,8.16");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=374.48,66.13");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=351.99,48.22");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=244.00,84.74");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=313.99,87.59");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=342.44,138.92");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=376.46,210.40");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=315.45,211.59");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=204.38,234.03");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=318.99,173.56");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=268.76,165.19");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=282.88,113.40");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=196.74,245.26");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=253.04,113.51");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=352.79,94.39");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=335.36,146.37");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=370.48,179.44");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=327.68,133.87");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=302.19,4.31");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=366.99,139.73");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=244.20,178.46");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=224.09,102.52");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=122.25,81.46");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=169.02,112.68");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=216.89,175.85");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=211.34,87.17");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=266.15,116.56");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=120.08,12.04");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=303.28,38.86");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=170.71,86.84");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=387.08,42.74");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=350.36,124.70");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=226.28,33.36");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=213.73,76.77");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=295.97,97.55");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=64.58,38.85");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=47.09,75.12");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=108.75,112.07");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=137.30,15.68");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=63.52,58.53");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=47.77,161.40");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=36.14,100.38");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=116.78,0.11");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=109.91,88.40");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=34.08,67.07");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=169.04,62.62");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=189.55,51.69");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=210.90,34.45");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=199.86,1.89");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=194.19,28.86");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=222.45,13.18");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=286.38,74.88");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=251.26,97.33");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=356.45,74.40");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=256.01,65.19");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=339.77,164.36");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=310.83,188.85");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=255.72,182.83");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=352.94,251.60");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=271.73,48.56");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=151.82,199.30");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=269.96,151.56");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=183.95,75.04");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=151.47,155.04");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=286.89,191.73");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=263.99,93.97");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=389.90,60.70");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=329.02,92.90");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=343.60,24.10");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=330.21,57.67");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=310.26,21.76");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=184.43,89.87");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=271.11,83.30");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=177.93,129.71");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=268.15,246.13");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=303.28,121.74");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=198.21,175.13");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=192.83,122.50");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=383.21,72.47");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=238.99,23.72");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=240.84,51.89");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=250.84,127.86");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=252.52,7.58");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=209.48,19.75");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=158.58,61.43");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=72.54,146.63");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=26.90,84.80");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=102.98,31.78");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=85.86,4.22");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=92.87,32.51");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=15.50,128.34");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=60.87,103.37");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=29.68,1.02");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=50.74,105.38");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=84.34,27.08");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=179.87,44.77");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=201.40,128.17");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=236.25,125.38");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=163.33,9.84");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=122.12,53.23");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=165.68,32.90");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=288.04,5.77");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=363.74,50.58");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=268.31,193.56");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=237.80,113.81");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=376.07,150.32");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=239.74,263.89");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=331.11,186.79");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=339.71,264.53");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=365.22,191.61");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=244.78,221.78");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=221.81,187.32");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=237.03,186.15");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=182.40,182.16");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=262.52,173.79");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=268.90,106.38");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=372.58,123.92");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=359.08,39.28");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=360.17,121.83");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=317.20,136.16");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=200.67,46.98");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=119.43,67.97");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=203.05,75.71");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=203.37,113.43");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=210.20,207.78");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=119.48,116.39");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=278.24,225.22");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=239.22,72.49");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=301.45,82.73");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=139.36,62.62");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=318.46,102.92");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=321.69,20.15");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=262.73,24.20");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=274.18,29.68");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=163.21,93.73");
    }

}

