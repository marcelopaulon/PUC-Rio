
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn8_0
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
        @display("p=75.87,103.94");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=83.32,68.58");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=170.31,36.26");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=155.39,41.93");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=127.69,121.13");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=85.21,164.95");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=66.39,136.32");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=53.91,133.59");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=115.77,98.09");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=44.57,49.44");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=50.39,65.37");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=17.78,9.61");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=59.71,19.99");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=81.67,11.36");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=54.03,0.61");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=54.61,103.49");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=67.31,50.48");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=38.58,114.69");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=33.14,196.23");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=23.00,207.69");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=40.82,180.00");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=74.09,259.28");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=49.89,220.33");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=35.20,276.44");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=88.23,23.03");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=111.64,187.29");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=0.74,68.68");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=217.76,95.08");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=209.58,39.82");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=76.13,141.69");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=163.11,138.18");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=135.29,204.89");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=26.20,149.70");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=88.69,129.63");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=128.99,10.81");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=98.38,11.93");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=35.68,44.42");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=139.58,79.68");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=92.97,83.06");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=105.33,52.24");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=20.31,110.28");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=55.87,149.52");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=3.79,121.73");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=15.65,159.30");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=27.06,159.83");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=100.94,126.85");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=83.48,175.03");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=80.71,155.95");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=37.59,286.71");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=82.08,37.60");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=65.57,97.32");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=131.46,92.00");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=154.20,83.41");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=118.45,83.27");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=206.25,110.01");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=9.99,186.78");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=28.92,91.09");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=42.78,162.04");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=36.63,55.99");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=60.60,79.90");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=85.96,53.57");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=71.89,27.03");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=16.47,50.53");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=25.62,28.06");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=37.87,34.61");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=43.70,105.32");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=70.76,67.92");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=22.55,185.73");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=31.06,172.18");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=13.19,210.00");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=59.00,186.11");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=49.04,231.69");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=112.07,144.68");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=41.49,297.74");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=62.19,110.13");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=46.99,91.00");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=25.12,130.24");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=226.77,41.62");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=122.35,109.50");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=182.59,121.56");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=162.86,179.60");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=60.62,163.92");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=38.07,143.29");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=142.17,4.71");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=34.32,20.72");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=109.79,64.76");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=2.23,11.09");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=64.47,8.38");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=171.52,5.54");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=117.57,27.87");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=42.25,72.71");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=7.82,24.58");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=95.36,164.07");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=29.41,229.80");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=18.08,219.59");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=10.84,200.05");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=126.60,250.64");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=55.68,210.64");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=64.43,330.42");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=102.74,0.55");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=159.65,107.05");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=150.34,64.90");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=148.17,31.77");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=148.52,106.53");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=131.61,70.18");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=70.32,218.24");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=63.41,123.20");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=148.85,139.05");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=174.20,112.05");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=6.83,89.35");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=7.66,139.55");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=58.93,33.05");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=20.28,77.69");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=107.89,22.76");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=70.36,37.07");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=18.92,96.67");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=49.82,115.41");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=107.46,108.24");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=24.67,269.98");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=9.31,287.33");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=1.98,101.77");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=147.10,258.89");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=61.48,223.72");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=31.47,257.10");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=76.98,46.35");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=137.81,26.05");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=163.06,94.79");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=210.40,59.11");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=149.26,51.97");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=193.22,173.94");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=69.47,153.16");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=114.84,134.44");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=146.81,128.69");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=169.15,86.73");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=8.22,57.12");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=17.48,39.85");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=28.40,12.20");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=104.60,86.15");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=37.17,0.80");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=109.52,34.54");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=72.33,113.66");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=130.09,48.73");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=89.60,112.29");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=69.19,243.06");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=61.16,250.65");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=69.77,204.21");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=146.56,270.72");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=32.75,186.13");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=92.16,289.64");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=187.50,62.22");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=79.66,186.08");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=116.21,0.08");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=198.92,50.07");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=217.42,49.24");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=136.95,194.71");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=40.28,130.68");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=100.18,223.75");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=96.59,203.73");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=158.83,73.89");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=48.59,39.15");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=139.15,102.10");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=26.39,53.55");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=49.82,22.72");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=73.76,79.49");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=17.23,21.10");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=35.88,82.74");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=99.97,74.12");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=98.17,35.42");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=123.24,236.34");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=52.77,256.34");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=12.87,232.23");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=83.41,323.29");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=61.59,261.54");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=44.10,320.31");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=186.61,78.05");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=120.02,51.33");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=22.93,67.01");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=204.48,77.89");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=135.10,58.16");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=151.96,209.90");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=107.36,160.32");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=113.37,169.14");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=109.24,199.90");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=125.09,143.99");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=80.91,89.60");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=6.46,78.72");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=32.24,71.37");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=0.27,35.55");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=90.42,44.01");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=41.64,10.82");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=93.96,181.60");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=77.30,60.06");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=121.42,64.38");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=88.35,193.47");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=52.68,194.61");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=88.84,248.66");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=84.76,258.65");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=15.48,174.89");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=26.60,292.46");
    }

}

