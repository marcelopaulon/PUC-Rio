
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn12_5
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
        @display("p=111.45,696.93");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=184.14,632.99");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=210.40,633.74");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=240.53,726.67");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=212.96,707.27");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=275.81,714.82");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=294.35,735.90");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=306.01,700.40");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=305.13,715.57");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=272.98,702.32");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=188.50,749.36");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=179.06,737.40");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=162.84,783.23");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=148.60,762.58");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=145.99,718.98");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=177.19,713.84");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=74.75,702.00");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=116.97,714.45");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=123.92,692.33");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=227.99,630.12");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=179.49,759.57");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=231.51,716.29");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=252.72,692.85");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=248.58,737.61");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=266.66,773.73");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=396.70,708.59");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=311.50,663.84");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=90.54,736.46");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=177.52,797.46");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=152.14,778.32");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=158.55,739.78");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=125.26,704.69");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=243.37,780.77");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=54.47,756.90");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=66.46,680.20");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=179.91,655.12");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=196.08,565.08");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=289.20,660.27");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=205.35,688.50");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=281.20,744.04");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=307.68,726.48");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=339.06,692.77");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=388.03,766.30");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=248.63,672.83");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=96.06,752.14");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=190.66,670.63");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=136.77,710.51");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=105.90,778.91");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=132.73,645.44");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=191.98,624.23");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=0.97,692.76");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=141.26,675.54");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=151.37,643.90");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=305.41,611.49");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=248.46,709.15");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=202.44,729.97");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=260.23,722.43");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=309.70,740.06");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=311.27,651.84");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=315.32,708.53");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=276.91,686.11");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=170.43,746.17");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=239.58,695.74");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=123.52,767.61");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=219.40,735.01");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=149.88,654.18");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=220.07,789.23");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=107.34,741.57");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=35.36,709.98");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=245.71,575.17");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=143.74,575.61");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=173.85,697.98");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=130.49,667.90");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=222.58,687.69");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=341.54,751.72");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=390.59,747.96");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=226.39,742.93");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=358.15,725.25");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=213.12,758.82");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=154.73,664.97");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=138.11,698.90");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=225.37,770.31");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=133.01,791.98");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=167.03,715.64");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=95.07,646.14");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=71.82,652.97");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=159.90,626.92");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=170.94,548.58");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=188.14,692.95");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=186.33,614.52");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=316.59,697.40");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=339.89,733.85");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=265.40,638.11");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=322.53,619.97");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=346.28,703.80");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=195.95,706.79");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=88.17,772.11");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=104.80,716.00");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=66.62,768.09");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=154.83,691.99");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=202.58,794.11");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=53.16,726.04");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=43.57,745.14");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=249.50,626.40");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=259.57,613.11");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=236.18,747.72");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=204.79,607.71");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=294.01,720.91");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=300.36,668.28");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=266.51,620.33");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=346.11,668.62");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=368.51,723.74");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=150.14,751.07");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=100.93,675.72");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=235.80,763.86");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=98.53,787.79");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=112.88,754.68");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=152.95,711.57");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=80.96,630.70");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=91.99,711.86");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=148.42,630.43");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=139.87,591.46");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=239.33,683.48");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=230.66,653.15");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=302.82,767.69");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=275.82,734.70");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=290.07,647.80");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=268.64,758.78");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=261.76,677.48");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=205.24,749.78");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=146.21,798.34");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=101.91,767.45");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=80.99,723.59");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=143.14,772.35");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=176.53,727.15");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=94.32,628.34");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=82.43,644.06");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=161.91,646.61");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=124.22,631.83");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=295.21,756.62");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=153.53,676.16");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=277.17,660.90");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=326.33,692.94");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=376.89,694.53");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=281.15,773.47");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=331.69,747.43");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=229.27,755.46");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=111.95,788.41");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=159.26,793.27");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=213.63,777.63");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=83.77,654.60");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=163.89,703.69");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=17.06,701.72");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=75.15,736.61");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=165.93,584.42");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=206.72,668.52");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=271.81,651.76");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=220.92,720.26");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=207.33,769.26");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=315.05,684.56");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=324.92,643.97");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=317.85,783.27");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=245.78,611.79");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=199.12,783.80");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=176.52,672.87");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=175.31,771.92");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=161.85,761.89");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=128.63,735.42");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=167.76,678.50");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=28.18,727.52");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=87.19,688.76");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=174.42,614.93");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=122.29,589.59");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=190.70,725.21");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=193.03,771.97");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=336.19,662.14");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=227.76,798.94");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=295.19,689.56");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=363.27,689.04");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=312.46,764.48");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=120.06,725.91");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=232.22,782.89");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=139.98,741.26");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=122.56,790.20");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=64.30,698.14");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=227.64,672.23");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=124.75,655.58");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=70.32,745.62");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=227.25,559.66");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=167.63,637.08");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=260.83,742.75");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=128.92,680.90");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=251.21,798.95");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=316.83,797.29");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=327.12,776.81");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=400.71,693.21");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=277.76,784.25");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=199.65,718.42");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=181.72,644.22");
    }

}

