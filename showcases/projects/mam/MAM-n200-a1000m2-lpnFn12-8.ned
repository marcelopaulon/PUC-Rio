
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn12-8
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
        @display("p=304.00,578.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=330.70,626.37");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=272.69,552.02");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=276.25,564.59");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=244.35,576.59");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=270.15,537.74");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=260.95,562.99");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=226.04,514.97");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=211.07,547.04");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=187.52,497.92");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=295.29,503.59");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=289.77,546.40");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=292.24,449.63");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=245.42,420.23");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=250.79,335.55");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=258.91,315.22");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=325.42,384.07");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=349.56,564.92");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=265.82,642.43");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=293.22,529.77");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=241.51,531.45");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=245.36,518.16");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=183.88,509.00");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=232.46,488.79");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=216.08,532.25");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=240.14,554.23");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=158.96,412.87");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=294.57,433.32");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=318.90,575.99");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=372.50,447.32");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=278.04,449.48");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=245.31,317.00");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=187.96,302.88");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=295.47,370.59");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=338.66,668.33");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=359.40,710.70");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=233.06,503.21");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=219.44,586.89");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=183.49,614.57");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=261.72,529.77");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=249.15,600.93");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=135.00,524.47");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=226.85,554.29");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=169.09,513.60");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=300.99,511.86");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=347.57,523.72");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=315.41,429.34");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=232.40,414.74");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=196.64,321.57");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=239.08,260.51");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=317.51,377.14");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=289.33,592.41");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=246.75,643.45");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=298.66,644.83");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=288.70,580.59");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=339.54,564.89");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=201.13,552.92");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=174.13,582.37");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=268.57,466.68");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=262.67,517.04");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=224.96,477.87");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=364.33,532.82");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=346.29,544.66");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=353.22,478.52");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=211.67,393.69");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=296.29,340.68");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=305.27,245.56");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=320.36,363.04");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=310.06,627.49");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=338.75,633.13");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=280.08,586.85");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=263.94,605.50");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=332.57,537.40");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=240.87,495.99");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=262.63,584.41");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=211.40,445.46");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=175.57,554.60");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=242.83,440.08");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=329.34,446.17");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=266.31,615.69");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=331.44,427.84");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=204.67,489.38");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=220.87,334.42");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=297.58,287.35");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=289.45,383.97");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=295.42,569.58");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=286.97,624.77");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=301.77,591.30");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=240.03,541.49");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=215.82,576.57");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=242.18,474.28");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=308.54,532.64");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=269.99,484.63");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=196.38,526.62");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=209.60,518.16");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=284.29,491.69");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=335.39,525.43");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=205.62,420.77");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=294.22,355.92");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=277.05,331.91");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=271.74,403.14");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=281.80,463.24");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=219.37,606.28");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=316.04,674.21");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=234.12,606.79");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=362.19,569.68");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=197.82,631.60");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=200.59,510.45");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=168.51,526.06");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=126.50,511.57");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=196.61,565.62");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=254.05,499.33");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=290.69,482.77");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=319.81,538.62");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=349.03,367.39");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=247.05,380.85");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=222.02,347.79");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=226.84,311.60");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=310.90,294.66");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=354.76,605.79");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=324.20,649.92");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=320.25,509.06");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=277.61,599.32");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=161.41,604.91");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=253.98,615.66");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=314.39,601.49");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=198.62,586.93");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=225.53,625.92");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=125.35,484.64");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=226.55,527.95");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=275.77,502.12");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=275.44,424.95");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=254.52,471.46");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=290.25,330.05");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=332.24,362.12");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=340.18,383.96");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=329.55,559.13");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=286.49,714.94");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=242.95,629.83");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=342.53,534.08");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=239.89,592.57");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=301.03,544.05");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=216.12,508.58");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=138.99,494.22");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=195.73,481.60");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=192.05,469.12");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=255.84,454.06");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=378.70,513.15");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=319.11,467.02");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=214.42,477.58");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=257.52,349.82");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=237.58,338.03");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=382.55,389.40");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=323.79,596.74");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=326.91,715.32");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=195.08,608.28");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=188.47,573.50");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=247.94,667.49");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=255.07,629.37");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=186.54,519.48");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=169.37,570.67");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=150.96,601.85");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=145.56,572.44");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=232.79,580.37");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=284.06,538.04");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=343.47,467.31");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=279.28,375.94");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=242.34,353.52");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=262.41,329.11");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=345.30,394.33");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=308.12,611.51");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=347.83,656.22");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=281.25,510.97");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=351.32,577.25");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=229.43,635.95");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=340.21,588.03");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=258.15,649.11");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=184.09,458.56");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=156.60,570.59");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=254.31,487.59");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=310.28,476.69");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=333.16,499.26");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=309.09,412.81");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=180.44,429.52");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=285.18,285.96");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=354.59,330.28");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=295.29,397.36");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=346.83,490.85");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=305.08,686.83");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=254.55,551.92");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=311.11,564.44");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=181.49,596.77");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=288.90,519.68");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=224.24,494.89");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=211.12,567.15");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=184.68,635.62");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=112.80,506.03");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=240.50,463.22");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=368.59,514.60");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=275.82,521.46");
    }

}

