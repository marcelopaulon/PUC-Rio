
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn4_8
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
        @display("p=100.00,700.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=68.00,729.19");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=123.76,779.40");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=134.22,774.20");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=173.50,793.55");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=166.12,732.66");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=178.28,726.86");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=109.17,763.44");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=192.73,769.26");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=229.11,735.49");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=295.64,756.90");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=212.37,793.39");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=229.63,719.22");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=261.36,688.00");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=267.46,633.43");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=258.67,669.95");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=284.05,670.94");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=313.15,648.03");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=326.63,605.49");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=336.59,679.80");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=267.89,696.17");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=265.91,731.03");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=264.07,716.58");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=326.49,738.57");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=349.25,733.50");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=346.42,704.25");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=288.84,690.37");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=323.28,776.32");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=402.44,748.94");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=495.44,731.99");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=529.81,657.53");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=569.45,718.47");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=528.19,700.76");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=482.57,670.06");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=557.73,633.11");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=519.01,618.80");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=578.98,583.10");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=560.04,564.73");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=535.31,503.35");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=549.36,561.65");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=597.07,606.69");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=569.65,534.92");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=571.75,568.15");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=619.70,622.40");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=611.60,608.98");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=684.10,663.49");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=608.97,693.23");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=681.61,725.24");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=669.93,731.30");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=621.08,787.72");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=92.95,788.36");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=12.42,741.08");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=160.49,792.97");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=159.16,776.58");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=162.21,760.61");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=145.00,651.03");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=175.58,687.86");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=27.30,774.02");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=145.33,778.54");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=209.17,727.67");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=311.52,768.51");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=213.33,761.58");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=173.50,743.34");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=259.23,610.91");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=302.72,674.78");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=178.39,636.45");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=380.99,648.10");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=333.00,665.00");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=373.06,690.36");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=370.24,716.09");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=277.86,698.38");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=233.74,676.79");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=280.39,731.90");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=257.66,704.08");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=359.46,756.65");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=357.21,691.94");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=326.29,709.41");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=259.74,794.20");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=438.61,751.28");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=552.72,656.12");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=495.93,590.84");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=591.18,706.11");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=485.64,757.72");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=493.86,674.71");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=566.84,623.52");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=490.68,540.66");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=589.24,631.34");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=598.67,504.99");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=506.77,472.83");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=528.69,597.62");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=614.32,512.46");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=565.23,515.78");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=518.25,575.68");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=657.17,636.85");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=618.53,643.27");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=682.57,714.92");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=654.09,775.17");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=649.70,729.04");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=687.43,674.55");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=579.88,782.03");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=91.24,688.97");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=97.33,718.33");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=76.01,741.71");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=126.31,790.62");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=255.39,738.34");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=103.66,732.11");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=118.86,712.15");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=107.68,752.82");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=193.58,697.20");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=201.35,738.94");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=246.11,798.94");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=153.93,718.60");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=253.80,760.76");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=190.16,708.70");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=240.69,623.94");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=295.45,740.12");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=365.28,659.79");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=288.64,656.18");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=254.18,570.99");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=415.23,686.42");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=274.71,603.20");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=177.30,698.52");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=244.62,732.56");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=304.02,793.67");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=333.93,723.62");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=353.20,666.66");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=311.45,686.08");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=301.26,714.93");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=398.30,714.47");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=483.91,649.70");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=572.86,730.48");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=602.79,718.48");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=495.39,686.92");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=424.13,608.86");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=545.74,629.03");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=517.03,537.32");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=508.44,624.48");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=498.80,629.96");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=591.24,449.53");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=460.95,548.49");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=584.97,571.56");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=585.01,441.61");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=533.44,528.65");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=578.44,684.83");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=614.18,678.69");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=740.43,597.28");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=620.53,739.39");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=696.57,669.22");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=710.62,799.49");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=711.02,751.80");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=139.18,689.50");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=131.66,720.02");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=138.27,764.44");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=77.71,790.01");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=189.49,798.32");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=189.20,727.28");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=126.76,752.85");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=137.21,752.41");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=172.19,772.37");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=220.41,752.76");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=252.88,717.02");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=227.65,764.87");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=147.76,754.32");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=205.14,749.67");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=329.33,581.20");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=262.59,753.88");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=297.13,628.01");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=318.71,671.54");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=355.33,605.28");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=387.57,627.18");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=311.43,742.62");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=290.36,786.34");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=194.07,646.88");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=394.55,670.57");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=383.14,717.90");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=386.01,729.39");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=277.71,786.33");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=312.04,730.83");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=436.06,705.33");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=406.67,737.25");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=493.42,710.60");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=601.13,749.33");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=541.92,699.73");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=507.74,649.87");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=568.87,649.40");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=525.81,638.55");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=581.50,659.44");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=633.66,507.93");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=575.18,491.29");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=540.10,489.70");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=583.25,597.61");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=529.88,459.98");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=584.60,561.42");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=640.74,609.79");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=629.75,527.32");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=666.47,660.52");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=647.32,631.73");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=645.52,684.13");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=636.72,692.25");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=653.92,695.82");
    }

}

