
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn4_4
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
        @display("p=120.62,721.40");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=58.81,681.00");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=128.50,669.86");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=66.84,619.95");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=88.95,655.70");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=177.70,701.23");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=170.24,719.41");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=190.15,739.46");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=177.55,755.93");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=163.69,753.33");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=15.79,659.41");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=31.82,678.34");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=16.87,746.49");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=9.24,791.17");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=27.91,786.62");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=88.29,767.85");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=54.92,736.95");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=38.71,734.62");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=26.63,692.90");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=125.89,703.81");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=162.80,665.33");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=175.68,661.48");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=242.24,711.99");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=213.11,676.80");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=205.87,685.44");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=46.75,711.05");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=15.66,724.92");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=26.84,710.45");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=35.39,699.28");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=10.73,622.64");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=68.07,556.18");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=4.81,516.10");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=0.33,558.91");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=12.38,585.91");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=29.30,512.12");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=14.40,549.18");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=104.37,527.27");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=105.62,584.69");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=69.75,594.55");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=41.40,601.00");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=57.20,630.93");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=8.93,708.13");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=18.14,575.97");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=37.51,546.65");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=12.90,610.29");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=8.19,531.66");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=97.25,576.17");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=95.96,504.72");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=61.52,502.44");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=80.32,699.30");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=96.55,682.64");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=37.03,654.01");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=138.68,627.53");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=67.32,696.59");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=67.26,645.56");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=166.41,692.26");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=72.20,735.56");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=143.01,798.08");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=241.39,765.34");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=198.56,727.48");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=80.66,634.37");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=112.05,663.03");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=32.53,724.18");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=3.72,760.63");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=93.20,719.06");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=95.01,780.48");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=144.89,758.71");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=77.68,675.21");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=58.83,612.05");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=185.64,649.16");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=197.50,678.57");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=121.43,642.26");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=156.28,726.89");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=132.73,657.25");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=221.09,670.40");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=95.14,756.36");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=61.27,752.72");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=4.30,693.52");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=51.43,726.50");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=105.64,625.21");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=60.22,526.22");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=7.24,574.70");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=67.16,493.89");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=73.04,661.35");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=55.89,467.11");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=24.76,556.45");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=139.25,555.77");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=120.46,579.00");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=82.01,612.05");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=123.11,595.20");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=50.39,620.56");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=27.68,750.97");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=15.89,478.56");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=126.85,507.70");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=1.14,676.77");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=32.37,570.92");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=127.12,538.41");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=94.96,533.00");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=84.22,540.27");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=190.48,710.93");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=132.39,721.02");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=31.43,639.24");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=127.77,632.85");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=42.36,531.21");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=112.16,705.58");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=228.81,780.53");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=250.43,731.99");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=219.08,718.88");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=123.88,770.29");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=229.95,751.28");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=82.48,709.46");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=3.83,726.44");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=56.61,786.51");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=90.80,740.57");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=78.49,787.72");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=73.21,746.48");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=37.65,789.66");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=79.77,645.43");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=13.30,687.86");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=160.62,629.07");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=122.12,655.73");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=265.19,672.02");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=234.37,718.34");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=241.35,692.52");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=187.28,597.99");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=51.69,773.46");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=66.72,783.85");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=47.47,663.07");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=18.10,761.10");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=49.40,675.14");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=117.69,487.95");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=27.94,531.29");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=35.97,583.97");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=53.54,597.27");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=76.41,527.23");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=68.98,517.70");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=52.03,581.90");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=101.57,553.85");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=79.16,578.55");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=117.31,622.44");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=55.23,647.78");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=38.39,763.91");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=23.02,610.84");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=53.77,546.94");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=66.72,583.08");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=42.76,565.96");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=93.83,641.78");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=55.81,517.16");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=61.28,439.13");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=109.64,636.20");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=189.33,658.58");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=124.19,608.75");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=127.58,691.16");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=143.45,658.98");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=88.12,666.96");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=235.58,663.49");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=155.95,710.49");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=119.73,780.92");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=122.23,759.38");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=253.27,772.60");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=21.58,681.44");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=13.31,645.48");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=92.05,798.33");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=78.05,776.49");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=41.22,754.22");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=105.28,754.77");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=3.18,744.24");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=107.00,724.04");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=44.32,694.04");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=133.08,643.48");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=177.31,671.95");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=232.96,604.87");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=248.15,720.55");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=236.12,674.26");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=223.77,618.02");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=25.69,667.99");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=20.49,735.82");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=36.05,625.07");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=4.64,651.44");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=3.36,638.18");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=89.16,588.87");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=39.48,503.97");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=22.32,540.67");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=15.88,597.51");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=104.53,497.43");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=58.53,573.99");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=84.59,599.38");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=149.13,605.30");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=112.01,600.87");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=73.02,541.97");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=45.37,640.30");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=89.72,729.33");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=3.11,595.63");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=52.13,489.61");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=0.82,607.81");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=3.88,547.81");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=87.40,520.39");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=115.85,512.05");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=47.22,511.63");
    }

}

