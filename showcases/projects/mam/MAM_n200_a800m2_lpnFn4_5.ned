
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn4_5
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
        @display("p=129.36,739.02");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=113.87,741.74");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=144.87,734.86");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=162.06,791.40");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=196.04,778.16");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=230.26,755.97");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=290.39,708.25");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=277.14,725.36");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=190.19,677.90");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=187.17,640.41");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=109.12,633.20");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=73.56,612.29");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=63.78,584.64");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=69.83,549.31");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=104.72,501.46");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=133.33,493.42");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=186.94,519.81");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=164.97,502.12");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=205.24,565.55");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=169.16,566.77");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=94.15,592.30");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=80.17,628.02");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=169.30,653.31");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=173.17,673.08");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=107.60,714.04");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=131.30,749.89");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=147.34,748.87");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=127.38,687.54");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=172.83,747.26");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=176.61,735.37");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=188.65,711.82");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=180.92,694.94");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=215.14,768.42");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=286.04,789.83");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=240.14,735.93");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=226.51,716.73");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=230.58,651.34");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=295.43,609.29");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=229.17,631.45");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=151.27,683.41");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=151.42,699.56");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=131.71,702.06");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=152.94,726.90");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=163.84,637.37");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=206.53,615.81");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=283.71,659.08");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=271.75,647.67");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=275.84,735.92");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=322.05,738.89");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=102.41,671.96");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=83.06,690.76");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=164.74,725.61");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=89.00,776.02");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=188.56,741.55");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=198.40,766.22");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=268.12,699.47");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=344.92,627.76");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=360.41,768.52");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=217.29,697.64");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=186.92,628.60");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=71.05,677.45");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=8.38,554.58");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=10.53,598.97");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=80.12,593.69");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=69.70,467.43");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=162.22,480.98");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=176.21,497.09");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=167.80,553.70");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=154.44,518.00");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=180.24,569.67");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=75.17,571.27");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=30.89,575.39");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=192.97,665.14");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=211.07,636.90");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=113.86,768.65");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=125.31,778.08");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=75.01,771.95");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=125.58,635.49");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=143.04,774.13");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=117.29,697.57");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=189.32,700.62");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=204.03,666.20");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=197.70,749.21");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=347.03,711.10");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=186.79,760.76");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=285.46,762.10");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=218.10,605.32");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=283.58,618.41");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=210.68,574.54");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=114.57,646.76");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=96.84,711.45");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=100.67,733.90");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=56.34,730.32");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=154.68,559.58");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=261.62,576.16");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=270.21,661.28");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=271.92,601.74");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=219.83,726.28");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=347.24,739.35");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=119.12,658.05");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=112.32,680.96");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=194.77,691.37");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=97.94,755.54");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=160.60,760.94");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=174.44,719.00");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=173.29,757.80");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=311.21,624.35");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=327.68,756.47");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=199.37,706.17");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=155.21,574.31");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=46.59,613.53");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=106.66,655.22");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=105.19,532.98");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=61.12,624.56");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=114.45,474.66");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=147.55,449.32");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=204.91,496.72");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=77.11,459.43");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=199.25,538.86");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=114.09,557.32");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=63.71,512.43");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=71.71,699.00");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=215.79,622.34");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=144.91,609.69");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=75.79,757.98");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=72.76,715.45");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=110.76,665.97");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=139.99,681.73");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=242.49,772.95");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=144.16,708.77");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=90.63,727.87");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=86.30,681.21");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=183.13,786.50");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=277.52,780.58");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=259.72,796.94");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=255.53,747.34");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=289.69,694.14");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=275.27,580.44");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=202.73,590.10");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=154.27,661.26");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=231.21,744.54");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=51.00,753.13");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=205.11,679.80");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=240.68,671.01");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=246.81,614.55");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=274.68,673.16");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=279.74,566.06");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=302.12,771.29");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=312.25,724.96");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=37.01,711.08");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=183.92,728.48");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=128.37,714.88");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=160.61,735.28");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=121.21,798.09");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=202.80,789.65");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=235.86,705.21");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=236.88,789.59");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=291.25,730.39");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=132.37,666.57");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=189.27,559.70");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=181.32,598.96");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=32.59,589.50");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=25.26,652.88");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=88.92,553.34");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=109.32,517.71");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=119.09,494.39");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=234.74,503.39");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=237.79,462.49");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=254.53,564.21");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=219.71,502.78");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=90.61,536.43");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=63.98,636.51");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=222.52,645.36");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=210.46,653.04");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=59.77,648.32");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=104.69,763.24");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=77.62,783.20");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=74.89,731.58");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=164.24,781.46");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=144.15,719.45");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=255.65,650.28");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=165.14,687.76");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=304.61,739.61");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=309.13,760.46");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=269.66,709.55");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=214.61,714.89");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=256.73,633.54");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=227.45,665.56");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=137.33,617.93");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=215.83,742.95");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=238.83,687.43");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=52.73,685.18");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=61.84,759.39");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=124.97,555.25");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=141.56,594.67");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=310.77,707.89");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=358.93,679.04");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=242.14,724.10");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=368.91,696.67");
    }

}

