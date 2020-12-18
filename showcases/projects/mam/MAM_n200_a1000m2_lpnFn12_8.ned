
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn12_8
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
        @display("p=120.00,171.59");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=79.38,252.93");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=143.63,194.66");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=141.57,171.33");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=135.71,143.82");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=154.87,120.70");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=153.56,90.87");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=104.30,121.64");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=60.02,171.02");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=72.31,150.73");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=61.60,95.88");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=52.51,73.68");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=47.59,101.97");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=124.16,116.37");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=104.21,145.39");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=105.27,164.24");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=157.24,133.76");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=114.89,252.80");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=125.64,218.64");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=170.76,156.59");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=158.66,163.38");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=94.31,213.16");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=87.70,52.03");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=159.17,26.11");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=96.85,30.60");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=18.76,232.04");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=67.51,207.90");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=49.34,83.32");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=75.55,130.26");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=37.34,94.97");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=171.06,104.36");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=119.01,87.84");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=145.55,230.80");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=84.04,147.68");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=107.36,224.00");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=124.40,288.03");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=205.38,143.00");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=235.47,171.54");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=114.96,154.31");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=189.57,163.67");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=209.78,98.83");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=146.32,102.95");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=103.53,198.48");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=17.33,145.94");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=57.80,8.73");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=62.49,61.41");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=25.97,159.71");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=151.71,44.06");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=167.51,120.05");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=141.66,76.08");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=127.60,46.17");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=158.29,234.74");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=144.04,280.14");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=170.40,270.30");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=164.84,179.27");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=160.01,147.95");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=161.14,74.52");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=186.80,60.04");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=97.84,130.14");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=42.32,171.69");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=57.62,236.03");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=8.52,137.45");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=101.98,56.96");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=67.56,115.58");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=170.18,66.15");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=95.07,84.55");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=142.50,125.87");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=119.57,98.96");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=195.55,225.55");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=123.98,239.76");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=72.70,224.52");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=177.10,90.12");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=78.93,95.99");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=141.48,113.33");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=191.14,131.45");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=80.27,165.36");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=25.80,177.49");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=84.92,183.47");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=10.35,98.36");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=4.82,127.29");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=14.42,117.73");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=103.13,181.51");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=133.97,184.17");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=56.64,197.89");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=88.06,64.32");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=49.35,112.78");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=61.80,322.94");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=67.91,243.63");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=134.01,162.10");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=120.77,192.52");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=78.38,73.14");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=215.33,88.92");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=71.11,85.82");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=32.37,123.69");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=16.37,209.43");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=75.03,57.27");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=32.72,1.87");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=17.02,40.90");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=122.42,78.17");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=153.25,198.98");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=47.26,228.54");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=160.90,110.76");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=201.10,133.92");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=85.78,265.66");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=196.05,178.90");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=137.69,89.69");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=129.05,127.60");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=195.97,197.15");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=136.75,29.56");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=119.24,37.23");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=79.50,210.92");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=88.81,118.38");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=21.65,99.76");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=32.80,78.20");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=47.83,60.66");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=151.77,185.45");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=56.28,160.24");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=149.92,213.59");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=80.17,43.92");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=218.50,158.52");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=147.70,303.08");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=184.94,189.90");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=212.98,130.95");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=97.03,230.07");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=176.05,174.64");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=126.95,20.21");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=14.12,86.33");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=28.78,142.05");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=120.64,140.83");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=116.91,128.75");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=101.18,3.92");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=7.26,60.36");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=104.35,210.50");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=175.20,76.42");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=135.23,203.63");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=106.33,83.52");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=206.48,157.92");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=140.24,291.02");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=96.60,245.38");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=192.82,241.77");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=146.43,160.26");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=182.62,26.01");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=165.24,52.39");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=97.87,190.06");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=24.48,111.06");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=48.35,206.83");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=10.46,29.50");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=40.91,161.58");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=29.70,43.56");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=179.80,47.10");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=10.11,170.63");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=135.76,219.51");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=166.81,85.46");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=31.32,200.08");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=97.94,291.70");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=179.12,224.62");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=53.79,126.35");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=41.93,131.04");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=190.19,77.40");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=234.75,139.05");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=25.79,86.76");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=7.75,235.10");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=0.30,175.44");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=9.84,11.05");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=68.17,141.01");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=40.76,50.30");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=142.53,51.03");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=90.65,106.16");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=43.82,195.41");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=46.20,181.73");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=76.38,196.11");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=73.85,289.08");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=107.94,107.72");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=224.84,176.06");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=131.27,56.98");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=196.70,90.08");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=200.95,28.62");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=151.47,62.83");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=52.86,257.16");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=33.28,187.81");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=107.49,36.65");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=51.73,31.70");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=34.70,105.77");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=121.89,65.38");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=48.97,149.95");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=134.47,253.69");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=24.60,130.72");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=137.54,266.16");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=77.19,327.16");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=170.95,210.90");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=87.32,200.92");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=90.36,171.18");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=178.67,128.39");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=60.49,84.63");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=196.95,107.67");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=27.41,216.46");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=0.48,219.64");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=0.38,92.42");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=54.03,50.35");
    }

}

