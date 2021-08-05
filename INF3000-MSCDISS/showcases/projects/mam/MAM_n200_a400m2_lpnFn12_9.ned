
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn12_9
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
        @display("p=187.98,55.01");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=133.98,74.37");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=72.62,8.70");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=92.20,20.26");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=67.29,26.58");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=86.91,91.52");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=23.44,113.97");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=11.49,89.40");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=50.46,25.82");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=167.74,57.78");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=86.40,61.36");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=78.28,31.41");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=20.91,83.48");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=120.49,88.58");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=159.55,127.13");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=143.31,113.93");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=146.72,57.54");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=108.56,64.45");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=211.62,117.82");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=42.27,97.27");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=93.00,78.60");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=46.20,37.25");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=87.01,117.42");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=39.66,46.49");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=63.69,16.67");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=27.89,25.51");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=213.27,101.91");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=42.54,146.04");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=174.00,38.71");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=19.42,42.33");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=94.73,124.63");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=149.58,148.74");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=131.12,89.62");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=97.88,140.72");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=155.72,7.32");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=162.37,25.97");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=16.67,3.10");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=134.31,20.40");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=88.89,8.08");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=35.93,117.53");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=41.19,71.45");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=13.63,66.83");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=120.47,9.84");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=175.68,103.77");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=72.26,115.65");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=72.42,85.57");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=28.54,10.35");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=109.21,91.54");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=125.15,98.94");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=160.21,157.47");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=76.20,126.77");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=137.96,62.80");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=127.90,57.45");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=82.62,52.03");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=66.08,65.89");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=50.08,50.99");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=58.85,103.60");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=3.91,51.99");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=69.15,37.16");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=39.61,27.18");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=162.31,87.84");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=36.29,105.62");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=127.28,113.47");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=75.13,97.83");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=128.05,138.58");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=225.39,143.91");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=145.99,125.62");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=195.62,106.87");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=170.44,94.98");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=158.38,43.70");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=144.81,28.72");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=173.22,73.25");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=2.03,82.14");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=3.53,133.57");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=10.84,208.45");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=24.27,137.49");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=52.63,12.21");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=197.42,72.43");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=89.08,29.85");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=139.03,37.56");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=0.50,62.55");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=112.11,106.09");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=135.65,125.94");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=177.93,145.87");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=46.91,121.65");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=222.09,19.35");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=158.01,77.53");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=122.86,27.53");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=104.67,0.16");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=41.98,1.48");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=57.68,159.80");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=29.98,208.74");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=34.19,78.60");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=62.76,52.63");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=233.92,75.07");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=118.18,121.66");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=29.67,57.41");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=19.43,97.41");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=194.91,154.25");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=236.21,93.61");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=109.82,150.89");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=8.45,101.87");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=118.70,52.52");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=122.04,75.67");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=134.12,9.81");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=182.35,17.59");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=1.17,1.05");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=33.24,167.19");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=56.71,179.37");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=12.09,26.14");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=52.22,73.67");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=237.02,113.10");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=113.51,31.44");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=106.13,43.21");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=64.60,2.27");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=191.08,82.17");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=98.59,89.69");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=141.47,140.83");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=130.25,155.70");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=196.99,10.95");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=110.28,170.94");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=85.50,39.45");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=163.12,15.96");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=106.40,53.56");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=65.11,136.42");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=24.66,147.84");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=75.45,165.37");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=78.63,75.33");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=203.84,53.80");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=48.76,85.70");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=140.02,103.12");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=8.04,168.51");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=192.49,29.41");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=111.14,79.52");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=222.26,90.49");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=186.60,72.16");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=236.50,124.24");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=161.53,112.08");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=146.12,47.27");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=75.56,20.20");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=85.61,104.65");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=83.99,157.43");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=34.02,35.68");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=6.53,14.22");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=0.98,41.73");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=195.65,121.19");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=106.53,23.00");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=42.64,61.35");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=19.80,52.87");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=167.92,6.88");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=87.49,146.20");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=113.13,189.70");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=143.48,174.30");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=201.54,131.09");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=141.49,2.66");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=120.11,64.84");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=97.37,61.83");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=52.15,1.23");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=112.91,131.43");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=20.38,161.57");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=28.02,124.15");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=96.49,48.02");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=216.67,62.27");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=101.82,73.05");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=73.96,57.28");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=36.42,134.38");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=128.20,178.86");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=240.76,142.96");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=205.73,39.37");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=59.27,127.85");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=177.41,134.69");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=127.48,45.17");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=58.81,40.65");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=97.74,113.49");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=41.79,12.99");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=83.68,172.91");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=62.71,76.35");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=28.36,176.10");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=6.90,113.76");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=151.67,20.41");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=59.50,113.85");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=107.70,119.73");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=11.78,151.38");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=183.76,112.25");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=189.58,145.32");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=202.02,168.74");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=100.90,181.76");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=176.96,62.47");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=143.67,79.88");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=54.80,60.48");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=100.43,31.62");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=47.37,111.65");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=119.84,156.80");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=77.93,183.74");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=72.93,151.52");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=105.23,11.15");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=244.67,15.27");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=30.19,68.90");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=2.29,29.14");
    }

}

