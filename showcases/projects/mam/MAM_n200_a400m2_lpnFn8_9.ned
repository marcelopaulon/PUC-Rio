
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn8_9
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
        @display("p=135.19,39.96");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=148.42,65.57");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=140.62,49.33");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=95.71,1.99");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=146.26,3.60");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=199.57,21.71");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=133.92,10.49");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=183.57,21.10");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=174.67,15.39");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=115.81,22.60");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=99.87,12.48");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=99.08,40.47");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=58.86,60.60");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=38.64,45.21");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=21.33,4.72");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=72.25,30.70");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=9.43,27.96");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=69.10,95.74");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=126.11,87.74");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=209.11,83.62");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=132.39,131.42");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=84.23,121.88");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=121.19,136.04");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=106.74,115.13");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=108.77,86.01");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=217.22,27.91");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=206.64,70.96");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=131.35,74.04");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=112.42,61.07");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=157.90,41.23");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=156.28,15.43");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=136.43,26.46");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=243.03,19.32");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=191.19,69.36");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=190.83,37.81");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=22.69,46.78");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=137.28,112.26");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=40.54,58.70");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=108.30,51.73");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=52.26,24.85");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=119.84,75.87");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=8.53,94.05");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=106.86,136.48");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=63.32,43.04");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=186.57,140.32");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=157.11,157.84");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=133.56,142.35");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=93.83,143.55");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=104.98,213.95");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=121.69,147.99");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=174.19,39.83");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=196.03,122.65");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=115.25,4.87");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=91.29,31.56");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=180.27,7.10");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=225.81,5.25");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=168.93,28.89");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=190.42,9.78");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=155.82,27.62");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=209.86,13.15");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=78.45,15.43");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=95.73,56.27");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=22.69,35.90");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=115.17,35.48");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=78.88,79.34");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=65.29,7.22");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=44.87,100.60");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=10.93,150.47");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=153.27,114.14");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=248.07,140.96");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=175.06,95.60");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=38.08,170.52");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=39.15,85.93");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=69.23,184.12");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=88.81,92.13");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=160.78,90.59");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=145.86,39.23");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=128.08,62.88");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=84.54,56.84");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=167.67,71.90");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=290.81,38.07");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=35.26,9.53");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=212.28,38.51");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=199.00,1.83");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=170.80,57.55");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=148.64,80.60");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=44.68,34.06");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=42.41,75.86");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=101.52,68.31");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=68.17,18.02");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=63.55,70.87");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=49.51,1.19");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=28.89,137.36");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=168.81,177.56");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=248.40,46.22");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=72.94,169.15");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=24.24,149.27");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=104.38,151.59");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=119.55,119.88");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=10.77,72.81");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=185.60,83.23");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=240.84,102.65");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=124.89,40.02");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=1.07,19.05");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=233.84,36.01");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=203.17,46.71");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=152.81,97.57");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=215.76,61.07");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=197.96,93.69");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=142.33,17.98");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=75.50,5.24");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=67.02,81.43");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=53.14,74.83");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=11.40,39.46");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=56.56,90.34");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=81.99,25.07");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=6.23,50.40");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=20.18,62.26");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=130.39,97.99");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=222.59,112.97");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=128.17,176.13");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=32.10,197.36");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=168.82,111.50");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=56.90,101.26");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=59.94,179.26");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=128.91,50.12");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=142.13,88.55");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=157.61,126.25");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=30.41,73.64");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=168.90,7.13");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=241.11,86.86");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=125.63,17.65");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=199.55,32.23");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=250.03,69.32");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=105.24,32.35");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=16.02,17.64");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=49.25,44.71");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=2.55,102.26");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=36.44,113.85");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=1.19,79.71");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=126.93,108.38");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=74.84,60.02");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=55.17,140.25");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=116.50,104.29");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=233.35,144.85");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=187.90,49.52");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=31.28,185.70");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=110.73,174.78");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=86.85,110.52");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=72.59,108.70");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=200.54,58.32");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=135.52,0.46");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=157.33,71.97");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=34.24,23.72");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=93.90,76.13");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=203.32,113.40");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=179.56,68.96");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=260.49,38.00");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=228.53,26.77");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=157.28,60.34");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=89.51,17.84");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=50.31,12.95");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=5.94,118.86");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=38.16,129.40");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=74.57,45.30");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=61.72,28.96");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=65.30,52.90");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=58.30,115.43");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=67.77,127.16");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=223.50,92.82");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=160.73,147.03");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=119.50,187.16");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=189.10,183.96");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=142.66,167.04");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=99.07,124.06");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=218.00,48.92");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=81.06,137.08");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=151.10,48.86");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=30.27,60.60");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=198.09,81.36");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=226.66,74.50");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=164.20,102.27");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=263.08,66.79");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=267.97,19.63");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=117.98,47.33");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=85.07,40.75");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=140.45,99.32");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=49.77,156.51");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=25.04,122.70");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=10.76,4.58");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=22.69,112.79");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=1.32,0.27");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=79.90,100.92");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=66.35,151.53");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=239.01,130.46");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=177.82,161.90");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=95.47,185.44");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=112.87,233.28");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=86.77,68.27");
    }

}

