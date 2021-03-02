
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn12_6
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
        @display("p=36.39,119.04");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=28.86,75.78");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=26.45,131.38");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=94.34,130.25");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=127.13,120.91");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=30.40,109.31");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=21.31,95.34");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=10.47,81.15");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=11.59,101.75");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=33.72,149.51");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=55.03,132.45");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=63.98,122.77");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=122.30,152.52");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=111.94,151.98");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=160.04,110.44");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=161.65,57.46");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=158.38,40.85");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=117.79,75.79");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=59.20,1.59");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=85.59,197.41");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=83.75,96.93");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=122.38,137.17");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=40.92,75.31");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=28.84,59.04");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=50.61,98.68");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=12.67,49.65");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=11.18,61.49");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=63.10,145.48");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=58.33,112.78");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=94.03,227.64");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=67.94,99.05");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=103.72,116.00");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=223.23,54.49");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=79.26,59.61");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=78.01,44.69");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=89.38,44.64");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=39.56,103.80");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=176.88,146.18");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=144.20,166.09");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=4.36,148.43");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=85.39,148.46");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=3.62,121.54");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=83.28,121.86");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=43.51,171.74");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=25.35,175.94");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=159.53,137.99");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=129.33,90.40");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=135.10,61.71");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=168.66,103.42");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=173.90,54.96");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=64.00,182.65");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=68.19,135.83");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=57.59,79.88");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=70.62,198.96");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=92.00,116.97");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=137.24,151.13");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=35.39,12.71");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=12.97,115.07");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=27.14,87.20");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=84.38,107.26");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=42.53,138.01");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=114.13,66.08");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=40.40,191.00");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=51.73,203.68");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=75.18,186.37");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=188.82,136.07");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=221.62,128.90");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=187.93,116.89");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=45.21,160.50");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=7.10,28.60");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=21.00,226.12");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=165.84,151.33");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=192.59,77.12");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=36.11,92.62");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=48.55,150.43");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=86.06,32.51");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=60.76,19.19");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=56.22,228.29");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=89.82,68.39");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=1.24,74.21");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=117.24,165.21");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=199.95,199.17");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=179.87,106.09");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=67.73,35.83");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=148.42,108.37");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=4.15,176.94");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=46.31,57.93");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=34.68,211.15");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=83.23,160.68");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=134.21,110.32");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=49.99,45.52");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=77.01,69.40");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=38.07,23.38");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=70.65,82.78");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=14.00,181.71");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=7.88,195.70");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=62.00,90.71");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=205.67,124.84");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=141.98,215.16");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=108.95,127.30");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=112.88,47.98");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=86.58,186.95");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=49.05,122.13");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=22.02,3.73");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=9.65,135.60");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=146.20,52.99");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=177.31,122.08");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=89.42,172.60");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=56.45,55.16");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=63.43,47.77");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=1.05,105.49");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=31.47,165.68");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=105.10,174.11");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=10.46,165.40");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=155.03,216.29");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=113.01,188.97");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=169.13,115.27");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=200.20,103.17");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=100.91,147.48");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=14.37,213.78");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=122.97,48.86");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=21.17,159.48");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=54.08,187.23");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=154.54,74.52");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=2.74,92.46");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=46.86,6.60");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=100.36,38.37");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=29.66,36.90");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=25.49,216.52");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=65.01,68.27");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=68.73,110.02");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=178.34,173.43");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=156.59,168.07");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=226.46,108.26");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=134.78,22.23");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=115.50,32.39");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=112.78,90.60");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=14.53,37.61");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=22.73,144.21");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=146.26,124.82");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=146.18,138.93");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=20.39,22.08");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=22.39,192.98");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=102.16,72.58");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=79.06,136.89");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=74.11,169.25");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=64.24,220.03");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=112.39,104.25");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=127.24,183.92");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=130.97,203.02");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=185.03,42.24");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=177.42,67.25");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=96.81,90.49");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=58.31,165.92");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=80.75,11.34");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=64.72,209.63");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=138.44,193.22");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=156.21,178.53");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=1.29,42.60");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=37.08,46.31");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=98.39,62.88");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=11.37,10.04");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=86.35,212.31");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=105.60,201.07");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=74.99,216.51");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=147.20,199.70");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=156.53,95.05");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=199.86,50.13");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=151.89,63.46");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=81.01,21.86");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=99.53,165.22");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=73.00,3.49");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=67.71,155.82");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=122.38,109.89");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=111.34,217.81");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=46.98,111.49");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=22.80,117.61");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=51.69,68.49");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=38.30,64.22");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=44.32,230.29");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=33.18,224.72");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=136.02,82.07");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=188.16,184.21");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=32.64,200.54");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=253.45,98.47");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=225.95,86.60");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=156.21,156.25");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=93.18,156.61");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=18.17,69.22");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=0.08,131.87");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=170.81,160.97");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=174.61,132.90");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=89.60,81.26");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=103.02,52.12");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=33.32,1.15");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=17.24,126.86");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=10.90,223.73");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=101.76,212.63");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=141.12,100.35");
    }

}

