
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn4_2
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
        @display("p=106.86,909.25");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=92.69,886.41");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=51.94,834.86");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=54.31,803.50");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=52.18,791.27");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=65.64,783.40");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=58.59,775.24");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=47.42,766.24");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=12.36,802.41");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=3.41,812.14");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=4.23,893.99");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=3.10,861.52");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=0.50,798.64");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=58.00,876.82");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=65.89,900.95");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=73.30,807.84");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=58.74,819.16");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=53.54,848.05");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=29.18,812.28");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=9.24,834.09");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=77.00,884.72");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=81.25,903.92");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=161.11,951.41");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=129.35,975.74");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=181.66,970.61");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=202.89,924.24");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=287.19,926.25");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=317.45,909.29");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=320.96,891.64");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=324.61,919.48");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=332.88,965.02");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=247.30,986.36");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=257.57,948.62");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=318.97,940.71");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=286.74,863.93");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=297.45,856.91");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=366.16,920.31");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=300.22,878.66");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=200.31,891.73");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=218.65,927.60");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=147.25,953.20");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=158.41,858.35");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=145.77,884.82");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=163.46,790.98");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=174.77,809.58");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=205.80,752.69");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=172.64,665.49");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=241.67,687.23");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=215.98,592.22");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=51.79,929.89");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=70.43,916.91");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=162.72,930.81");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=78.95,857.25");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=95.63,791.80");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=32.85,784.37");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=11.54,723.38");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=26.67,705.56");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=20.01,842.68");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=23.64,759.27");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=8.36,910.45");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=22.31,803.40");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=28.38,868.80");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=66.82,837.73");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=14.04,964.26");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=41.87,971.79");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=98.39,814.73");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=40.54,897.40");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=33.96,937.26");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=16.23,819.54");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=19.95,896.75");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=59.55,859.00");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=90.56,863.62");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=111.60,928.47");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=48.73,964.45");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=176.78,897.34");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=199.49,957.55");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=230.11,965.32");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=403.70,952.75");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=303.59,891.16");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=340.35,895.94");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=330.54,983.26");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=180.24,914.66");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=276.25,888.35");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=296.37,910.17");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=295.28,802.39");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=288.28,839.03");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=347.80,941.74");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=266.79,811.15");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=269.53,855.72");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=234.91,855.97");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=133.62,931.90");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=154.67,848.11");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=112.44,879.26");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=184.72,747.96");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=157.10,899.02");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=166.15,704.68");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=219.97,702.70");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=220.83,763.15");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=196.23,606.77");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=188.84,929.75");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=57.11,920.23");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=108.49,942.47");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=127.07,807.99");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=126.18,857.74");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=80.96,775.95");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=33.58,726.70");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=14.05,790.34");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=89.06,752.91");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=30.06,827.35");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=14.00,741.76");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=37.86,856.73");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=32.49,797.19");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=3.69,700.22");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=121.83,931.94");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=42.84,912.40");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=86.29,800.92");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=41.36,831.72");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=93.58,829.85");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=84.11,742.35");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=83.66,821.60");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=66.73,884.63");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=6.75,877.51");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=225.92,941.45");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=105.60,981.43");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=234.34,916.78");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=155.60,919.34");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=299.29,929.64");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=361.50,884.79");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=261.18,919.51");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=338.12,881.65");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=322.78,997.48");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=257.69,896.87");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=295.84,998.89");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=314.33,920.54");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=243.53,843.07");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=309.13,854.93");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=328.29,900.32");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=346.95,822.16");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=185.88,817.84");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=208.08,950.23");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=151.82,986.51");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=174.36,827.37");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=131.48,844.03");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=109.41,731.09");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=206.49,829.34");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=240.69,738.96");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=208.19,684.30");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=163.48,629.20");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=180.35,570.66");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=128.14,886.43");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=89.06,938.07");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=104.87,822.77");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=32.09,846.84");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=59.78,704.23");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=42.77,746.40");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=130.73,825.00");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=7.22,768.02");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=66.91,761.72");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=40.98,885.98");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=40.14,812.23");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=4.83,950.51");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=80.37,920.66");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=6.16,752.82");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=21.57,913.95");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=52.60,894.01");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=124.48,874.97");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=99.54,801.92");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=35.74,773.80");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=67.77,823.86");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=2.75,932.74");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=147.97,929.33");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=10.27,848.68");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=173.38,981.28");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=217.36,992.30");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=191.11,966.26");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=120.54,897.73");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=284.19,951.81");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=333.82,839.27");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=366.44,865.04");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=383.38,852.07");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=339.79,957.37");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=282.57,968.88");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=204.42,866.81");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=361.62,970.78");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=225.17,861.90");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=359.66,846.20");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=358.76,932.47");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=330.28,805.47");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=173.46,864.06");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=180.36,847.72");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=164.10,975.44");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=161.47,888.40");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=120.52,829.67");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=109.09,765.58");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=192.12,716.50");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=152.71,828.39");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=174.25,677.83");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=202.22,625.25");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=244.25,574.55");
    }

}

