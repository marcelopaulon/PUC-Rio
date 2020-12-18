
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn12-5
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
        @display("p=781.00,488.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=775.40,516.26");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=793.97,452.99");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=758.17,428.55");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=776.41,390.06");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=743.25,302.70");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=729.63,301.85");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=663.27,370.89");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=740.53,417.17");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=696.06,339.75");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=745.28,407.57");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=786.08,443.13");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=765.01,487.65");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=780.37,408.56");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=785.27,396.90");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=713.97,382.28");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=722.82,367.49");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=750.54,511.55");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=798.05,533.61");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=754.60,462.15");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=707.97,444.39");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=768.01,370.95");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=688.53,239.23");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=764.46,256.23");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=651.06,419.09");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=797.99,402.73");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=679.01,318.28");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=732.09,440.29");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=766.78,449.13");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=759.97,409.75");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=732.40,344.05");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=794.22,325.86");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=768.97,401.43");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=668.04,355.79");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=736.09,533.00");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=729.44,428.33");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=763.16,474.86");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=744.38,396.50");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=773.95,479.40");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=753.24,327.76");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=704.53,308.19");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=662.06,341.42");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=787.08,386.09");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=677.89,364.17");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=773.15,335.03");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=721.91,453.90");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=741.29,521.42");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=796.87,436.60");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=794.73,415.00");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=756.79,370.09");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=691.72,298.94");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=788.58,506.71");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=775.38,501.36");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=706.69,484.61");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=684.53,392.24");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=774.84,433.05");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=713.36,283.46");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=795.14,342.50");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=634.65,373.68");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=686.01,428.18");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=689.49,349.02");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=798.72,389.48");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=783.25,469.79");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=740.77,432.77");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=751.72,488.09");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=777.67,458.74");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=715.61,401.81");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=710.35,348.38");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=754.20,391.89");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=771.20,422.64");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=731.93,480.73");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=732.04,499.86");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=753.34,306.64");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=723.91,317.30");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=771.91,217.37");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=619.35,357.81");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=670.43,420.36");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=687.06,255.87");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=773.60,361.01");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=724.67,489.49");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=700.07,554.45");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=718.32,440.18");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=743.27,369.35");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=701.42,291.16");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=731.06,385.31");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=690.47,490.69");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=797.06,570.10");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=711.08,428.55");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=710.68,413.99");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=792.67,310.19");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=772.12,298.27");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=742.87,280.58");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=635.86,290.88");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=779.59,378.06");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=627.77,279.66");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=775.08,317.38");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=751.86,449.29");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=728.25,470.40");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=703.96,458.32");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=726.72,401.68");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=730.15,359.72");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=757.45,291.81");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=792.25,551.90");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=772.33,607.38");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=794.08,464.20");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=749.83,345.97");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=775.24,349.15");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=726.34,270.06");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=782.53,217.29");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=651.87,368.78");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=662.73,466.29");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=622.99,289.46");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=739.62,463.83");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=791.94,484.43");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=717.94,463.44");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=769.89,412.18");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=754.11,380.36");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=680.26,408.25");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=691.99,368.58");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=691.64,461.95");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=792.50,601.64");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=756.60,524.20");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=707.99,502.72");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=716.81,334.42");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=787.48,289.10");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=692.45,286.22");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=699.52,326.94");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=664.81,400.80");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=722.43,290.78");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=711.14,475.13");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=784.03,523.65");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=748.27,475.99");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=741.08,352.71");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=748.46,317.49");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=703.80,379.78");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=706.94,368.10");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=730.98,554.03");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=721.77,568.30");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=718.06,502.37");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=791.69,426.00");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=796.38,371.07");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=719.88,223.83");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=710.57,297.60");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=611.68,412.82");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=697.95,405.81");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=676.93,383.86");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=661.26,413.06");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=759.93,439.72");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=691.76,442.87");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=791.05,353.68");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=704.23,391.69");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=638.08,401.53");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=648.13,328.05");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=765.92,391.68");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=761.49,506.73");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=747.78,533.49");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=681.05,444.53");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=787.89,365.50");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=774.17,271.46");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=726.00,258.39");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=690.36,331.52");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=725.46,511.37");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=762.16,341.51");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=727.50,416.84");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=760.51,535.06");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=794.01,517.54");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=762.84,359.11");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=798.26,473.96");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=676.79,434.53");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=697.11,355.96");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=714.28,527.38");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=712.74,546.70");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=772.18,526.15");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=750.65,420.12");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=739.35,330.14");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=664.10,280.23");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=678.25,347.98");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=636.56,391.18");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=652.85,396.22");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=626.05,395.12");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=700.51,415.65");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=755.54,497.49");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=770.52,537.57");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=743.15,381.42");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=699.81,434.11");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=662.33,327.24");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=667.84,388.62");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=772.79,469.14");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=746.05,565.38");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=737.82,453.65");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=679.49,459.95");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=722.97,349.95");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=750.68,213.40");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=764.35,276.74");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=626.10,344.34");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=691.52,383.69");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=644.84,266.08");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=657.17,450.12");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=701.53,470.90");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=771.95,568.47");
    }

}

