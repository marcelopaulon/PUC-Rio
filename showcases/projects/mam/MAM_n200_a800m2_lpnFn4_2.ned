
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn4_2
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
        @display("p=151.72,683.79");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=167.31,663.17");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=156.73,593.09");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=129.31,623.39");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=164.83,559.45");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=190.17,642.74");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=177.32,661.26");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=219.80,618.81");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=282.11,637.81");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=293.51,652.16");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=244.96,697.30");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=250.09,635.36");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=243.93,671.20");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=332.86,637.47");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=400.44,707.05");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=425.08,697.30");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=388.74,739.61");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=474.23,783.46");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=478.21,748.29");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=494.10,748.76");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=489.05,690.00");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=470.32,711.63");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=495.94,722.97");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=459.97,717.96");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=369.65,729.73");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=356.29,740.41");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=399.59,744.82");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=474.59,794.31");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=514.14,718.59");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=528.48,761.86");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=520.10,753.68");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=438.79,738.81");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=489.05,641.81");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=504.20,630.90");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=494.98,567.13");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=457.89,496.23");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=432.45,442.17");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=378.55,368.72");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=412.18,371.93");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=361.93,346.30");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=290.12,288.68");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=280.96,197.51");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=240.86,236.37");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=301.84,312.27");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=338.14,248.33");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=304.05,201.03");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=302.27,215.30");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=374.03,199.29");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=353.25,222.97");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=61.88,769.15");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=203.58,681.36");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=240.24,725.47");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=138.70,628.85");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=222.32,629.40");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=69.13,537.59");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=184.65,671.06");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=162.17,623.81");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=250.64,616.43");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=306.24,560.73");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=285.19,661.14");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=331.59,734.66");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=206.54,654.31");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=268.65,590.55");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=374.98,672.85");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=406.53,682.03");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=469.60,630.58");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=403.85,785.99");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=463.29,779.08");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=477.13,762.51");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=481.41,666.38");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=477.89,682.98");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=424.90,712.32");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=487.52,702.03");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=472.85,656.63");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=318.03,666.94");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=313.81,743.21");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=479.91,737.88");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=458.20,754.38");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=491.59,796.51");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=524.50,733.03");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=518.69,764.78");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=411.99,729.48");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=549.99,709.67");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=576.88,623.13");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=516.86,577.08");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=457.75,562.73");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=445.33,380.98");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=374.12,320.63");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=456.68,363.79");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=396.35,413.90");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=245.77,302.00");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=286.09,165.54");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=202.64,168.10");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=258.19,332.02");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=328.96,235.14");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=291.68,215.08");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=376.57,233.20");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=385.77,211.86");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=360.03,277.53");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=96.84,678.79");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=159.04,694.85");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=181.20,585.87");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=215.99,560.86");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=217.85,584.68");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=150.55,483.77");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=161.83,644.62");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=198.39,701.68");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=147.48,621.86");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=218.57,655.63");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=257.96,659.72");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=204.69,726.63");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=295.44,567.40");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=231.29,605.66");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=316.58,640.78");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=428.18,622.10");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=448.14,763.20");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=410.72,767.96");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=502.61,780.37");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=488.04,731.83");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=456.65,769.20");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=454.96,700.40");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=442.32,725.11");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=428.04,728.84");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=389.99,764.62");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=345.29,706.90");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=295.45,734.91");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=464.17,731.72");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=413.60,799.69");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=519.31,708.21");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=535.19,790.94");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=587.24,685.46");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=422.74,741.53");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=517.96,657.08");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=519.32,630.66");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=565.01,552.93");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=443.06,533.37");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=510.53,384.29");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=321.74,444.34");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=384.03,343.26");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=341.01,366.01");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=296.13,259.58");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=318.49,252.46");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=236.75,323.76");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=357.67,316.66");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=417.58,285.63");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=349.01,166.18");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=358.04,176.09");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=367.54,187.09");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=389.80,294.15");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=82.08,729.98");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=141.39,660.71");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=257.89,681.97");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=157.98,523.77");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=188.04,550.58");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=260.27,581.37");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=251.65,719.39");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=156.33,668.19");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=216.50,521.94");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=270.91,614.25");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=274.82,658.83");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=306.34,672.34");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=280.30,571.91");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=300.45,725.10");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=286.67,556.52");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=360.34,654.62");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=412.83,700.89");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=336.86,715.99");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=560.86,790.19");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=433.64,707.35");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=425.15,685.89");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=542.17,633.46");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=539.54,692.32");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=492.30,760.50");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=452.69,728.19");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=428.09,658.67");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=272.45,764.88");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=401.01,730.04");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=416.35,786.48");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=548.01,760.27");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=565.15,775.95");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=575.34,686.50");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=343.52,755.04");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=565.39,684.66");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=559.07,704.89");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=530.10,581.39");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=403.41,526.01");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=455.57,410.07");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=457.22,327.74");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=432.41,380.60");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=387.88,317.53");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=308.16,281.30");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=279.82,214.17");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=145.17,253.99");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=324.15,265.79");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=340.32,265.30");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=338.74,212.78");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=266.34,282.05");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=366.08,210.47");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=398.79,201.96");
    }

}

