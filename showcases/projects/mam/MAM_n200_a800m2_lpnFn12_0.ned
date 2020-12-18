
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn12_0
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
        @display("p=112.00,673.09");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=135.48,670.56");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=116.46,691.91");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=145.09,719.90");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=94.12,653.16");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=59.48,592.21");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=81.90,634.34");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=135.80,694.13");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=63.67,701.97");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=113.66,627.51");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=94.06,592.47");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=82.75,597.65");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=122.86,634.56");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=116.15,663.85");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=152.49,625.50");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=194.94,629.96");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=101.40,735.99");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=118.06,588.73");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=180.12,595.91");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=161.78,696.60");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=151.11,735.45");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=164.19,631.64");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=44.31,575.88");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=28.63,561.50");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=187.84,686.44");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=36.72,642.67");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=149.99,590.19");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=103.66,599.72");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=95.16,616.24");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=216.44,649.58");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=63.48,633.34");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=180.00,615.61");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=133.61,589.96");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=14.17,718.71");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=175.15,739.07");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=92.75,674.36");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=123.28,677.55");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=186.94,733.77");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=62.32,717.93");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=74.26,576.79");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=63.85,608.45");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=204.26,741.03");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=59.80,733.26");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=92.29,633.49");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=158.93,551.74");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=106.77,572.13");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=39.71,594.88");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=151.10,701.91");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=143.20,621.25");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=221.23,617.29");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=66.04,689.48");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=160.55,731.20");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=150.13,687.83");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=82.33,770.72");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=206.01,706.18");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=159.26,716.57");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=103.37,585.14");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=87.96,717.26");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=118.28,723.97");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=128.79,653.77");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=202.55,650.33");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=177.81,637.29");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=71.70,597.34");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=58.16,679.77");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=206.23,671.02");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=244.37,599.93");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=165.71,651.97");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=91.72,732.55");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=64.05,649.05");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=175.33,708.89");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=91.88,688.24");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=67.25,758.30");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=77.48,704.97");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=62.00,582.21");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=27.71,621.39");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=203.52,760.20");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=25.37,701.31");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=20.33,606.81");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=108.12,517.95");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=77.62,610.58");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=190.16,575.24");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=114.24,712.35");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=126.37,715.25");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=170.58,590.75");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=41.08,770.61");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=124.91,701.65");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=37.77,664.69");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=86.66,700.45");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=186.69,709.48");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=51.33,654.65");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=31.22,605.59");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=3.53,677.01");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=145.80,676.80");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=66.76,775.70");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=207.74,625.67");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=103.61,680.87");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=130.19,550.61");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=184.01,657.47");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=153.60,665.79");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=134.97,628.03");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=202.42,601.65");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=143.03,767.61");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=18.50,673.51");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=70.80,730.50");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=130.76,787.86");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=200.33,783.29");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=15.28,635.83");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=9.78,535.55");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=57.59,662.98");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=101.16,763.15");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=96.28,751.14");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=126.49,619.82");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=90.08,510.63");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=114.33,530.61");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=52.28,599.95");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=39.61,687.82");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=199.44,570.75");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=249.52,632.94");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=134.78,756.68");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=143.64,709.60");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=134.25,644.68");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=41.38,747.58");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=152.98,771.97");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=143.28,661.27");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=111.03,553.84");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=68.74,560.62");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=140.62,747.14");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=35.90,785.77");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=106.15,645.37");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=49.09,554.88");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=136.55,568.55");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=150.67,543.39");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=165.80,618.77");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=232.22,669.20");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=243.78,695.77");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=162.80,676.48");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=167.36,751.90");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=104.10,662.39");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=66.19,741.00");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=108.20,725.51");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=72.26,670.07");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=50.04,610.30");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=5.34,590.89");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=190.44,722.72");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=7.83,645.87");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=206.64,640.67");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=4.46,573.14");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=71.71,549.94");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=46.48,624.76");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=132.62,729.27");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=150.48,570.83");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=205.76,544.54");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=110.86,749.83");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=174.92,719.16");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=227.81,695.56");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=38.56,717.86");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=157.99,792.65");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=43.25,702.17");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=16.41,554.96");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=15.98,686.99");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=177.26,665.87");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=44.37,799.48");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=89.49,553.92");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=128.73,533.51");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=87.36,539.03");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=87.08,573.02");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=163.56,604.92");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=111.65,700.75");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=289.00,649.97");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=54.08,747.81");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=174.36,697.10");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=61.47,619.46");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=124.67,755.32");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=226.92,773.87");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=48.13,675.38");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=152.68,614.95");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=3.38,602.98");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=143.11,637.07");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=32.16,760.66");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=134.64,704.24");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=132.70,512.32");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=7.25,612.27");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=95.94,563.75");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=133.44,612.05");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=165.02,563.37");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=205.98,562.73");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=153.55,641.17");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=30.16,726.79");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=145.33,648.89");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=208.35,691.60");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=163.90,771.50");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=14.19,655.03");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=122.67,521.05");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=80.17,645.57");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=122.44,744.93");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=80.25,747.18");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=129.97,576.92");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=50.15,541.53");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=24.96,586.05");
    }

}

