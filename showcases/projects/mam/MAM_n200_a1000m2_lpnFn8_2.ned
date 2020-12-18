
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn8_2
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
        @display("p=112.03,87.23");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=66.43,35.56");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=28.78,36.75");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=48.99,69.75");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=74.51,25.35");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=48.16,108.30");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=58.90,133.21");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=81.59,129.11");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=65.38,84.44");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=52.28,121.16");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=96.90,56.22");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=95.89,42.71");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=120.65,40.06");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=148.93,86.12");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=98.48,6.08");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=95.21,19.94");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=149.33,126.68");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=148.03,201.11");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=202.90,246.55");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=145.16,230.86");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=134.06,215.09");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=152.44,238.38");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=71.37,235.24");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=150.96,277.54");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=149.69,48.47");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=36.42,72.01");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=9.54,70.79");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=11.21,41.07");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=94.43,154.59");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=110.76,27.26");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=11.06,95.87");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=14.20,193.92");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=37.02,114.20");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=130.12,9.88");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=39.92,100.97");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=99.58,69.74");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=113.42,49.29");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=173.85,9.03");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=144.21,95.59");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=137.23,1.89");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=171.39,22.01");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=143.19,36.67");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=136.23,167.56");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=256.36,244.46");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=194.03,223.18");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=223.24,226.31");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=194.09,293.39");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=29.28,262.47");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=146.52,267.19");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=87.27,67.16");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=71.35,153.71");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=60.12,104.93");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=38.95,126.74");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=43.00,39.45");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=20.86,71.17");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=27.17,151.58");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=9.62,184.64");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=22.55,131.37");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=72.90,4.95");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=75.17,71.14");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=52.25,60.07");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=71.71,132.54");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=127.70,83.83");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=99.25,125.32");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=188.62,45.24");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=57.17,40.67");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=243.53,124.08");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=135.75,191.66");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=232.70,329.98");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=137.01,241.56");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=181.85,202.51");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=99.46,222.02");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=56.20,252.26");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=97.90,280.13");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=150.16,73.69");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=29.48,83.06");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=77.54,46.82");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=1.53,51.20");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=79.25,89.54");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=48.74,23.98");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=60.08,204.00");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=37.53,138.05");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=94.86,140.46");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=119.16,9.14");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=62.40,69.04");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=58.76,94.38");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=81.34,33.39");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=197.52,31.42");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=209.06,18.89");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=189.79,11.68");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=87.10,0.27");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=225.32,171.87");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=208.89,189.47");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=177.22,239.39");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=89.14,219.48");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=109.82,259.65");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=154.18,211.26");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=49.71,291.89");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=122.78,299.65");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=107.32,139.21");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=127.56,65.39");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=132.61,56.07");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=48.86,1.99");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=95.99,111.53");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=74.83,102.12");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=110.60,115.59");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=140.07,106.73");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=172.65,97.60");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=108.98,160.78");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=122.67,98.31");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=161.25,60.45");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=25.42,5.06");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=116.40,62.53");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=163.28,115.30");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=155.17,13.49");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=99.40,80.19");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=89.11,119.75");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=115.00,207.52");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=127.25,276.47");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=151.20,250.74");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=181.48,276.75");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=130.02,181.04");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=75.24,249.19");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=214.07,268.20");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=64.78,167.71");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=110.21,98.31");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=62.75,14.39");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=17.46,30.53");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=35.00,19.98");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=45.15,50.63");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=92.15,179.84");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=152.24,115.52");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=158.14,133.17");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=83.19,78.75");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=50.00,140.10");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=181.83,76.12");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=105.75,38.47");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=73.33,58.41");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=144.68,136.75");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=141.94,23.25");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=9.51,18.18");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=189.88,160.39");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=191.38,137.95");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=183.03,182.45");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=176.45,307.02");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=90.54,230.81");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=158.74,298.03");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=117.38,279.45");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=167.96,283.25");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=107.04,176.90");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=204.06,95.12");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=8.82,113.22");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=89.84,92.59");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=36.05,5.17");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=162.75,39.60");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=27.15,180.03");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=14.42,137.78");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=171.04,167.83");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=52.34,173.05");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=37.08,59.26");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=186.23,60.78");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=18.68,55.05");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=84.00,19.57");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=119.64,130.09");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=136.95,73.57");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=154.21,23.74");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=133.93,118.00");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=152.81,175.08");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=229.27,212.30");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=135.33,253.40");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=199.46,199.25");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=212.63,240.14");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=164.34,243.44");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=169.07,266.83");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=163.41,103.76");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=168.97,128.98");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=108.82,4.79");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=111.96,73.55");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=28.41,96.18");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=41.38,86.19");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=52.13,158.21");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=78.68,144.01");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=78.82,220.26");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=6.07,86.86");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=124.91,155.62");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=87.92,103.09");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=126.44,27.10");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=150.71,2.13");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=191.01,112.00");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=143.91,58.91");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=82.63,9.53");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=167.49,79.05");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=168.02,205.31");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=207.05,230.86");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=61.11,262.24");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=101.82,252.22");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=163.50,192.60");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=37.85,160.25");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=157.51,265.26");
    }

}

