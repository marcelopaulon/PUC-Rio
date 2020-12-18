
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn8-2
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
        @display("p=804.00,789.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=815.24,753.22");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=798.25,777.73");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=759.59,742.89");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=774.09,731.79");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=747.95,655.21");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=780.00,597.46");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=738.50,605.82");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=790.10,590.10");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=814.35,578.73");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=748.17,644.07");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=666.85,681.83");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=649.15,764.66");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=607.88,781.35");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=566.27,872.04");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=576.32,874.77");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=547.84,888.41");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=513.10,849.08");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=538.05,793.23");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=595.91,814.56");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=581.55,790.47");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=640.44,778.02");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=560.75,764.64");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=497.91,773.76");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=417.37,719.81");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=709.57,779.45");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=785.92,810.38");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=759.49,713.61");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=806.43,744.49");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=800.48,730.48");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=761.00,644.82");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=825.58,662.61");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=754.82,549.37");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=828.47,632.85");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=787.80,567.43");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=686.30,686.62");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=663.08,648.01");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=656.75,802.04");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=527.74,764.67");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=570.38,859.12");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=649.04,916.58");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=616.43,817.15");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=484.36,801.91");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=542.76,751.07");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=581.76,813.33");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=528.36,819.48");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=668.37,855.41");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=544.89,769.03");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=511.65,827.73");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=407.42,716.34");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=781.98,819.66");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=804.80,756.56");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=823.47,784.71");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=768.04,750.32");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=774.95,717.35");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=740.25,637.75");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=745.53,505.92");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=780.09,581.66");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=724.87,633.29");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=839.39,632.69");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=793.71,674.94");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=648.47,711.42");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=659.75,725.49");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=605.04,750.21");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=547.14,906.44");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=565.90,815.45");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=612.46,946.01");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=516.86,801.55");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=457.06,826.63");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=606.95,833.64");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=613.52,855.12");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=635.45,762.11");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=553.50,684.66");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=527.49,805.05");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=436.68,729.15");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=746.06,815.59");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=744.71,742.86");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=809.68,774.37");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=758.54,725.68");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=855.79,732.99");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=738.29,660.39");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=825.14,526.52");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=651.29,608.15");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=790.76,600.76");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=753.75,524.59");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=836.08,675.86");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=651.01,696.47");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=689.80,833.24");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=620.63,798.78");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=536.75,898.69");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=490.25,835.23");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=532.48,828.66");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=477.37,786.34");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=555.34,717.75");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=584.74,860.94");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=494.09,806.77");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=567.00,835.32");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=621.79,738.52");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=511.83,676.56");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=490.15,653.45");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=778.01,841.39");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=780.21,760.22");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=863.51,818.52");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=801.18,659.38");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=755.83,769.55");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=680.52,670.89");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=761.15,559.68");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=818.18,630.01");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=802.65,610.32");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=769.79,601.06");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=705.90,633.70");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=647.84,741.20");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=725.79,770.25");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=582.69,849.20");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=545.11,964.02");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=602.01,800.56");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=531.59,881.54");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=543.69,822.05");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=490.23,743.31");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=547.90,876.71");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=602.69,771.09");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=663.59,699.42");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=560.33,707.26");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=472.26,766.94");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=410.25,733.46");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=710.94,791.36");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=781.75,771.93");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=732.46,743.01");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=725.67,784.34");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=704.32,749.51");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=759.16,659.59");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=830.70,619.38");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=662.23,608.46");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=835.59,564.28");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=795.11,627.93");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=794.14,720.46");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=646.68,648.58");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=684.12,763.85");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=541.91,729.08");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=637.01,883.51");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=556.77,865.50");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=501.65,849.54");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=427.05,842.26");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=533.19,702.16");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=675.95,822.16");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=554.09,747.17");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=689.44,728.66");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=616.60,844.98");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=452.89,782.07");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=507.62,758.31");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=746.08,779.02");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=762.91,670.46");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=861.09,713.88");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=774.12,690.98");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=741.91,711.70");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=775.02,632.46");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=795.69,543.11");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=719.43,651.30");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=813.33,649.47");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=757.54,586.06");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=750.14,597.53");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=633.44,675.80");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=645.46,798.49");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=669.94,762.98");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=524.03,898.74");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=630.60,926.52");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=553.17,916.69");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=459.29,903.38");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=553.89,795.41");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=612.34,889.11");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=521.67,728.52");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=634.26,817.12");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=590.67,779.95");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=463.17,811.90");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=370.10,751.02");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=780.81,742.79");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=852.24,831.28");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=854.59,800.32");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=728.11,733.85");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=802.11,638.71");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=764.88,632.94");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=737.49,559.22");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=715.33,624.23");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=859.00,566.16");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=836.00,550.36");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=789.84,703.92");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=723.05,703.13");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=581.00,740.86");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=583.10,754.53");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=518.86,834.67");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=647.88,886.32");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=499.74,907.14");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=469.22,891.72");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=570.91,737.12");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=559.99,782.34");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=577.55,767.87");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=660.94,832.32");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=588.56,798.80");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=424.38,804.52");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=442.76,719.55");
    }

}

