
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=94.67,136.11");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=93.46,200.72");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=39.10,173.36");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=84.50,238.75");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=73.60,246.46");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=53.36,246.46");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=56.54,157.49");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=70.28,131.76");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=44.08,104.85");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=27.59,109.00");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=18.29,57.66");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=18.25,140.45");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=68.86,61.11");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=38.17,142.86");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=96.06,189.93");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=88.29,248.21");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=122.21,50.71");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=85.74,179.46");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=111.29,145.99");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=40.44,231.95");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=74.10,144.50");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=45.38,302.20");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=138.66,200.72");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=140.33,106.67");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=77.73,122.79");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=57.73,97.09");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=3.47,137.26");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=30.51,77.41");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=9.76,105.15");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=92.77,17.43");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=53.77,107.73");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=166.44,253.06");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=20.06,196.47");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=166.97,119.19");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=103.75,72.71");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=114.39,195.27");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=30.67,156.61");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=54.52,228.69");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=86.44,270.06");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=22.12,288.89");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=44.23,156.97");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=48.12,137.89");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=62.95,187.51");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=44.46,115.14");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=1.76,60.43");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=37.15,94.24");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=25.00,130.87");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=0.72,181.16");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=120.74,172.50");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=56.21,278.99");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=90.54,145.35");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=144.35,123.15");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=109.14,210.00");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=50.16,186.08");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=134.57,189.33");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=111.21,304.95");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=1.35,313.30");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=26.73,169.77");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=20.20,91.13");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=31.46,35.71");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=59.11,174.71");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=13.80,120.16");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=19.66,153.73");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=68.69,45.78");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=66.48,234.60");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=111.93,266.13");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=81.99,256.53");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=133.51,161.89");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=70.68,95.32");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=105.14,223.60");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=81.10,228.11");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=88.97,214.73");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=98.48,319.03");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=135.52,298.45");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=64.12,81.11");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=121.30,132.85");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=141.23,86.45");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=42.17,63.17");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=72.11,15.54");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=1.02,214.52");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=58.78,59.83");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=60.15,116.54");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=154.08,182.60");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=29.67,189.64");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=123.21,111.15");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=82.71,77.42");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=122.71,122.93");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=100.49,160.95");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=42.89,276.23");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=66.58,299.32");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=80.44,161.88");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=15.99,70.98");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=80.21,88.54");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=13.27,169.86");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=4.27,113.78");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=10.23,42.11");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=82.24,101.47");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=146.70,97.23");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=102.62,88.09");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=165.71,229.82");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=124.37,293.30");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=126.74,39.75");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=103.77,118.28");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=119.15,204.98");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=35.43,252.48");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=152.93,201.81");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=47.84,262.17");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=0.09,232.93");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=82.06,132.68");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=153.18,143.99");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=96.24,52.27");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=0.28,100.24");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=106.99,43.01");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=14.60,130.82");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=29.79,14.65");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=4.59,124.42");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=111.30,126.23");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=75.54,193.21");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=93.38,111.48");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=125.17,83.88");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=174.53,180.91");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=6.59,199.82");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=82.15,306.12");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=62.06,253.83");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=117.03,227.68");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=108.22,185.01");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=114.45,74.77");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=15.83,32.41");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=39.86,192.52");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=25.87,0.60");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=54.44,213.84");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=163.13,44.10");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=47.35,83.51");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=187.69,217.87");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=156.54,220.18");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=68.97,167.42");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=44.80,222.27");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=29.21,202.34");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=128.49,200.51");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=69.73,264.65");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=55.86,324.53");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=64.74,217.27");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=19.56,181.27");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=51.24,199.48");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=94.25,80.90");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=52.75,24.35");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=86.03,5.98");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=40.54,129.53");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=132.61,1.18");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=59.61,137.76");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=148.53,170.41");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=152.16,254.86");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=117.58,93.99");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=101.80,150.50");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=114.49,278.66");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=29.05,224.79");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=91.92,260.21");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=94.70,297.44");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=12.30,306.20");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=131.49,93.07");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=51.02,72.69");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=109.87,172.96");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=29.17,119.86");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=12.17,5.50");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=3.89,154.21");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=118.33,8.78");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=27.72,143.85");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=173.53,133.50");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=135.91,244.52");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=151.31,17.20");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=72.39,182.46");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=96.84,283.16");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=64.06,201.37");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=104.78,233.84");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=146.95,274.08");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=146.41,219.64");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=38.23,207.60");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=166.02,147.44");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=0.11,28.07");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=87.09,41.67");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=5.12,50.87");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=115.57,159.15");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=45.79,45.80");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=80.66,202.06");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=69.58,284.58");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=90.81,230.69");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=126.61,144.17");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=150.33,78.17");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=180.83,227.18");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=14.82,234.33");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=26.12,214.88");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=71.26,320.20");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=135.44,279.05");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=74.57,110.63");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=144.01,134.93");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=51.66,34.66");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=107.64,61.00");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=2.64,12.96");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=1.87,83.28");
    }

}

