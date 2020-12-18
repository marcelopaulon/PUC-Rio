
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn12_4
{
    parameters:
        @display("bgb=1600,1600;bgg=100,1,grey95;bgu=m");
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
        @display("p=100.00,700.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=55.00,706.16");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=14.46,721.18");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=56.87,695.57");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=135.36,750.42");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=129.02,653.13");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=138.10,685.36");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=202.17,663.28");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=249.74,705.77");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=237.89,724.88");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=240.99,714.03");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=334.96,706.82");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=296.40,788.29");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=310.44,758.54");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=272.20,783.53");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=273.30,770.05");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=277.54,698.31");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=126.49,683.37");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=95.30,764.09");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=47.80,658.55");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=48.73,683.04");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=143.80,734.77");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=119.98,660.27");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=153.70,630.34");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=210.47,642.65");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=212.55,706.59");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=184.52,645.63");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=249.89,775.63");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=421.91,675.13");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=379.36,777.63");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=316.32,698.38");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=201.88,779.66");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=315.23,769.24");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=337.84,640.07");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=57.02,732.42");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=27.27,724.27");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=31.03,760.18");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=26.29,661.52");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=202.81,719.47");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=182.66,718.88");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=144.56,775.25");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=198.12,588.45");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=290.60,698.82");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=232.81,655.47");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=210.74,728.51");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=356.81,646.30");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=292.23,737.09");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=364.40,733.18");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=310.99,734.96");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=263.09,744.34");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=242.60,642.81");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=121.63,758.32");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=66.84,700.27");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=7.00,730.25");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=112.41,773.39");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=178.97,760.35");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=95.50,666.70");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=152.16,763.37");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=192.73,565.23");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=303.66,697.17");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=223.15,730.53");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=264.43,724.49");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=333.51,693.25");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=355.86,766.90");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=300.76,725.80");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=258.54,754.49");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=284.45,790.95");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=232.85,761.81");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=59.94,637.68");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=27.64,611.07");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=0.24,711.22");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=94.02,780.18");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=140.44,760.15");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=122.17,701.66");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=95.17,623.05");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=256.49,628.66");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=155.42,679.25");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=252.78,744.92");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=258.04,669.39");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=316.46,678.62");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=295.78,750.63");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=304.94,772.10");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=259.64,798.25");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=220.35,781.46");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=349.78,741.84");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=68.21,630.97");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=66.13,689.55");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=37.92,684.87");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=75.18,674.58");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=135.25,729.20");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=120.05,731.71");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=121.03,624.77");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=170.64,664.58");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=324.51,653.47");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=256.95,694.82");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=180.24,735.85");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=276.14,668.18");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=217.84,768.92");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=350.71,728.08");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=193.24,722.68");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=350.36,792.53");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=264.30,652.63");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=87.94,704.85");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=34.93,797.21");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=52.58,768.15");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=49.31,643.14");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=76.90,686.30");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=86.34,646.40");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=189.42,655.58");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=160.94,753.45");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=274.16,609.17");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=228.75,746.37");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=186.83,789.89");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=240.75,698.81");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=326.07,755.39");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=289.74,711.48");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=261.65,772.96");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=229.68,685.98");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=344.49,771.85");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=145.91,694.95");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=124.77,636.87");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=15.18,789.88");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=104.20,685.15");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=150.88,741.87");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=144.13,644.69");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=89.31,752.88");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=191.77,599.78");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=341.08,723.98");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=244.76,788.50");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=215.15,661.55");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=361.57,610.90");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=292.85,769.56");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=265.72,688.57");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=334.35,775.68");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=273.29,737.12");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=282.75,745.36");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=128.75,780.07");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=100.26,634.88");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=21.05,711.14");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=39.09,702.98");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=85.81,799.59");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=119.34,648.23");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=104.30,718.91");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=168.45,721.46");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=199.86,645.94");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=230.70,713.39");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=225.56,629.26");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=388.76,697.98");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=387.86,793.65");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=288.05,675.74");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=370.43,795.81");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=342.09,798.47");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=363.74,700.62");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=92.45,716.08");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=30.01,649.79");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=112.41,710.61");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=47.94,617.68");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=172.91,700.25");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=37.14,664.92");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=106.30,651.03");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=140.60,631.58");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=279.37,728.76");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=219.78,651.90");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=317.91,666.50");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=323.38,708.17");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=320.44,791.40");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=231.31,781.93");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=241.06,750.31");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=243.61,688.23");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=216.67,687.79");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=82.03,771.76");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=79.21,739.10");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=71.06,781.69");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=76.65,715.45");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=96.06,732.05");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=139.91,675.23");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=161.30,711.95");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=175.85,746.98");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=315.59,780.35");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=297.36,662.10");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=312.77,688.33");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=336.02,669.86");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=338.20,755.44");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=393.04,729.72");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=226.50,792.81");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=310.34,706.95");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=204.25,697.34");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=92.20,602.97");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=137.45,702.36");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=66.28,659.15");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=113.29,747.98");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=213.53,717.06");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=125.61,672.75");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=82.72,661.16");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=148.43,662.17");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=224.40,700.25");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=208.76,791.99");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=259.10,713.21");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=410.76,667.16");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=207.42,757.81");
    }

}

