
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn8-2
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
        @display("p=767.00,577.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=763.27,525.30");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=738.52,519.77");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=767.17,539.55");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=706.75,538.54");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=665.85,507.61");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=722.40,482.18");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=679.62,534.77");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=635.04,527.13");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=601.73,557.66");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=610.18,567.35");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=628.75,576.95");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=559.47,585.74");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=523.90,653.26");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=469.71,669.42");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=523.01,709.27");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=562.56,736.25");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=563.01,646.06");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=487.82,707.22");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=463.68,711.64");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=442.34,684.05");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=367.32,622.58");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=358.15,629.78");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=315.50,718.16");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=303.49,734.62");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=777.96,634.94");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=771.44,516.84");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=714.78,440.02");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=741.25,599.57");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=707.77,516.67");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=622.85,521.07");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=705.63,451.65");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=660.94,563.14");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=561.12,568.48");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=618.63,552.47");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=700.28,597.15");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=644.06,580.66");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=540.20,557.03");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=532.67,681.37");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=482.99,625.64");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=478.11,680.29");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=553.41,742.99");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=493.21,686.52");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=572.27,721.82");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=543.10,763.38");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=382.86,706.73");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=429.00,613.76");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=307.00,691.87");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=323.84,726.15");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=373.14,788.53");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=786.08,609.64");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=743.93,429.77");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=706.29,566.83");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=694.13,581.23");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=731.25,591.64");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=624.41,448.50");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=714.91,458.13");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=720.84,529.61");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=700.44,480.23");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=568.96,551.35");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=609.81,580.94");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=607.99,624.88");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=524.58,504.13");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=567.94,628.30");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=463.67,657.40");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=509.20,725.76");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=567.98,757.76");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=650.04,676.52");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=554.22,708.48");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=534.18,705.92");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=426.18,709.61");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=306.73,548.12");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=372.37,604.89");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=390.10,693.26");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=315.84,736.23");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=710.50,608.90");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=729.02,562.66");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=708.43,473.99");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=678.37,552.45");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=672.05,448.31");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=695.17,562.67");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=752.60,446.67");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=669.01,544.29");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=566.98,505.01");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=590.06,557.22");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=608.80,523.66");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=589.03,489.93");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=494.23,535.18");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=513.26,565.03");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=447.03,658.99");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=528.79,662.58");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=553.41,776.00");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=623.26,720.08");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=482.78,728.67");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=439.28,645.95");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=458.35,667.06");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=364.97,547.04");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=389.62,677.09");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=365.47,707.95");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=284.65,737.19");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=793.00,508.30");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=798.54,454.64");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=742.23,482.19");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=745.13,570.80");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=772.61,551.86");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=636.58,456.31");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=675.30,480.41");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=692.00,543.48");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=571.68,470.62");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=549.27,601.67");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=647.09,622.42");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=603.82,597.88");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=651.05,606.52");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=464.47,616.98");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=440.01,670.63");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=516.61,717.81");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=514.88,658.85");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=556.53,615.60");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=479.53,746.54");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=451.24,702.61");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=473.38,693.06");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=340.45,613.74");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=346.82,671.07");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=374.02,761.96");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=331.78,665.81");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=766.58,479.22");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=786.37,563.52");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=751.82,533.38");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=722.87,583.99");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=757.18,571.47");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=645.37,542.98");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=677.79,508.56");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=672.10,525.85");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=583.71,503.77");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=571.40,601.19");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=659.53,584.53");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=682.72,518.99");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=581.83,612.11");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=541.24,573.05");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=564.79,679.26");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=487.87,717.96");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=550.64,731.76");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=551.37,624.48");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=504.27,635.50");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=479.90,760.59");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=428.40,627.75");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=331.11,562.81");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=359.27,660.80");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=251.92,664.26");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=297.64,640.71");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=771.71,561.93");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=773.60,601.45");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=710.46,582.85");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=765.44,493.90");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=734.83,578.14");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=654.50,492.27");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=694.49,390.22");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=759.78,550.71");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=646.34,520.70");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=609.63,639.75");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=617.92,482.20");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=694.58,510.02");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=584.43,645.29");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=499.09,588.90");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=435.80,727.94");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=532.31,738.11");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=525.08,726.31");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=581.50,666.13");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=577.29,739.71");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=518.94,768.10");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=457.32,643.03");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=391.18,589.60");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=285.78,607.57");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=347.19,645.21");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=242.00,765.96");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=736.50,554.49");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=788.15,532.63");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=732.51,619.47");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=732.10,545.50");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=656.58,527.40");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=748.75,509.06");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=700.09,422.14");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=597.15,514.66");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=635.94,560.93");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=643.56,640.87");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=527.38,516.05");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=570.00,614.90");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=524.31,532.36");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=521.22,690.98");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=415.44,650.03");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=463.89,746.13");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=618.15,769.42");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=495.98,612.50");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=469.73,724.93");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=423.02,767.46");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=396.55,728.74");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=410.05,629.18");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=383.40,628.37");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=306.04,653.27");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=229.67,692.03");
    }

}

