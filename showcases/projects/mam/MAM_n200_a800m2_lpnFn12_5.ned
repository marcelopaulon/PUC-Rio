
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn12_5
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
        @display("p=59.17,751.71");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=68.76,768.89");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=106.90,716.21");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=191.43,741.35");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=104.85,776.00");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=105.69,747.39");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=94.32,777.01");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=48.61,737.34");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=38.29,775.72");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=16.83,740.67");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=37.31,753.26");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=81.31,791.54");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=101.57,787.03");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=150.31,769.29");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=182.08,793.17");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=169.46,783.96");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=182.22,682.15");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=57.00,763.28");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=72.77,784.73");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=9.80,699.48");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=285.00,748.88");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=126.67,765.71");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=32.66,703.21");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=109.70,705.74");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=14.02,793.60");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=47.27,790.23");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=88.77,703.50");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=56.07,774.94");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=7.34,785.30");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=131.56,712.20");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=145.93,756.35");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=224.99,709.39");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=230.84,797.09");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=159.66,728.23");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=128.29,752.91");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=14.75,762.77");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=116.21,698.01");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=225.55,693.03");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=41.27,718.76");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=114.89,742.77");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=79.48,711.31");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=107.53,762.25");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=34.93,680.63");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=32.57,670.08");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=16.17,707.80");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=165.81,799.52");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=32.13,791.87");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=136.31,699.89");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=256.97,772.72");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=179.97,722.92");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=119.41,638.39");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=72.48,756.70");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=142.09,711.38");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=72.67,669.33");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=150.93,670.07");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=114.80,789.22");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=99.12,680.22");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=144.91,780.73");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=104.77,668.09");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=117.86,773.11");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=29.98,732.33");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=8.88,682.18");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=26.62,717.06");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=152.50,705.50");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=162.67,757.88");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=204.94,709.53");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=174.09,738.16");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=57.88,610.84");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=85.46,669.03");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=10.31,772.31");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=62.41,686.60");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=219.05,769.96");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=86.07,760.37");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=155.60,740.20");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=129.95,742.73");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=65.35,719.43");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=27.54,768.50");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=64.12,700.76");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=3.59,796.39");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=87.95,717.72");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=139.85,730.32");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=173.48,758.40");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=206.05,763.24");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=219.29,746.80");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=86.64,637.30");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=49.43,680.74");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=95.32,745.26");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=65.85,625.28");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=117.53,683.90");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=82.06,746.70");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=125.28,788.46");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=3.56,749.38");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=20.23,726.00");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=21.76,781.94");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=69.50,745.58");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=7.84,730.21");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=62.94,782.28");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=68.55,735.03");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=194.47,717.91");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=233.48,759.35");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=247.55,796.83");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=185.30,659.35");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=21.03,667.03");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=54.68,704.28");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=55.19,668.00");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=260.53,674.54");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=193.39,788.28");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=142.17,691.76");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=83.70,732.17");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=8.67,660.29");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=74.66,687.43");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=32.73,652.41");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=40.76,729.73");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=92.42,797.70");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=65.14,799.55");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=187.83,730.19");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=178.38,772.95");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=254.58,734.78");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=101.35,601.52");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=61.66,676.42");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=137.22,764.95");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=104.44,628.57");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=242.22,695.89");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=94.92,730.64");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=44.00,694.17");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=128.59,777.34");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=141.80,746.59");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=18.45,750.75");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=11.11,645.94");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=48.23,660.46");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=127.86,799.58");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=84.19,777.63");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=218.43,795.42");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=191.38,752.06");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=183.03,782.35");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=16.32,691.85");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=138.29,793.16");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=150.35,797.70");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=32.16,743.95");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=163.04,673.75");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=22.58,799.59");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=138.96,672.12");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=164.46,774.89");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=73.44,654.80");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=104.52,734.67");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=21.85,642.67");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=110.90,726.00");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=120.87,731.81");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=190.10,765.47");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=243.64,744.72");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=185.52,713.08");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=259.44,793.15");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=130.24,678.32");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=8.52,671.12");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=160.62,790.87");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=92.55,617.28");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=234.93,714.47");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=117.52,799.64");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=157.20,693.67");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=180.47,751.01");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=55.25,718.31");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=46.27,758.20");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=0.72,722.51");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=63.96,661.29");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=121.68,716.20");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=106.71,690.99");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=205.33,799.51");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=276.73,769.05");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=212.53,701.40");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=185.15,696.73");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=2.58,739.27");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=105.71,798.01");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=150.12,637.49");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=167.53,705.29");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=88.08,685.56");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=98.07,757.87");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=0.39,762.52");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=63.97,642.16");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=77.50,697.87");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=55.41,728.45");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=23.78,684.88");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=125.06,703.73");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=166.67,715.36");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=209.14,736.91");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=233.63,770.53");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=203.91,723.38");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=114.62,651.24");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=4.16,712.48");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=97.03,711.50");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=49.68,640.82");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=244.62,757.69");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=196.21,778.01");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=91.49,787.69");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=46.29,769.32");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=117.49,758.01");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=55.75,795.65");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=2.03,650.78");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=77.43,721.44");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=26.44,757.18");
    }

}

