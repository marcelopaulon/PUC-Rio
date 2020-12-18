
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn8-5
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
        @display("p=472.00,412.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=484.41,454.05");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=501.77,403.40");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=444.02,410.42");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=538.43,418.17");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=521.44,462.52");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=508.68,417.03");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=580.58,475.92");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=658.22,432.61");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=641.90,442.88");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=737.09,443.92");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=681.00,443.45");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=624.63,515.46");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=701.27,551.45");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=673.32,568.19");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=671.43,590.93");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=740.18,621.37");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=713.97,605.11");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=780.06,554.68");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=801.09,548.42");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=798.83,561.41");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=737.82,518.23");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=671.74,491.06");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=686.68,517.69");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=697.26,489.77");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=501.58,431.39");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=485.73,375.87");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=503.97,478.04");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=437.93,422.10");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=526.10,419.38");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=532.22,474.26");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=459.33,441.61");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=593.94,487.95");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=692.34,387.84");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=556.51,478.84");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=740.47,454.29");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=679.30,474.63");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=643.40,518.14");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=656.25,503.11");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=607.60,582.13");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=689.31,609.35");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=720.49,556.94");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=722.11,611.57");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=819.45,615.39");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=830.70,559.27");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=728.96,534.16");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=771.60,569.99");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=633.17,529.20");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=619.91,462.55");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=646.48,543.05");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=485.15,405.90");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=469.66,481.57");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=469.66,332.44");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=374.87,364.62");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=484.92,443.00");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=587.28,431.27");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=552.05,445.79");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=561.70,501.70");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=695.42,419.10");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=624.03,369.15");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=684.95,504.53");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=651.42,461.19");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=693.33,446.53");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=683.86,553.60");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=745.51,561.34");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=668.93,536.79");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=798.10,583.27");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=756.92,603.36");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=814.35,601.36");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=818.54,536.62");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=779.59,647.05");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=747.95,485.62");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=608.35,538.96");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=742.75,465.65");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=639.25,430.66");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=383.80,409.10");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=525.36,401.94");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=539.10,371.65");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=348.95,379.70");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=584.23,404.35");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=529.68,501.80");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=524.84,429.62");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=580.09,455.77");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=622.16,484.16");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=563.41,429.90");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=725.88,445.66");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=678.52,433.23");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=636.94,550.62");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=635.60,584.20");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=639.41,599.05");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=693.42,641.37");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=683.80,626.71");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=715.06,661.20");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=761.73,574.55");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=788.32,468.37");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=766.46,647.93");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=788.65,501.59");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=593.28,540.09");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=699.09,513.27");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=712.02,392.54");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=440.78,359.63");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=524.13,376.08");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=440.04,455.79");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=404.28,348.71");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=573.28,423.20");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=544.77,470.90");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=551.58,414.08");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=560.27,513.92");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=706.49,481.21");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=640.58,402.94");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=714.60,438.12");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=668.65,368.50");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=587.47,526.98");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=754.19,503.28");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=651.27,489.59");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=620.54,643.66");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=660.50,594.99");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=720.94,597.61");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=794.07,610.27");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=757.40,523.28");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=745.68,585.41");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=799.72,480.71");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=651.93,423.25");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=765.15,551.76");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=727.91,503.97");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=435.40,446.26");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=484.74,472.24");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=561.83,406.22");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=483.85,390.86");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=462.04,408.26");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=456.56,502.04");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=454.67,374.91");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=537.86,488.58");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=643.21,528.37");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=708.87,406.05");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=830.69,433.18");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=685.34,452.77");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=665.28,479.98");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=787.27,583.22");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=706.68,583.51");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=729.36,619.57");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=829.75,614.14");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=694.01,527.16");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=792.78,572.64");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=846.15,464.64");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=733.92,488.38");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=668.96,461.46");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=742.31,497.64");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=769.95,489.36");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=637.93,564.88");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=555.59,463.22");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=474.48,463.26");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=524.17,336.23");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=387.65,477.51");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=561.47,348.79");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=452.85,462.03");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=571.61,468.78");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=518.65,511.44");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=618.10,351.39");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=603.08,480.20");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=731.82,463.23");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=761.74,495.69");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=623.62,532.32");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=713.69,542.44");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=753.57,548.54");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=622.71,555.36");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=755.93,628.49");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=707.52,615.68");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=749.04,574.69");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=857.73,478.70");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=735.85,565.19");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=712.97,518.13");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=725.99,548.38");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=629.26,494.60");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=634.90,475.13");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=461.65,326.11");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=487.98,498.68");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=439.80,435.88");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=428.33,417.09");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=538.97,352.27");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=539.63,431.20");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=566.31,367.22");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=598.73,448.43");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=660.92,442.64");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=703.59,503.91");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=731.46,405.92");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=658.79,453.22");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=645.43,499.12");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=775.89,581.81");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=692.85,538.07");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=578.13,597.69");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=730.52,671.89");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=734.51,638.81");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=818.33,484.62");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=845.65,511.59");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=833.04,628.20");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=743.87,528.11");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=620.36,408.91");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=663.43,581.74");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=690.73,481.30");
    }

}

