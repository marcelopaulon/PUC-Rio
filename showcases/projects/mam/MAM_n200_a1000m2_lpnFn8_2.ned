
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn8_2
{
    parameters:
        @display("bgb=1000,1000;bgg=100,1,grey95;bgu=m");
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
        @display("p=114.25,96.75");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=175.97,60.86");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=226.28,28.48");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=218.01,59.91");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=187.60,84.20");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=139.86,27.15");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=166.64,38.42");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=152.74,67.43");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=152.53,40.93");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=185.04,43.99");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=209.34,122.69");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=218.97,192.32");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=156.61,182.37");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=142.89,180.17");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=132.25,178.03");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=129.46,148.47");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=109.63,134.95");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=138.61,106.87");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=126.65,134.56");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=154.93,224.41");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=154.65,262.01");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=172.68,314.27");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=201.58,293.16");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=266.92,361.30");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=85.20,93.77");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=137.29,120.11");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=255.70,55.46");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=278.95,69.72");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=229.26,67.72");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=173.89,111.52");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=82.77,49.12");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=198.15,85.12");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=140.47,67.45");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=138.17,4.39");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=229.31,127.38");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=180.07,141.26");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=203.06,151.15");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=217.16,149.20");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=92.56,145.19");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=179.72,226.24");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=125.20,223.97");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=69.29,182.15");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=150.83,84.71");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=52.03,190.83");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=100.72,197.17");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=113.55,300.24");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=183.46,327.53");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=191.67,282.15");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=293.14,360.09");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=99.86,167.81");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=97.16,112.24");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=145.67,50.69");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=214.64,16.30");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=255.86,124.37");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=213.56,38.31");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=142.61,37.14");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=175.32,3.71");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=166.84,22.60");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=113.63,24.98");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=197.49,35.50");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=151.16,172.11");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=159.87,123.82");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=221.32,231.27");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=156.54,137.79");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=188.50,239.09");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=153.25,161.48");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=74.97,131.46");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=184.72,95.12");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=117.83,120.30");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=100.04,227.99");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=203.52,222.04");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=172.54,343.16");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=249.86,368.32");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=269.23,385.25");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=3.67,83.90");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=104.23,90.39");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=197.74,22.69");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=272.53,47.56");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=267.30,142.36");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=205.95,49.66");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=116.35,11.59");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=240.03,92.46");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=83.58,66.36");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=169.82,52.44");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=171.31,94.90");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=252.91,68.40");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=189.67,186.64");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=111.60,156.61");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=168.45,159.65");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=121.46,190.78");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=160.12,108.38");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=115.21,81.32");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=128.92,99.24");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=165.32,79.55");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=57.24,228.00");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=152.43,237.47");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=145.04,326.38");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=211.29,347.61");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=349.79,374.90");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=171.49,125.70");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=117.41,48.68");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=162.75,65.78");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=209.21,27.80");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=240.25,59.62");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=233.64,13.62");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=157.91,96.48");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=97.23,41.72");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=72.09,55.59");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=110.75,60.78");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=230.00,101.28");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=187.35,127.44");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=315.31,177.66");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=185.06,267.61");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=169.17,179.15");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=172.14,209.59");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=141.92,157.67");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=128.10,210.74");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=125.57,30.24");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=207.61,99.30");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=136.76,220.39");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=87.76,305.72");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=96.34,328.55");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=209.13,361.98");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=257.69,315.83");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=40.92,127.02");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=89.71,83.59");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=120.60,70.16");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=222.83,6.71");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=229.21,85.08");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=145.98,136.45");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=86.74,12.00");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=159.67,48.26");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=139.17,79.31");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=62.68,20.24");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=263.90,67.44");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=292.37,117.03");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=213.34,109.73");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=176.42,168.35");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=85.20,191.05");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=148.04,202.88");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=131.86,243.18");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=67.80,225.40");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=91.59,124.17");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=70.72,75.53");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=101.19,247.38");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=145.34,288.20");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=152.25,312.92");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=106.09,312.68");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=205.77,433.13");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=119.88,107.54");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=63.28,162.33");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=183.77,29.94");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=276.67,5.69");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=227.05,55.34");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=233.54,162.67");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=217.99,78.99");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=89.68,27.27");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=190.72,140.26");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=155.97,30.81");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=192.27,116.36");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=300.64,110.98");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=264.06,250.84");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=100.13,138.35");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=93.48,157.93");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=95.79,185.92");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=57.74,110.63");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=42.17,148.81");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=138.61,92.10");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=117.32,204.88");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=196.62,255.59");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=119.59,256.91");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=228.49,336.30");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=179.61,305.21");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=321.52,407.61");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=4.77,115.71");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=119.17,0.65");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=231.27,116.73");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=186.89,2.29");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=290.72,19.14");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=202.33,70.81");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=150.01,0.84");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=194.20,101.27");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=76.15,105.25");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=179.15,72.13");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=154.68,11.88");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=189.96,64.81");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=239.35,192.92");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=119.12,177.77");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=240.03,172.75");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=173.23,247.40");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=147.77,122.93");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=47.92,173.53");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=62.90,86.90");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=114.00,146.59");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=101.54,279.65");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=209.59,261.92");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=133.16,376.28");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=282.95,235.52");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=259.25,338.28");
    }

}

