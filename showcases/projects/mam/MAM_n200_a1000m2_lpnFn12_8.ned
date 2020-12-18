
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn12_8
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
        @display("p=128.55,970.58");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=85.85,952.58");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=104.56,962.74");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=129.82,959.53");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=119.04,983.90");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=101.75,986.26");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=64.67,907.73");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=83.48,968.24");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=6.33,913.02");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=3.47,945.13");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=40.50,912.87");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=87.59,920.41");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=95.64,996.11");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=48.66,934.66");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=109.97,866.26");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=146.71,845.27");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=117.41,817.16");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=55.56,923.25");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=38.15,990.52");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=108.44,925.02");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=156.18,901.01");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=165.25,931.57");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=162.59,954.02");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=51.22,815.31");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=75.29,980.62");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=1.77,900.57");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=15.14,959.66");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=65.62,986.19");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=102.41,834.81");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=146.15,967.54");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=90.58,931.21");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=168.07,902.38");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=140.62,803.85");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=125.38,809.71");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=184.57,921.81");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=124.03,996.86");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=118.71,972.84");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=139.54,935.37");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=144.49,986.59");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=155.65,940.08");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=21.51,903.48");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=106.33,882.01");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=41.59,889.35");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=49.32,977.13");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=84.16,901.16");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=104.40,950.95");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=161.73,974.16");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=2.29,968.24");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=125.83,891.97");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=70.79,831.62");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=54.01,862.13");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=188.53,993.74");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=30.36,875.43");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=92.26,977.59");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=86.45,879.33");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=107.49,997.76");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=166.76,989.43");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=128.45,868.30");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=68.67,972.16");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=27.01,917.31");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=51.66,884.43");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=17.26,838.07");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=130.09,939.57");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=118.72,943.77");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=10.61,892.17");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=48.31,790.38");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=216.03,823.85");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=119.60,849.80");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=39.21,971.59");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=70.58,934.43");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=155.24,918.75");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=218.88,979.26");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=197.59,946.44");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=69.80,950.65");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=90.35,863.16");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=116.80,931.71");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=27.86,858.86");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=50.66,950.70");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=44.54,874.06");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=32.25,949.46");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=176.25,963.89");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=83.74,941.99");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=150.96,880.27");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=203.94,837.71");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=131.64,828.43");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=200.77,904.92");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=41.91,959.59");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=196.87,982.08");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=50.53,901.75");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=116.67,918.99");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=179.69,943.77");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=144.01,897.91");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=24.24,998.76");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=3.62,877.98");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=60.25,957.45");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=72.69,924.32");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=30.39,926.82");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=53.12,913.17");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=129.16,923.07");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=84.23,828.02");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=195.62,866.42");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=146.91,952.81");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=181.80,953.66");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=134.81,912.99");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=132.47,980.76");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=125.12,878.95");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=195.14,958.09");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=119.43,906.63");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=102.85,911.83");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=173.53,999.84");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=16.34,912.73");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=0.18,934.36");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=11.29,993.48");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=132.61,841.83");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=79.54,999.42");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=102.59,855.02");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=110.21,784.63");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=149.33,855.39");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=186.75,859.62");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=204.90,955.43");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=23.68,973.86");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=168.48,915.51");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=193.66,934.84");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=74.37,913.76");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=179.08,973.53");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=121.52,826.59");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=137.93,994.40");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=74.46,876.77");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=93.92,959.70");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=48.57,842.26");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=109.99,978.51");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=136.82,951.32");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=3.66,923.05");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=75.35,858.81");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=116.75,754.06");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=90.21,987.66");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=160.23,884.79");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=60.62,941.67");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=22.26,985.77");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=146.14,869.89");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=113.96,956.60");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=11.37,973.63");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=16.93,858.13");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=76.16,960.66");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=8.36,849.41");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=19.66,927.85");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=21.83,818.79");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=163.26,860.26");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=50.61,987.14");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=42.66,924.63");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=84.57,808.24");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=170.57,843.05");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=65.35,881.17");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=128.87,902.30");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=71.56,898.65");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=158.78,997.58");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=181.24,890.55");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=208.72,989.10");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=189.97,967.72");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=35.75,898.66");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=103.23,935.71");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=35.12,839.36");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=21.60,887.51");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=61.35,827.48");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=138.92,883.99");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=1.11,978.35");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=26.40,958.71");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=79.48,798.52");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=170.55,810.02");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=43.63,855.66");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=211.57,928.63");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=121.37,860.50");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=62.28,997.60");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=200.05,888.82");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=56.80,968.06");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=149.16,909.84");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=78.70,843.82");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=15.27,942.66");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=25.48,828.12");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=92.82,908.29");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=19.30,869.56");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=174.88,924.54");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=142.87,923.65");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=68.21,844.31");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=172.89,876.27");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=183.12,817.23");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=167.60,827.13");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=185.83,901.57");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=31.35,938.17");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=59.16,893.05");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=227.41,965.00");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=147.22,998.15");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=199.04,994.48");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=137.44,862.05");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=62.71,870.66");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=1.38,999.22");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=6.78,862.67");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=65.08,855.78");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=92.44,836.15");
    }

}

