
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn12-9
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
        @display("p=561.00,315.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=542.65,289.08");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=538.06,280.17");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=452.06,281.47");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=491.39,284.11");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=564.45,263.89");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=582.39,259.27");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=538.16,257.15");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=493.59,326.80");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=442.26,259.34");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=485.68,375.79");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=526.69,341.48");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=529.48,412.42");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=568.43,385.01");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=496.14,416.55");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=501.95,501.37");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=536.16,460.54");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=519.02,382.34");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=511.40,276.67");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=590.52,265.94");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=512.77,308.07");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=488.59,296.14");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=642.80,218.87");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=488.57,256.29");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=605.41,251.76");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=470.59,327.44");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=385.01,260.06");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=497.70,438.49");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=605.74,386.89");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=511.78,398.68");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=601.86,403.09");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=469.52,384.68");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=480.14,444.44");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=535.57,493.55");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=543.22,270.23");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=547.84,328.08");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=522.43,268.54");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=431.58,238.54");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=435.50,365.63");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=584.13,215.89");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=598.99,240.58");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=583.29,306.85");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=477.69,357.00");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=484.27,268.85");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=502.12,366.93");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=515.31,337.37");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=536.30,354.96");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=622.84,451.34");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=509.90,429.96");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=569.55,490.75");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=469.04,395.42");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=499.92,294.01");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=537.96,301.84");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=486.43,211.06");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=410.85,368.13");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=478.41,315.68");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=622.44,255.15");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=592.90,255.94");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=495.84,219.35");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=456.28,402.03");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=478.06,229.84");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=555.67,404.69");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=564.30,290.29");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=533.27,385.03");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=550.07,477.77");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=457.80,436.77");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=481.29,486.25");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=571.10,468.27");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=618.28,312.26");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=595.62,287.56");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=568.82,254.81");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=460.78,303.28");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=566.65,341.56");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=555.06,232.21");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=503.63,261.33");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=542.21,204.45");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=504.41,318.09");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=472.66,255.94");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=498.28,458.68");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=573.69,417.25");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=517.33,459.91");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=582.86,390.71");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=459.95,343.47");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=433.68,514.20");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=585.25,544.93");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=528.56,324.22");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=586.99,340.56");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=570.69,274.48");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=426.36,266.88");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=514.46,261.72");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=600.70,305.88");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=659.61,241.91");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=622.20,210.42");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=472.29,277.83");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=516.40,240.61");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=429.26,443.84");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=547.84,312.62");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=513.72,415.90");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=561.47,450.13");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=561.22,464.00");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=443.45,490.16");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=531.45,515.02");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=519.60,368.05");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=558.87,377.87");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=440.66,285.74");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=537.44,236.92");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=501.28,282.16");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=620.85,240.25");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=620.04,285.46");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=538.97,322.90");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=575.34,333.97");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=441.47,312.15");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=450.71,352.46");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=542.30,425.06");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=444.09,374.79");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=586.54,470.90");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=444.10,424.77");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=440.84,535.59");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=509.57,552.31");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=550.20,360.19");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=522.80,306.61");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=548.54,223.14");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=451.34,315.42");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=497.98,376.75");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=554.74,258.39");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=670.34,306.34");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=605.24,267.42");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=551.84,386.54");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=355.34,281.32");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=415.73,308.96");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=428.37,344.95");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=457.30,420.65");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=565.94,356.80");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=417.22,384.05");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=421.89,496.58");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=522.18,506.56");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=539.90,369.92");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=537.54,333.84");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=584.72,199.29");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=504.93,204.43");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=444.54,295.97");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=565.32,303.69");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=613.87,299.05");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=559.00,279.88");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=454.70,245.55");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=363.54,302.17");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=526.20,433.26");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=558.17,418.65");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=616.85,433.19");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=589.97,440.98");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=537.97,482.49");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=501.56,488.63");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=605.43,510.09");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=494.98,308.43");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=529.47,292.75");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=525.48,194.14");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=449.87,269.69");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=468.28,215.21");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=571.76,202.45");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=573.22,236.12");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=493.86,346.71");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=426.27,334.87");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=400.68,321.67");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=459.09,370.09");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=444.73,338.43");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=483.58,393.35");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=613.91,353.48");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=446.56,467.08");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=532.35,422.19");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=553.28,556.48");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=631.72,280.13");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=552.57,208.52");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=515.10,211.00");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=397.83,227.67");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=502.76,248.36");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=514.85,228.84");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=545.84,245.09");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=607.19,194.25");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=517.37,320.52");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=400.97,334.42");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=548.90,396.83");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=573.88,323.82");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=548.87,454.93");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=561.02,481.55");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=528.17,395.59");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=501.19,542.72");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=508.47,445.49");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=589.98,298.03");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=590.33,368.36");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=519.58,287.79");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=418.00,249.65");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=527.35,237.86");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=605.59,326.33");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=579.97,270.43");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=553.61,299.04");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=414.51,354.19");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=381.58,227.21");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=491.91,387.67");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=540.28,406.07");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=497.73,427.59");
    }

}

