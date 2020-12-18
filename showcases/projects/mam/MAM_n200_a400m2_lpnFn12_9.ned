
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn12_9
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
        @display("p=172.60,51.51");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=222.83,17.81");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=233.99,59.47");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=196.83,98.59");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=146.57,36.80");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=159.76,96.53");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=166.08,87.88");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=89.40,112.24");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=106.18,122.24");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=79.71,176.31");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=41.68,221.95");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=22.57,208.29");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=1.32,269.42");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=13.48,365.33");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=66.65,382.98");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=100.65,370.73");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=62.57,79.46");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=156.94,77.36");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=220.78,41.41");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=222.59,63.14");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=150.39,144.99");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=192.16,54.16");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=138.89,116.53");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=172.06,130.36");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=118.72,103.56");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=116.38,22.96");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=74.59,80.39");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=50.40,170.34");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=19.63,191.68");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=68.44,282.01");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=2.75,359.01");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=14.76,383.22");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=82.26,386.81");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=91.03,82.36");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=140.32,49.94");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=140.78,3.52");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=310.48,83.41");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=257.88,156.56");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=156.13,45.88");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=187.89,184.57");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=141.11,68.60");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=78.21,62.46");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=137.07,208.19");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=82.60,88.69");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=28.33,168.29");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=81.03,231.31");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=19.84,328.03");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=76.74,317.86");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=55.65,331.69");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=102.17,388.74");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=142.89,185.89");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=194.55,71.80");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=239.07,5.47");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=229.78,81.57");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=248.44,85.34");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=77.90,44.15");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=171.07,101.03");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=260.63,95.64");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=37.01,76.98");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=101.85,136.43");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=78.14,105.53");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=94.87,271.61");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=10.82,206.39");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=46.57,264.31");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=110.51,344.83");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=105.71,305.67");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=163.07,361.07");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=130.95,169.71");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=169.85,115.24");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=186.02,89.12");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=252.76,58.89");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=165.92,179.65");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=176.29,0.59");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=109.87,168.43");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=160.93,125.42");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=41.68,134.18");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=145.24,133.96");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=102.40,188.63");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=104.39,291.74");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=54.86,286.71");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=7.26,282.79");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=58.22,321.33");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=29.69,394.49");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=132.17,313.79");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=37.47,38.43");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=191.32,41.54");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=300.86,17.90");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=182.17,73.48");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=118.54,62.96");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=90.54,70.93");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=94.63,60.95");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=184.63,169.25");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=129.11,63.39");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=124.50,183.94");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=49.54,233.52");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=78.77,188.35");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=87.76,204.90");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=24.29,261.75");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=12.64,307.46");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=70.42,297.75");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=31.33,342.70");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=130.94,84.27");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=161.42,29.40");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=305.24,8.00");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=185.68,126.01");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=235.19,99.37");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=240.04,18.92");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=147.14,14.95");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=225.16,155.18");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=134.79,35.16");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=98.52,150.34");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=67.90,213.61");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=33.13,249.89");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=16.72,217.16");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=20.50,240.83");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=14.74,398.89");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=48.85,358.48");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=86.67,339.51");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=49.74,94.37");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=121.05,10.60");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=196.67,1.76");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=214.30,81.02");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=219.81,52.26");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=101.36,35.42");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=162.49,6.71");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=197.61,156.93");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=68.12,125.19");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=98.72,199.09");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=153.81,179.39");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=90.17,256.01");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=54.99,202.06");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=0.85,223.34");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=33.57,295.03");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=69.24,347.47");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=40.08,364.77");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=126.55,110.33");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=209.78,91.02");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=276.77,79.40");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=149.59,89.78");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=209.50,103.35");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=212.30,36.05");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=156.54,110.47");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=213.18,6.27");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=62.51,155.92");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=163.28,154.55");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=60.19,192.97");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=52.87,215.31");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=75.70,146.97");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=28.60,306.92");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=41.18,377.04");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=128.09,371.08");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=115.78,384.85");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=67.05,98.61");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=99.96,21.48");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=307.45,42.02");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=268.09,71.83");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=203.73,120.64");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=55.38,15.52");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=172.64,148.64");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=140.26,159.28");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=97.96,173.00");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=169.19,192.48");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=123.28,245.20");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=65.66,246.79");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=99.07,229.10");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=61.44,265.83");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=28.41,355.65");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=98.25,353.49");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=129.69,397.58");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=89.37,136.54");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=108.18,59.46");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=276.56,44.54");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=174.24,19.09");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=136.88,142.32");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=115.05,92.20");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=65.45,112.65");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=182.46,158.68");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=55.16,115.59");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=124.49,147.91");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=94.01,213.70");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=109.40,232.71");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=15.58,177.15");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=18.70,270.47");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=64.75,337.74");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=45.35,397.97");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=118.49,355.17");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=103.81,8.68");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=246.82,109.24");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=256.68,8.05");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=237.26,44.40");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=225.71,118.30");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=161.61,55.54");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=248.23,119.15");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=244.56,95.57");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=37.71,190.34");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=120.95,36.08");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=64.93,183.67");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=108.05,267.33");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=77.14,219.48");
    }

}

