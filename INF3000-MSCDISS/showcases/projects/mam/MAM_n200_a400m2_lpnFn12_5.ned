
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn12_5
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
        @display("p=122.95,95.32");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=41.35,129.45");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=109.99,57.20");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=126.27,69.27");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=127.21,83.21");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=153.23,113.78");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=220.26,105.33");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=168.52,45.85");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=139.35,53.90");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=223.91,5.75");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=208.08,49.48");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=109.58,37.45");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=111.15,72.11");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=148.08,83.80");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=198.57,131.03");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=229.51,137.95");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=150.26,146.44");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=65.85,101.89");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=69.56,155.30");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=190.68,18.18");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=36.08,59.73");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=183.83,57.30");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=159.32,122.73");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=213.05,122.87");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=253.41,77.49");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=211.19,31.98");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=228.25,68.78");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=227.35,91.82");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=88.38,127.94");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=22.82,44.42");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=63.24,76.29");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=283.48,168.01");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=251.02,164.35");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=85.58,172.76");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=80.72,66.31");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=49.68,78.88");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=116.34,135.19");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=62.38,126.11");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=93.99,20.26");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=142.71,102.44");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=193.01,83.58");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=246.66,39.92");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=55.85,108.04");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=234.80,100.44");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=195.56,48.69");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=49.34,23.74");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=29.75,81.95");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=91.10,91.72");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=201.26,149.74");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=202.02,185.13");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=51.51,146.92");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=202.44,74.36");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=52.29,93.53");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=149.72,67.61");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=192.70,111.55");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=130.25,182.82");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=121.12,176.46");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=261.28,139.23");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=166.24,73.85");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=162.78,109.78");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=310.61,27.32");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=122.33,12.84");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=80.52,11.56");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=187.06,129.11");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=205.95,97.58");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=209.26,176.50");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=247.86,131.11");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=77.35,24.30");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=90.30,54.88");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=57.17,189.56");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=27.88,5.92");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=146.12,127.07");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=110.45,149.17");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=101.20,193.40");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=301.33,110.78");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=108.30,120.58");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=109.88,97.62");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=212.17,19.25");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=236.71,87.39");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=131.97,2.64");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=95.78,69.65");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=183.45,100.85");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=230.56,47.37");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=219.09,200.31");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=60.55,30.80");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=205.04,86.44");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=36.21,188.09");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=21.04,93.60");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=122.99,34.90");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=130.62,155.98");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=185.61,169.81");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=282.06,114.90");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=177.56,65.82");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=150.96,39.50");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=187.92,35.20");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=285.69,34.40");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=91.82,31.98");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=140.33,42.41");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=136.77,88.22");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=213.71,152.54");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=238.83,198.70");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=69.62,59.95");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=50.54,63.65");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=43.43,113.83");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=135.14,23.76");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=95.87,159.87");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=190.48,73.67");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=154.59,98.16");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=157.53,160.07");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=195.65,27.02");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=172.70,22.36");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=250.67,30.32");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=291.22,71.63");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=83.49,98.60");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=162.74,61.21");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=173.35,161.79");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=259.16,206.56");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=180.33,183.66");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=11.07,109.33");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=103.19,181.03");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=2.92,144.81");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=175.57,116.92");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=150.77,1.10");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=161.10,1.23");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=179.46,41.43");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=216.93,166.45");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=133.13,33.98");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=167.80,85.89");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=267.50,57.06");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=286.48,97.12");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=76.08,84.27");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=90.11,5.11");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=139.74,11.74");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=169.04,170.86");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=314.81,178.70");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=151.85,53.85");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=168.25,98.08");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=44.85,181.08");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=112.22,84.75");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=51.48,124.62");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=138.01,71.08");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=69.20,135.64");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=227.67,127.58");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=248.62,58.92");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=142.52,137.78");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=267.45,73.13");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=181.77,81.53");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=10.32,26.60");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=157.61,29.67");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=104.72,109.29");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=277.18,177.51");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=225.68,182.69");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=142.30,179.24");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=130.17,143.41");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=31.55,136.63");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=121.90,49.31");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=131.07,115.05");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=173.43,141.50");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=141.63,163.45");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=226.88,81.13");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=268.01,42.38");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=194.78,99.45");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=188.50,4.30");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=122.64,23.24");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=119.91,60.41");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=157.53,16.54");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=167.84,9.11");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=271.28,123.65");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=226.97,161.47");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=132.49,127.01");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=29.80,103.46");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=26.63,127.38");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=49.08,5.54");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=71.94,36.73");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=202.54,38.47");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=105.01,169.30");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=308.33,126.76");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=244.97,100.93");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=73.85,47.22");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=235.42,5.20");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=272.54,8.70");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=56.79,41.78");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=57.45,17.84");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=121.78,107.73");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=240.09,116.06");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=266.45,98.79");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=39.19,151.33");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=100.31,136.52");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=9.71,158.81");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=37.96,73.67");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=62.15,3.90");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=70.82,16.56");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=92.90,149.79");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=264.19,154.92");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=119.13,123.21");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=230.16,35.55");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=288.71,12.75");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=202.55,3.57");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=116.60,1.92");
    }

}

