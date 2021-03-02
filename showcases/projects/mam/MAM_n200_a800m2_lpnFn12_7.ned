
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn12_7
{
    parameters:
        @display("bgb=800,800;bgg=100,1,grey95;bgu=m");
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
        @display("p=81.29,41.15");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=26.47,68.69");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=3.03,10.63");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=20.60,15.78");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=25.24,95.01");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=8.97,69.99");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=36.95,5.94");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=69.01,35.13");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=61.13,10.76");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=67.19,77.82");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=77.55,63.93");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=45.95,156.94");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=35.11,103.12");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=12.37,92.99");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=50.39,109.28");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=69.88,117.61");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=155.15,159.77");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=74.72,105.36");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=29.04,155.98");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=53.40,80.08");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=56.91,47.66");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=0.09,84.25");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=5.74,56.70");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=50.17,65.67");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=139.01,15.24");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=47.46,6.94");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=103.87,16.98");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=132.97,116.73");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=55.63,93.63");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=67.23,140.38");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=8.91,103.56");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=64.87,126.99");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=82.83,142.76");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=96.10,116.60");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=161.51,71.34");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=95.49,76.15");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=29.92,24.82");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=44.34,47.24");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=55.53,119.65");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=40.75,140.36");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=91.65,21.19");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=114.37,118.72");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=102.87,85.09");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=86.00,9.60");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=125.30,61.34");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=69.07,181.61");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=83.93,156.51");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=28.64,46.97");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=136.97,129.15");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=139.71,177.06");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=24.79,128.74");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=113.02,42.89");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=39.03,67.37");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=12.51,7.37");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=31.98,57.69");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=98.21,56.22");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=9.44,35.11");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=69.72,19.20");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=99.85,33.03");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=71.95,47.10");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=84.29,87.90");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=151.46,125.58");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=112.37,198.75");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=34.07,194.10");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=25.37,115.99");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=41.65,18.68");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=98.94,128.21");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=143.64,93.56");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=28.65,81.09");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=68.44,59.03");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=2.82,25.78");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=17.59,77.33");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=6.34,173.36");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=17.22,54.56");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=58.83,23.29");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=17.35,41.75");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=22.03,2.58");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=133.51,95.42");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=98.95,45.30");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=42.65,166.39");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=117.71,72.72");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=46.85,29.31");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=90.07,189.14");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=42.42,95.88");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=103.88,65.38");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=146.56,25.31");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=70.31,93.72");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=6.90,45.38");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=26.70,35.80");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=28.13,167.50");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=51.76,132.81");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=125.83,32.32");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=120.25,105.92");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=132.43,46.25");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=78.47,76.57");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=136.69,57.57");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=1.02,209.87");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=19.25,137.85");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=63.41,164.07");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=22.72,204.62");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=3.63,125.69");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=180.70,151.62");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=75.08,5.75");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=35.75,131.36");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=36.44,32.94");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=120.31,17.66");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=15.27,181.79");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=58.48,152.33");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=18.44,26.03");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=158.67,44.96");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=142.86,5.90");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=165.44,81.97");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=87.98,64.86");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=59.74,218.43");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=102.49,151.24");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=57.81,178.56");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=80.08,126.47");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=114.33,155.55");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=99.84,180.62");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=124.31,6.66");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=41.21,83.56");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=92.74,1.42");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=18.84,106.54");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=112.66,143.44");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=84.87,117.42");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=56.75,35.61");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=58.19,59.17");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=128.43,71.49");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=1.07,113.11");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=84.80,100.88");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=74.94,191.90");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=56.95,195.98");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=30.87,180.87");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=76.33,163.79");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=14.93,160.35");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=110.00,103.96");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=82.70,29.39");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=13.86,122.11");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=88.35,52.57");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=10.87,19.02");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=123.78,87.57");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=28.91,140.61");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=113.02,26.03");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=166.49,34.56");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=157.44,11.58");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=139.65,70.05");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=160.46,58.64");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=17.09,218.06");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=107.41,163.87");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=1.61,95.10");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=140.78,147.20");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=42.92,179.56");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=158.59,115.91");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=62.28,106.27");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=36.32,113.62");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=43.86,57.39");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=112.12,8.50");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=9.08,150.69");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=2.83,0.02");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=80.27,18.05");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=150.19,74.02");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=158.74,23.63");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=117.19,95.96");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=175.32,50.14");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=19.10,149.23");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=93.64,170.72");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=45.20,122.06");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=135.62,105.55");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=127.64,187.90");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=173.86,129.82");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=0.12,65.28");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=1.22,164.05");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=57.86,0.29");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=60.82,69.65");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=82.79,175.24");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=6.24,138.20");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=90.92,38.41");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=130.38,21.53");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=154.98,33.38");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=153.81,106.19");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=135.02,80.49");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=119.60,222.27");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=8.93,199.52");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=74.05,153.09");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=114.65,179.46");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=96.13,202.06");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=171.87,106.65");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=147.45,56.71");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=89.87,135.62");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=102.54,5.35");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=30.89,14.11");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=23.91,193.70");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=107.24,75.86");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=114.95,55.94");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=141.09,39.19");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=159.27,1.10");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=121.53,125.93");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=162.12,97.04");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=39.34,206.03");
    }

}

