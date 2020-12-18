
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn8-8
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
        @display("p=650.00,255.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=639.25,261.18");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=649.94,291.63");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=640.12,284.18");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=693.82,303.66");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=608.94,305.13");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=612.61,287.24");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=556.32,343.83");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=621.30,385.19");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=651.94,387.28");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=650.60,372.50");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=648.89,321.09");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=577.87,366.95");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=539.29,398.23");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=542.88,356.77");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=580.73,343.13");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=589.85,331.36");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=607.47,369.45");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=541.81,374.20");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=474.57,368.17");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=506.14,460.57");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=540.99,458.00");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=535.98,442.84");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=561.09,472.19");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=577.19,406.44");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=626.65,347.46");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=649.64,356.48");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=708.79,247.66");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=606.64,277.09");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=666.18,316.18");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=703.09,318.45");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=609.06,251.10");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=510.18,359.59");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=653.67,479.14");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=629.91,315.95");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=653.47,415.75");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=711.68,258.88");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=595.76,351.62");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=443.35,419.29");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=570.25,384.36");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=590.45,367.13");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=515.04,313.14");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=622.41,371.98");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=553.06,279.94");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=441.44,301.64");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=576.40,418.50");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=551.99,435.49");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=468.76,499.69");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=519.99,405.43");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=521.13,422.56");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=647.50,215.43");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=569.60,321.36");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=595.37,311.84");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=719.67,300.18");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=708.26,291.24");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=541.74,326.62");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=628.54,244.39");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=517.97,331.29");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=531.72,352.31");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=727.01,359.58");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=671.62,410.73");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=644.01,335.21");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=508.09,329.27");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=600.66,459.52");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=574.51,351.82");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=665.37,359.33");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=590.98,283.08");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=514.23,389.38");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=529.13,416.45");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=506.74,305.22");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=522.63,503.12");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=508.10,518.09");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=600.44,472.79");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=590.93,453.61");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=613.83,406.66");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=679.44,222.47");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=660.03,299.04");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=641.63,201.15");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=693.80,236.29");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=769.82,239.98");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=644.85,270.07");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=654.92,309.82");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=555.48,332.37");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=677.83,442.36");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=603.54,433.61");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=642.22,408.09");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=689.52,379.40");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=490.47,350.32");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=600.91,386.23");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=593.75,428.15");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=482.44,342.26");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=575.25,237.01");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=614.83,335.00");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=445.55,386.78");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=496.40,337.65");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=463.41,510.67");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=544.72,408.78");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=518.84,353.77");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=598.49,532.77");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=503.46,396.35");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=653.95,243.45");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=569.77,198.91");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=611.31,265.31");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=587.09,254.51");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=679.64,254.26");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=676.20,321.87");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=531.55,331.67");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=551.80,292.52");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=561.99,421.94");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=684.20,460.40");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=644.37,438.51");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=723.44,329.99");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=561.48,372.40");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=503.69,439.29");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=457.71,404.35");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=538.87,431.51");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=550.32,317.77");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=619.07,462.06");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=521.15,303.54");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=425.81,367.97");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=507.80,483.22");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=590.95,467.01");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=547.73,468.16");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=493.84,477.26");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=675.22,394.06");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=586.40,236.31");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=560.54,255.72");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=661.02,288.89");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=568.21,227.68");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=735.91,382.09");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=666.26,348.06");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=612.91,192.93");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=530.63,363.76");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=624.42,395.12");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=740.25,367.76");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=708.97,383.92");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=692.57,314.34");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=584.36,375.42");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=479.49,323.94");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=466.46,410.38");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=588.10,304.75");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=656.21,405.45");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=624.11,409.45");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=477.91,405.09");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=415.26,347.81");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=475.98,441.11");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=617.80,417.51");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=499.01,494.08");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=535.14,568.51");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=581.49,392.95");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=746.92,276.53");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=626.65,267.44");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=607.33,318.81");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=630.34,202.81");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=714.93,320.64");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=608.66,210.30");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=613.80,228.05");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=490.28,383.57");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=628.80,334.73");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=750.05,376.19");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=628.92,434.86");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=730.41,347.57");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=528.08,378.39");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=537.50,344.13");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=565.80,359.02");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=516.43,284.54");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=503.83,345.62");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=625.20,306.87");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=607.59,423.82");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=525.12,388.93");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=508.32,418.74");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=574.73,428.60");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=532.51,476.63");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=629.22,515.53");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=582.81,481.70");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=707.99,207.34");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=683.11,288.44");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=736.46,283.26");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=600.09,199.71");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=740.51,327.20");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=527.53,280.05");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=531.78,313.25");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=571.78,442.28");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=554.94,363.23");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=638.04,388.65");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=715.90,363.09");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=586.15,316.50");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=553.35,392.10");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=558.25,450.18");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=619.84,296.52");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=547.56,305.39");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=673.41,285.12");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=589.93,411.75");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=504.38,284.21");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=429.40,417.33");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=601.32,447.47");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=547.77,483.51");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=502.34,409.07");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=586.34,441.97");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=574.76,330.39");
    }

}

