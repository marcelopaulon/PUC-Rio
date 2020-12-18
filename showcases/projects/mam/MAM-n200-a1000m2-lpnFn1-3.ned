
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn1-3
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
        @display("p=956.00,663.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=961.34,673.90");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=899.98,739.05");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=983.13,688.44");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=950.41,644.70");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=955.17,700.60");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=892.84,723.89");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=931.79,753.38");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=959.16,813.17");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=948.18,761.87");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=917.37,796.77");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=970.53,713.83");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=935.37,655.12");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=937.66,623.64");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=896.81,546.97");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=840.30,607.86");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=806.96,608.59");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=766.14,675.03");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=800.49,685.29");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=748.34,743.08");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=668.55,714.27");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=618.16,793.27");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=651.15,741.82");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=610.97,744.46");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=559.02,778.71");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=595.11,778.76");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=633.35,806.75");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=619.93,764.13");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=686.71,821.82");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=591.25,849.19");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=512.73,829.40");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=610.12,827.40");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=619.88,843.88");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=629.52,837.18");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=572.11,803.07");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=505.93,749.14");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=472.11,832.53");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=482.96,798.61");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=505.44,787.64");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=439.36,835.98");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=534.28,834.09");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=478.99,754.82");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=534.46,792.07");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=560.76,828.56");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=476.76,770.28");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=438.67,850.32");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=405.13,925.21");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=369.35,870.58");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=331.56,796.27");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=373.91,784.91");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=363.90,829.58");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=370.74,817.54");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=385.68,819.66");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=326.59,865.80");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=384.60,870.07");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=413.79,904.18");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=434.17,867.86");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=408.92,875.62");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=426.85,781.41");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=418.49,726.31");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=496.04,705.68");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=515.80,683.42");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=442.47,740.15");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=462.71,759.04");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=463.10,791.63");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=434.18,795.05");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=512.08,735.39");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=470.23,738.19");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=437.19,767.50");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=396.50,825.73");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=400.55,843.53");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=481.31,740.48");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=576.84,722.90");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=571.31,770.56");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=545.93,779.81");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=641.35,785.76");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=710.02,845.55");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=771.42,818.96");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=791.97,845.12");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=862.35,913.41");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=839.93,851.81");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=817.05,813.51");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=783.97,802.88");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=802.63,858.77");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=785.20,828.29");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=837.08,762.84");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=866.83,739.06");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=817.99,699.55");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=784.49,699.10");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=820.72,650.12");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=870.03,618.67");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=855.43,628.36");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=847.12,621.54");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=797.28,537.67");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=816.14,538.75");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=818.57,516.86");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=806.15,524.43");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=833.37,475.76");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=829.08,441.12");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=821.47,473.69");
    }

    host_fn_rly_101: <default("SensorNode")> like INetworkNode {
        @display("p=768.62,482.81");
    }

    host_fn_rly_102: <default("SensorNode")> like INetworkNode {
        @display("p=748.79,432.02");
    }

    host_fn_rly_103: <default("SensorNode")> like INetworkNode {
        @display("p=791.25,509.95");
    }

    host_fn_rly_104: <default("SensorNode")> like INetworkNode {
        @display("p=747.00,546.47");
    }

    host_fn_rly_105: <default("SensorNode")> like INetworkNode {
        @display("p=830.31,500.37");
    }

    host_fn_rly_106: <default("SensorNode")> like INetworkNode {
        @display("p=866.68,482.09");
    }

    host_fn_rly_107: <default("SensorNode")> like INetworkNode {
        @display("p=860.55,436.92");
    }

    host_fn_rly_108: <default("SensorNode")> like INetworkNode {
        @display("p=872.87,449.47");
    }

    host_fn_rly_109: <default("SensorNode")> like INetworkNode {
        @display("p=882.65,488.81");
    }

    host_fn_rly_110: <default("SensorNode")> like INetworkNode {
        @display("p=924.66,562.53");
    }

    host_fn_rly_111: <default("SensorNode")> like INetworkNode {
        @display("p=911.40,665.49");
    }

    host_fn_rly_112: <default("SensorNode")> like INetworkNode {
        @display("p=834.99,646.49");
    }

    host_fn_rly_113: <default("SensorNode")> like INetworkNode {
        @display("p=855.55,681.11");
    }

    host_fn_rly_114: <default("SensorNode")> like INetworkNode {
        @display("p=866.47,683.86");
    }

    host_fn_rly_115: <default("SensorNode")> like INetworkNode {
        @display("p=838.07,679.84");
    }

    host_fn_rly_116: <default("SensorNode")> like INetworkNode {
        @display("p=786.88,684.61");
    }

    host_fn_rly_117: <default("SensorNode")> like INetworkNode {
        @display("p=783.57,734.76");
    }

    host_fn_rly_118: <default("SensorNode")> like INetworkNode {
        @display("p=796.33,744.92");
    }

    host_fn_rly_119: <default("SensorNode")> like INetworkNode {
        @display("p=745.46,811.99");
    }

    host_fn_rly_120: <default("SensorNode")> like INetworkNode {
        @display("p=748.38,843.41");
    }

    host_fn_rly_121: <default("SensorNode")> like INetworkNode {
        @display("p=746.06,774.21");
    }

    host_fn_rly_122: <default("SensorNode")> like INetworkNode {
        @display("p=697.83,688.29");
    }

    host_fn_rly_123: <default("SensorNode")> like INetworkNode {
        @display("p=740.96,655.96");
    }

    host_fn_rly_124: <default("SensorNode")> like INetworkNode {
        @display("p=746.63,668.00");
    }

    host_fn_rly_125: <default("SensorNode")> like INetworkNode {
        @display("p=713.27,714.80");
    }

    host_fn_rly_126: <default("SensorNode")> like INetworkNode {
        @display("p=683.54,670.15");
    }

    host_fn_rly_127: <default("SensorNode")> like INetworkNode {
        @display("p=603.72,670.87");
    }

    host_fn_rly_128: <default("SensorNode")> like INetworkNode {
        @display("p=562.86,637.86");
    }

    host_fn_rly_129: <default("SensorNode")> like INetworkNode {
        @display("p=592.48,680.34");
    }

    host_fn_rly_130: <default("SensorNode")> like INetworkNode {
        @display("p=651.70,696.26");
    }

    host_fn_rly_131: <default("SensorNode")> like INetworkNode {
        @display("p=700.97,706.35");
    }

    host_fn_rly_132: <default("SensorNode")> like INetworkNode {
        @display("p=758.20,609.08");
    }

    host_fn_rly_133: <default("SensorNode")> like INetworkNode {
        @display("p=698.66,566.81");
    }

    host_fn_rly_134: <default("SensorNode")> like INetworkNode {
        @display("p=699.14,593.85");
    }

    host_fn_rly_135: <default("SensorNode")> like INetworkNode {
        @display("p=709.92,610.05");
    }

    host_fn_rly_136: <default("SensorNode")> like INetworkNode {
        @display("p=728.65,529.37");
    }

    host_fn_rly_137: <default("SensorNode")> like INetworkNode {
        @display("p=679.35,484.91");
    }

    host_fn_rly_138: <default("SensorNode")> like INetworkNode {
        @display("p=717.99,485.99");
    }

    host_fn_rly_139: <default("SensorNode")> like INetworkNode {
        @display("p=756.73,550.28");
    }

    host_fn_rly_140: <default("SensorNode")> like INetworkNode {
        @display("p=687.51,548.94");
    }

    host_fn_rly_141: <default("SensorNode")> like INetworkNode {
        @display("p=632.77,506.26");
    }

    host_fn_rly_142: <default("SensorNode")> like INetworkNode {
        @display("p=629.14,476.45");
    }

    host_fn_rly_143: <default("SensorNode")> like INetworkNode {
        @display("p=542.31,433.69");
    }

    host_fn_rly_144: <default("SensorNode")> like INetworkNode {
        @display("p=488.52,489.76");
    }

    host_fn_rly_145: <default("SensorNode")> like INetworkNode {
        @display("p=516.38,429.36");
    }

    host_fn_rly_146: <default("SensorNode")> like INetworkNode {
        @display("p=551.51,460.08");
    }

    host_fn_rly_147: <default("SensorNode")> like INetworkNode {
        @display("p=506.65,461.20");
    }

    host_fn_rly_148: <default("SensorNode")> like INetworkNode {
        @display("p=499.69,490.73");
    }

    host_fn_rly_149: <default("SensorNode")> like INetworkNode {
        @display("p=434.83,439.02");
    }

    host_fn_rly_150: <default("SensorNode")> like INetworkNode {
        @display("p=485.80,515.57");
    }

    host_fn_rly_151: <default("SensorNode")> like INetworkNode {
        @display("p=454.29,479.37");
    }

    host_fn_rly_152: <default("SensorNode")> like INetworkNode {
        @display("p=489.24,443.36");
    }

    host_fn_rly_153: <default("SensorNode")> like INetworkNode {
        @display("p=398.01,428.26");
    }

    host_fn_rly_154: <default("SensorNode")> like INetworkNode {
        @display("p=396.61,513.30");
    }

    host_fn_rly_155: <default("SensorNode")> like INetworkNode {
        @display("p=491.94,503.95");
    }

    host_fn_rly_156: <default("SensorNode")> like INetworkNode {
        @display("p=589.07,480.56");
    }

    host_fn_rly_157: <default("SensorNode")> like INetworkNode {
        @display("p=660.56,549.00");
    }

    host_fn_rly_158: <default("SensorNode")> like INetworkNode {
        @display("p=667.33,570.51");
    }

    host_fn_rly_159: <default("SensorNode")> like INetworkNode {
        @display("p=757.85,565.52");
    }

    host_fn_rly_160: <default("SensorNode")> like INetworkNode {
        @display("p=830.81,513.83");
    }

    host_fn_rly_161: <default("SensorNode")> like INetworkNode {
        @display("p=846.57,472.94");
    }

    host_fn_rly_162: <default("SensorNode")> like INetworkNode {
        @display("p=842.59,485.94");
    }

    host_fn_rly_163: <default("SensorNode")> like INetworkNode {
        @display("p=837.97,554.18");
    }

    host_fn_rly_164: <default("SensorNode")> like INetworkNode {
        @display("p=883.73,435.43");
    }

    host_fn_rly_165: <default("SensorNode")> like INetworkNode {
        @display("p=836.40,370.22");
    }

    host_fn_rly_166: <default("SensorNode")> like INetworkNode {
        @display("p=792.54,410.23");
    }

    host_fn_rly_167: <default("SensorNode")> like INetworkNode {
        @display("p=792.84,386.48");
    }

    host_fn_rly_168: <default("SensorNode")> like INetworkNode {
        @display("p=772.47,431.56");
    }

    host_fn_rly_169: <default("SensorNode")> like INetworkNode {
        @display("p=743.10,415.61");
    }

    host_fn_rly_170: <default("SensorNode")> like INetworkNode {
        @display("p=774.58,454.74");
    }

    host_fn_rly_171: <default("SensorNode")> like INetworkNode {
        @display("p=751.78,514.39");
    }

    host_fn_rly_172: <default("SensorNode")> like INetworkNode {
        @display("p=764.82,543.27");
    }

    host_fn_rly_173: <default("SensorNode")> like INetworkNode {
        @display("p=750.03,622.25");
    }

    host_fn_rly_174: <default("SensorNode")> like INetworkNode {
        @display("p=693.61,671.99");
    }

    host_fn_rly_175: <default("SensorNode")> like INetworkNode {
        @display("p=725.32,717.98");
    }

    host_fn_rly_176: <default("SensorNode")> like INetworkNode {
        @display("p=680.24,714.56");
    }

    host_fn_rly_177: <default("SensorNode")> like INetworkNode {
        @display("p=717.71,729.19");
    }

    host_fn_rly_178: <default("SensorNode")> like INetworkNode {
        @display("p=754.52,690.95");
    }

    host_fn_rly_179: <default("SensorNode")> like INetworkNode {
        @display("p=745.49,710.09");
    }

    host_fn_rly_180: <default("SensorNode")> like INetworkNode {
        @display("p=754.25,727.42");
    }

    host_fn_rly_181: <default("SensorNode")> like INetworkNode {
        @display("p=849.08,715.56");
    }

    host_fn_rly_182: <default("SensorNode")> like INetworkNode {
        @display("p=923.25,649.54");
    }

    host_fn_rly_183: <default("SensorNode")> like INetworkNode {
        @display("p=833.05,586.48");
    }

    host_fn_rly_184: <default("SensorNode")> like INetworkNode {
        @display("p=925.05,581.58");
    }

    host_fn_rly_185: <default("SensorNode")> like INetworkNode {
        @display("p=850.48,551.80");
    }

    host_fn_rly_186: <default("SensorNode")> like INetworkNode {
        @display("p=908.49,547.31");
    }

    host_fn_rly_187: <default("SensorNode")> like INetworkNode {
        @display("p=934.63,577.47");
    }

    host_fn_rly_188: <default("SensorNode")> like INetworkNode {
        @display("p=924.03,545.39");
    }

    host_fn_rly_189: <default("SensorNode")> like INetworkNode {
        @display("p=956.94,511.86");
    }

    host_fn_rly_190: <default("SensorNode")> like INetworkNode {
        @display("p=904.04,469.26");
    }

    host_fn_rly_191: <default("SensorNode")> like INetworkNode {
        @display("p=913.55,568.57");
    }

    host_fn_rly_192: <default("SensorNode")> like INetworkNode {
        @display("p=910.59,582.28");
    }

    host_fn_rly_193: <default("SensorNode")> like INetworkNode {
        @display("p=879.68,599.91");
    }

    host_fn_rly_194: <default("SensorNode")> like INetworkNode {
        @display("p=933.08,592.20");
    }

    host_fn_rly_195: <default("SensorNode")> like INetworkNode {
        @display("p=878.25,574.63");
    }

    host_fn_rly_196: <default("SensorNode")> like INetworkNode {
        @display("p=869.08,581.47");
    }

    host_fn_rly_197: <default("SensorNode")> like INetworkNode {
        @display("p=864.09,653.33");
    }

    host_fn_rly_198: <default("SensorNode")> like INetworkNode {
        @display("p=845.08,592.50");
    }

    host_fn_rly_199: <default("SensorNode")> like INetworkNode {
        @display("p=781.43,625.18");
    }

    host_fn_rly_200: <default("SensorNode")> like INetworkNode {
        @display("p=724.72,630.18");
    }

}

