
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn12_3
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
        @display("p=91.64,113.06");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=26.64,167.57");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=20.07,200.36");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=39.12,198.02");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=56.62,140.03");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=58.30,220.48");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=34.48,145.91");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=104.56,114.43");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=165.45,87.51");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=222.48,133.46");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=190.81,174.63");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=187.32,92.52");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=148.62,74.39");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=186.87,40.60");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=174.64,41.98");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=170.60,128.39");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=72.03,99.43");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=80.99,92.41");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=66.42,109.36");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=70.19,220.91");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=74.10,120.82");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=31.12,106.52");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=63.97,210.83");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=2.02,103.81");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=143.38,27.87");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=125.75,65.30");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=194.30,124.82");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=135.47,130.81");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=199.13,110.87");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=142.47,106.76");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=162.88,106.98");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=135.69,2.30");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=253.60,134.92");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=119.37,114.06");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=75.59,83.53");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=74.92,177.57");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=2.95,190.67");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=46.63,204.70");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=79.69,226.50");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=31.58,135.67");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=114.24,160.12");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=148.28,123.64");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=170.68,72.20");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=175.78,160.35");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=188.71,164.79");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=222.16,25.11");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=215.55,88.60");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=182.27,26.74");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=226.07,117.27");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=261.00,158.58");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=100.52,126.32");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=54.64,52.42");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=38.76,167.63");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=83.59,277.53");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=30.30,282.24");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=46.05,138.79");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=14.19,210.38");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=3.23,128.57");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=73.92,134.15");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=213.11,1.39");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=254.01,86.91");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=247.08,171.71");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=115.49,124.42");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=172.66,7.49");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=196.99,10.35");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=169.54,51.73");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=94.12,162.08");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=55.97,112.19");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=14.95,76.72");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=21.46,141.26");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=24.64,184.65");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=65.47,268.18");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=51.82,128.32");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=127.57,169.05");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=38.03,47.23");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=59.59,93.71");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=221.32,67.22");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=150.23,135.78");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=207.07,257.64");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=215.40,122.44");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=146.21,59.87");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=195.11,30.21");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=172.34,21.24");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=174.99,200.83");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=176.17,60.60");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=185.93,145.54");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=56.78,172.94");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=52.49,160.43");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=72.64,244.02");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=107.22,77.22");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=48.86,270.99");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=49.68,80.86");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=137.76,144.65");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=157.50,155.65");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=234.91,169.23");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=227.81,178.79");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=200.37,46.27");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=98.49,22.22");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=211.68,46.60");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=257.80,3.33");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=183.10,116.49");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=99.97,85.76");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=137.81,189.56");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=91.67,187.62");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=69.21,187.88");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=23.60,254.88");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=59.08,194.60");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=47.92,235.85");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=107.22,193.84");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=123.13,131.10");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=175.61,106.64");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=289.25,200.33");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=204.69,158.89");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=138.77,84.05");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=84.97,39.87");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=145.39,39.37");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=147.63,0.21");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=175.86,139.19");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=189.72,71.86");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=7.95,86.95");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=93.65,230.94");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=69.91,151.77");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=7.07,166.08");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=28.97,93.09");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=111.98,217.05");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=16.71,128.43");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=69.25,58.14");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=149.51,99.11");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=270.92,155.27");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=115.94,206.91");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=245.85,46.72");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=119.56,7.49");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=162.33,1.82");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=101.48,66.63");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=165.89,219.37");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=88.11,57.01");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=39.74,187.10");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=35.48,230.74");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=22.59,113.89");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=10.61,242.56");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=117.93,90.37");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=26.61,243.17");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=7.63,150.29");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=148.73,146.82");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=236.22,88.21");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=195.57,149.38");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=204.55,228.09");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=234.29,98.74");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=194.36,84.36");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=204.48,73.74");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=193.84,138.03");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=159.93,129.62");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=152.18,110.27");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=63.96,67.94");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=55.30,243.69");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=100.66,151.67");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=43.06,248.64");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=38.97,98.30");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=108.44,277.63");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=83.69,124.33");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=129.44,107.42");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=111.48,134.23");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=309.93,129.48");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=155.22,182.31");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=246.13,118.13");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=84.40,101.94");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=183.49,51.66");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=136.97,54.04");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=205.88,140.58");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=103.25,183.37");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=154.27,47.33");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=88.90,213.05");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=17.00,228.48");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=49.97,214.33");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=99.65,205.39");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=139.40,230.85");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=38.35,118.33");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=107.26,35.47");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=150.60,87.73");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=234.71,138.20");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=216.17,192.57");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=242.85,9.54");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=162.89,26.08");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=254.42,22.53");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=185.74,9.36");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=212.35,169.73");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=95.59,32.88");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=86.53,148.91");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=18.13,175.41");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=6.66,268.09");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=104.86,171.24");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=38.48,57.81");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=75.30,284.02");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=30.54,219.53");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=63.26,159.30");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=118.95,42.48");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=253.05,65.16");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=198.83,194.24");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=225.30,81.75");
    }

}

