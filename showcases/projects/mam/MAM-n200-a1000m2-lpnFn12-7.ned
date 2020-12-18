
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn12-7
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
        @display("p=484.00,450.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=573.38,429.02");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=586.11,456.17");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=510.39,447.66");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=413.53,438.13");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=365.91,416.59");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=375.26,420.52");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=336.94,459.01");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=304.87,511.49");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=291.53,562.80");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=247.98,555.60");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=317.34,621.54");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=329.47,625.87");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=282.03,639.67");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=269.30,605.08");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=296.23,548.98");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=251.55,597.95");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=505.85,480.27");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=556.57,463.81");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=561.09,403.15");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=523.86,436.66");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=379.71,398.58");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=338.96,400.37");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=414.34,416.78");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=341.56,480.02");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=365.92,436.50");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=296.51,593.88");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=260.18,555.65");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=327.68,661.49");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=281.32,656.54");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=313.79,650.32");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=244.00,569.19");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=267.80,568.88");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=225.62,685.05");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=436.23,432.25");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=514.84,388.67");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=591.97,445.95");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=506.43,512.16");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=353.00,372.73");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=305.55,464.62");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=373.72,385.69");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=321.95,480.23");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=320.06,565.45");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=267.94,522.82");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=263.76,582.08");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=342.70,570.31");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=285.54,600.81");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=232.57,666.43");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=273.17,627.55");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=299.52,582.34");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=160.18,598.13");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=452.15,460.39");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=561.02,380.75");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=583.91,425.24");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=558.96,434.20");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=355.09,488.46");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=376.09,436.67");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=384.72,408.55");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=323.14,439.38");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=305.09,540.72");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=257.73,536.73");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=193.46,521.89");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=298.91,524.65");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=262.59,651.51");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=332.53,644.86");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=214.87,572.25");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=212.18,526.77");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=186.55,605.76");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=478.84,370.32");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=616.85,467.27");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=567.75,413.52");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=531.64,402.43");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=392.21,438.68");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=279.11,454.62");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=392.89,460.88");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=273.28,444.69");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=302.98,494.44");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=311.77,596.99");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=254.10,645.92");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=325.55,579.96");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=296.32,680.82");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=194.41,655.77");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=237.02,651.39");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=277.49,553.68");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=222.10,671.00");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=481.74,417.84");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=589.78,513.13");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=620.24,457.05");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=453.60,479.32");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=406.77,402.75");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=399.52,489.32");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=371.30,508.22");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=385.91,448.24");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=366.08,558.30");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=236.21,484.18");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=236.11,537.99");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=304.95,616.20");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=398.80,652.60");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=241.59,670.85");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=211.42,615.46");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=276.89,535.23");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=272.92,594.26");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=550.13,512.85");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=549.82,391.47");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=608.49,452.49");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=559.13,453.56");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=456.52,417.85");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=397.69,364.86");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=368.47,475.56");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=358.07,468.38");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=288.75,493.95");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=336.36,527.74");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=280.65,470.77");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=387.83,603.53");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=276.65,699.73");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=310.28,688.61");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=289.09,507.87");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=289.82,576.30");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=323.60,529.60");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=499.75,455.35");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=542.41,354.87");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=573.93,520.81");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=510.81,525.99");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=469.26,364.40");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=304.38,432.48");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=415.66,357.97");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=387.63,530.58");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=376.83,537.27");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=214.99,506.99");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=336.77,543.64");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=219.29,601.95");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=324.86,699.05");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=230.50,575.09");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=225.12,634.24");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=275.85,503.34");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=156.95,621.90");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=452.26,520.00");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=629.83,444.67");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=544.03,366.86");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=428.82,411.46");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=412.43,477.26");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=450.44,398.67");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=396.11,402.17");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=359.46,403.01");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=336.02,442.95");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=312.59,574.31");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=232.42,522.71");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=336.76,671.71");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=313.89,710.33");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=239.31,693.00");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=281.03,672.60");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=301.02,452.73");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=247.70,583.27");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=400.69,425.46");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=612.09,512.25");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=536.82,532.98");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=533.41,503.92");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=411.12,453.62");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=351.27,355.66");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=357.56,424.97");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=320.65,498.93");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=292.46,537.94");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=303.11,570.97");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=245.53,510.78");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=372.25,699.75");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=366.33,669.23");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=349.89,617.47");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=233.01,559.43");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=351.58,590.79");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=319.43,605.27");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=540.44,478.11");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=585.42,466.74");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=547.07,455.01");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=426.96,449.31");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=478.99,487.32");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=315.21,468.06");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=438.78,363.21");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=352.73,454.61");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=318.99,414.27");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=231.74,616.58");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=220.21,552.85");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=344.68,635.58");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=420.41,597.89");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=257.57,573.72");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=336.88,555.97");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=241.74,608.57");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=258.65,621.44");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=472.43,468.65");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=587.76,374.11");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=639.96,408.02");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=448.83,436.17");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=419.09,461.19");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=381.38,355.16");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=310.95,407.13");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=327.80,470.62");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=290.11,444.60");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=302.57,628.01");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=263.59,545.48");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=331.53,715.90");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=347.40,695.64");
    }

}

