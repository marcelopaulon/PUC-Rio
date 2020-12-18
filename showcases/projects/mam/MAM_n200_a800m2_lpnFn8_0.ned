
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn8_0
{
    parameters:
        @display("bgb=1600,1600;bgg=100,1,grey95;bgu=m");
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
        @display("p=58.32,663.53");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=1.88,637.43");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=107.19,595.74");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=183.84,650.54");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=245.13,706.55");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=254.57,665.13");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=194.70,676.51");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=225.80,681.18");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=234.70,601.83");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=156.84,630.88");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=205.82,713.42");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=262.85,709.79");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=221.16,719.77");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=313.24,711.19");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=309.92,687.84");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=274.76,795.19");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=318.26,781.05");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=337.77,786.54");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=337.94,758.22");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=338.97,747.81");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=348.45,762.95");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=353.54,790.50");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=403.42,758.88");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=379.82,723.09");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=119.99,776.69");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=76.28,639.06");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=1.04,538.44");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=136.40,655.09");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=127.31,684.99");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=290.77,679.67");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=237.76,760.29");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=250.90,613.82");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=196.72,724.15");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=184.55,580.01");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=203.17,597.34");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=260.70,655.87");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=268.75,718.37");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=205.10,629.20");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=303.09,732.93");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=364.23,724.03");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=301.35,767.26");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=283.07,705.15");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=345.91,704.30");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=360.20,760.47");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=341.58,679.86");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=353.03,742.80");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=278.53,756.09");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=417.22,780.66");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=358.15,711.52");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=71.61,682.87");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=109.26,606.43");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=21.59,623.85");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=78.43,660.58");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=209.85,618.61");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=312.85,757.13");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=255.79,684.38");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=213.28,690.73");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=137.10,716.23");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=307.72,640.74");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=180.09,606.54");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=136.91,761.32");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=281.35,683.64");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=149.31,651.18");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=280.31,728.44");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=229.14,654.55");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=247.93,782.96");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=403.00,791.28");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=372.29,782.97");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=339.20,736.88");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=423.62,720.67");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=327.79,721.91");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=316.15,733.97");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=480.89,704.97");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=426.41,733.32");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=94.25,738.13");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=88.16,646.85");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=9.28,613.33");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=93.96,606.08");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=135.58,705.28");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=262.70,693.00");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=286.74,717.14");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=192.26,611.23");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=266.82,760.83");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=220.59,660.61");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=176.68,684.34");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=120.16,719.18");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=295.45,722.60");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=217.10,704.24");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=351.55,726.93");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=322.00,762.66");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=289.92,781.80");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=232.10,743.72");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=267.34,729.13");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=421.38,789.94");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=410.92,732.29");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=339.03,774.21");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=279.98,778.17");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=373.52,740.76");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=464.35,681.00");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=37.85,738.82");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=61.51,626.52");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=1.08,683.18");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=181.42,625.69");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=131.75,644.59");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=225.71,710.45");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=270.73,637.89");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=266.07,613.18");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=321.37,698.58");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=292.99,533.14");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=164.16,712.58");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=188.10,687.07");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=316.51,648.04");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=199.63,650.70");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=303.49,746.07");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=346.76,689.62");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=264.38,792.12");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=361.59,778.57");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=390.58,776.64");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=293.79,696.68");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=361.74,749.66");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=385.23,731.77");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=320.95,795.72");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=483.25,790.84");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=387.88,639.34");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=122.70,756.30");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=148.32,686.38");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=5.18,548.72");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=96.02,563.52");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=241.14,686.94");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=235.37,702.72");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=209.89,752.00");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=209.56,727.66");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=202.38,760.19");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=291.32,626.09");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=100.33,650.67");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=287.90,766.20");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=244.23,659.21");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=244.77,725.79");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=383.55,685.38");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=399.19,643.88");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=300.19,757.14");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=334.91,709.93");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=369.79,795.42");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=324.09,743.94");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=387.60,708.68");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=303.87,784.62");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=347.06,782.84");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=406.61,770.61");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=394.62,698.16");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=56.19,716.70");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=67.59,668.60");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=14.95,596.48");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=161.56,549.34");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=166.66,582.96");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=183.11,768.32");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=240.73,671.45");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=180.10,702.98");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=252.20,736.18");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=165.79,669.52");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=191.29,589.39");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=187.74,731.91");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=238.03,734.28");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=233.72,784.03");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=320.12,680.85");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=366.65,629.89");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=227.28,763.23");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=222.51,791.61");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=309.54,794.08");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=384.39,747.88");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=429.03,771.45");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=254.10,756.64");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=397.67,732.08");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=382.10,766.18");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=440.05,767.41");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=99.61,715.86");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=46.55,664.73");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=18.68,699.37");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=155.34,610.07");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=220.12,561.52");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=206.35,676.04");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=233.18,629.46");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=116.29,652.83");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=196.55,738.89");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=214.64,551.90");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=158.46,676.89");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=140.71,639.23");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=223.15,695.23");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=236.00,719.06");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=256.19,641.10");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=337.50,698.15");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=262.98,779.28");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=325.73,773.48");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=274.39,767.53");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=360.78,671.04");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=350.11,649.91");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=412.17,749.45");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=439.85,786.31");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=442.83,693.97");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=359.47,697.33");
    }

}

