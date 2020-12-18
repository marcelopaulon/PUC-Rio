
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn4-8
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
        @display("p=703.00,594.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=713.74,495.13");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=778.28,522.70");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=780.65,581.81");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=730.93,532.41");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=736.52,563.98");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=709.90,638.95");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=642.95,698.50");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=594.58,617.50");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=682.81,663.75");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=730.27,628.79");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=721.38,634.57");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=667.85,655.89");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=633.89,647.35");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=677.80,680.40");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=618.08,654.72");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=671.29,615.52");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=729.51,686.02");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=734.47,696.31");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=773.41,669.04");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=752.22,682.83");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=696.29,751.25");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=613.55,710.83");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=610.53,773.09");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=574.67,737.17");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=655.88,768.65");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=622.09,746.51");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=594.87,738.50");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=603.86,754.93");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=565.07,770.14");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=590.30,782.94");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=600.64,779.26");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=583.65,717.27");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=627.48,669.86");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=583.56,618.38");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=589.84,682.32");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=648.09,629.43");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=642.64,676.81");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=581.71,704.41");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=529.84,639.06");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=506.84,554.87");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=504.79,542.72");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=469.57,514.22");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=533.07,547.07");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=550.26,619.36");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=534.98,684.65");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=548.82,763.46");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=496.78,767.59");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=484.21,767.19");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=492.66,740.58");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=696.44,651.10");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=761.03,484.83");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=788.56,524.55");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=785.21,611.38");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=680.95,495.63");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=788.05,538.84");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=679.00,695.81");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=731.78,716.31");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=620.06,625.49");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=738.14,612.16");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=756.49,626.31");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=760.02,553.84");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=678.91,644.61");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=626.59,613.62");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=614.41,670.77");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=613.32,640.35");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=602.02,592.33");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=766.15,728.19");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=765.81,637.85");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=759.24,648.83");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=751.56,723.67");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=709.82,668.52");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=601.88,691.22");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=619.85,784.85");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=612.34,741.25");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=683.36,771.48");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=580.24,686.85");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=647.27,785.94");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=657.39,682.60");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=535.91,770.17");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=539.98,737.30");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=554.71,777.13");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=655.93,697.62");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=620.54,681.72");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=569.01,657.44");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=570.08,678.18");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=675.42,554.58");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=645.09,608.12");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=586.85,670.66");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=538.35,624.17");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=507.30,525.44");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=474.35,482.19");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=434.03,578.21");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=491.29,539.27");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=576.19,648.01");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=554.92,692.89");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=554.91,726.08");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=502.89,752.41");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=514.19,766.62");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=567.78,724.60");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=784.74,650.93");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=701.40,455.33");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=718.66,576.50");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=703.40,613.40");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=670.85,457.20");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=766.84,536.22");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=726.88,612.39");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=639.32,717.81");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=645.84,665.15");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=759.62,609.93");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=750.60,604.45");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=711.16,683.72");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=664.92,561.73");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=616.39,577.99");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=650.59,760.03");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=661.73,620.20");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=638.14,539.89");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=760.61,707.53");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=654.33,652.27");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=732.54,598.78");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=695.76,681.52");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=689.60,759.90");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=691.66,723.26");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=596.44,765.50");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=635.52,750.42");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=655.76,750.41");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=605.45,725.17");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=683.88,729.94");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=635.76,767.14");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=606.42,789.29");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=688.72,789.84");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=528.61,747.18");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=588.73,629.14");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=648.38,712.27");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=521.43,541.72");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=513.35,704.64");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=709.14,565.02");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=594.10,720.02");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=620.30,727.39");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=518.15,615.86");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=453.06,600.72");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=538.44,504.77");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=495.82,496.25");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=455.03,524.75");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=555.15,638.02");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=631.57,694.58");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=454.57,789.41");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=473.46,789.16");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=476.49,745.21");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=475.57,772.29");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=680.56,622.65");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=621.86,510.50");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=768.80,497.73");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=782.95,598.90");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=762.00,449.51");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=704.27,551.38");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=744.91,632.86");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=563.90,645.01");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=546.81,547.88");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=669.77,674.12");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=761.83,596.73");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=686.81,599.72");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=715.10,659.55");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=661.83,640.43");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=661.84,586.87");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=690.77,712.11");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=604.08,651.57");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=713.58,733.04");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=710.83,628.34");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=748.22,659.93");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=766.84,684.61");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=696.03,737.11");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=612.19,692.87");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=637.32,788.58");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=577.79,764.35");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=671.81,778.37");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=661.02,723.82");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=581.46,661.97");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=666.19,752.39");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=646.12,771.90");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=599.73,703.96");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=591.32,749.45");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=555.24,707.76");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=725.47,658.82");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=578.59,594.09");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=568.67,703.55");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=599.82,570.23");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=680.23,748.07");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=575.81,606.62");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=543.21,657.94");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=500.12,586.97");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=462.10,490.40");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=467.34,526.29");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=577.87,582.51");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=472.86,633.29");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=539.45,706.90");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=496.22,693.40");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=451.78,756.69");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=433.67,732.59");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=462.84,749.03");
    }

}

