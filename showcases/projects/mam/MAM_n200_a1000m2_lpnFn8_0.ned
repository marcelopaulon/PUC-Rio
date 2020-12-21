
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn8_0
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
        @display("p=124.66,110.99");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=104.47,132.92");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=167.19,76.55");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=113.33,62.90");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=175.75,124.20");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=112.51,178.74");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=128.63,164.24");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=123.59,76.49");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=92.07,36.55");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=12.03,12.22");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=30.73,9.15");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=96.12,17.58");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=26.70,29.05");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=39.24,40.00");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=63.04,50.03");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=72.88,42.23");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=102.50,71.36");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=96.65,89.25");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=155.00,21.68");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=134.43,64.29");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=86.21,79.68");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=8.37,64.93");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=18.41,76.64");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=57.04,7.03");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=120.30,89.62");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=201.78,147.68");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=71.28,200.39");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=201.76,38.45");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=177.92,82.47");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=219.35,167.25");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=170.69,253.83");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=137.55,241.00");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=178.25,15.56");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=76.50,59.44");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=22.45,45.49");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=18.62,1.01");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=101.80,58.84");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=70.17,30.90");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=33.09,95.76");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=87.31,99.56");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=160.47,65.52");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=153.21,133.34");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=67.24,133.92");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=200.15,4.70");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=129.82,134.29");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=123.01,5.37");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=64.21,74.59");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=62.08,149.62");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=135.43,11.50");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=98.73,147.44");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=139.16,104.12");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=108.91,112.79");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=246.09,134.74");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=144.93,127.29");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=193.06,126.99");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=75.17,236.56");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=145.29,201.47");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=148.11,70.95");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=85.33,46.81");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=16.79,21.82");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=3.72,42.50");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=43.41,56.31");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=26.31,61.77");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=72.28,102.85");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=23.85,132.26");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=150.08,37.69");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=84.52,17.86");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=169.16,145.53");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=223.41,70.30");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=111.60,44.63");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=96.59,157.79");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=7.80,104.03");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=4.82,82.16");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=110.68,78.07");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=148.85,185.93");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=145.45,84.26");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=18.71,111.42");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=209.82,118.77");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=143.32,58.98");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=196.96,170.29");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=145.84,153.59");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=199.92,229.94");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=157.88,155.71");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=186.70,67.49");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=100.54,4.10");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=1.68,31.85");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=111.21,16.49");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=22.25,95.08");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=41.01,21.69");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=59.85,89.98");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=30.37,112.66");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=167.63,47.95");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=62.82,161.39");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=216.54,17.56");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=143.13,19.04");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=76.54,76.28");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=48.17,96.52");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=40.59,122.72");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=97.58,44.95");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=83.36,123.41");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=131.16,97.87");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=126.51,150.29");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=253.55,56.05");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=125.63,50.37");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=181.40,181.70");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=116.82,160.16");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=153.06,144.28");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=179.42,104.23");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=58.35,37.84");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=32.80,75.37");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=125.48,23.59");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=117.60,30.07");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=44.10,110.54");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=87.05,57.01");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=128.35,123.36");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=169.93,29.29");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=51.62,48.24");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=165.26,89.92");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=190.68,88.39");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=55.68,117.70");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=90.51,132.89");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=36.04,149.09");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=51.61,138.83");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=70.96,85.41");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=83.13,152.53");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=46.95,172.02");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=193.15,141.62");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=202.26,106.96");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=195.59,25.03");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=161.61,123.79");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=171.87,197.10");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=120.73,188.52");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=181.25,57.11");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=91.38,68.87");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=0.27,9.03");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=34.19,50.67");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=135.71,37.04");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=53.05,20.26");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=42.33,3.77");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=96.30,115.99");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=63.77,21.43");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=40.48,137.13");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=86.56,171.82");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=213.39,51.43");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=179.09,36.55");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=64.50,60.67");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=51.48,71.95");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=13.67,150.37");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=81.40,2.96");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=180.71,46.49");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=157.47,106.18");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=157.99,197.20");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=203.90,78.27");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=203.35,65.78");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=235.38,69.41");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=212.36,178.78");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=151.92,224.22");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=109.80,149.76");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=78.68,113.75");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=48.98,31.14");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=81.66,89.14");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=159.69,2.71");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=6.26,117.66");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=107.04,29.53");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=109.59,94.40");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=16.13,53.68");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=53.95,61.18");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=144.56,94.24");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=253.40,24.31");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=155.14,88.81");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=150.23,50.25");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=26.05,158.92");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=1.68,161.17");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=67.39,8.03");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=140.76,137.29");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=115.64,132.48");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=179.50,144.27");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=220.49,94.97");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=124.55,37.95");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=249.24,156.77");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=129.50,200.88");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=146.18,175.66");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=134.50,83.12");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=180.76,0.71");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=0.28,58.83");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=15.14,34.04");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=83.60,30.06");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=46.94,81.42");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=26.85,122.41");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=75.30,143.64");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=56.15,128.23");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=192.12,112.94");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=65.45,110.90");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=213.29,85.68");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=161.28,37.89");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=62.69,173.20");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=1.06,71.79");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=4.99,142.73");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=37.85,66.29");
    }

}

