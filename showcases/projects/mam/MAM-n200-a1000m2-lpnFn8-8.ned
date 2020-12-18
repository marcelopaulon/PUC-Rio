
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn8-8
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
        @display("p=103.00,459.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=68.06,519.95");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=89.10,505.20");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=34.27,529.60");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=44.89,503.23");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=55.74,523.58");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=94.09,588.89");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=30.23,610.05");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=124.87,581.80");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=164.02,611.33");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=177.44,589.88");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=213.85,560.63");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=270.37,501.16");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=227.82,464.73");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=281.96,501.35");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=308.23,514.05");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=358.89,465.61");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=351.26,483.53");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=368.77,494.58");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=328.62,536.65");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=361.86,529.00");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=350.70,536.69");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=386.25,479.90");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=389.23,499.61");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=381.96,513.40");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=39.84,492.50");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=110.21,499.94");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=76.84,470.82");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=56.66,554.38");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=70.33,596.42");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=55.34,497.53");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=56.82,673.25");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=49.10,647.78");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=39.14,595.10");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=144.61,636.26");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=203.36,670.96");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=259.56,547.59");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=249.32,450.94");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=221.36,475.68");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=291.15,487.72");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=320.74,517.36");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=326.50,426.33");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=353.64,411.57");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=454.13,526.46");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=347.19,553.70");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=325.08,558.98");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=384.70,553.13");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=330.10,521.44");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=407.40,509.68");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=370.98,441.90");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=109.40,473.31");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=68.00,558.00");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=102.24,545.16");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=3.71,589.95");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=69.26,487.63");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=33.14,551.39");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=80.19,550.68");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=28.88,633.16");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=107.31,645.19");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=174.93,618.43");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=147.53,571.35");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=184.63,486.44");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=274.06,550.51");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=183.43,461.81");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=304.21,433.18");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=347.40,449.38");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=278.02,424.61");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=415.16,436.21");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=372.50,535.15");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=320.00,620.41");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=359.96,605.78");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=373.94,599.22");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=471.31,498.29");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=402.27,438.12");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=369.31,583.95");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=126.28,452.53");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=154.96,541.19");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=57.67,538.89");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=98.63,501.90");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=46.38,527.49");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=38.61,466.07");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=14.15,588.04");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=58.45,652.43");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=199.74,555.22");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=74.42,570.68");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=237.82,544.88");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=208.43,598.30");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=252.08,522.66");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=240.12,506.38");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=303.06,464.63");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=379.78,459.45");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=348.34,420.55");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=432.43,470.04");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=357.72,546.62");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=296.84,597.13");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=403.85,596.04");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=338.72,513.83");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=422.72,451.88");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=301.90,498.80");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=349.94,566.87");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=75.70,500.56");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=144.37,525.49");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=81.64,514.65");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=120.20,559.26");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=51.85,511.43");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=95.96,512.70");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=79.36,628.77");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=43.40,628.57");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=139.28,618.16");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=149.46,684.79");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=233.95,597.85");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=236.98,561.51");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=260.55,499.15");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=239.35,447.23");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=261.40,413.25");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=288.66,555.71");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=376.78,473.96");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=380.79,391.13");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=354.12,509.48");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=277.27,578.70");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=305.35,450.56");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=318.56,550.75");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=448.38,468.21");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=439.71,561.95");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=402.86,560.22");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=142.06,369.36");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=100.27,555.48");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=104.81,596.21");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=5.34,515.21");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=139.66,490.48");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=6.49,567.65");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=109.13,623.84");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=62.54,688.20");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=166.89,547.01");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=155.84,626.07");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=234.01,584.93");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=249.23,539.36");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=277.72,518.91");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=279.09,438.57");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=192.79,472.62");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=324.97,492.08");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=344.16,460.83");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=370.05,546.12");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=393.88,470.41");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=342.31,495.70");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=447.75,518.30");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=405.14,537.46");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=391.28,440.26");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=395.42,569.06");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=411.60,528.27");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=90.68,428.75");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=24.50,538.94");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=25.80,465.76");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=54.89,566.77");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=10.24,487.77");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=47.56,548.62");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=120.28,570.49");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=26.97,575.30");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=25.30,589.34");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=137.91,594.09");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=206.35,653.54");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=284.99,608.65");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=287.28,545.39");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=162.75,447.50");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=192.66,495.46");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=296.89,523.32");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=358.69,453.16");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=336.73,445.77");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=337.12,425.69");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=382.40,585.53");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=292.54,577.14");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=307.29,562.06");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=398.23,456.71");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=412.27,575.47");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=470.42,487.19");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=134.95,469.74");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=5.96,526.10");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=86.33,478.77");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=34.79,562.85");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=66.34,506.54");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=129.58,501.03");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=57.36,629.33");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=89.41,606.02");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=114.96,548.62");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=191.17,608.05");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=159.24,600.19");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=190.84,587.42");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=198.02,452.73");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=215.97,459.18");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=344.02,434.46");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=313.03,588.10");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=332.33,384.30");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=426.65,419.35");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=372.42,424.84");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=245.37,553.45");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=324.21,450.01");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=332.75,629.38");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=391.86,427.54");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=366.89,517.77");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=322.98,580.23");
    }

}

