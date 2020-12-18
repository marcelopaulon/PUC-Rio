
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn12-6
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
        @display("p=172.00,360.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=175.08,376.86");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=141.32,401.68");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=89.95,401.04");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=119.09,331.97");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=33.07,364.83");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=62.35,358.27");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=36.25,426.08");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=78.27,427.79");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=56.15,516.94");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=40.30,465.32");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=106.88,463.18");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=152.99,480.68");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=105.24,538.90");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=76.88,572.32");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=16.52,510.27");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=5.52,496.41");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=206.51,336.85");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=181.60,343.23");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=139.34,419.74");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=181.45,387.25");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=85.07,347.47");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=47.99,376.13");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=16.51,325.38");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=49.59,353.91");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=98.08,354.01");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=68.54,503.07");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=85.67,437.18");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=195.82,439.35");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=166.18,438.10");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=31.60,599.31");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=43.92,625.13");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=73.45,517.59");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=54.66,530.47");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=237.70,368.35");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=111.68,403.63");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=168.46,336.22");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=154.91,466.07");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=175.80,287.06");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=74.95,378.83");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=57.08,327.03");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=35.56,483.69");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=81.92,390.20");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=67.38,490.94");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=14.25,419.37");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=126.54,480.97");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=236.44,448.53");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=124.32,551.83");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=51.98,585.09");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=19.98,588.30");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=12.56,559.27");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=100.67,338.27");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=101.03,438.96");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=154.07,391.89");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=97.22,486.02");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=130.63,356.44");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=58.23,273.03");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=66.35,348.04");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=59.16,374.58");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=66.21,431.81");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=90.91,605.98");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=30.04,527.94");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=136.13,499.96");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=145.32,528.64");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=103.70,564.45");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=71.49,560.55");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=98.28,473.52");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=46.06,575.66");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=174.29,427.79");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=158.17,357.88");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=125.78,443.58");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=147.00,364.07");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=38.60,302.33");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=1.52,360.87");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=38.83,350.06");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=29.53,463.11");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=34.94,397.84");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=6.80,522.67");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=5.62,379.44");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=163.76,480.94");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=156.23,442.78");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=140.68,550.98");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=71.53,597.91");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=51.45,501.34");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=20.15,552.39");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=246.84,303.12");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=211.75,387.37");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=132.11,381.16");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=53.28,393.62");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=109.34,321.42");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=69.95,286.31");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=97.39,419.87");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=26.42,429.56");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=86.28,492.74");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=89.05,586.40");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=25.32,406.09");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=65.20,458.59");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=92.66,538.02");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=156.47,566.22");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=154.72,518.25");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=36.25,544.90");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=2.13,412.10");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=126.87,318.10");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=162.57,297.20");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=178.58,470.45");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=74.25,447.60");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=35.35,323.80");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=7.00,432.90");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=92.67,278.37");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=6.69,344.70");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=116.83,487.58");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=103.68,496.79");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=12.11,545.14");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=63.29,471.05");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=143.52,491.97");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=95.98,549.14");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=125.85,605.47");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=34.56,512.75");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=84.18,516.31");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=204.09,270.99");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=251.36,335.88");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=140.49,388.61");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=73.12,329.77");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=193.35,348.61");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=50.71,420.07");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=17.74,349.04");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=104.99,361.78");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=118.80,390.05");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=75.58,471.47");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=37.35,449.75");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=118.86,462.88");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=223.87,519.58");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=78.48,546.72");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=117.45,587.38");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=97.96,521.01");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=6.32,462.97");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=145.67,276.57");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=251.75,312.71");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=164.63,401.67");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=82.85,357.54");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=143.07,252.58");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=94.60,390.53");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=31.48,380.93");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=20.77,443.18");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=108.24,391.15");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=42.75,491.81");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=16.03,492.89");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=111.96,522.84");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=223.18,488.56");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=71.74,529.05");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=69.17,656.71");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=20.57,531.78");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=31.36,496.21");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=176.60,450.38");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=176.07,397.81");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=167.72,413.78");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=152.81,453.66");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=183.99,270.74");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=112.73,414.38");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=136.38,332.11");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=65.05,386.98");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=97.01,459.27");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=115.60,597.25");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=16.98,389.46");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=45.94,437.88");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=136.20,452.33");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=126.19,540.07");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=118.75,650.69");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=98.50,511.00");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=61.51,416.53");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=206.25,396.71");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=93.33,329.48");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=145.46,377.46");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=17.14,335.37");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=154.87,258.10");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=29.52,287.98");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=62.53,337.62");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=33.72,437.56");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=121.61,500.29");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=64.91,539.37");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=111.83,447.56");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=117.80,437.37");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=154.29,541.48");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=87.42,563.69");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=37.27,635.79");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=16.31,465.42");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=57.15,486.90");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=208.83,415.17");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=151.23,319.56");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=167.59,387.76");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=76.60,413.04");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=124.69,341.17");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=22.69,364.16");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=123.02,282.56");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=63.40,400.91");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=84.10,455.20");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=8.22,594.82");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=0.24,476.96");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=22.39,482.22");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=196.39,500.04");
    }

}

