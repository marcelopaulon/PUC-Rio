
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn12_7
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
        @display("p=99.71,37.22");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=81.37,127.92");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=85.76,112.61");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=10.51,95.93");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=30.76,73.05");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=45.27,84.07");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=56.78,84.67");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=45.96,56.45");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=75.08,57.20");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=54.45,29.28");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=88.84,22.89");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=111.14,9.68");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=72.87,35.81");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=84.82,51.18");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=115.51,85.33");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=173.66,149.79");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=41.49,43.45");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=63.20,94.80");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=153.92,119.80");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=92.57,146.85");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=76.03,45.81");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=33.44,90.73");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=7.99,68.63");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=74.36,98.46");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=60.74,67.31");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=142.96,102.86");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=56.28,13.62");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=114.13,30.85");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=141.05,10.85");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=128.31,72.50");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=46.21,127.12");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=143.08,85.22");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=97.43,112.60");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=77.52,139.74");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=100.24,21.76");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=128.27,195.78");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=41.99,185.23");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=52.00,41.27");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=5.85,121.77");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=96.24,125.21");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=118.19,99.16");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=18.07,47.52");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=95.55,87.80");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=110.01,76.60");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=174.81,16.16");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=160.59,42.25");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=56.26,128.34");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=138.10,43.47");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=166.74,157.48");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=164.94,125.99");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=116.71,118.18");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=123.04,108.04");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=17.24,73.89");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=164.25,111.07");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=19.51,103.59");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=75.48,83.64");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=86.85,163.52");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=108.60,159.57");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=42.84,3.67");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=64.82,51.98");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=45.24,14.32");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=117.30,58.64");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=121.22,9.66");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=98.67,65.36");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=94.57,75.23");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=164.35,90.56");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=212.08,149.26");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=70.36,189.20");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=85.66,37.16");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=97.15,168.75");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=70.88,163.79");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=7.88,34.07");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=28.63,10.09");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=83.18,64.97");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=67.36,135.47");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=131.58,29.36");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=128.34,135.77");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=19.01,22.50");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=123.33,43.80");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=118.89,20.11");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=106.77,122.77");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=94.85,52.11");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=139.58,70.61");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=110.00,188.13");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=82.62,148.67");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=187.79,39.03");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=56.65,153.09");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=71.69,112.77");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=16.76,58.31");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=31.57,108.50");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=75.34,0.36");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=105.55,49.26");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=31.68,52.38");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=4.56,21.71");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=29.24,37.20");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=67.89,7.42");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=130.32,100.53");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=3.24,58.30");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=166.83,22.30");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=43.46,112.06");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=119.92,177.02");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=135.05,109.52");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=131.36,61.93");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=11.25,137.52");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=124.26,164.87");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=0.97,8.45");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=80.72,74.68");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=2.33,84.05");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=64.77,19.99");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=39.04,134.96");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=12.97,4.40");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=47.62,101.62");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=86.62,5.84");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=151.93,10.91");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=131.87,18.96");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=4.68,46.07");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=148.38,59.76");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=222.41,182.25");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=154.15,169.07");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=150.45,40.39");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=90.79,193.17");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=159.05,58.22");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=4.61,160.57");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=45.73,67.40");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=85.26,92.22");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=21.90,169.67");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=37.65,28.77");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=150.00,72.51");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=58.06,112.99");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=185.58,23.93");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=189.83,10.87");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=124.63,91.43");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=127.50,122.67");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=194.66,93.88");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=140.73,243.08");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=50.38,170.42");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=173.42,37.25");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=120.31,149.80");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=70.09,148.44");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=5.99,193.26");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=20.77,114.73");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=50.86,141.11");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=40.92,147.71");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=17.87,33.58");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=109.31,105.17");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=58.53,2.27");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=174.34,59.15");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=80.74,15.63");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=162.05,72.04");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=158.24,31.30");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=199.39,82.69");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=194.84,137.81");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=42.84,159.69");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=133.68,2.82");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=101.67,202.44");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=116.59,133.29");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=31.86,167.88");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=36.24,62.06");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=95.73,0.01");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=30.17,130.08");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=106.32,89.83");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=140.93,23.90");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=153.59,21.45");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=105.83,0.91");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=181.55,69.70");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=152.17,94.51");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=168.96,2.45");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=197.35,63.23");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=141.99,211.83");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=137.54,142.69");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=141.50,33.89");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=31.91,199.36");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=182.27,127.74");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=2.59,106.06");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=21.60,90.58");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=103.60,145.92");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=6.67,150.54");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=17.75,129.16");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=172.23,74.75");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=64.93,41.94");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=183.99,53.50");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=186.84,0.70");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=113.49,41.22");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=177.54,88.12");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=151.46,139.64");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=226.93,92.92");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=138.04,154.13");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=198.12,42.90");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=99.49,225.62");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=59.01,187.81");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=61.26,167.55");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=29.89,154.91");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=95.53,137.02");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=30.08,119.07");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=77.97,26.91");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=72.34,69.09");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=118.68,69.57");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=166.54,50.49");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=204.45,8.45");
    }

}

