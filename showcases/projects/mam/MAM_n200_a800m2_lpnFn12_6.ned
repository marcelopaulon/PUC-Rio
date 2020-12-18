
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
            @display("p=100,100");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=41.29,103.29");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=112.14,119.67");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=77.95,107.55");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=135.45,86.21");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=60.99,53.54");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=67.66,13.82");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=73.28,91.39");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=63.25,93.33");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=133.40,119.44");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=117.95,70.08");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=44.06,6.99");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=31.43,34.65");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=57.76,32.87");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=49.89,67.22");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=27.60,87.12");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=105.36,147.58");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=124.41,49.62");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=8.40,145.99");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=17.34,89.93");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=124.12,147.65");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=123.87,91.90");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=58.06,73.07");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=27.90,70.12");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=101.88,27.16");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=24.22,120.45");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=134.08,131.80");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=168.05,27.10");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=13.14,48.42");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=21.51,32.87");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=94.67,10.64");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=51.39,85.79");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=40.56,175.83");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=118.27,196.83");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=135.65,153.83");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=30.11,138.76");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=69.15,45.18");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=11.95,122.09");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=156.84,69.82");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=145.07,25.03");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=76.26,24.89");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=154.00,84.36");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=87.38,17.64");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=104.08,84.00");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=165.21,107.92");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=47.80,29.09");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=33.41,60.77");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=122.32,26.93");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=9.05,74.60");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=37.93,81.69");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=82.80,62.65");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=149.89,59.71");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=90.57,50.48");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=103.68,57.75");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=20.63,147.31");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=176.20,55.07");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=71.63,67.18");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=36.50,23.23");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=84.35,90.77");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=86.76,115.25");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=80.73,43.96");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=145.87,106.44");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=58.09,8.32");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=29.73,45.58");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=156.58,31.72");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=129.08,35.83");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=106.63,46.39");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=96.27,154.30");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=55.22,111.45");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=47.61,130.64");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=141.96,180.00");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=98.89,131.04");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=76.91,128.83");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=23.49,14.90");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=131.92,19.90");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=128.65,71.22");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=48.20,51.31");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=132.33,109.24");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=146.43,74.40");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=96.71,67.61");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=109.61,18.97");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=83.37,73.98");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=113.78,108.99");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=56.57,167.44");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=110.41,203.12");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=115.13,97.37");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=43.19,121.15");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=115.85,158.99");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=101.77,175.98");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=102.63,109.67");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=65.24,152.08");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=87.13,3.76");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=30.41,157.36");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=42.94,162.08");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=190.32,100.43");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=47.31,18.76");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=77.10,0.23");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=58.74,18.81");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=23.88,2.61");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=4.73,100.47");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=77.37,159.52");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=67.91,167.13");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=69.77,141.21");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=19.09,135.47");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=128.53,172.40");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=72.04,119.08");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=123.71,133.05");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=31.41,99.77");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=1.70,58.83");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=59.07,142.28");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=7.05,24.23");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=224.49,104.72");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=191.57,136.52");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=8.06,8.92");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=118.16,7.47");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=131.63,5.39");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=67.87,81.93");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=21.35,109.79");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=80.64,171.03");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=159.94,146.56");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=91.75,173.04");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=160.57,185.73");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=124.29,102.11");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=217.22,72.76");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=82.55,146.05");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=146.31,40.93");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=107.12,8.10");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=155.93,96.20");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=142.47,95.59");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=92.30,84.37");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=122.84,59.80");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=2.64,37.24");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=56.35,44.46");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=56.15,101.44");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=16.97,58.22");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=54.82,207.56");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=139.92,164.41");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=74.85,55.14");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=170.01,85.98");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=146.55,140.77");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=202.25,103.98");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=4.49,84.97");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=87.03,34.68");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=0.85,125.30");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=31.31,128.18");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=173.69,201.24");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=69.53,33.96");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=77.93,13.46");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=88.39,103.55");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=138.82,55.54");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=65.09,0.04");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=64.43,179.19");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=92.73,226.95");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=104.91,165.30");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=84.99,193.05");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=65.46,129.40");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=89.89,138.77");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=214.24,35.61");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=115.23,36.23");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=142.99,11.18");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=76.95,182.23");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=96.61,118.83");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=152.88,167.81");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=199.93,28.29");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=0.28,0.65");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=40.60,38.90");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=116.41,82.27");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=48.07,152.16");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=23.49,174.91");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=68.52,219.32");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=167.66,129.48");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=31.84,192.96");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=111.19,134.49");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=48.02,141.69");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=166.30,13.38");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=22.21,78.57");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=153.60,6.15");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=42.37,91.99");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=19.02,162.90");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=102.94,192.89");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=196.05,123.06");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=32.74,8.79");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=5.38,112.60");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=87.26,127.93");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=32.06,112.91");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=1.65,155.87");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=180.83,83.87");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=171.22,72.20");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=107.56,73.49");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=188.97,61.02");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=153.86,49.69");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=209.61,24.56");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=16.84,100.27");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=145.14,0.75");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=93.34,186.11");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=122.24,114.93");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=149.64,120.42");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=161.03,120.06");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=0.07,48.19");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=100.15,0.72");
    }

}

