
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn4_5
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
        @display("p=34.27,765.82");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=50.73,700.40");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=60.95,666.08");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=28.02,600.73");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=85.93,609.52");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=23.91,581.57");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=33.39,590.15");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=78.48,555.15");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=112.31,617.65");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=166.98,538.26");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=189.10,538.72");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=261.44,544.58");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=247.47,509.34");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=258.99,511.78");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=270.02,523.90");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=203.63,463.95");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=173.95,489.56");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=139.86,549.25");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=64.26,547.04");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=84.03,507.47");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=50.53,490.08");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=21.15,516.99");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=63.96,510.46");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=64.33,528.48");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=35.05,459.60");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=21.04,444.67");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=6.39,541.47");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=53.18,563.77");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=135.62,515.34");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=117.09,431.25");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=105.07,430.10");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=91.78,445.66");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=55.08,519.85");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=54.27,530.44");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=80.41,580.02");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=50.81,575.66");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=72.62,618.21");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=143.64,592.42");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=142.86,668.31");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=49.60,665.60");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=46.98,590.84");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=71.12,587.68");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=107.66,676.81");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=191.54,623.92");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=168.88,596.38");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=250.19,563.77");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=228.20,563.30");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=247.99,588.23");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=215.84,623.25");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=35.24,730.69");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=68.85,674.44");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=59.50,712.81");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=66.54,628.18");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=67.30,570.14");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=125.89,557.33");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=35.78,499.89");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=51.98,551.23");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=119.08,506.42");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=185.43,654.66");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=167.18,455.49");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=274.60,508.99");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=208.38,555.53");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=256.34,465.54");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=239.46,485.01");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=338.98,496.61");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=163.75,469.38");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=157.64,498.50");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=217.97,531.41");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=123.67,479.68");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=125.68,568.93");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=30.52,477.32");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=12.38,604.87");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=3.97,526.52");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=57.13,614.19");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=87.58,460.31");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=18.31,478.13");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=95.07,520.78");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=24.87,565.65");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=155.81,479.78");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=136.88,442.33");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=142.96,455.37");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=93.95,435.83");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=43.90,544.11");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=7.57,568.74");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=136.18,612.57");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=27.56,527.81");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=144.22,571.62");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=130.31,579.78");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=226.04,618.05");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=2.96,684.06");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=37.67,552.10");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=42.19,519.08");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=76.78,709.67");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=248.61,682.28");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=233.46,639.10");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=270.62,642.86");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=216.13,519.14");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=170.51,578.50");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=204.90,646.92");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=58.05,747.92");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=88.24,693.67");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=59.56,789.07");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=124.39,673.34");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=32.84,625.17");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=42.23,533.71");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=49.65,627.26");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=48.57,602.28");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=52.33,474.79");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=191.18,572.76");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=124.72,602.65");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=168.39,497.96");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=299.06,486.31");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=238.84,503.19");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=341.78,459.78");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=190.86,492.02");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=222.22,443.49");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=252.08,456.37");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=153.37,529.12");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=87.80,590.16");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=21.57,492.35");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=111.91,486.50");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=103.59,554.18");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=113.31,520.70");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=104.71,496.16");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=40.82,468.93");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=15.12,369.54");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=89.60,569.72");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=54.56,501.53");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=113.24,594.18");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=58.58,414.75");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=97.22,385.85");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=95.23,473.58");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=25.10,463.03");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=121.89,545.32");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=29.23,510.31");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=91.60,621.68");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=168.33,646.37");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=100.19,599.32");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=171.68,692.17");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=37.12,679.77");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=92.80,637.63");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=114.90,607.28");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=117.67,720.52");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=230.45,539.64");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=113.50,630.06");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=305.79,640.94");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=210.98,507.01");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=214.08,545.04");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=171.94,612.72");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=89.45,722.97");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=45.24,755.72");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=61.76,760.36");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=140.45,638.97");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=21.75,591.69");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=55.41,646.55");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=19.07,658.84");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=36.69,609.05");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=167.31,524.76");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=165.47,557.89");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=178.80,442.11");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=240.51,462.23");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=203.71,574.37");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=219.74,579.33");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=292.80,579.65");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=317.37,445.13");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=275.70,409.32");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=263.29,500.92");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=231.05,529.10");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=104.40,533.88");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=74.04,475.74");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=31.14,400.60");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=81.84,528.59");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=138.25,491.17");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=10.30,517.87");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=58.77,443.97");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=73.51,374.59");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=59.49,581.62");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=70.24,597.69");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=210.86,456.00");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=173.75,392.90");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=99.88,370.37");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=87.99,416.64");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=9.02,454.42");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=132.86,504.25");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=22.22,627.08");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=8.23,655.82");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=72.15,535.19");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=78.73,632.41");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=79.01,646.05");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=8.34,632.02");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=40.92,580.82");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=162.20,570.73");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=152.04,763.22");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=190.59,634.93");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=190.36,669.39");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=316.50,513.33");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=211.51,496.62");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=285.79,633.99");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=306.69,619.70");
    }

}

