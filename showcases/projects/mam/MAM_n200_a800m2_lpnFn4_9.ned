
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn4_9
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
        @display("p=87.02,84.45");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=83.12,142.77");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=15.69,119.08");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=50.68,120.57");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=119.52,161.74");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=41.24,215.72");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=0.13,226.24");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=28.10,169.84");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=23.34,125.58");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=50.98,52.50");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=48.56,81.16");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=53.96,40.56");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=24.32,10.91");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=76.12,91.71");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=50.73,159.71");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=81.78,219.48");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=151.12,238.56");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=109.05,236.19");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=75.70,327.09");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=135.65,352.20");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=104.22,368.88");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=82.68,307.63");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=122.86,286.90");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=168.76,242.17");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=213.73,257.81");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=200.07,232.00");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=217.50,233.47");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=272.36,205.25");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=234.88,161.66");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=179.27,129.79");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=210.65,137.57");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=175.21,111.73");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=204.67,74.60");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=299.71,64.33");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=254.69,78.22");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=244.40,133.46");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=169.61,93.65");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=214.55,36.32");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=133.24,63.93");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=143.23,19.34");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=176.59,40.45");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=236.74,78.90");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=287.43,50.29");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=220.71,93.95");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=279.37,60.31");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=238.93,12.60");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=350.14,19.99");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=372.17,18.34");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=442.32,23.57");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=97.76,154.92");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=90.69,103.78");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=93.61,138.60");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=27.44,213.46");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=115.03,95.27");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=129.72,157.86");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=71.70,267.06");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=16.32,212.77");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=29.56,148.01");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=27.71,68.76");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=28.40,43.22");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=16.13,50.92");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=102.64,87.95");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=14.11,1.88");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=74.17,77.17");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=6.07,166.07");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=56.60,151.00");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=163.40,203.25");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=29.73,250.97");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=42.79,262.77");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=127.78,326.74");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=86.63,347.43");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=21.45,301.53");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=137.12,225.83");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=194.23,214.25");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=217.85,246.18");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=174.71,265.89");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=251.93,221.05");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=335.40,166.42");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=191.04,160.11");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=113.55,149.81");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=233.13,234.03");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=162.72,107.56");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=206.42,115.71");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=227.34,10.37");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=300.10,48.26");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=294.11,72.76");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=130.04,91.58");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=170.34,32.08");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=78.19,25.70");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=144.78,108.08");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=211.71,54.79");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=277.69,25.70");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=295.76,38.97");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=166.92,61.33");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=274.69,36.88");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=195.40,17.35");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=360.55,31.77");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=361.70,11.02");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=402.63,70.46");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=99.91,111.93");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=108.05,123.76");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=131.51,176.69");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=12.85,27.13");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=19.25,177.16");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=70.74,237.91");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=32.13,232.57");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=20.68,239.35");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=66.41,100.84");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=17.32,146.58");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=95.14,52.93");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=120.44,103.84");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=26.37,29.56");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=61.55,51.13");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=59.16,133.80");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=58.66,170.10");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=73.58,153.50");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=103.82,222.77");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=148.58,284.30");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=86.25,261.19");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=36.64,342.87");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=160.40,382.54");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=117.82,278.15");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=150.65,197.57");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=169.83,216.24");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=301.28,300.10");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=182.36,290.81");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=156.06,155.70");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=262.29,188.26");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=214.21,164.96");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=120.93,59.93");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=290.14,132.98");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=200.29,126.04");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=215.29,70.47");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=309.37,16.50");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=228.18,55.34");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=263.10,141.26");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=89.82,64.67");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=201.96,95.17");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=125.08,136.64");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=182.70,53.76");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=152.73,77.23");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=161.67,132.79");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=345.32,66.56");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=187.96,8.63");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=250.12,47.56");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=218.08,25.10");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=385.02,87.45");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=316.52,81.96");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=461.50,97.22");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=155.45,88.81");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=128.98,110.68");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=76.79,132.34");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=36.79,124.38");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=138.45,97.92");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=55.02,105.73");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=38.23,200.95");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=21.58,275.55");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=60.38,243.52");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=80.26,118.88");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=137.02,37.97");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=131.78,76.12");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=129.56,52.14");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=15.52,79.90");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=111.86,176.24");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=22.52,229.31");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=67.03,180.56");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=221.55,280.73");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=105.30,137.01");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=59.98,343.39");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=119.01,394.76");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=72.28,416.99");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=102.36,307.68");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=162.87,279.94");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=103.59,255.64");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=158.14,307.27");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=292.75,237.85");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=230.45,321.24");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=245.62,190.50");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=267.23,107.85");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=233.81,141.07");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=223.34,149.41");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=194.17,188.50");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=215.50,120.50");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=252.74,139.32");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=256.60,67.56");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=254.88,206.98");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=173.80,12.06");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=223.55,46.00");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=156.14,30.20");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=163.12,44.48");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=189.85,79.91");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=208.58,10.58");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=337.19,35.55");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=218.55,106.30");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=329.23,111.81");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=312.13,27.32");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=285.04,94.63");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=420.16,51.56");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=447.55,52.67");
    }

}

