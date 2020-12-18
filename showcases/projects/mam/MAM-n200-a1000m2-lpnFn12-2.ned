
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn12-2
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
        @display("p=666.00,712.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=630.02,668.99");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=688.52,706.56");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=695.85,721.79");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=661.73,755.03");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=671.33,759.96");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=598.52,716.77");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=645.34,687.39");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=650.41,667.24");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=634.90,652.49");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=589.18,643.08");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=535.15,649.42");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=502.44,659.55");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=526.45,659.46");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=560.19,652.24");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=607.82,674.15");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=553.65,696.93");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=706.91,732.26");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=563.38,619.94");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=644.55,777.76");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=668.46,684.80");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=700.70,778.15");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=652.01,757.96");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=569.45,692.18");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=664.74,664.25");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=720.66,727.41");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=621.83,613.79");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=585.24,679.73");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=596.46,704.52");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=511.07,638.83");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=570.04,581.19");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=605.77,618.17");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=634.88,728.44");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=510.59,686.91");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=670.45,727.36");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=625.52,634.58");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=703.44,709.10");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=675.03,776.38");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=679.85,809.87");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=672.83,748.24");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=552.05,667.87");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=637.53,678.21");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=615.79,663.63");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=653.99,645.01");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=569.59,641.35");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=537.41,615.73");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=532.06,638.22");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=599.07,666.91");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=503.27,729.60");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=606.12,748.60");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=537.34,685.87");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=647.14,708.75");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=593.17,622.77");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=723.62,657.25");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=726.08,752.42");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=585.55,796.10");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=586.57,809.48");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=610.48,686.21");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=658.16,736.55");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=706.79,691.39");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=657.03,705.08");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=682.71,656.63");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=550.76,604.75");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=500.93,744.08");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=597.10,633.40");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=537.70,665.19");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=635.74,637.58");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=578.72,698.58");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=668.97,695.31");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=683.23,630.08");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=741.25,716.70");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=599.35,739.75");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=699.66,749.80");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=670.58,854.17");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=529.08,761.28");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=627.11,683.51");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=669.54,640.78");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=661.53,584.44");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=570.35,606.78");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=501.34,645.13");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=492.85,601.05");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=556.89,594.02");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=593.35,610.42");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=561.25,716.79");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=544.17,703.42");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=747.24,769.94");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=605.21,600.41");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=706.51,617.51");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=721.07,667.12");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=687.41,672.14");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=660.99,789.40");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=552.51,735.50");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=715.29,647.66");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=719.56,637.75");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=579.10,663.45");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=567.60,570.56");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=524.15,705.41");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=470.14,706.24");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=530.54,567.51");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=538.56,629.35");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=514.09,672.93");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=563.85,676.06");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=646.27,620.14");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=621.40,593.24");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=624.88,766.56");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=684.10,737.82");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=653.86,828.72");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=613.65,832.48");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=613.57,720.17");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=692.62,649.87");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=705.96,657.74");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=613.69,709.24");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=548.73,641.03");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=568.78,726.75");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=460.27,710.66");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=570.67,737.33");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=575.08,628.49");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=617.38,741.99");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=633.29,742.63");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=748.88,679.04");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=632.27,701.51");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=782.11,716.21");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=633.13,759.70");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=691.70,757.60");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=627.62,789.43");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=588.28,771.70");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=694.40,695.31");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=642.72,600.51");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=672.08,591.88");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=545.26,565.11");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=568.65,555.78");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=442.45,728.49");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=516.84,600.80");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=632.02,604.12");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=528.60,734.14");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=520.99,635.26");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=683.07,694.00");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=678.26,677.45");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=696.37,616.23");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=740.48,685.19");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=584.06,781.93");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=687.50,776.26");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=565.70,757.97");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=671.86,652.60");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=596.57,693.50");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=629.15,623.14");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=655.30,626.07");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=503.23,587.11");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=503.01,755.55");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=446.63,617.26");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=486.49,633.57");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=623.51,645.66");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=603.14,782.06");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=720.47,700.23");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=681.31,753.96");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=745.28,727.20");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=732.15,721.34");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=654.92,658.01");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=688.82,826.34");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=608.08,699.15");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=630.83,712.02");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=699.73,585.65");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=687.90,601.08");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=607.42,570.20");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=546.50,656.48");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=426.39,685.93");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=548.95,685.60");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=538.39,731.83");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=587.21,753.87");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=496.57,623.76");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=740.35,699.75");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=617.78,572.08");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=682.75,725.93");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=764.10,735.98");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=597.13,790.15");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=734.64,731.91");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=594.72,730.24");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=588.96,654.66");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=695.17,632.10");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=597.23,569.15");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=585.22,577.74");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=530.56,693.77");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=467.26,647.59");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=538.86,675.52");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=528.13,680.06");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=565.03,661.97");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=511.94,650.92");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=737.14,773.45");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=551.71,711.20");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=655.59,680.15");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=738.45,672.92");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=610.46,796.61");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=664.81,834.79");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=617.55,757.59");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=667.93,624.21");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=654.69,604.29");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=584.57,736.82");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=579.01,558.96");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=532.55,598.34");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=526.87,577.18");
    }

}

