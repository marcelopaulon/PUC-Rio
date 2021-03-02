
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn12_3
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
        @display("p=143.57,63.51");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=121.23,54.91");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=56.02,90.47");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=76.45,106.02");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=92.09,172.91");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=42.43,157.47");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=0.58,116.69");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=88.04,153.62");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=83.49,121.11");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=34.51,44.62");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=103.02,86.35");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=74.27,82.23");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=29.90,33.37");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=57.56,5.72");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=16.67,30.69");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=110.21,4.76");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=61.86,145.07");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=159.72,156.34");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=209.08,74.95");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=98.38,139.23");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=146.40,163.24");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=88.77,245.96");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=90.98,129.27");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=7.49,59.72");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=15.69,117.51");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=30.46,157.71");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=55.92,56.60");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=65.39,48.86");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=40.58,84.94");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=80.85,58.96");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=34.43,60.55");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=1.70,46.54");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=108.80,29.27");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=124.66,188.64");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=143.96,24.14");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=132.56,28.90");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=47.69,124.81");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=69.86,14.80");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=135.28,228.37");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=1.64,165.55");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=45.79,38.53");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=71.77,160.25");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=114.90,137.20");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=36.02,14.10");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=27.65,81.26");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=42.77,102.89");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=98.69,54.09");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=76.85,30.19");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=9.52,75.71");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=94.25,10.19");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=107.59,42.81");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=176.89,111.52");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=105.47,14.75");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=74.70,176.43");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=42.81,139.42");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=92.37,107.08");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=93.17,183.01");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=3.60,103.03");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=16.96,169.28");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=54.29,116.27");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=26.61,129.97");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=137.26,96.71");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=100.11,158.79");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=21.61,39.66");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=146.19,48.80");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=53.11,78.69");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=128.55,5.07");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=124.85,37.05");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=198.17,125.59");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=182.75,23.35");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=67.33,66.01");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=60.34,101.02");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=68.58,94.93");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=10.57,161.02");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=15.10,98.17");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=23.98,189.63");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=66.99,110.02");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=22.07,4.85");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=155.27,78.56");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=152.94,115.27");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=34.02,24.04");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=60.26,30.29");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=18.80,16.17");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=94.59,35.13");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=158.54,138.01");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=87.07,77.62");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=154.78,9.22");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=77.99,72.55");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=11.70,86.63");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=107.51,228.38");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=35.35,225.34");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=51.08,47.23");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=171.32,135.43");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=61.94,133.73");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=24.51,67.40");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=111.42,110.44");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=92.16,88.76");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=120.48,15.79");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=80.96,9.21");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=0.19,29.57");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=186.20,34.14");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=128.52,123.41");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=162.15,39.25");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=94.20,118.24");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=123.85,132.45");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=124.76,73.34");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=25.82,245.06");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=35.57,174.19");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=17.07,213.68");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=106.31,216.98");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=73.35,123.33");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=0.77,127.06");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=103.85,125.10");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=121.18,101.98");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=47.18,9.56");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=66.97,2.32");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=47.07,21.46");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=146.93,88.78");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=14.75,128.63");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=173.43,98.75");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=140.54,40.24");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=48.85,147.53");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=109.81,163.79");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=130.02,174.97");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=7.90,145.58");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=84.61,141.97");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=50.84,167.61");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=166.55,65.43");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=12.54,46.58");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=75.92,49.40");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=91.32,63.65");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=49.07,63.91");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=28.92,91.85");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=29.90,102.10");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=161.37,87.92");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=97.35,193.06");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=191.34,98.41");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=137.73,137.30");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=3.10,10.70");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=119.54,156.97");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=80.63,131.11");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=72.13,212.47");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=6.83,197.64");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=167.68,165.15");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=18.60,180.28");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=33.88,73.31");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=134.74,70.44");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=133.59,147.55");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=1.39,86.26");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=60.02,18.73");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=111.07,55.91");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=90.46,23.54");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=111.39,97.67");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=193.97,27.67");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=217.07,47.78");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=137.59,80.75");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=86.43,98.46");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=150.73,174.71");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=132.72,163.21");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=45.75,176.56");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=83.60,198.97");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=35.79,123.06");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=42.43,54.17");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=105.78,148.79");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=124.28,86.30");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=2.47,0.56");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=114.59,66.77");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=18.06,58.10");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=165.44,5.33");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=32.73,138.20");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=155.58,30.49");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=212.95,31.87");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=21.77,147.70");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=151.40,103.20");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=179.56,163.10");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=44.32,218.87");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=75.80,150.00");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=63.68,198.47");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=83.06,167.35");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=87.76,46.27");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,74.16");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=62.72,82.87");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=10.53,22.60");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=135.82,55.70");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=79.76,20.11");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=187.32,47.49");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=132.08,106.85");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=173.16,152.13");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=206.07,106.64");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=39.76,2.51");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=141.31,119.93");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=140.33,176.13");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=60.16,188.19");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=8.47,176.94");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=114.61,181.08");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=136.90,197.05");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=34.00,113.11");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=186.16,73.50");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=137.56,15.33");
    }

}

