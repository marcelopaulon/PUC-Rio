
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn8_5
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
        @display("p=134.70,766.57");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=182.87,764.01");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=246.78,754.26");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=172.77,777.15");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=139.03,683.54");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=190.14,607.85");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=211.91,574.23");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=151.81,598.82");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=146.49,584.44");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=155.78,579.30");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=182.93,678.55");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=260.02,663.80");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=319.79,722.27");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=317.44,737.89");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=303.17,738.19");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=305.81,766.85");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=299.77,755.33");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=315.87,773.78");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=333.00,782.75");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=365.68,776.37");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=386.24,700.94");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=330.34,720.35");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=255.60,730.92");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=210.35,687.99");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=52.64,730.14");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=140.96,743.98");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=225.93,798.07");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=232.04,663.94");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=101.92,775.81");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=99.82,675.29");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=138.74,600.60");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=220.64,566.31");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=105.41,612.89");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=231.36,553.64");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=172.23,565.82");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=173.64,705.63");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=195.93,650.54");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=342.76,701.85");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=305.31,778.06");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=314.92,676.62");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=331.31,736.13");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=320.60,687.95");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=310.81,729.60");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=270.72,739.64");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=416.14,706.89");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=435.14,697.20");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=253.98,718.25");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=345.17,765.43");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=278.43,672.49");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=111.40,671.77");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=130.29,747.48");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=143.44,799.53");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=199.33,677.96");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=151.44,723.45");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=187.32,700.57");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=237.78,652.64");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=208.68,645.53");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=132.66,577.42");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=183.80,590.93");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=154.95,615.59");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=231.88,701.89");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=283.59,651.67");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=331.84,649.20");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=362.23,737.00");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=375.43,690.06");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=287.54,765.68");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=350.18,793.64");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=364.17,798.40");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=364.36,765.99");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=362.28,695.92");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=338.01,663.98");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=282.37,791.26");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=268.69,691.48");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=161.27,603.19");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=56.07,686.40");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=131.44,727.33");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=249.61,696.80");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=204.86,799.95");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=124.00,734.97");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=153.36,673.71");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=215.10,601.69");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=243.85,557.63");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=168.99,630.11");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=100.78,536.45");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=121.86,641.87");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=236.20,612.01");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=220.54,695.57");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=281.20,685.19");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=393.12,725.47");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=272.92,648.61");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=321.15,754.85");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=270.07,754.37");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=293.72,779.14");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=310.61,791.79");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=427.70,771.46");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=425.97,713.17");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=323.12,670.55");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=312.16,649.38");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=131.06,704.19");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=56.87,755.72");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=67.83,778.41");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=94.08,790.53");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=262.24,701.86");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=162.48,780.60");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=198.66,717.12");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=246.67,644.87");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=242.46,503.21");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=242.36,634.30");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=197.57,560.68");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=144.81,621.48");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=232.47,636.62");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=229.26,625.82");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=334.08,796.37");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=343.07,717.63");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=226.73,785.34");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=295.37,674.21");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=268.08,782.86");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=279.78,746.76");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=328.26,773.09");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=381.18,779.77");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=382.25,766.85");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=340.56,743.37");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=226.19,764.32");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=274.33,623.93");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=12.70,659.86");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=103.29,795.62");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=211.97,713.69");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=255.14,746.50");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=241.39,732.36");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=76.17,613.77");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=155.42,629.35");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=183.26,546.22");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=92.43,622.66");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=222.58,611.86");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=134.35,499.29");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=166.82,690.27");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=294.11,612.12");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=340.38,729.25");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=238.07,714.04");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=376.91,740.40");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=351.48,743.52");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=326.74,701.09");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=289.28,753.50");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=350.88,727.80");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=399.11,741.30");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=408.23,795.92");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=409.29,675.53");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=282.45,726.60");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=259.70,682.95");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=90.79,726.83");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=79.90,791.09");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=193.18,787.27");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=250.28,767.44");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=221.11,753.95");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=121.25,714.86");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=148.63,663.73");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=305.20,593.23");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=60.50,611.64");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=163.26,509.77");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=140.65,633.89");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=162.74,719.01");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=181.75,626.26");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=376.70,705.12");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=294.92,694.64");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=290.88,740.42");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=392.25,797.09");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=234.88,771.25");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=312.98,706.58");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=258.07,798.61");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=397.95,685.32");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=400.89,631.81");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=405.11,782.75");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=171.89,743.04");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=236.44,592.39");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=80.41,716.20");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=204.16,749.11");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=147.18,763.84");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=209.70,727.69");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=196.15,737.95");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=152.71,691.60");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=179.45,603.89");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=214.82,536.24");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=137.79,672.77");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=147.68,561.70");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=110.87,563.26");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=185.80,721.26");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=292.15,661.94");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=372.77,714.50");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=391.89,751.06");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=257.03,776.88");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=293.66,794.68");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=397.93,770.48");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=360.82,754.51");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=324.20,794.25");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=349.22,780.72");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=365.21,685.58");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=345.49,650.08");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=250.86,672.97");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=217.09,676.62");
    }

}

