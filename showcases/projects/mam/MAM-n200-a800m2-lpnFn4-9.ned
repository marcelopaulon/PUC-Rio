
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn4-9
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
        @display("p=627.00,425.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=657.17,438.27");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=634.41,458.67");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=584.12,444.56");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=535.17,527.18");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=598.74,503.83");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=666.63,443.36");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=678.68,474.88");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=657.77,560.37");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=564.41,570.03");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=503.11,573.56");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=492.93,602.07");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=575.14,558.19");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=519.18,621.98");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=529.97,609.73");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=470.67,616.00");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=482.17,695.33");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=468.73,698.82");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=491.94,671.62");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=502.21,661.41");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=477.64,605.16");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=458.08,662.75");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=537.76,633.42");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=504.33,609.51");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=490.43,655.57");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=408.84,641.45");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=497.86,585.01");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=509.22,584.39");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=516.96,575.44");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=488.85,592.47");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=509.58,702.05");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=461.05,678.35");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=442.26,674.48");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=409.95,699.56");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=446.83,715.78");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=471.97,631.91");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=518.17,643.37");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=495.61,639.08");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=442.51,695.83");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=393.37,650.18");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=421.33,650.43");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=508.89,671.05");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=541.45,649.96");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=592.18,631.23");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=641.49,628.18");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=589.26,653.92");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=594.57,662.73");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=572.16,643.53");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=561.83,617.53");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=605.98,598.14");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=672.66,497.53");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=741.97,471.71");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=592.72,382.92");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=547.84,467.09");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=510.34,555.67");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=503.49,534.01");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=715.76,489.64");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=590.92,465.47");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=608.87,488.96");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=571.77,604.53");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=431.54,538.80");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=465.88,582.26");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=479.41,557.42");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=526.88,554.49");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=583.25,609.51");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=548.55,602.85");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=504.33,623.13");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=418.52,633.76");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=412.59,673.69");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=482.53,626.81");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=444.21,576.52");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=464.60,562.96");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=581.27,665.71");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=527.64,591.88");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=433.32,720.19");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=455.24,620.09");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=512.42,509.94");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=556.20,648.34");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=537.77,508.93");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=547.78,658.74");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=499.99,720.11");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=445.53,658.17");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=376.21,745.60");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=358.57,653.28");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=511.00,775.16");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=416.03,596.35");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=524.04,687.55");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=409.94,616.59");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=461.60,758.22");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=461.61,630.81");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=356.74,593.54");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=493.11,694.61");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=597.23,703.94");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=585.58,569.93");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=607.25,627.48");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=629.12,666.41");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=659.61,596.82");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=569.71,625.11");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=606.45,613.74");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=611.58,579.33");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=623.57,353.95");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=730.60,385.19");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=631.51,475.34");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=493.45,431.13");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=577.98,525.71");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=644.54,450.13");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=719.13,432.79");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=588.06,455.83");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=611.94,565.25");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=620.88,553.71");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=450.53,536.75");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=406.92,580.66");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=552.80,591.24");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=564.57,654.64");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=616.10,597.70");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=441.57,615.90");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=579.00,716.15");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=546.39,682.17");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=449.56,759.47");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=501.41,648.33");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=456.39,594.74");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=388.30,596.82");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=594.22,690.48");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=542.18,615.19");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=518.51,608.27");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=335.99,576.80");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=450.95,552.04");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=487.02,522.32");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=589.45,555.75");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=407.49,563.74");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=585.21,735.92");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=511.85,688.01");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=497.98,756.11");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=419.87,696.30");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=457.00,712.74");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=439.62,639.04");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=512.66,653.52");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=537.47,691.19");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=452.60,696.94");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=356.43,733.93");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=484.84,642.69");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=526.23,663.30");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=559.93,680.95");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=611.56,647.78");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=695.78,660.51");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=606.28,656.34");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=642.39,668.61");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=574.65,674.49");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=593.49,538.18");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=629.09,572.70");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=662.37,421.23");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=646.59,397.32");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=648.55,473.80");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=565.47,459.09");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=571.98,485.21");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=565.83,553.73");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=678.46,442.91");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=651.38,537.75");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=730.18,576.17");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=576.68,577.16");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=543.90,537.55");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=474.53,590.44");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=501.27,560.44");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=574.39,542.19");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=439.21,585.21");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=398.84,678.89");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=424.43,621.94");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=466.67,745.02");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=528.02,706.25");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=466.82,644.92");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=447.04,600.68");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=444.53,564.24");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=520.14,723.37");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=468.37,601.13");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=512.77,632.16");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=359.36,576.01");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=473.66,528.28");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=508.32,494.46");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=529.71,566.89");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=543.87,576.41");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=438.10,737.82");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=449.05,683.30");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=481.30,683.93");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=383.75,705.40");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=461.49,729.06");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=376.30,628.34");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=504.51,681.06");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=556.95,562.97");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=396.06,706.09");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=385.87,692.02");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=489.98,614.09");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=470.15,712.72");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=519.15,565.53");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=603.02,642.37");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=614.88,701.46");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=551.60,629.81");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=627.71,626.19");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=652.72,656.40");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=653.79,646.38");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=606.48,517.24");
    }

}

