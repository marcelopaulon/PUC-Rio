
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn12-4
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
        @display("p=365.00,552.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=374.41,566.96");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=363.56,525.84");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=355.53,505.44");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=293.86,513.95");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=299.35,484.92");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=276.88,498.98");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=327.88,487.57");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=312.12,451.69");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=338.34,479.75");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=256.55,534.57");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=232.02,534.39");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=273.97,584.98");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=317.55,612.58");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=346.07,578.42");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=266.70,625.06");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=325.75,600.95");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=334.44,569.64");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=354.40,602.76");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=309.45,470.29");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=420.70,526.06");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=238.53,596.68");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=310.51,405.46");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=200.25,521.70");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=324.34,477.51");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=301.05,424.38");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=257.04,442.86");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=231.25,627.14");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=221.99,484.40");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=269.92,636.46");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=304.37,619.38");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=292.94,496.32");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=248.05,603.79");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=313.13,573.45");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=333.98,525.16");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=391.86,490.42");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=323.63,556.24");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=390.26,539.43");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=297.94,589.31");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=255.20,563.67");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=226.21,464.35");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=371.47,481.90");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=382.40,444.17");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=394.83,525.78");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=256.57,523.62");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=228.36,582.08");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=221.45,624.41");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=286.88,529.61");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=284.41,589.92");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=217.98,649.27");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=319.61,591.56");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=378.36,545.72");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=447.75,630.46");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=376.07,505.93");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=438.23,474.96");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=327.35,508.42");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=264.20,545.59");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=247.60,490.08");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=408.06,440.95");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=356.62,444.61");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=308.17,497.96");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=196.22,489.42");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=204.81,559.85");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=256.21,650.73");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=332.41,649.67");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=421.41,601.06");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=307.57,584.56");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=378.26,594.60");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=381.60,473.27");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=441.54,499.32");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=366.35,460.67");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=438.34,536.45");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=269.10,506.84");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=270.51,425.87");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=297.01,459.71");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=326.79,419.15");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=302.81,413.39");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=346.46,493.79");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=205.68,532.82");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=203.49,505.67");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=220.20,575.05");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=321.79,694.51");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=320.48,521.30");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=332.39,592.14");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=345.71,536.93");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=435.32,488.35");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=382.22,645.64");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=396.38,563.47");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=351.87,560.39");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=346.88,453.80");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=205.49,469.81");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=284.66,413.82");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=405.47,522.33");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=252.17,433.55");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=423.33,484.38");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=280.20,549.32");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=189.48,481.23");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=305.63,531.51");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=226.41,610.56");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=413.54,582.75");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=254.17,627.24");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=315.37,543.89");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=459.08,556.64");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=402.77,494.93");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=428.92,466.18");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=339.13,508.50");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=337.41,425.86");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=290.70,442.32");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=326.82,543.41");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=310.40,519.92");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=334.52,361.58");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=332.83,470.06");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=245.81,532.94");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=226.10,560.48");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=188.13,610.94");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=373.44,672.79");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=291.82,639.75");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=302.62,630.73");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=344.56,606.33");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=390.63,511.28");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=385.64,561.56");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=426.50,563.50");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=339.69,446.62");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=238.41,484.54");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=287.85,486.00");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=268.44,444.48");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=345.84,471.68");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=281.47,402.40");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=412.38,474.11");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=263.16,585.35");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=168.53,530.12");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=279.89,566.92");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=358.35,626.90");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=251.21,553.21");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=235.05,707.19");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=324.79,629.05");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=452.45,547.91");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=368.89,599.33");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=408.04,557.85");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=408.00,421.64");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=237.12,511.88");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=221.07,497.20");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=262.12,493.44");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=270.61,466.78");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=278.87,453.96");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=322.16,458.67");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=288.39,580.53");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=144.80,568.85");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=296.36,566.85");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=367.48,589.11");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=363.00,542.09");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=363.91,648.35");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=364.01,662.45");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=403.88,480.86");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=443.48,559.01");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=335.09,499.15");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=356.38,585.85");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=303.90,545.84");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=230.31,431.70");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=359.46,470.25");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=380.38,532.12");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=354.04,388.28");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=357.83,570.00");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=276.86,611.28");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=234.02,499.03");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=258.33,602.81");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=292.34,656.04");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=382.08,620.02");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=201.76,641.32");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=309.79,647.53");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=401.32,578.97");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=313.11,558.20");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=419.27,495.54");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=381.78,491.97");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=220.98,518.71");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=362.41,434.19");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=259.18,458.80");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=371.24,413.40");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=379.84,424.37");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=420.23,432.78");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=239.96,556.44");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=135.94,558.28");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=258.07,683.50");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=350.38,648.56");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=321.38,499.59");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=272.51,662.41");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=358.23,681.32");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=413.17,546.16");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=402.71,659.60");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=370.15,619.90");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=369.65,514.06");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=348.99,483.70");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=246.47,423.14");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=272.55,534.19");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=285.34,427.32");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=294.34,400.03");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=285.99,469.09");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=275.54,487.94");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=227.88,475.21");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=312.16,600.30");
    }

}

