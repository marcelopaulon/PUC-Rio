
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn12_8
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
        @display("p=88.16,695.04");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=94.77,746.02");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=130.10,760.36");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=213.80,725.12");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=189.48,630.69");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=191.56,678.86");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=193.07,702.10");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=158.64,676.04");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=232.47,621.18");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=274.31,672.05");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=277.10,661.98");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=339.70,605.99");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=351.17,581.63");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=355.29,572.50");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=407.11,582.24");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=464.87,615.78");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=121.23,675.64");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=167.26,711.27");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=154.49,720.17");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=95.46,667.34");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=236.23,716.45");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=182.26,612.73");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=263.74,678.65");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=214.25,759.35");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=156.31,634.36");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=218.81,671.76");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=307.81,709.84");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=253.18,737.39");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=266.03,658.72");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=266.21,609.93");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=393.26,554.42");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=414.77,573.58");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=444.62,587.70");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=94.71,720.57");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=108.11,719.94");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=32.78,704.50");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=80.67,746.01");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=145.65,783.01");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=141.89,622.74");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=95.10,687.48");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=170.14,689.85");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=202.93,602.53");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=230.29,647.26");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=195.60,723.53");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=210.17,593.54");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=373.18,612.14");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=345.85,671.90");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=380.98,592.90");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=350.01,609.75");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=462.40,605.77");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=139.64,645.24");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=59.28,714.52");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=110.68,755.04");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=102.62,776.71");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=303.63,757.37");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=165.83,649.06");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=252.66,633.29");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=155.02,661.78");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=173.13,762.02");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=250.68,643.25");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=282.46,649.47");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=327.99,635.35");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=356.36,621.72");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=392.62,609.12");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=370.64,565.52");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=469.60,656.97");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=504.61,602.99");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=52.93,700.00");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=112.53,688.74");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=121.55,720.94");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=109.74,674.56");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=191.04,663.26");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=151.98,599.14");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=169.61,731.70");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=144.55,725.98");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=208.26,645.53");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=236.67,589.32");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=350.97,713.24");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=291.31,679.36");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=327.81,573.99");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=411.44,535.14");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=330.31,618.73");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=434.86,593.52");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=477.75,573.74");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=122.37,767.52");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=73.50,612.35");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=135.18,686.50");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=115.07,790.26");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=296.06,688.54");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=210.91,611.84");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=145.60,740.17");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=284.18,717.94");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=127.43,592.72");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=239.40,640.95");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=276.52,708.13");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=241.62,658.86");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=256.96,619.01");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=318.32,653.56");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=335.66,549.46");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=434.62,509.27");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=523.56,641.63");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=63.07,727.33");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=33.66,765.31");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=190.36,743.53");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=196.71,688.88");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=201.67,743.46");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=216.65,625.97");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=148.03,612.74");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=247.98,676.38");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=165.47,774.33");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=221.67,610.11");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=184.50,644.56");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=231.43,675.63");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=393.02,639.21");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=260.97,552.78");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=312.74,584.74");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=383.93,579.42");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=455.33,649.33");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=116.37,700.60");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=19.78,729.02");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=36.32,788.23");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=146.98,760.81");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=141.75,769.50");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=221.54,695.17");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=199.20,634.59");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=131.31,716.58");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=109.10,607.46");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=245.88,624.68");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=363.80,678.45");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=342.55,636.88");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=366.63,587.20");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=295.43,560.87");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=323.63,531.71");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=424.08,594.78");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=447.44,707.60");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=97.90,710.78");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=44.81,708.55");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=94.76,770.26");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=84.40,789.92");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=131.56,702.23");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=224.13,636.37");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=204.85,710.90");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=156.50,730.31");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=189.28,766.10");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=318.72,598.93");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=278.93,630.86");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=299.44,644.42");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=286.23,548.81");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=364.77,502.47");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=309.37,608.82");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=408.21,652.38");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=462.68,638.38");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=69.66,669.71");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=60.85,617.08");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=61.43,679.69");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=167.09,699.81");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=240.56,753.21");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=166.67,610.92");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=211.97,701.62");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=187.90,715.37");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=75.91,648.48");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=326.38,588.66");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=352.81,661.64");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=314.36,736.18");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=326.71,509.49");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=371.56,529.06");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=395.09,539.24");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=410.96,592.36");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=452.38,536.20");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=50.51,687.73");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=172.31,747.79");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=57.85,746.72");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=116.33,780.23");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=253.85,754.58");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=146.98,707.42");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=203.68,621.62");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=153.30,689.75");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=166.78,667.26");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=257.35,567.76");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=260.04,598.14");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=334.22,727.80");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=302.79,622.49");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=351.05,512.40");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=356.31,524.30");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=394.67,487.03");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=473.93,538.19");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=72.76,623.10");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=60.40,773.24");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=20.37,756.36");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=176.05,792.10");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=286.17,766.04");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=208.53,547.00");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=238.19,742.89");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=255.73,660.50");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=200.61,759.88");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=204.97,672.05");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=301.99,582.72");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=361.22,609.16");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=368.16,547.46");
    }

}

