
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn8_8
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
        @display("p=125.75,688.36");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=113.51,719.40");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=169.82,718.95");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=121.30,672.38");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=134.70,670.21");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=152.35,645.10");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=163.91,643.47");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=164.98,709.21");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=153.66,722.03");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=238.66,729.94");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=156.24,773.61");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=253.57,776.94");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=324.65,763.26");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=297.61,755.60");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=326.68,710.10");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=301.90,625.54");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=257.00,689.14");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=274.42,770.73");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=270.89,780.67");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=259.10,764.32");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=249.11,763.45");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=195.71,712.40");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=221.61,695.38");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=256.13,745.75");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=144.26,704.15");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=163.53,739.74");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=91.23,686.16");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=208.91,662.85");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=178.82,726.04");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=179.46,601.90");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=100.07,581.35");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=192.66,652.75");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=170.24,753.07");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=200.44,764.56");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=311.47,772.69");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=144.76,687.07");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=192.10,787.16");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=339.30,762.18");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=292.28,738.69");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=349.02,631.67");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=383.27,636.61");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=270.00,745.18");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=182.73,796.72");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=261.32,799.31");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=331.76,738.71");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=243.93,746.96");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=240.20,637.82");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=127.49,722.13");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=242.80,700.88");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=78.69,726.40");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=116.84,707.38");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=52.05,768.32");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=193.76,641.74");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=184.78,663.35");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=151.84,675.15");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=219.47,616.51");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=130.54,638.00");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=130.97,740.14");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=229.40,672.72");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=180.61,702.27");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=168.88,779.06");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=222.81,782.65");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=345.21,720.75");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=333.24,719.70");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=336.42,639.65");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=292.94,711.58");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=267.89,679.14");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=306.10,782.73");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=299.26,791.93");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=340.00,710.34");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=186.53,754.01");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=170.36,665.90");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=198.91,685.84");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=223.25,711.67");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=72.84,667.98");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=174.84,685.26");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=111.05,777.33");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=90.21,778.38");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=93.76,670.50");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=94.11,733.07");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=141.70,643.23");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=104.97,660.16");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=247.23,723.61");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=103.43,796.80");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=190.05,731.34");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=230.98,793.28");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=237.60,772.45");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=348.68,701.00");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=314.90,792.74");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=287.60,726.21");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=346.01,579.35");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=223.40,743.59");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=263.22,736.90");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=327.07,749.03");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=337.80,785.50");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=288.07,699.68");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=134.87,782.70");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=246.57,625.97");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=252.63,709.81");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=112.26,741.72");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=104.60,713.81");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=151.11,757.95");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=117.29,697.11");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=118.15,652.27");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=156.58,666.24");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=184.27,631.47");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=113.56,609.51");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=173.00,763.51");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=59.75,749.55");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=144.94,728.02");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=166.21,788.80");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=223.10,767.35");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=353.45,736.42");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=375.51,730.00");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=335.64,697.58");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=324.07,637.94");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=292.43,638.79");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=302.16,720.14");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=192.21,799.95");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=240.98,793.89");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=311.37,690.18");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=232.74,694.63");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=192.80,671.17");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=209.70,722.27");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=126.32,606.90");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=76.23,640.34");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=84.44,799.69");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=214.19,790.19");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=155.29,746.89");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=165.61,693.76");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=130.72,697.46");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=155.13,695.29");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=184.63,714.63");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=222.31,660.98");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=212.46,734.77");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=117.95,757.16");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=277.60,794.81");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=317.75,726.22");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=342.99,676.13");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=353.56,672.96");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=353.69,650.91");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=277.09,728.70");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=280.80,744.64");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=231.35,758.38");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=266.01,754.38");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=289.41,788.94");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=161.93,628.02");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=238.99,658.24");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=298.83,670.74");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=34.24,667.53");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=128.03,592.48");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=109.72,640.51");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=215.69,751.29");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=54.02,604.44");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=71.45,597.09");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=171.88,549.83");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=203.92,694.63");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=115.32,790.78");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=183.05,642.66");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=302.90,738.30");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=132.01,761.02");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=351.14,779.35");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=360.26,700.39");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=302.13,706.40");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=298.12,693.11");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=270.33,658.25");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=226.18,597.10");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=314.84,741.33");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=253.61,791.38");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=322.05,780.52");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=280.90,669.15");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=226.93,726.87");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=165.75,613.85");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=203.09,743.13");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=27.73,748.92");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=63.79,723.72");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=75.62,736.00");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=142.94,654.72");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=143.98,624.52");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=128.63,655.64");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=137.08,598.43");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=158.59,602.46");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=173.35,624.74");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=95.32,643.54");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=271.68,703.08");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=156.36,797.05");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=246.42,684.21");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=345.86,770.28");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=372.23,765.54");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=341.96,734.90");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=362.68,666.06");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=284.65,651.73");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=287.68,763.56");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=207.31,708.39");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=280.40,754.72");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=180.56,738.99");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=215.87,677.54");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=207.68,772.03");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=256.32,664.70");
    }

}

