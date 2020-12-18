
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn4_3
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
        @display("p=60.76,813.77");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=90.82,813.49");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=119.34,895.62");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=112.67,909.89");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=53.40,981.66");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=44.80,972.50");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=24.31,984.63");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=7.35,949.38");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=34.73,892.66");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=74.27,973.66");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=22.11,959.38");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=20.50,942.72");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=103.03,967.61");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=121.79,962.71");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=92.00,971.58");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=130.05,954.98");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=39.95,984.75");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=58.43,915.98");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=132.88,886.09");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=159.07,925.80");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=203.18,996.59");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=237.08,959.96");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=174.67,938.00");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=238.07,926.58");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=288.39,959.50");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=259.13,979.16");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=239.27,971.91");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=263.46,899.24");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=297.92,833.65");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=227.03,824.67");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=245.28,819.48");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=230.58,852.99");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=257.18,920.59");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=277.42,931.83");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=191.56,999.65");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=147.39,915.07");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=195.38,930.86");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=216.63,933.38");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=281.35,942.83");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=341.75,886.42");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=358.47,873.70");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=363.04,954.12");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=358.71,977.31");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=330.22,948.47");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=294.51,871.94");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=279.40,824.64");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=337.13,871.43");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=326.37,908.39");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=350.10,993.02");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=54.59,837.21");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=27.73,839.09");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=75.41,787.08");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=51.44,964.11");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=75.33,869.77");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=28.52,927.35");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=42.59,952.73");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=68.44,932.91");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=47.87,932.39");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=9.82,909.45");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=154.73,993.67");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=11.34,975.76");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=59.92,995.52");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=90.43,960.08");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=119.21,934.58");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=47.09,922.15");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=138.69,873.69");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=63.37,971.13");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=105.00,879.91");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=133.73,853.30");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=158.51,960.73");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=146.03,930.45");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=142.34,939.85");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=264.34,945.94");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=264.11,988.90");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=337.28,956.02");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=229.73,936.81");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=249.00,900.31");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=319.18,830.42");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=343.63,803.82");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=246.59,786.90");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=222.03,883.28");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=167.06,867.99");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=259.54,932.61");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=269.42,852.15");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=98.19,992.66");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=182.99,956.78");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=234.51,880.09");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=173.20,979.99");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=286.55,911.34");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=349.82,916.48");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=379.05,949.47");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=387.11,925.64");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=308.74,908.75");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=373.32,994.96");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=265.70,783.84");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=304.71,789.24");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=361.13,832.37");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=371.03,899.30");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=418.25,923.67");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=166.58,886.74");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=36.90,804.96");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=103.68,838.27");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=64.26,900.50");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=173.05,923.86");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=70.25,991.23");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=74.49,960.39");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=21.15,914.83");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=3.86,962.44");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=79.31,913.04");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=88.02,985.97");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=36.30,938.22");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=14.51,849.76");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=90.26,917.78");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=136.77,997.61");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=147.61,960.29");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=135.48,973.85");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=69.43,948.78");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=45.25,898.24");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=84.61,936.40");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=235.79,866.30");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=207.83,986.00");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=228.25,917.03");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=183.77,945.27");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=252.35,860.03");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=245.04,870.87");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=255.03,953.96");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=218.70,979.28");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=279.11,857.92");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=323.85,845.16");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=229.12,812.31");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=183.65,824.06");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=169.76,824.18");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=243.94,942.34");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=207.64,957.69");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=188.45,989.67");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=102.41,827.42");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=208.29,906.04");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=167.24,948.29");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=209.66,940.85");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=375.19,971.60");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=306.65,844.76");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=314.09,943.63");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=427.13,917.74");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=313.83,981.51");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=306.32,816.43");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=340.32,861.17");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=329.09,890.70");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=398.45,962.49");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=354.64,934.88");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=112.46,852.44");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=31.65,814.59");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=93.53,792.41");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=122.38,905.44");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=112.68,945.77");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=5.69,985.61");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=89.41,948.09");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=34.10,997.85");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=12.92,933.09");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=93.84,885.71");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=85.28,893.35");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=99.78,948.31");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=28.10,950.71");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=129.11,917.11");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=113.32,999.90");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=111.59,959.87");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=162.24,984.22");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=48.41,995.78");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=102.25,862.03");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=151.19,881.32");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=197.66,835.30");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=163.52,969.57");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=268.10,964.25");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=99.23,925.35");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=214.80,968.04");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=338.91,984.15");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=236.78,986.70");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=304.23,968.63");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=179.65,878.88");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=344.25,772.93");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=164.81,858.17");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=302.86,801.15");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=218.78,848.04");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=347.84,958.27");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=197.30,894.36");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=225.68,996.92");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=185.39,837.59");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=189.67,920.32");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=199.53,945.33");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=217.67,950.68");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=346.04,846.28");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=400.27,890.17");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=305.64,922.90");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=402.91,981.07");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=373.58,925.61");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=245.90,883.51");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=284.82,805.00");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=313.04,782.57");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=395.85,865.36");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=379.46,939.45");
    }

}

