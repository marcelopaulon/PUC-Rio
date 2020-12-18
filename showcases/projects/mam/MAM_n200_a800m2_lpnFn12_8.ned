
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn12_8
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
        @display("p=74.89,707.37");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=20.30,652.66");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=90.26,684.30");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=178.81,693.70");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=220.49,654.10");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=132.60,688.61");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=132.73,640.32");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=190.32,636.23");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=151.67,574.75");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=153.59,541.68");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=210.77,554.02");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=192.79,578.88");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=266.54,609.13");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=227.32,606.88");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=219.75,591.87");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=209.26,656.58");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=34.73,765.34");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=80.72,696.32");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=19.01,641.17");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=155.39,757.66");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=152.27,668.21");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=220.18,643.26");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=105.73,686.58");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=191.77,662.21");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=181.02,660.10");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=130.05,557.28");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=89.88,515.74");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=127.62,607.08");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=178.67,638.75");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=220.91,691.65");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=195.26,626.61");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=185.28,613.32");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=233.93,662.95");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=38.21,750.83");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=58.52,645.33");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=28.99,710.72");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=47.75,755.75");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=188.97,682.03");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=298.96,689.81");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=98.58,663.27");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=97.60,611.87");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=133.19,572.03");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=101.54,643.12");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=123.86,548.79");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=211.48,492.34");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=190.68,536.08");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=262.32,638.88");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=201.94,615.24");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=195.17,553.46");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=204.04,710.31");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=157.64,746.41");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=107.60,654.45");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=41.63,599.87");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=71.06,743.47");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=167.50,674.30");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=172.58,630.80");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=70.90,729.73");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=160.30,623.08");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=140.44,651.32");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=141.22,552.35");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=196.56,593.48");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=240.05,548.54");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=217.90,575.10");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=291.82,680.65");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=315.97,571.53");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=246.32,559.70");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=185.94,714.85");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=147.97,774.44");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=64.61,701.11");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=48.33,618.85");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=115.95,612.88");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=90.82,651.18");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=137.10,616.51");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=121.16,621.84");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=63.01,605.59");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=266.91,671.99");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=147.58,631.47");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=127.75,533.73");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=227.58,553.03");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=178.93,537.72");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=211.76,633.59");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=225.70,625.74");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=243.00,625.01");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=118.92,689.83");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=113.79,773.27");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=58.12,727.88");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=76.87,672.00");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=82.91,634.88");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=167.48,656.72");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=143.57,679.50");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=203.73,751.04");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=90.68,567.80");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=182.00,563.35");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=225.69,537.02");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=153.27,512.46");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=274.95,520.14");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=167.47,596.08");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=244.56,603.85");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=167.21,543.18");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=247.14,634.99");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=256.35,704.28");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=83.35,764.92");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=28.47,784.23");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=27.25,693.35");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=75.26,776.50");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=154.14,678.51");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=296.12,644.98");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=118.02,661.02");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=154.50,600.67");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=212.99,620.08");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=210.55,518.00");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=241.28,585.39");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=234.72,594.48");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=160.33,588.05");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=305.80,560.34");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=206.50,691.52");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=195.35,645.63");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=201.27,668.14");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=115.03,720.48");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=132.46,710.77");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=54.22,704.85");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=43.24,687.09");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=166.95,715.37");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=250.41,690.02");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=67.51,688.82");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=37.87,614.81");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=241.59,675.16");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=54.81,572.97");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=155.68,452.20");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=134.64,492.34");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=183.90,602.34");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=322.33,585.48");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=214.85,603.78");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=173.62,604.79");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=273.83,625.69");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=124.73,767.13");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=62.43,770.25");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=23.42,671.42");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=88.23,704.28");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=249.15,717.19");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=243.22,749.96");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=92.50,758.52");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=121.35,564.42");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=155.10,647.66");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=215.75,545.09");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=236.72,528.82");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=190.30,504.45");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=170.60,578.42");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=310.14,587.35");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=300.13,576.96");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=139.49,588.60");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=288.91,669.00");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=94.30,723.54");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=11.49,776.90");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=5.96,714.75");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=131.48,750.00");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=227.17,750.54");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=275.07,579.10");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=120.74,702.27");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=132.60,666.36");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=173.31,682.49");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=109.54,543.79");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=115.68,461.26");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=201.18,494.04");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=150.93,528.66");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=330.78,636.95");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=263.03,590.91");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=262.69,503.21");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=153.39,730.42");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=84.78,728.79");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=79.52,682.10");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=40.08,640.48");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=21.09,616.87");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=171.82,725.83");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=232.03,684.98");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=64.20,618.82");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=75.95,656.87");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=164.44,641.69");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=74.13,599.64");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=156.83,557.74");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=251.85,574.10");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=258.30,534.25");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=343.08,668.24");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=253.86,597.69");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=262.99,657.08");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=235.77,698.94");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=48.02,677.14");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=52.61,774.45");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=0.56,649.99");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=96.18,711.40");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=230.50,712.84");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=231.64,649.54");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=61.21,715.35");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=40.08,659.69");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=111.94,677.17");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=198.69,523.73");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=78.37,483.22");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=305.82,549.21");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=225.18,502.78");
    }

}

