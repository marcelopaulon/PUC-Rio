
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn4_4
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
        @display("p=66.70,660.00");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=36.40,665.72");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=67.64,697.69");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=97.80,737.86");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=147.52,694.17");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=135.72,698.37");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=149.19,726.38");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=117.39,736.11");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=48.27,703.71");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=34.27,724.63");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=87.66,774.50");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=67.16,736.97");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=46.73,661.61");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=82.30,693.09");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=38.55,626.89");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=39.25,587.76");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=52.08,496.52");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=30.76,527.89");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=40.96,515.02");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=62.81,528.27");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=33.28,494.10");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=114.19,530.30");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=94.54,484.17");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=130.46,517.48");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=127.97,488.19");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=167.93,525.49");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=188.44,561.61");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=173.04,551.56");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=159.79,552.32");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=198.15,483.86");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=235.60,527.39");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=209.05,612.88");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=243.28,584.44");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=237.45,617.59");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=286.49,631.59");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=284.08,585.87");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=276.88,594.61");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=234.77,644.06");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=225.73,650.84");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=211.09,571.50");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=227.22,568.99");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=266.75,606.80");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=205.15,622.71");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=195.22,586.06");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=139.72,556.29");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=107.75,602.27");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=126.04,671.17");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=191.63,658.45");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=209.51,679.68");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=17.64,715.88");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=45.48,617.38");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=22.35,609.34");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=63.66,760.96");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=118.34,722.19");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=77.09,623.62");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=213.49,696.44");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=192.28,699.71");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=42.98,761.04");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=29.67,733.64");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=104.20,709.39");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=97.74,751.00");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=104.94,679.76");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=5.84,673.41");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=92.27,727.33");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=70.47,582.72");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=40.12,603.33");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=13.80,537.29");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=10.64,512.69");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=61.04,561.83");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=41.88,532.31");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=8.39,568.68");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=142.25,514.46");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=142.55,503.54");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=163.85,457.02");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=92.01,402.39");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=122.35,542.12");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=164.18,615.81");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=154.46,640.81");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=200.05,528.35");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=213.05,445.10");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=222.51,476.46");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=123.13,641.20");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=225.20,528.00");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=250.53,601.54");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=354.30,569.46");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=185.75,581.41");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=310.35,679.48");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=293.70,668.86");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=157.74,591.08");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=120.46,608.85");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=286.95,570.73");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=252.05,664.48");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=143.99,625.17");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=158.97,573.25");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=177.24,624.68");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=84.98,573.30");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=145.57,648.02");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=161.13,674.81");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=273.74,736.48");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=123.94,792.54");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=24.40,619.16");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=66.10,621.98");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=39.71,692.66");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=112.45,750.89");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=184.36,713.60");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=90.63,670.95");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=242.58,740.24");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=127.54,718.04");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=63.54,723.72");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=66.63,680.08");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=75.99,713.71");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=49.05,725.83");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=67.03,634.74");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=148.62,736.78");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=41.98,640.15");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=50.45,526.27");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=58.58,400.93");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=25.57,537.17");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=66.55,430.94");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=45.88,433.15");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=9.36,434.75");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=157.40,521.53");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=42.36,464.20");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=109.19,543.26");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=158.48,496.79");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=95.18,501.85");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=205.88,540.96");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=127.56,530.14");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=84.47,552.56");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=169.64,566.87");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=295.35,594.65");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=273.02,539.25");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=251.22,546.68");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=273.55,640.31");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=253.83,612.97");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=209.72,601.57");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=299.80,608.95");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=237.53,571.88");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=223.20,639.37");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=213.65,588.83");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=297.60,556.58");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=222.07,625.24");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=234.10,630.69");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=207.22,513.52");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=180.13,468.10");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=93.45,594.92");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=191.72,673.70");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=204.30,648.13");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=128.18,622.25");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=191.93,727.31");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=101.93,640.70");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=33.94,650.19");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=93.55,660.22");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=163.21,784.79");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=137.48,684.10");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=188.45,637.61");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=181.94,777.25");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=127.03,741.90");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=76.02,759.09");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=45.16,715.10");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=45.37,748.44");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=100.21,797.90");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=28.56,702.36");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=164.82,651.28");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=2.54,560.20");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=94.16,582.18");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=7.30,460.46");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=70.15,572.33");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=4.36,422.66");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=82.45,453.88");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=83.56,495.00");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=113.86,559.15");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=1.79,507.48");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=226.59,541.84");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=112.35,430.13");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=171.47,540.15");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=158.54,466.61");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=207.22,554.60");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=142.11,577.19");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=195.91,465.84");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=259.78,516.08");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=176.90,613.81");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=244.33,609.62");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=270.01,558.61");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=320.66,616.06");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=299.20,581.97");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=365.63,592.65");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=251.39,678.89");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=295.75,711.96");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=202.85,565.70");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=283.55,521.69");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=261.19,588.05");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=192.97,538.01");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=156.01,627.43");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=63.83,498.84");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=55.88,636.41");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=127.28,652.80");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=185.46,690.26");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=230.32,715.79");
    }

}

