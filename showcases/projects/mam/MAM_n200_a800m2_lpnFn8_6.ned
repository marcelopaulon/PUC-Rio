
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn8_6
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
            @display("p=100,100");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=96.80,62.17");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=175.02,79.82");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=137.97,87.98");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=122.41,80.87");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=128.02,63.50");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=73.94,12.52");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=100.40,36.88");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=60.13,80.18");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=72.25,86.33");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=67.94,50.92");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=1.57,105.69");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=46.57,64.45");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=43.06,38.24");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=22.58,122.43");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=197.10,75.86");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=223.62,83.08");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=144.80,56.62");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=120.24,38.18");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=154.90,45.27");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=149.13,28.53");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=58.59,107.32");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=124.20,173.83");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=208.06,216.12");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=163.23,173.65");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=145.29,66.62");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=159.46,111.55");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=181.36,65.23");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=211.12,43.21");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=180.23,101.42");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=81.74,91.32");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=88.61,9.64");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=104.29,113.68");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=103.28,79.03");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=15.95,15.63");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=23.02,98.52");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=36.71,77.26");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=124.94,102.62");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=139.03,30.98");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=23.58,134.79");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=216.50,126.74");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=142.83,136.63");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=168.31,44.51");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=165.46,15.61");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=184.50,3.83");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=111.72,67.60");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=56.35,96.97");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=184.49,163.57");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=168.87,223.69");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=119.23,153.53");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=66.72,64.11");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=81.09,72.56");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=202.84,168.36");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=88.36,136.20");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=49.49,127.36");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=86.11,55.28");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=46.06,25.04");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=113.45,23.81");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=37.14,106.21");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=80.82,170.33");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=56.18,54.39");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=35.72,66.74");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=2.31,124.20");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=82.58,37.41");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=29.98,24.28");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=259.93,104.98");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=276.46,127.59");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=143.25,109.91");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=108.31,13.30");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=198.39,119.59");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=202.00,17.37");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=81.98,150.12");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=94.33,152.30");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=210.98,204.62");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=221.05,224.02");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=35.47,134.29");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=20.29,70.18");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=268.76,80.24");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=138.77,77.05");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=113.63,56.21");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=60.58,14.58");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=63.16,32.23");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=80.36,24.71");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=81.68,114.79");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=92.46,88.76");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=126.40,25.57");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=6.41,179.34");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=26.72,47.28");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=127.58,10.80");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=35.56,168.46");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=194.68,89.71");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=263.01,95.26");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=149.77,89.01");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=167.55,104.62");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=142.67,40.98");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=234.07,80.58");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=127.91,145.94");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=60.81,154.09");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=113.56,186.89");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=165.53,197.89");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=160.96,158.04");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=118.84,115.02");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=233.69,34.44");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=167.57,92.15");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=138.58,14.39");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=105.69,131.54");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=99.41,3.27");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=67.97,116.47");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=53.87,71.56");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=134.34,129.50");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=12.15,39.71");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=35.64,116.99");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=90.49,30.47");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=90.83,108.88");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=63.77,142.62");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=253.76,147.84");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=180.42,88.26");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=153.71,140.21");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=94.14,125.09");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=156.71,130.29");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=189.34,51.55");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=103.86,159.15");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=177.67,151.41");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=222.21,201.17");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=70.30,192.76");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=144.20,99.27");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=105.49,47.96");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=214.09,59.97");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=164.64,78.09");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=58.95,122.49");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=164.88,29.15");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=3.75,5.60");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=40.34,94.13");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=71.24,98.20");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=6.41,147.41");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=8.01,97.46");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=4.37,69.11");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=14.70,55.19");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=59.21,44.39");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=18.73,150.19");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=260.52,124.20");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=283.00,79.50");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=147.96,7.41");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=84.71,100.96");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=95.51,46.89");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=98.48,16.62");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=52.25,148.17");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=184.85,204.88");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=258.12,160.39");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=175.61,269.62");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=172.64,164.52");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=156.00,71.32");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=190.18,38.20");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=209.02,143.81");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=129.13,92.81");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=170.62,141.31");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=48.35,11.71");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=4.22,16.12");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=75.20,58.55");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=111.26,96.71");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=46.87,110.15");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=9.83,79.71");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=37.73,53.47");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=71.17,75.12");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=82.02,201.27");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=219.37,94.99");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=245.86,3.13");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=162.02,56.61");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=127.46,46.21");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=183.84,112.24");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=217.99,13.58");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=22.39,198.39");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=102.69,190.16");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=143.23,217.17");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=186.88,267.76");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=61.81,177.72");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=48.24,48.28");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=184.93,129.31");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=177.24,25.85");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=69.97,23.35");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=74.86,138.97");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=2.95,33.40");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=46.74,0.55");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=72.38,163.66");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=101.02,177.39");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=57.22,0.07");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=38.57,144.82");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=0.95,51.40");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=27.15,81.65");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=24.27,158.69");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=145.99,125.63");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=222.36,0.14");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=206.39,34.32");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=49.27,88.01");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=201.45,49.12");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=192.52,11.09");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=1.30,136.31");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=88.24,184.77");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=259.34,250.00");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=137.20,169.30");
    }

}

