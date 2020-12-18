
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn12-4
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
        @display("p=635.00,463.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=659.93,478.91");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=675.28,488.02");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=677.44,518.64");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=747.60,558.14");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=660.43,544.73");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=672.00,545.47");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=707.58,539.51");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=615.86,573.46");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=600.16,586.45");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=562.50,518.15");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=658.85,508.80");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=644.72,503.25");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=603.58,571.81");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=611.05,635.93");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=566.88,593.95");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=662.02,595.15");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=663.30,370.07");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=653.34,468.70");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=718.50,468.03");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=677.35,558.68");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=706.04,551.20");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=732.55,490.08");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=670.53,634.95");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=721.57,542.66");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=640.06,559.91");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=584.60,580.55");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=490.48,531.93");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=639.00,539.08");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=586.37,562.76");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=640.77,609.99");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=521.53,630.16");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=582.85,681.81");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=745.55,568.61");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=593.58,441.87");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=616.42,469.98");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=604.31,454.80");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=690.92,503.84");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=730.95,514.60");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=626.38,532.74");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=636.03,598.99");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=630.44,575.10");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=667.48,620.48");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=664.88,581.83");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=541.00,484.02");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=691.92,527.05");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=714.21,511.85");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=685.77,624.90");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=628.69,621.64");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=553.55,554.76");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=628.89,682.98");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=621.25,483.01");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=732.94,450.75");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=648.68,490.49");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=685.30,546.53");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=753.17,635.83");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=678.76,578.30");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=647.46,545.54");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=685.14,454.41");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=609.76,595.15");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=538.32,614.07");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=624.58,521.06");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=646.15,584.92");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=562.17,469.25");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=525.82,571.53");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=610.48,624.14");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=551.97,596.52");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=670.40,648.64");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=656.37,424.62");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=724.71,525.78");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=751.52,548.09");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=765.69,524.69");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=728.99,567.45");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=593.71,494.71");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=713.23,625.37");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=646.50,517.35");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=590.79,641.73");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=631.36,588.18");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=569.77,509.32");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=682.22,478.49");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=592.41,528.90");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=638.38,630.79");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=576.59,600.45");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=482.01,609.97");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=654.91,663.82");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=640.92,483.73");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=597.68,462.69");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=619.74,455.14");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=650.58,560.92");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=714.02,585.66");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=601.50,519.42");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=703.83,582.07");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=700.77,602.82");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=597.24,548.13");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=549.73,611.59");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=546.69,505.66");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=664.13,518.40");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=725.12,480.43");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=692.27,555.38");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=697.23,633.04");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=534.99,674.87");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=575.73,620.16");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=609.50,479.22");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=646.25,442.83");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=690.62,422.95");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=721.78,579.16");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=713.39,501.08");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=588.86,506.75");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=608.94,544.12");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=745.43,471.43");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=655.09,643.91");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=585.35,606.72");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=537.88,598.42");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=756.62,512.10");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=547.61,522.09");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=656.99,618.10");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=513.68,653.51");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=498.38,623.99");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=694.76,657.74");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=645.12,400.20");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=750.95,440.21");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=677.46,501.51");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=611.24,554.18");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=769.65,619.60");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=696.20,567.36");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=612.71,519.49");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=779.66,515.43");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=590.66,590.09");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=555.33,533.74");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=634.29,506.95");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=671.52,455.35");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=735.08,473.59");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=533.66,529.28");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=622.23,641.99");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=483.79,577.84");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=653.82,535.48");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=631.36,409.20");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=586.02,450.31");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=726.94,505.03");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=623.11,544.15");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=767.57,571.01");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=691.13,595.53");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=662.19,557.09");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=794.01,589.58");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=541.67,626.92");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=535.05,543.28");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=570.54,542.34");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=707.77,425.69");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=685.24,432.64");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=675.80,529.18");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=662.58,697.22");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=543.29,653.08");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=729.24,660.23");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=613.74,497.57");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=639.39,389.71");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=709.43,566.07");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=625.23,440.72");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=769.05,636.59");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=715.39,533.25");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=627.35,632.55");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=739.17,601.69");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=568.74,571.16");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=562.20,634.64");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=551.95,584.90");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=743.86,507.15");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=574.89,520.84");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=551.71,624.27");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=565.31,657.57");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=498.27,564.99");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=747.78,615.24");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=636.85,430.97");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=704.36,395.27");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=671.97,472.19");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=670.96,438.51");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=765.38,472.85");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=704.72,479.62");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=703.34,511.45");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=739.73,631.15");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=651.21,573.43");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=599.05,558.38");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=501.08,592.21");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=699.56,468.94");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=562.12,484.54");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=557.40,567.07");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=602.47,614.98");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=525.02,654.69");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=614.51,529.62");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=654.76,403.01");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=601.68,532.70");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=698.10,494.81");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=712.61,600.93");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=771.42,481.65");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=613.08,606.35");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=761.19,541.27");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=674.59,589.62");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=538.79,557.31");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=548.76,542.31");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=602.10,502.25");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=749.63,490.61");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=621.27,587.06");
    }

}

