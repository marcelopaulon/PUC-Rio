
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn12_6
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
        @display("p=87.31,135.28");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=82.50,123.48");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=63.90,52.16");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=118.98,60.93");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=83.19,71.04");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=45.89,104.34");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=62.70,108.39");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=16.55,105.16");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=88.24,40.35");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=38.11,57.01");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=22.41,83.13");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=77.17,54.20");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=58.17,36.53");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=42.51,25.53");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=108.48,55.83");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=132.01,52.74");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=114.64,43.09");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=112.84,147.68");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=125.74,165.54");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=59.87,96.73");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=141.17,85.16");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=72.73,90.57");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=48.67,114.41");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=50.76,50.57");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=0.98,177.42");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=68.90,23.10");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=85.30,103.63");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=11.34,34.25");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=43.06,9.97");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=26.57,51.92");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=122.43,77.79");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=139.32,68.28");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=149.64,142.22");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=97.23,52.15");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=175.83,90.58");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=76.68,40.13");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=17.85,139.55");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=157.22,77.07");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=122.22,19.43");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=58.39,76.32");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=156.43,117.33");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=37.56,155.23");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=24.38,15.79");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=54.50,17.34");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=7.15,86.01");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=101.75,65.05");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=143.96,6.97");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=27.98,93.56");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=145.17,53.95");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=142.59,38.83");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=69.12,77.39");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=55.69,193.53");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=32.74,71.26");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=112.57,101.27");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=157.13,133.40");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=103.22,126.55");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=79.31,196.48");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=88.13,87.74");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=93.49,144.86");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=91.90,24.24");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=23.36,65.48");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=41.26,167.27");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=84.50,14.38");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=99.83,88.97");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=10.55,56.02");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=126.95,93.90");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=99.53,1.91");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=9.34,113.06");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=145.60,209.45");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=32.12,118.16");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=150.56,21.56");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=128.28,37.56");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=171.15,34.17");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=12.44,159.80");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=106.05,162.35");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=20.94,114.34");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=179.12,41.52");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=67.73,136.22");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=17.67,92.22");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=161.64,12.78");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=41.08,91.70");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=21.01,0.53");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=176.30,107.89");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=199.25,58.83");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=159.73,165.37");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=65.74,201.21");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=10.67,123.12");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=71.28,101.49");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=178.04,57.08");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=113.04,74.37");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=101.45,172.70");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=33.77,135.25");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=24.10,131.14");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=87.52,56.69");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=31.23,37.02");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=7.02,73.04");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=104.08,34.88");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=12.65,10.83");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=40.64,43.35");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=187.59,75.55");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=183.52,14.64");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=190.48,109.80");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=130.17,131.31");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=92.26,216.47");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=103.93,21.62");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=128.51,64.00");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=122.22,155.78");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=5.14,22.50");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=50.22,125.27");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=2.12,97.71");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=128.67,119.30");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=117.12,87.53");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=74.32,113.76");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=119.88,135.31");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=138.38,19.31");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=57.33,61.58");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=179.54,3.43");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=226.69,56.69");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=157.75,180.26");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=109.16,207.76");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=10.74,170.44");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=4.32,46.89");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=194.46,3.42");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=70.48,124.28");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=64.65,181.35");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=157.44,91.60");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=20.79,29.49");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=165.24,52.38");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=93.72,114.63");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=2.21,130.56");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=48.17,78.69");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=155.14,33.32");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=114.09,6.98");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=72.78,9.90");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=171.71,68.79");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=93.39,183.32");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=140.93,126.86");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=91.54,201.95");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=160.79,61.65");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=193.42,23.70");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=56.16,133.97");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=54.07,181.00");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=140.92,148.40");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=73.78,172.97");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=129.22,26.78");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=47.75,67.19");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=116.10,112.70");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=83.15,145.30");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=35.67,82.57");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=94.44,12.42");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=169.91,121.49");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=191.66,99.70");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=131.73,7.44");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=176.39,146.09");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=36.74,198.18");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=49.96,1.72");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=152.70,43.81");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=61.39,151.05");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=11.43,197.87");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=0.64,150.90");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=0.62,191.08");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=184.54,65.88");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=35.70,106.95");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=28.55,147.38");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=66.78,0.10");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=68.15,34.58");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=99.79,78.67");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=197.17,86.07");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=183.29,118.14");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=134.56,102.72");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=102.54,138.88");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=141.20,175.52");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=81.50,30.04");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=69.86,64.36");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=117.26,29.03");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=53.25,158.61");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=77.44,133.68");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=23.64,167.87");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=166.83,22.54");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=45.03,134.73");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=9.31,145.90");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=58.53,86.41");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=0.37,60.59");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=32.46,1.87");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=205.31,31.18");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=224.41,31.26");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=166.93,174.09");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=103.77,227.88");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=24.21,183.22");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=149.88,70.02");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=146.25,94.09");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=87.89,160.60");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=34.66,183.64");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=74.86,151.34");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=40.81,144.63");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=85.72,2.50");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=123.22,104.79");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=15.16,21.21");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=15.20,46.59");
    }

}

