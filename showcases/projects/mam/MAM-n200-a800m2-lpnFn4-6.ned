
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn4-6
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
        @display("p=585.00,617.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=633.11,585.88");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=596.93,540.45");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=666.79,492.25");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=664.74,473.84");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=739.63,491.24");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=720.21,479.78");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=746.33,429.91");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=667.74,390.55");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=746.06,406.43");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=710.49,387.77");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=742.14,394.98");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=676.08,436.03");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=716.21,468.74");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=755.77,437.88");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=799.77,426.89");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=761.77,487.50");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=732.28,435.92");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=723.79,532.15");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=689.50,484.48");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=676.15,556.85");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=641.67,580.16");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=597.66,578.90");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=572.35,562.71");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=515.77,554.67");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=530.38,533.47");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=478.49,581.69");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=450.21,663.81");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=419.45,593.39");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=432.42,587.85");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=424.23,639.19");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=471.13,560.54");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=510.85,572.33");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=511.86,493.75");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=496.64,507.91");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=446.59,514.76");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=470.90,452.44");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=450.69,530.85");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=420.50,440.43");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=411.68,417.57");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=431.40,373.04");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=338.75,402.74");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=303.42,331.82");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=322.25,422.03");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=230.46,435.43");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=227.13,448.76");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=232.02,489.20");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=217.42,542.89");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=264.63,534.06");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=290.77,547.92");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=628.65,615.78");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=651.62,588.12");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=572.88,625.54");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=612.89,484.94");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=652.56,403.54");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=757.89,588.51");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=731.50,424.10");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=784.84,452.61");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=588.81,370.07");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=758.78,409.85");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=642.54,357.48");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=779.15,328.55");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=704.99,492.51");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=661.43,424.88");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=774.29,513.29");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=794.95,484.03");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=799.09,454.67");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=719.33,439.40");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=734.34,533.92");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=749.16,500.92");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=607.99,597.40");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=585.91,633.55");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=582.92,587.67");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=590.62,596.21");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=470.79,628.82");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=500.80,531.80");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=517.07,600.71");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=473.60,648.30");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=430.75,530.11");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=383.75,502.84");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=413.36,609.83");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=454.48,604.80");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=528.72,587.77");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=548.70,500.87");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=446.35,552.70");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=391.94,544.56");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=525.56,415.60");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=469.06,490.53");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=466.07,523.53");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=404.54,425.54");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=505.16,359.32");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=316.27,437.98");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=282.23,397.55");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=288.06,467.85");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=156.65,489.18");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=193.47,365.47");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=223.11,498.84");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=273.03,465.17");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=259.03,444.84");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=274.59,530.77");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=599.66,675.88");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=555.88,562.46");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=629.27,533.43");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=620.91,416.37");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=613.47,529.03");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=751.95,518.11");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=756.98,452.02");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=785.20,481.71");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=669.31,459.51");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=699.10,394.26");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=657.73,371.40");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=718.75,320.02");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=638.96,376.60");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=692.20,559.23");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=796.59,396.92");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=779.40,414.67");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=776.66,487.43");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=735.60,511.29");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=786.99,495.42");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=651.27,512.79");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=644.60,613.73");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=545.97,604.87");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=665.13,544.00");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=582.39,569.40");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=522.22,571.05");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=539.16,625.61");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=449.71,594.88");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=470.98,666.47");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=455.89,620.08");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=491.73,656.05");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=394.41,646.89");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=496.60,621.66");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=547.60,661.16");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=538.14,503.57");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=438.77,485.09");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=381.26,585.31");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=514.72,452.82");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=417.26,491.61");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=416.77,371.96");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=450.28,449.14");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=451.00,386.93");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=296.60,383.82");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=298.28,261.27");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=356.84,474.81");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=249.31,408.90");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=269.32,401.38");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=172.12,521.80");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=150.78,519.22");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=284.71,534.78");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=321.64,473.27");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=527.72,681.52");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=677.12,589.51");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=574.76,547.09");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=597.95,429.56");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=648.12,466.30");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=683.92,515.96");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=651.95,430.66");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=668.38,376.37");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=620.50,371.01");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=775.89,466.28");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=778.68,375.43");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=780.13,438.09");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=700.54,342.11");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=680.75,412.28");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=764.67,431.01");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=782.38,344.56");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=776.93,554.15");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=766.12,392.99");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=748.12,599.63");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=737.88,562.70");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=772.66,543.18");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=669.55,602.86");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=637.81,495.82");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=523.81,487.38");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=477.45,546.45");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=494.22,487.08");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=534.21,640.50");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=489.98,690.65");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=338.93,552.57");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=344.89,544.25");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=388.77,720.28");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=444.50,621.17");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=509.80,591.00");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=499.95,474.29");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=486.34,509.98");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=516.62,529.06");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=410.82,477.73");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=418.37,575.29");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=365.31,364.63");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=427.21,421.97");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=386.81,408.58");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=404.17,382.30");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=211.55,298.71");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=284.02,355.50");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=223.36,360.71");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=202.65,414.90");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=163.94,436.51");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=164.22,545.61");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=328.83,462.11");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=245.66,469.33");
    }

}

