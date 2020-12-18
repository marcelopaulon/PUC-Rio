
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn4_3
{
    parameters:
        @display("bgb=2000,2000;bgg=100,1,grey95;bgu=m");
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
        @display("p=59.03,876.28");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=80.58,853.13");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=56.71,844.61");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=57.68,831.65");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=23.63,844.16");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=38.72,843.78");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=59.27,919.88");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=61.16,905.89");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=121.10,915.44");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=69.07,952.80");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=0.01,988.09");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=35.07,997.90");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=38.41,980.28");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=13.30,980.33");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=68.73,997.11");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=60.42,895.73");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=26.52,897.57");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=48.01,917.96");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=46.17,879.58");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=35.80,952.75");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=53.69,965.85");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=74.41,969.46");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=71.53,939.91");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=13.20,940.46");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=106.25,987.06");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=121.15,977.07");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=106.37,961.73");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=110.17,931.67");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=135.15,897.99");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=123.74,813.71");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=164.73,837.85");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=150.33,843.40");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=144.05,925.84");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=210.15,917.59");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=305.17,905.32");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=345.22,938.78");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=347.67,921.08");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=274.56,904.62");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=209.63,855.18");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=192.79,881.03");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=220.26,828.33");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=225.80,880.33");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=198.09,821.63");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=162.10,869.88");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=80.12,890.54");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=88.53,883.78");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=137.22,916.04");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=179.27,975.37");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=138.62,934.35");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=132.87,873.49");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=115.68,875.06");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=57.22,785.28");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=47.04,899.04");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=79.64,823.08");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=68.07,855.81");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=0.28,858.90");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=13.75,836.01");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=80.03,995.26");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=173.90,948.29");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=91.65,966.09");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=30.29,969.61");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=94.29,926.98");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=54.39,999.42");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=32.49,927.36");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=14.58,959.41");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=61.21,936.51");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=92.51,848.45");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=52.24,987.01");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=50.94,954.60");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=66.54,963.23");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=97.26,955.31");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=98.02,975.24");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=35.68,915.11");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=22.18,945.10");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=104.16,997.61");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=210.33,934.93");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=116.71,967.60");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=119.57,900.70");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=136.72,887.95");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=107.34,740.23");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=120.21,855.18");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=193.47,932.20");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=160.10,950.32");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=182.11,957.38");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=274.42,935.15");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=332.68,910.17");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=328.60,920.63");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=361.85,911.89");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=252.46,902.77");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=188.60,911.53");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=247.61,855.08");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=174.42,890.21");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=274.70,804.68");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=154.85,857.73");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=119.67,829.91");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=105.10,945.74");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=98.31,889.31");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=106.73,920.54");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=167.22,997.98");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=162.97,923.25");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=135.37,819.83");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=179.00,863.14");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=38.79,832.75");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=11.16,897.22");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=112.63,819.43");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=21.22,758.24");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=44.04,854.81");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=9.78,910.67");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=128.12,926.56");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=122.79,948.87");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=17.89,930.34");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=69.17,918.18");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=53.22,976.21");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=14.64,991.27");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=142.45,986.51");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=153.35,897.79");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=13.82,864.52");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=78.53,930.19");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=22.16,880.40");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=49.64,941.58");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=93.18,998.68");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=159.17,984.43");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=105.60,877.05");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=85.33,985.36");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=64.51,984.59");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=79.63,918.91");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=161.18,880.54");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=120.66,841.21");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=203.76,884.27");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=132.38,807.22");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=144.63,868.09");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=98.04,763.38");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=210.70,985.43");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=128.94,967.59");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=333.13,966.08");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=328.99,982.16");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=388.36,905.07");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=279.00,918.49");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=219.66,904.88");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=123.41,864.79");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=241.18,826.61");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=227.42,926.53");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=200.18,843.31");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=234.77,815.94");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=67.12,869.88");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=89.49,796.97");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=161.16,935.75");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=246.33,968.98");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=195.07,861.06");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=172.28,904.34");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=89.72,914.05");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=101.31,836.26");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=137.42,839.16");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=25.59,816.69");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=89.68,869.87");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=87.13,834.71");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=103.88,847.82");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=145.73,909.05");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=144.31,952.78");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=135.71,996.36");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=41.05,964.83");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=43.26,991.68");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=120.65,989.96");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=5.11,972.36");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=83.06,945.43");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=72.54,882.44");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=69.01,818.61");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=121.07,886.37");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=7.36,800.37");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=34.30,937.47");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=34.56,885.26");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=23.90,977.31");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=6.52,921.01");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=0.26,949.49");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=153.25,961.45");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=166.98,977.14");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=151.21,997.94");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=137.94,850.09");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=84.55,904.00");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=76.02,776.51");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=179.07,797.68");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=148.64,939.20");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=53.21,929.14");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=209.48,997.56");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=291.81,919.30");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=327.92,873.54");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=325.86,894.68");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=269.88,849.98");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=259.58,775.87");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=180.39,917.39");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=207.46,833.26");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=275.50,870.59");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=208.46,801.72");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=241.55,864.33");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=67.45,843.90");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=50.53,809.67");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=138.54,971.19");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=200.73,964.48");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=184.69,899.84");
    }

}

