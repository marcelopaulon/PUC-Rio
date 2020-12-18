
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn4_3
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
        @display("p=64.77,752.70");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=118.30,734.98");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=105.32,796.85");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=81.36,686.03");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=120.33,668.86");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=138.06,709.62");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=155.64,697.18");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=139.05,688.28");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=2.38,735.61");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=83.63,733.17");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=14.60,782.25");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=99.12,752.04");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=146.18,765.41");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=103.14,725.31");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=91.96,580.28");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=70.72,606.53");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=86.79,644.57");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=43.64,634.03");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=7.73,590.06");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=37.97,523.92");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=59.68,618.73");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=50.21,667.71");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=130.40,701.63");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=155.68,750.44");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=160.53,779.62");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=241.52,787.27");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=274.40,762.06");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=178.63,742.25");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=176.38,729.81");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=212.78,689.49");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=229.55,598.42");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=225.74,623.31");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=156.49,621.79");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=130.40,663.84");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=173.01,669.94");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=190.03,692.66");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=113.15,703.42");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=140.73,756.69");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=67.72,767.73");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=151.50,714.47");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=128.72,769.79");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=83.96,791.87");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=43.94,717.66");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=107.71,737.67");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=221.76,730.97");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=232.97,764.81");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=86.17,697.03");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=31.28,755.35");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=49.74,740.66");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=127.41,689.94");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=47.51,729.61");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=69.46,739.05");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=50.56,797.35");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=93.91,614.07");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=139.77,671.82");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=91.33,663.61");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=155.82,653.89");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=208.91,631.18");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=37.88,647.75");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=72.37,675.73");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=19.65,764.86");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=85.28,759.69");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=150.40,776.39");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=29.36,785.28");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=79.66,507.83");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=56.15,634.16");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=78.22,565.34");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=17.36,616.73");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=57.32,543.21");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=57.26,467.97");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=69.02,558.73");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=109.08,663.32");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=142.79,792.97");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=159.41,767.29");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=197.01,783.18");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=308.71,736.60");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=183.01,784.34");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=187.68,651.01");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=211.91,752.79");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=189.11,708.80");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=258.12,596.94");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=268.22,674.35");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=201.45,600.16");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=104.88,676.36");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=157.34,730.09");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=211.55,771.84");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=17.05,693.43");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=165.05,755.58");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=25.38,796.13");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=92.88,743.51");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=98.44,788.07");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=52.93,752.67");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=3.48,697.07");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=34.67,702.42");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=216.40,798.43");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=229.24,687.41");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=122.34,624.31");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=56.31,778.45");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=39.93,799.86");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=99.69,710.66");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=87.85,774.79");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=171.41,766.87");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=62.19,792.20");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=54.68,692.50");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=59.56,593.05");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=160.17,679.04");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=129.62,679.21");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=110.83,716.53");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=9.21,652.78");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=106.18,641.92");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=18.30,721.50");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=116.35,783.41");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=98.69,766.18");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=147.50,642.02");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=87.05,596.17");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=0.64,581.59");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=118.55,583.62");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=52.33,567.41");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=32.19,587.64");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=8.10,600.37");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=49.35,590.39");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=131.67,644.82");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=112.92,756.71");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=245.02,737.47");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=198.90,713.16");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=215.89,706.44");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=232.78,778.42");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=200.37,735.26");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=229.55,663.39");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=176.82,645.49");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=244.04,641.92");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=247.55,537.08");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=194.88,542.93");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=127.55,591.50");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=93.45,681.50");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=247.77,668.16");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=185.26,664.76");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=191.16,794.15");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=71.01,720.07");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=243.59,715.87");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=75.40,779.87");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=140.09,724.85");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=59.87,651.16");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=18.29,707.88");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=234.41,710.45");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=196.32,677.89");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=114.20,684.54");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=36.22,764.71");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=17.52,753.64");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=150.14,666.10");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=55.49,712.90");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=135.67,780.10");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=30.03,774.61");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=8.86,624.13");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=183.24,625.70");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=195.98,641.96");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=145.67,699.89");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=178.84,605.15");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=2.47,717.50");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=41.93,779.84");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=7.38,766.53");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=120.73,796.38");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=168.63,741.24");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=32.94,656.70");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=46.80,558.43");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=144.18,621.99");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=24.38,630.53");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=70.53,661.60");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=17.50,555.97");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=21.52,531.91");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=119.05,559.46");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=70.29,581.49");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=204.23,660.35");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=205.58,703.83");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=144.66,737.50");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=277.98,798.21");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=298.59,772.07");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=217.44,718.54");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=196.48,745.84");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=256.79,711.41");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=298.66,648.94");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=211.91,542.49");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=119.57,529.33");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=167.88,702.88");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=228.66,700.31");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=176.80,692.62");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=105.55,690.39");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=51.05,765.70");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=4.37,748.92");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=222.77,675.55");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=183.92,753.33");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=71.11,799.95");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=72.81,700.94");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=120.38,745.43");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=172.23,792.40");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=219.00,787.80");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=65.08,684.05");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=4.12,789.28");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=80.99,711.99");
    }

}

