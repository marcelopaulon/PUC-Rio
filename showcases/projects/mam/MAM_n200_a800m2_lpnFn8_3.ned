
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn8_3
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
        @display("p=100.00,700.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=149.60,748.20");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=150.42,658.99");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=162.03,728.77");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=140.56,730.35");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=152.52,724.44");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=215.22,791.22");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=221.53,761.40");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=244.20,743.50");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=190.57,773.49");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=174.04,784.23");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=213.88,711.26");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=128.87,727.00");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=105.17,745.43");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=155.16,761.16");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=146.18,768.91");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=132.50,717.50");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=93.58,763.26");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=48.91,736.81");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=26.62,716.02");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=54.41,708.23");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=19.53,622.92");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=2.69,624.08");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=14.93,544.03");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=85.15,568.42");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=109.73,673.95");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=78.00,687.62");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=162.60,651.52");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=240.23,672.89");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=204.41,751.26");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=170.63,714.34");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=258.44,778.62");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=220.86,737.44");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=244.90,682.52");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=223.21,687.15");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=201.34,711.90");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=207.28,729.56");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=67.64,684.53");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=88.95,747.40");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=195.27,742.13");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=128.35,751.01");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=88.58,710.82");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=88.45,791.07");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=53.78,725.83");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=91.60,722.82");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=107.86,775.64");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=79.29,591.24");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=17.70,647.39");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=59.00,524.71");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=30.86,626.12");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=23.26,746.99");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=66.22,732.20");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=150.62,632.43");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=144.64,700.81");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=184.69,750.79");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=107.18,716.99");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=254.18,748.05");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=234.38,758.71");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=232.37,656.43");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=204.23,683.98");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=78.43,785.14");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=256.83,712.98");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=125.16,710.34");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=133.03,775.84");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=124.21,765.48");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=174.55,731.14");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=176.90,757.43");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=140.51,785.34");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=20.35,729.64");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=55.13,668.94");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=28.96,685.11");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=24.04,527.49");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=2.00,585.51");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=13.74,482.73");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=55.29,488.97");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=39.55,703.59");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=93.28,737.04");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=178.27,564.93");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=184.53,714.27");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=130.91,683.77");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=68.82,712.99");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=247.90,706.66");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=285.42,781.09");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=161.54,750.89");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=223.26,700.21");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=140.31,797.66");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=272.31,753.74");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=224.25,748.99");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=112.75,736.83");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=167.88,680.07");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=141.68,754.88");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=176.42,635.73");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=186.98,786.73");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=113.73,663.71");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=58.16,657.30");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=92.29,655.01");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=62.23,632.01");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=11.11,686.23");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=31.29,570.52");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=60.78,599.64");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=143.93,684.62");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=182.98,669.01");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=122.43,653.80");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=188.82,731.86");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=112.64,797.66");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=202.49,655.54");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=233.11,773.83");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=281.42,731.64");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=216.56,771.95");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=208.36,782.62");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=255.60,767.75");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=164.68,765.83");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=82.19,732.20");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=35.18,761.02");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=99.43,689.05");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=229.85,790.99");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=125.93,738.89");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=36.38,733.84");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=36.38,771.19");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=42.84,745.45");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=54.47,686.38");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=76.16,651.24");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=14.98,584.63");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=67.96,462.53");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=127.51,628.07");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=165.32,739.30");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=54.56,753.98");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=189.46,591.62");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=106.97,728.62");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=167.00,640.21");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=192.57,672.66");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=255.31,790.72");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=255.23,725.96");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=296.04,707.12");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=120.29,785.52");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=178.07,772.67");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=221.77,780.94");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=157.90,707.54");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=117.83,685.64");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=182.69,739.92");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=185.60,695.22");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=165.82,663.72");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=76.63,773.00");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=4.87,720.69");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=115.07,751.38");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=10.58,666.41");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=103.13,662.05");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=46.47,572.24");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=100.16,534.59");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=97.76,593.18");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=48.10,639.30");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=127.65,664.90");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=161.99,560.55");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=156.62,679.95");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=206.91,702.78");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=196.67,701.01");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=273.49,740.38");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=284.64,799.86");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=275.56,697.68");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=200.48,795.15");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=91.77,777.14");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=287.79,718.50");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=169.08,691.88");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=55.59,791.94");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=80.94,763.45");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=150.40,789.98");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=230.66,722.17");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=27.01,782.93");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=66.79,745.64");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=2.03,644.85");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=41.78,720.83");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=14.03,631.95");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=34.52,541.46");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=35.93,510.30");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=112.72,541.91");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=72.66,625.82");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=113.18,703.14");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=204.74,597.35");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=146.99,649.17");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=218.19,669.74");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=77.06,661.88");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=206.94,764.24");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=149.14,778.58");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=336.22,740.17");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=130.49,701.78");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=189.57,799.19");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=259.78,662.28");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=126.88,796.63");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=65.67,760.67");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=64.11,722.00");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=74.64,700.87");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=90.48,683.97");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=30.51,725.48");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=82.65,673.37");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=36.89,651.11");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=67.65,788.07");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=16.91,560.85");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=21.22,604.11");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=89.42,484.24");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=102.10,649.25");
    }

}

