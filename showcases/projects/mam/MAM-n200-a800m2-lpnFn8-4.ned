
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn8-4
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
        @display("p=377.00,662.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=353.09,667.19");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=298.08,596.99");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=332.87,575.92");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=383.14,647.99");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=451.18,708.46");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=445.17,728.65");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=408.80,737.50");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=408.81,787.90");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=403.55,770.51");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=423.47,793.95");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=423.42,739.15");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=424.05,685.89");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=490.20,732.42");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=519.43,734.10");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=584.48,727.08");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=565.79,762.21");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=647.40,798.69");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=621.75,718.94");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=591.58,703.39");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=568.19,610.01");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=541.83,563.08");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=603.03,559.81");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=581.65,474.24");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=615.05,445.40");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=372.03,677.20");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=289.17,720.70");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=273.88,588.73");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=307.76,667.77");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=304.46,679.81");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=404.97,751.94");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=511.59,754.15");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=343.44,792.77");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=454.32,763.41");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=400.95,728.76");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=441.32,775.14");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=427.84,774.40");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=504.01,696.44");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=473.18,684.38");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=534.06,788.82");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=531.61,672.85");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=615.47,770.59");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=675.82,779.04");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=648.56,731.14");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=590.75,768.25");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=519.41,549.46");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=550.33,555.87");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=582.30,499.00");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=562.91,431.56");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=561.58,390.66");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=462.66,621.45");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=286.89,599.03");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=272.51,548.65");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=306.16,649.90");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=386.92,584.60");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=437.95,717.03");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=462.88,749.67");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=426.81,722.15");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=433.15,733.91");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=363.14,787.56");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=371.56,718.55");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=438.78,755.59");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=463.33,688.84");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=540.56,756.88");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=493.59,706.20");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=595.00,751.69");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=569.46,706.01");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=663.42,737.01");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=614.35,740.38");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=641.84,746.11");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=606.12,650.41");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=510.74,625.21");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=643.16,469.99");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=534.47,476.40");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=647.06,455.17");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=445.50,631.75");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=303.11,613.97");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=312.83,620.42");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=306.38,518.96");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=331.83,645.17");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=471.43,695.60");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=438.52,702.25");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=401.67,689.02");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=352.33,744.66");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=453.13,736.67");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=447.91,794.61");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=415.17,664.07");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=434.42,604.77");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=516.04,766.89");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=541.01,728.32");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=606.67,763.56");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=523.20,799.01");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=702.03,754.91");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=576.43,678.18");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=605.64,700.65");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=526.86,583.74");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=503.25,536.09");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=585.45,517.08");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=605.66,524.78");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=646.03,411.42");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=427.02,657.70");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=369.69,742.39");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=215.99,543.55");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=357.75,600.25");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=398.19,608.79");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=387.41,713.92");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=469.79,729.39");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=492.22,772.43");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=398.36,791.45");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=323.23,793.73");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=359.54,733.82");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=471.44,671.54");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=412.28,694.60");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=495.92,745.25");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=557.64,731.11");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=596.78,674.73");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=637.00,695.61");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=727.15,764.27");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=650.81,754.47");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=633.52,663.57");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=598.45,598.04");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=487.51,515.70");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=584.09,627.97");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=616.31,547.15");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=607.38,467.47");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=363.07,697.28");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=348.45,615.48");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=328.19,518.86");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=360.90,575.77");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=454.58,682.88");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=451.08,610.23");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=404.81,665.70");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=360.73,765.25");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=383.80,775.69");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=414.51,775.07");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=348.70,755.31");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=428.28,645.91");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=484.02,608.04");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=531.98,744.20");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=510.31,727.69");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=608.31,730.43");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=559.99,776.46");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=580.67,768.99");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=546.70,669.62");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=554.85,793.97");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=657.34,584.15");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=539.65,600.62");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=571.38,532.20");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=555.51,478.11");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=564.19,488.20");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=420.32,612.83");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=306.39,747.74");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=383.19,636.42");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=389.43,518.07");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=343.89,650.46");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=453.83,660.89");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=479.24,704.28");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=445.12,676.08");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=373.09,760.42");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=351.29,720.86");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=433.37,791.74");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=481.39,694.12");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=406.80,703.73");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=483.85,714.63");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=520.74,723.13");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=614.80,689.93");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=499.23,780.38");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=648.24,775.89");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=605.22,630.54");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=666.51,682.16");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=549.67,573.91");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=506.44,585.53");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=589.37,574.84");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=627.58,527.72");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=635.28,453.86");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=383.57,681.23");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=342.51,699.58");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=339.33,637.80");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=322.26,490.35");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=456.37,598.61");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=478.73,660.29");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=382.72,799.88");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=336.70,765.90");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=422.23,763.74");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=498.69,797.10");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=385.15,735.64");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=475.86,761.65");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=392.52,662.26");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=492.45,694.97");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=523.11,696.72");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=505.23,767.69");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=539.37,701.08");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=687.38,763.97");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=560.69,678.23");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=622.82,754.84");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=549.75,657.55");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=554.75,584.99");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=598.86,569.95");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=592.24,462.19");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=654.73,478.47");
    }

}

