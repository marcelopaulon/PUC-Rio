
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn8-3
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
        @display("p=340.00,767.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=339.09,699.64");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=335.07,714.17");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=302.84,696.56");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=375.79,670.81");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=355.72,719.81");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=333.96,753.27");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=366.73,772.37");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=444.81,797.04");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=459.15,777.44");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=530.47,769.71");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=506.04,721.80");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=505.57,760.92");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=492.18,781.84");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=459.72,734.41");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=446.75,752.08");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=425.61,791.05");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=332.09,777.22");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=345.12,788.02");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=277.19,757.20");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=280.93,734.05");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=297.69,685.66");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=339.71,598.94");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=321.82,598.77");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=361.26,664.47");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=268.20,775.63");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=398.02,690.65");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=271.63,666.56");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=322.49,620.92");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=280.29,682.79");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=386.78,753.46");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=415.07,768.09");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=438.12,722.28");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=438.93,711.60");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=508.22,703.54");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=518.05,773.16");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=526.92,727.07");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=500.12,745.59");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=509.85,781.54");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=425.82,719.33");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=517.57,751.01");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=387.05,742.33");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=299.56,714.25");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=345.83,748.36");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=295.52,754.19");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=338.86,681.23");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=316.60,735.21");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=364.50,511.77");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=352.68,513.81");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=334.28,653.46");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=277.31,713.77");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=359.73,734.41");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=356.93,690.90");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=350.98,705.37");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=378.74,717.85");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=390.47,783.63");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=307.23,787.07");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=313.46,755.58");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=485.42,760.66");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=427.78,774.52");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=550.00,776.50");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=575.13,664.90");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=460.90,724.33");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=445.57,773.87");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=472.40,745.29");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=546.29,746.33");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=406.20,756.87");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=298.12,776.21");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=328.94,762.93");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=314.17,774.10");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=216.21,668.61");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=299.03,665.13");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=294.88,584.21");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=351.23,603.50");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=323.89,652.86");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=395.37,703.67");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=378.26,760.20");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=407.41,680.76");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=268.38,726.47");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=298.20,623.41");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=331.18,726.09");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=235.65,740.75");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=365.60,792.18");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=425.04,747.90");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=475.06,774.45");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=490.97,722.54");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=444.03,643.95");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=526.78,791.81");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=527.22,758.95");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=464.38,711.57");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=436.73,749.88");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=455.59,794.65");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=256.36,788.38");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=319.54,789.55");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=195.68,748.12");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=216.85,759.60");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=304.64,768.39");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=317.18,631.95");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=346.67,537.27");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=382.59,655.37");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=255.14,745.41");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=282.84,694.99");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=359.58,645.49");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=235.33,694.66");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=373.70,686.81");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=326.52,668.96");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=290.55,705.27");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=392.32,766.40");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=402.62,796.26");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=471.86,756.53");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=538.92,692.64");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=553.35,756.70");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=487.51,733.13");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=499.63,797.20");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=455.28,663.31");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=454.48,761.38");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=417.37,782.16");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=333.24,792.40");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=385.80,707.50");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=259.00,758.44");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=210.43,715.44");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=302.93,610.46");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=309.37,675.80");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=334.81,640.68");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=424.28,625.27");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=341.77,724.45");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=342.22,663.39");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=262.81,673.37");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=258.08,661.77");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=311.12,658.34");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=368.32,713.64");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=236.35,769.14");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=304.40,740.52");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=484.73,713.51");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=429.69,737.19");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=521.09,739.75");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=508.20,654.46");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=538.28,715.07");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=408.81,727.69");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=433.72,702.46");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=472.63,721.91");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=448.75,735.44");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=346.34,777.61");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=373.96,736.26");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=196.84,710.15");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=208.41,697.99");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=260.95,615.84");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=281.25,581.95");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=249.16,585.16");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=442.55,672.02");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=284.76,796.66");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=318.95,682.48");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=287.10,638.46");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=238.80,665.07");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=438.88,685.78");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=416.29,739.58");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=358.92,783.84");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=357.79,765.33");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=443.72,700.42");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=378.09,772.21");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=599.32,729.82");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=541.15,783.45");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=568.41,746.30");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=565.18,763.30");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=498.30,682.69");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=472.20,662.67");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=351.54,756.60");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=288.19,781.83");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=286.30,723.37");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=226.39,795.49");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=221.09,734.30");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=259.78,632.68");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=345.64,547.62");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=284.19,508.95");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=390.57,669.69");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=246.26,780.22");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=320.67,711.78");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=337.82,737.83");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=332.85,616.30");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=391.94,640.10");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=369.65,646.79");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=357.02,676.14");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=346.45,689.17");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=356.53,796.42");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=454.94,693.55");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=568.99,680.03");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=520.63,670.14");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=577.26,740.53");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=504.07,773.30");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=389.83,728.38");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=481.23,796.34");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=367.16,745.85");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=403.71,740.07");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=271.27,746.56");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=193.88,794.04");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=291.46,651.00");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=252.50,768.99");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=292.57,540.56");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=225.43,613.85");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=369.64,606.71");
    }

}

