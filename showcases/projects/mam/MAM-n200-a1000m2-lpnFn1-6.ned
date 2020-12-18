
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn1-6
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
        @display("p=34.00,880.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=37.68,859.73");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=44.56,790.21");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=110.53,771.70");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=69.62,818.37");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=133.44,848.39");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=176.62,887.01");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=242.62,925.58");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=179.98,856.63");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=158.78,879.58");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=212.64,841.94");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=204.32,883.99");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=262.63,842.10");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=280.17,842.89");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=277.42,804.12");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=290.68,780.01");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=295.65,800.81");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=368.95,751.77");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=388.98,779.62");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=479.25,783.98");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=492.81,771.76");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=495.05,804.54");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=524.61,772.59");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=529.40,759.87");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=445.94,732.41");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=433.82,734.99");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=420.43,737.57");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=362.07,660.78");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=361.99,675.86");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=323.33,657.13");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=280.23,600.34");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=275.59,664.86");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=294.22,722.15");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=295.50,709.11");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=224.16,746.24");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=214.13,741.93");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=274.42,788.47");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=325.23,757.72");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=360.74,843.44");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=360.10,810.37");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=311.49,806.44");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=306.72,819.48");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=364.63,863.50");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=239.63,746.02");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=266.10,706.28");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=252.72,692.19");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=263.16,665.68");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=275.34,686.45");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=254.24,639.32");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=234.56,629.99");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=242.82,618.32");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=212.67,650.73");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=232.83,663.27");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=232.47,679.89");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=208.18,677.60");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=147.48,642.09");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=109.95,652.83");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=49.46,685.96");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=15.06,738.71");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=21.66,800.79");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=26.70,815.04");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=58.23,801.17");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=20.05,836.61");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=45.08,775.18");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=55.42,758.67");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=109.89,700.74");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=79.01,664.33");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=74.29,649.12");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=120.25,570.23");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=138.96,557.01");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=90.40,573.67");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=161.80,516.99");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=116.40,508.16");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=59.83,522.89");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=134.50,509.84");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=132.58,471.73");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=200.47,522.46");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=227.03,503.92");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=224.02,450.50");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=213.30,447.86");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=276.85,443.18");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=340.85,463.10");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=366.31,494.83");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=397.97,519.17");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=450.25,520.26");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=460.80,521.95");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=430.99,523.68");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=478.30,515.89");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=493.09,521.65");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=461.04,478.47");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=484.13,447.50");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=535.79,374.76");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=596.91,353.14");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=623.02,397.98");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=691.21,422.75");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=669.17,467.03");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=646.94,463.91");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=572.76,485.93");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=548.60,399.46");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=509.86,484.48");
    }

    host_fn_rly_101: <default("SensorNode")> like INetworkNode {
        @display("p=487.07,474.07");
    }

    host_fn_rly_102: <default("SensorNode")> like INetworkNode {
        @display("p=490.70,462.22");
    }

    host_fn_rly_103: <default("SensorNode")> like INetworkNode {
        @display("p=501.01,469.23");
    }

    host_fn_rly_104: <default("SensorNode")> like INetworkNode {
        @display("p=546.34,462.83");
    }

    host_fn_rly_105: <default("SensorNode")> like INetworkNode {
        @display("p=571.89,447.61");
    }

    host_fn_rly_106: <default("SensorNode")> like INetworkNode {
        @display("p=604.30,366.47");
    }

    host_fn_rly_107: <default("SensorNode")> like INetworkNode {
        @display("p=561.51,432.24");
    }

    host_fn_rly_108: <default("SensorNode")> like INetworkNode {
        @display("p=556.31,416.58");
    }

    host_fn_rly_109: <default("SensorNode")> like INetworkNode {
        @display("p=579.87,358.72");
    }

    host_fn_rly_110: <default("SensorNode")> like INetworkNode {
        @display("p=581.75,340.75");
    }

    host_fn_rly_111: <default("SensorNode")> like INetworkNode {
        @display("p=566.82,307.66");
    }

    host_fn_rly_112: <default("SensorNode")> like INetworkNode {
        @display("p=614.58,314.28");
    }

    host_fn_rly_113: <default("SensorNode")> like INetworkNode {
        @display("p=600.38,304.53");
    }

    host_fn_rly_114: <default("SensorNode")> like INetworkNode {
        @display("p=579.38,228.49");
    }

    host_fn_rly_115: <default("SensorNode")> like INetworkNode {
        @display("p=530.51,261.46");
    }

    host_fn_rly_116: <default("SensorNode")> like INetworkNode {
        @display("p=515.07,262.72");
    }

    host_fn_rly_117: <default("SensorNode")> like INetworkNode {
        @display("p=474.72,260.59");
    }

    host_fn_rly_118: <default("SensorNode")> like INetworkNode {
        @display("p=438.57,269.52");
    }

    host_fn_rly_119: <default("SensorNode")> like INetworkNode {
        @display("p=464.63,264.94");
    }

    host_fn_rly_120: <default("SensorNode")> like INetworkNode {
        @display("p=410.99,262.37");
    }

    host_fn_rly_121: <default("SensorNode")> like INetworkNode {
        @display("p=341.96,268.99");
    }

    host_fn_rly_122: <default("SensorNode")> like INetworkNode {
        @display("p=380.64,338.48");
    }

    host_fn_rly_123: <default("SensorNode")> like INetworkNode {
        @display("p=304.25,293.74");
    }

    host_fn_rly_124: <default("SensorNode")> like INetworkNode {
        @display("p=323.30,291.88");
    }

    host_fn_rly_125: <default("SensorNode")> like INetworkNode {
        @display("p=290.88,386.18");
    }

    host_fn_rly_126: <default("SensorNode")> like INetworkNode {
        @display("p=233.42,355.50");
    }

    host_fn_rly_127: <default("SensorNode")> like INetworkNode {
        @display("p=286.85,426.88");
    }

    host_fn_rly_128: <default("SensorNode")> like INetworkNode {
        @display("p=262.33,450.33");
    }

    host_fn_rly_129: <default("SensorNode")> like INetworkNode {
        @display("p=260.62,542.97");
    }

    host_fn_rly_130: <default("SensorNode")> like INetworkNode {
        @display("p=215.05,579.92");
    }

    host_fn_rly_131: <default("SensorNode")> like INetworkNode {
        @display("p=200.40,602.20");
    }

    host_fn_rly_132: <default("SensorNode")> like INetworkNode {
        @display("p=209.43,626.95");
    }

    host_fn_rly_133: <default("SensorNode")> like INetworkNode {
        @display("p=192.16,655.24");
    }

    host_fn_rly_134: <default("SensorNode")> like INetworkNode {
        @display("p=142.50,604.03");
    }

    host_fn_rly_135: <default("SensorNode")> like INetworkNode {
        @display("p=89.51,618.49");
    }

    host_fn_rly_136: <default("SensorNode")> like INetworkNode {
        @display("p=120.41,669.51");
    }

    host_fn_rly_137: <default("SensorNode")> like INetworkNode {
        @display("p=129.22,633.04");
    }

    host_fn_rly_138: <default("SensorNode")> like INetworkNode {
        @display("p=100.81,598.57");
    }

    host_fn_rly_139: <default("SensorNode")> like INetworkNode {
        @display("p=70.52,597.49");
    }

    host_fn_rly_140: <default("SensorNode")> like INetworkNode {
        @display("p=0.99,608.29");
    }

    host_fn_rly_141: <default("SensorNode")> like INetworkNode {
        @display("p=64.05,562.56");
    }

    host_fn_rly_142: <default("SensorNode")> like INetworkNode {
        @display("p=115.05,558.55");
    }

    host_fn_rly_143: <default("SensorNode")> like INetworkNode {
        @display("p=153.03,599.81");
    }

    host_fn_rly_144: <default("SensorNode")> like INetworkNode {
        @display("p=126.61,580.80");
    }

    host_fn_rly_145: <default("SensorNode")> like INetworkNode {
        @display("p=185.88,588.73");
    }

    host_fn_rly_146: <default("SensorNode")> like INetworkNode {
        @display("p=192.97,568.95");
    }

    host_fn_rly_147: <default("SensorNode")> like INetworkNode {
        @display("p=133.99,522.12");
    }

    host_fn_rly_148: <default("SensorNode")> like INetworkNode {
        @display("p=126.15,555.14");
    }

    host_fn_rly_149: <default("SensorNode")> like INetworkNode {
        @display("p=198.72,491.74");
    }

    host_fn_rly_150: <default("SensorNode")> like INetworkNode {
        @display("p=130.55,454.13");
    }

    host_fn_rly_151: <default("SensorNode")> like INetworkNode {
        @display("p=100.60,442.42");
    }

    host_fn_rly_152: <default("SensorNode")> like INetworkNode {
        @display("p=113.71,441.49");
    }

    host_fn_rly_153: <default("SensorNode")> like INetworkNode {
        @display("p=195.26,474.72");
    }

    host_fn_rly_154: <default("SensorNode")> like INetworkNode {
        @display("p=180.99,476.98");
    }

    host_fn_rly_155: <default("SensorNode")> like INetworkNode {
        @display("p=254.90,480.92");
    }

    host_fn_rly_156: <default("SensorNode")> like INetworkNode {
        @display("p=211.36,473.10");
    }

    host_fn_rly_157: <default("SensorNode")> like INetworkNode {
        @display("p=179.95,401.02");
    }

    host_fn_rly_158: <default("SensorNode")> like INetworkNode {
        @display("p=159.05,344.32");
    }

    host_fn_rly_159: <default("SensorNode")> like INetworkNode {
        @display("p=144.64,403.12");
    }

    host_fn_rly_160: <default("SensorNode")> like INetworkNode {
        @display("p=132.30,442.58");
    }

    host_fn_rly_161: <default("SensorNode")> like INetworkNode {
        @display("p=126.51,412.79");
    }

    host_fn_rly_162: <default("SensorNode")> like INetworkNode {
        @display("p=198.32,407.61");
    }

    host_fn_rly_163: <default("SensorNode")> like INetworkNode {
        @display("p=246.08,388.84");
    }

    host_fn_rly_164: <default("SensorNode")> like INetworkNode {
        @display("p=242.95,454.34");
    }

    host_fn_rly_165: <default("SensorNode")> like INetworkNode {
        @display("p=252.08,414.91");
    }

    host_fn_rly_166: <default("SensorNode")> like INetworkNode {
        @display("p=323.69,426.54");
    }

    host_fn_rly_167: <default("SensorNode")> like INetworkNode {
        @display("p=357.45,445.80");
    }

    host_fn_rly_168: <default("SensorNode")> like INetworkNode {
        @display("p=310.44,477.99");
    }

    host_fn_rly_169: <default("SensorNode")> like INetworkNode {
        @display("p=255.96,515.43");
    }

    host_fn_rly_170: <default("SensorNode")> like INetworkNode {
        @display("p=265.81,504.35");
    }

    host_fn_rly_171: <default("SensorNode")> like INetworkNode {
        @display("p=243.14,543.10");
    }

    host_fn_rly_172: <default("SensorNode")> like INetworkNode {
        @display("p=196.39,542.64");
    }

    host_fn_rly_173: <default("SensorNode")> like INetworkNode {
        @display("p=290.48,554.83");
    }

    host_fn_rly_174: <default("SensorNode")> like INetworkNode {
        @display("p=264.35,561.14");
    }

    host_fn_rly_175: <default("SensorNode")> like INetworkNode {
        @display("p=200.99,507.49");
    }

    host_fn_rly_176: <default("SensorNode")> like INetworkNode {
        @display("p=210.10,537.54");
    }

    host_fn_rly_177: <default("SensorNode")> like INetworkNode {
        @display("p=209.19,588.61");
    }

    host_fn_rly_178: <default("SensorNode")> like INetworkNode {
        @display("p=234.40,593.91");
    }

    host_fn_rly_179: <default("SensorNode")> like INetworkNode {
        @display("p=217.31,704.91");
    }

    host_fn_rly_180: <default("SensorNode")> like INetworkNode {
        @display("p=283.32,704.40");
    }

    host_fn_rly_181: <default("SensorNode")> like INetworkNode {
        @display("p=224.63,669.94");
    }

    host_fn_rly_182: <default("SensorNode")> like INetworkNode {
        @display("p=274.95,630.48");
    }

    host_fn_rly_183: <default("SensorNode")> like INetworkNode {
        @display("p=298.36,598.51");
    }

    host_fn_rly_184: <default("SensorNode")> like INetworkNode {
        @display("p=283.40,579.58");
    }

    host_fn_rly_185: <default("SensorNode")> like INetworkNode {
        @display("p=293.61,567.75");
    }

    host_fn_rly_186: <default("SensorNode")> like INetworkNode {
        @display("p=299.73,586.39");
    }

    host_fn_rly_187: <default("SensorNode")> like INetworkNode {
        @display("p=225.52,606.91");
    }

    host_fn_rly_188: <default("SensorNode")> like INetworkNode {
        @display("p=249.98,648.98");
    }

    host_fn_rly_189: <default("SensorNode")> like INetworkNode {
        @display("p=303.06,648.55");
    }

    host_fn_rly_190: <default("SensorNode")> like INetworkNode {
        @display("p=305.45,699.99");
    }

    host_fn_rly_191: <default("SensorNode")> like INetworkNode {
        @display("p=360.20,723.84");
    }

    host_fn_rly_192: <default("SensorNode")> like INetworkNode {
        @display("p=372.70,719.19");
    }

    host_fn_rly_193: <default("SensorNode")> like INetworkNode {
        @display("p=374.94,730.79");
    }

    host_fn_rly_194: <default("SensorNode")> like INetworkNode {
        @display("p=357.07,737.70");
    }

    host_fn_rly_195: <default("SensorNode")> like INetworkNode {
        @display("p=333.93,677.68");
    }

    host_fn_rly_196: <default("SensorNode")> like INetworkNode {
        @display("p=337.28,598.72");
    }

    host_fn_rly_197: <default("SensorNode")> like INetworkNode {
        @display("p=378.16,569.86");
    }

    host_fn_rly_198: <default("SensorNode")> like INetworkNode {
        @display("p=335.14,638.15");
    }

    host_fn_rly_199: <default("SensorNode")> like INetworkNode {
        @display("p=392.91,625.94");
    }

    host_fn_rly_200: <default("SensorNode")> like INetworkNode {
        @display("p=388.96,608.75");
    }

}

