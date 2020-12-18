
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn4-3
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
        @display("p=744.00,269.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=736.03,297.72");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=756.10,295.71");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=796.70,312.47");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=749.83,379.47");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=781.65,346.64");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=781.45,387.12");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=789.96,398.12");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=772.06,488.78");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=686.89,536.29");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=754.31,540.63");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=765.55,543.93");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=775.42,637.78");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=780.83,649.37");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=768.75,671.78");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=701.45,691.16");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=722.11,668.99");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=704.33,748.43");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=762.84,682.20");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=749.40,732.74");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=687.80,726.60");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=769.09,717.74");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=784.26,699.47");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=749.36,608.95");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=709.74,660.36");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=726.57,618.85");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=693.83,649.43");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=596.99,627.35");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=610.09,616.49");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=644.25,631.02");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=556.31,616.65");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=524.15,657.33");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=547.33,698.71");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=473.04,740.43");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=467.25,708.70");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=510.33,777.18");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=586.24,721.63");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=558.49,743.94");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=525.24,756.98");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=489.21,777.18");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=438.04,795.47");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=426.94,781.81");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=344.52,778.74");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=352.28,744.88");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=339.54,730.59");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=306.31,693.03");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=262.61,732.75");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=317.38,761.54");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=296.19,749.59");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=311.40,710.99");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=734.54,253.68");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=749.49,329.75");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=759.63,348.91");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=715.32,284.91");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=731.04,383.77");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=798.83,338.12");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=795.40,424.13");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=796.48,434.23");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=737.42,496.23");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=669.82,553.28");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=702.90,535.58");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=774.88,548.12");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=740.55,715.14");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=747.62,666.26");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=737.98,643.38");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=708.48,711.27");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=654.75,635.39");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=617.77,751.84");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=773.96,702.08");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=700.10,788.91");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=728.43,768.73");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=758.57,627.67");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=742.94,756.84");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=696.75,558.74");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=660.91,711.17");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=760.33,609.15");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=663.03,721.41");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=598.18,646.49");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=629.71,620.28");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=608.85,605.16");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=630.45,674.48");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=552.37,630.70");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=620.87,739.84");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=514.11,741.20");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=411.87,712.91");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=598.54,743.43");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=596.35,708.34");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=580.97,655.13");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=539.39,665.90");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=444.42,787.48");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=413.91,788.74");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=425.68,771.83");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=383.01,769.55");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=325.94,742.13");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=418.94,690.65");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=287.06,777.17");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=252.32,746.69");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=397.53,725.36");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=366.05,731.73");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=369.57,698.28");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=691.92,273.38");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=752.26,232.60");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=721.93,234.86");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=780.08,306.24");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=761.02,390.07");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=756.82,312.79");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=796.38,407.30");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=760.27,361.44");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=782.28,443.39");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=654.01,449.20");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=743.67,522.23");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=788.48,560.33");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=788.29,721.46");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=792.25,651.50");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=795.08,599.45");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=750.86,721.41");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=772.50,740.91");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=748.44,771.83");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=762.27,771.31");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=672.59,690.67");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=690.07,768.87");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=795.40,637.70");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=766.22,728.67");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=730.89,602.95");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=679.37,630.81");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=774.72,573.18");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=685.68,664.24");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=626.00,588.96");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=664.03,601.61");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=629.51,689.29");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=587.57,694.93");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=533.78,690.47");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=582.86,757.75");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=395.57,797.43");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=438.30,712.75");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=490.87,739.90");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=611.33,774.78");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=527.69,776.42");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=490.97,725.04");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=482.20,787.20");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=481.45,728.30");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=472.57,779.59");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=344.13,763.31");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=343.30,751.54");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=381.54,729.89");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=327.63,726.95");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=282.82,713.02");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=296.92,799.99");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=306.36,750.07");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=294.60,735.77");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=670.84,308.28");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=745.93,368.42");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=794.31,323.03");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=738.09,322.50");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=778.58,318.91");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=774.44,354.99");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=775.61,367.33");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=766.72,302.53");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=778.08,410.91");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=691.42,634.50");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=721.33,529.65");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=749.98,571.26");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=699.48,625.31");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=695.15,675.94");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=747.24,683.87");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=762.19,662.51");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=634.35,711.04");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=688.76,740.10");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=751.65,708.14");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=738.60,659.68");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=737.26,736.61");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=743.41,745.95");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=719.62,690.30");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=762.68,597.82");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=732.50,673.55");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=698.47,601.33");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=737.02,697.95");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=594.82,673.30");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=631.14,554.84");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=643.18,557.01");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=580.35,524.14");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=506.41,622.58");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=558.41,710.18");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=539.68,786.76");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=461.60,638.92");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=516.23,785.34");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=570.19,652.54");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=542.19,745.02");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=561.78,727.17");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=473.17,793.83");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=443.89,770.05");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=399.66,777.88");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=366.32,746.89");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=379.58,740.76");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=323.67,782.57");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=353.75,633.10");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=235.10,788.78");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=273.21,724.67");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=232.41,769.38");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=327.19,713.36");
    }

}

