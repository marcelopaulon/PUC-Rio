
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn12_6
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
        @display("p=109.82,792.95");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=100.17,737.30");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=42.34,701.96");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=32.11,696.92");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=7.73,631.55");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=17.44,683.11");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=85.91,677.41");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=71.95,740.73");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=50.32,787.04");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=105.35,767.87");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=158.44,694.24");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=165.89,790.28");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=176.06,779.51");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=257.81,774.98");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=215.26,739.51");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=211.04,796.24");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=108.16,712.77");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=175.15,761.46");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=115.13,740.42");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=4.26,621.12");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=26.55,644.85");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=5.13,675.81");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=26.68,688.44");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=53.91,674.61");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=83.54,721.86");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=34.51,787.63");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=114.67,677.52");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=129.65,758.29");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=140.94,778.19");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=158.19,741.54");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=299.03,723.77");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=266.89,656.09");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=287.40,796.62");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=28.69,630.82");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=58.38,707.96");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=113.01,651.55");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=52.30,689.64");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=4.21,699.65");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=31.30,656.97");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=20.60,712.87");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=100.99,631.20");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=141.96,708.05");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=58.24,768.08");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=66.39,680.30");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=119.55,727.93");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=175.94,792.63");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=152.71,765.94");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=214.26,783.23");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=221.44,674.12");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=146.36,792.68");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=69.79,696.21");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=79.04,763.02");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=105.92,724.22");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=34.49,678.48");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=68.14,645.39");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=45.23,587.97");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=4.95,664.59");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=97.96,617.32");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=25.55,796.68");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=6.21,794.11");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=120.18,717.71");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=161.78,683.08");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=177.81,703.13");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=206.81,754.68");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=261.82,784.92");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=272.16,666.19");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=230.39,783.55");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=84.47,653.00");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=132.84,717.37");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=187.66,750.67");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=78.32,630.47");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=125.61,690.11");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=48.78,622.75");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=76.91,682.95");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=94.70,684.52");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=96.51,749.48");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=87.71,782.42");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=26.49,736.74");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=123.24,780.09");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=149.92,726.71");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=83.88,796.67");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=244.10,742.96");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=136.50,787.55");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=197.78,793.06");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=43.93,769.00");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=158.46,780.70");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=159.84,657.28");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=67.53,617.10");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=14.04,723.97");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=35.26,551.93");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=40.97,665.29");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=89.18,712.41");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=119.19,701.74");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=72.85,789.17");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=116.16,765.79");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=188.52,709.47");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=196.58,775.37");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=228.20,770.04");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=234.24,757.99");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=307.93,746.62");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=294.28,758.41");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=98.31,669.71");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=100.43,799.11");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=84.24,739.99");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=43.76,714.11");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=5.25,686.50");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=21.93,621.48");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=33.34,612.17");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=152.58,622.21");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=51.09,725.51");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=35.05,773.90");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=97.85,777.82");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=185.62,689.37");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=222.87,797.60");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=185.22,796.57");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=256.17,726.45");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=228.41,666.56");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=164.16,754.23");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=141.82,745.66");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=109.11,781.75");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=76.00,778.10");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=57.70,749.20");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=26.10,762.61");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=15.72,564.95");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=81.06,665.48");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=59.05,587.35");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=128.86,670.82");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=61.50,795.71");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=67.94,763.83");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=126.86,636.97");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=229.08,747.89");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=179.30,742.65");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=249.63,798.63");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=230.37,726.59");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=306.61,789.40");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=75.40,709.42");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=87.55,772.05");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=175.76,684.60");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=43.80,683.77");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=60.27,658.67");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=62.46,548.60");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=42.31,733.77");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=52.35,735.67");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=14.58,695.67");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=20.57,745.09");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=17.73,789.41");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=206.47,727.30");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=140.14,756.22");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=224.67,705.17");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=279.83,723.87");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=304.20,761.72");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=214.23,772.88");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=60.80,722.26");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=132.37,703.21");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=198.95,735.39");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=32.22,710.38");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=87.90,640.99");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=14.07,595.88");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=21.10,672.43");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=183.47,668.50");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=127.39,741.71");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=35.83,755.40");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=197.42,758.15");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=198.19,662.87");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=190.10,785.79");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=184.45,771.19");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=247.09,762.52");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=247.27,707.62");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=119.96,796.17");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=190.47,719.80");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=132.01,797.70");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=5.19,750.32");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=7.70,779.33");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=3.45,766.20");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=53.31,563.99");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=14.72,658.97");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=122.94,648.94");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=22.37,776.01");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=39.69,796.87");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=106.40,755.41");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=202.32,604.51");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=250.93,786.54");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=165.09,772.59");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=262.47,749.73");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=287.27,734.70");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=233.05,794.52");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=88.29,695.13");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=170.44,715.24");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=70.95,728.26");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=106.22,659.31");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=71.07,605.16");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=64.97,632.62");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=99.60,643.04");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=129.13,588.98");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=86.05,755.27");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=75.97,750.45");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=162.63,732.20");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=144.29,678.87");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=133.22,728.09");
    }

}

