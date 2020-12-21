
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=36.79,147.54");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=31.61,134.00");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=25.87,120.80");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=24.75,43.16");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=26.66,54.33");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=71.70,119.06");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=28.16,88.67");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=19.94,159.44");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=0.24,129.92");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=22.99,76.91");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=10.78,133.52");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=1.42,115.09");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=87.78,160.73");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=11.13,171.31");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=1.00,177.96");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=4.72,103.35");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=42.58,20.51");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=10.06,10.30");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=97.82,23.22");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=106.18,14.28");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=46.39,41.93");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=83.74,24.86");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=41.31,114.56");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=73.16,148.13");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=143.89,64.16");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=61.41,174.20");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=51.60,145.52");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=80.94,168.47");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=3.69,51.86");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=95.42,63.89");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=126.77,109.97");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=34.08,103.68");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=59.65,88.29");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=18.08,224.53");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=74.20,92.29");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=47.69,56.84");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=46.55,164.64");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=109.58,187.90");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=29.55,218.36");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=22.09,111.06");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=14.16,88.17");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=7.15,23.97");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=63.98,64.12");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=61.29,3.57");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=106.46,90.09");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=9.28,41.01");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=95.98,4.95");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=56.99,117.68");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=100.27,223.61");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=99.74,73.05");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=50.48,209.53");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=64.25,205.68");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=70.16,179.18");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=36.57,75.70");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=3.99,74.87");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=79.04,35.45");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=103.61,135.85");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=7.25,144.03");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=48.93,135.55");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=8.79,64.01");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=17.74,199.41");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=49.97,94.26");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=121.89,87.44");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=40.04,174.38");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=57.28,129.20");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=18.98,149.24");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=75.75,4.71");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=24.67,7.33");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=125.62,17.76");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=129.36,45.26");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=36.39,12.08");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=131.18,5.75");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=43.52,124.62");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=104.35,119.67");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=163.04,71.57");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=133.81,166.88");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=21.17,134.18");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=66.49,164.70");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=84.37,89.26");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=113.19,51.42");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=48.69,77.83");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=31.11,158.35");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=31.71,247.64");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=70.19,189.32");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=89.94,42.54");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=89.68,183.24");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=9.96,120.92");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=74.61,103.79");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=30.19,182.72");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=17.04,184.96");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=64.51,142.86");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=29.35,25.98");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=14.11,0.81");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=115.98,61.72");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=96.52,34.01");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=55.21,46.99");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=69.77,55.49");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=60.47,100.34");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=123.70,226.14");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=115.85,33.17");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=86.80,99.14");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=120.62,137.13");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=117.69,126.82");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=54.14,68.48");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=35.74,39.32");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=127.85,154.70");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=79.07,47.00");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=64.47,231.30");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=71.01,80.34");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=0.66,6.18");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=81.74,65.73");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=55.20,195.29");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=97.68,163.74");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=28.68,237.47");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=5.97,273.31");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=40.06,92.89");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=48.01,105.72");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=20.98,17.26");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=144.14,3.35");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=132.02,90.90");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=67.39,27.34");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=114.92,2.93");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=116.24,97.93");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=82.89,113.69");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=80.89,136.15");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=30.82,168.96");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=37.34,201.38");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=0.72,85.55");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=87.55,14.17");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=83.28,78.97");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=112.58,112.72");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=29.29,67.84");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=42.76,219.59");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=42.99,185.40");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=52.72,31.00");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=1.94,201.77");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=92.82,131.86");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=129.77,73.48");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=79.89,228.71");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=61.01,155.85");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=7.61,191.45");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=142.34,19.11");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=48.46,7.72");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=185.67,19.07");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=161.33,32.71");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=37.44,54.53");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=137.46,51.33");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=77.92,202.90");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=140.19,98.64");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=126.32,183.86");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=0.85,161.64");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=106.04,172.93");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=7.22,213.76");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=23.44,100.36");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=62.32,15.30");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=111.17,154.69");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=103.87,42.63");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=63.83,216.74");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=92.33,148.91");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=19.04,64.19");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=68.08,128.48");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=65.92,110.10");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=143.98,185.31");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=91.95,193.41");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=19.01,210.65");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=80.12,125.42");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=73.45,15.44");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=18.05,35.06");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=181.86,4.12");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=159.52,1.42");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=60.49,77.94");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=33.56,0.72");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=135.95,118.56");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=155.41,193.90");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=144.26,41.67");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=47.23,244.68");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=118.10,175.10");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=53.65,183.12");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=16.86,51.18");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=69.02,39.46");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=156.63,156.01");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=109.71,74.79");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=101.37,200.48");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=42.53,65.82");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=96.09,83.22");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=36.45,229.33");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=9.41,154.36");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=88.36,236.98");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=2.94,224.75");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=6.28,235.10");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=0.62,33.87");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=137.05,32.43");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=87.83,55.16");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=150.22,94.37");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=178.51,67.97");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=99.21,53.64");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=177.53,32.30");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=123.62,165.75");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=92.33,116.98");
    }

}

