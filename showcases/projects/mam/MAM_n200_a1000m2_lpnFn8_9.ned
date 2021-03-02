
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn8_9
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
        @display("p=55.40,24.17");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=115.03,18.22");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=119.55,6.86");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=93.46,9.39");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=52.67,7.57");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=30.53,30.73");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=26.85,70.77");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=41.46,49.40");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=5.77,133.26");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=94.25,88.20");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=2.30,82.01");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=15.91,84.48");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=78.98,116.59");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=167.45,135.85");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=10.36,117.49");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=75.61,90.65");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=112.98,103.39");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=102.55,16.13");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=180.89,38.36");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=115.67,41.19");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=111.63,68.62");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=72.17,68.37");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=29.83,143.70");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=18.55,152.53");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=105.11,117.60");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=96.19,66.06");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=173.31,98.87");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=124.67,28.13");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=85.84,28.59");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=72.59,51.66");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=75.74,17.71");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=30.74,97.56");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=39.18,84.32");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=96.10,135.28");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=54.40,56.73");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=78.54,36.62");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=21.25,101.52");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=60.26,145.09");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=121.28,164.16");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=10.28,165.87");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=157.45,124.23");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=172.07,53.06");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=149.86,23.09");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=188.11,20.86");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=188.41,46.88");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=80.92,75.47");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=43.83,75.22");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=104.68,170.54");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=2.55,250.35");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=143.33,68.16");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=86.21,55.86");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=156.81,64.63");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=138.77,11.19");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=140.63,31.68");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=11.26,35.42");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=103.47,37.91");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=0.35,66.72");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=56.58,81.25");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=42.33,141.27");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=90.84,116.97");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=31.60,47.18");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=21.98,182.10");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=75.11,174.27");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=96.26,194.32");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=23.23,132.19");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=82.04,46.73");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=89.45,148.14");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=155.96,38.53");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=183.20,64.66");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=151.39,74.25");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=106.68,81.17");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=66.68,97.22");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=60.44,114.93");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=35.54,180.97");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=154.26,151.75");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=55.83,44.62");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=200.18,41.07");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=168.89,41.32");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=186.69,6.68");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=27.04,83.04");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=14.72,47.21");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=36.80,62.17");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=121.87,95.06");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=69.70,81.63");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=51.82,156.17");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=21.03,0.78");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=3.35,96.41");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=111.79,149.07");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=187.71,137.61");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=56.18,100.20");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=66.62,185.83");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=162.38,17.68");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=160.41,48.85");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=244.20,108.87");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=131.95,47.93");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=171.39,10.83");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=24.36,117.46");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=129.43,149.68");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=50.94,237.44");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=76.19,136.25");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=118.32,78.28");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=209.97,7.98");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=131.41,64.79");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=17.07,18.56");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=62.27,13.78");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=38.79,20.77");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=44.17,112.51");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=72.73,5.93");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=0.82,144.93");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=88.76,165.64");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=94.53,44.55");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=31.55,171.72");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=139.55,143.56");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=186.30,117.27");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=43.99,171.55");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=44.76,131.10");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=119.48,53.15");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=162.72,28.96");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=205.97,98.09");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=162.83,80.51");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=100.32,54.86");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=127.22,115.51");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=40.30,155.08");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=18.80,197.48");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=194.89,93.65");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=45.30,34.09");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=20.32,30.58");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=169.62,71.86");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=39.58,5.33");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=19.58,62.21");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=64.77,35.79");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=54.89,128.82");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=0.57,38.27");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=34.57,206.98");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=135.50,170.88");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=61.86,66.40");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=7.33,58.06");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=109.99,209.62");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=258.54,141.93");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=4.91,108.15");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=143.41,128.41");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=116.04,128.96");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=113.96,29.66");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=226.38,6.45");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=107.05,92.21");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=132.28,103.13");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=92.47,76.18");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=19.49,216.22");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=85.53,202.71");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=89.69,103.31");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=128.79,38.34");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=153.87,5.86");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=205.11,52.49");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=134.54,0.14");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=5.27,4.27");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=87.90,18.40");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=44.11,99.41");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=70.37,123.49");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=1.10,216.54");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=146.39,167.32");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=3.95,15.25");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=33.62,125.99");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=10.81,73.03");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=238.49,139.73");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=6.31,198.37");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=146.25,116.63");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=71.83,148.67");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=70.19,109.82");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=253.06,36.76");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=149.42,57.78");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=149.59,87.48");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=143.71,96.23");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=62.50,162.00");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=60.27,227.61");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=183.06,106.05");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=27.32,12.78");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=176.30,87.58");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=131.04,89.74");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=145.39,40.56");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=61.76,1.71");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=66.95,24.52");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=77.55,101.10");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=132.00,19.54");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=69.57,195.79");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=82.87,181.12");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=8.92,24.43");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=35.24,107.04");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=77.43,158.23");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=214.07,218.61");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=53.35,167.50");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=123.40,136.49");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=107.36,198.17");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=48.17,17.06");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=233.45,62.29");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=155.65,108.24");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=201.33,71.95");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=108.62,4.92");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=15.35,140.75");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=6.47,186.71");
    }

}

