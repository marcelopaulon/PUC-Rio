
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn4_1
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
        @display("p=100.00,900.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=39.82,925.41");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=17.91,929.39");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=108.02,942.25");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=176.29,971.84");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=214.84,936.87");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=265.16,977.81");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=353.11,993.10");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=346.52,926.50");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=290.23,870.31");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=252.69,859.17");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=248.08,764.48");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=255.20,727.53");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=335.41,702.85");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=351.79,606.08");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=328.95,602.38");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=262.11,578.17");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=249.50,484.08");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=228.44,442.53");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=261.52,404.77");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=217.18,388.35");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=233.46,400.34");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=310.00,404.30");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=303.50,441.86");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=390.72,475.83");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=356.98,480.12");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=361.19,514.03");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=435.41,574.63");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=411.70,598.56");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=377.54,670.76");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=403.78,651.39");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=431.94,634.85");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=422.97,618.10");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=388.67,682.09");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=435.01,649.51");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=425.23,654.54");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=361.45,631.58");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=367.43,647.06");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=363.71,693.07");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=431.34,676.71");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=380.26,631.38");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=336.90,620.91");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=300.43,651.28");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=317.37,653.39");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=314.01,674.04");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=319.62,684.55");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=327.65,741.06");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=287.97,675.30");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=246.78,816.62");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=295.32,768.14");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=105.29,880.55");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=60.93,988.24");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=14.41,989.21");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=58.85,911.22");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=184.78,960.29");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=297.72,904.69");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=314.41,967.21");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=265.82,948.34");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=255.32,921.84");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=269.74,861.23");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=252.49,775.07");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=286.03,806.93");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=294.06,707.63");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=360.67,665.07");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=407.94,562.09");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=373.30,567.50");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=199.52,563.99");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=232.49,481.78");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=275.38,363.97");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=198.87,414.54");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=242.28,430.44");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=197.31,462.65");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=397.73,415.21");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=369.82,472.36");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=361.43,402.96");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=347.42,477.06");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=319.15,590.89");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=529.29,549.28");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=373.62,592.84");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=430.01,605.24");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=414.28,748.11");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=472.88,579.47");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=337.46,646.86");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=367.53,727.09");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=353.33,703.63");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=442.88,630.13");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=365.54,608.25");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=430.20,691.31");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=327.01,730.89");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=495.11,686.19");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=352.26,619.34");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=264.15,559.20");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=376.64,682.14");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=284.14,685.21");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=275.93,664.03");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=365.26,760.82");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=304.04,726.82");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=232.33,675.13");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=281.95,831.05");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=271.40,792.42");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=59.55,929.04");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=14.60,967.53");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=31.60,944.55");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=57.94,873.05");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=197.93,969.04");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=302.58,982.11");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=265.52,964.46");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=405.87,978.97");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=277.23,941.82");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=277.45,853.98");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=275.54,915.25");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=255.83,848.71");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=200.27,726.54");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=281.69,646.04");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=329.34,661.18");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=286.80,577.22");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=255.95,609.10");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=216.09,508.62");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=234.31,383.64");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=269.84,433.84");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=198.12,404.19");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=235.52,350.76");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=370.81,359.29");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=307.19,509.54");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=393.14,498.46");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=384.27,405.80");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=301.74,487.82");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=419.07,542.36");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=382.20,649.25");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=428.36,732.00");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=395.80,731.19");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=393.48,693.26");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=473.50,695.33");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=360.18,678.84");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=458.39,647.28");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=391.27,601.29");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=282.48,624.76");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=406.52,667.16");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=387.08,709.10");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=509.91,678.89");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=400.15,607.85");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=294.73,566.55");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=288.15,602.95");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=321.25,619.26");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=332.12,692.68");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=302.39,700.81");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=361.03,774.72");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=317.96,722.85");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=310.72,885.55");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=232.92,736.05");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=159.67,820.74");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=123.76,911.08");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=6.75,926.31");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=161.24,940.36");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=149.59,996.43");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=160.51,957.51");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=223.02,966.27");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=289.32,930.98");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=426.63,951.06");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=317.47,862.38");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=230.64,946.33");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=256.65,752.14");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=245.50,690.00");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=378.32,698.03");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=305.46,603.62");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=299.94,612.69");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=257.53,595.68");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=189.12,449.72");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=313.78,420.17");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=281.16,336.71");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=184.83,300.43");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=268.47,480.05");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=294.88,391.58");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=244.22,448.11");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=472.96,459.31");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=326.89,542.54");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=340.46,585.72");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=519.61,620.53");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=453.67,671.30");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=344.59,679.95");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=340.38,604.25");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=400.86,632.41");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=408.66,623.38");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=430.24,705.36");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=499.70,611.78");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=446.11,615.04");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=380.26,543.13");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=335.25,569.33");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=369.73,709.06");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=485.87,595.47");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=345.78,713.25");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=304.17,551.09");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=271.39,682.30");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=285.34,735.34");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=295.86,684.79");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=256.52,699.61");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=395.45,786.41");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=309.69,692.80");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=309.92,810.80");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=389.71,764.59");
    }

}

