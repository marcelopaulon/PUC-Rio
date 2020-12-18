
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn12_1
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
        @display("p=93.79,949.94");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=18.01,908.66");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=19.81,923.94");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=39.57,945.66");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=36.50,957.29");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=78.96,989.00");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=139.42,909.82");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=155.26,951.25");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=184.57,906.74");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=243.27,827.65");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=300.77,813.69");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=319.72,902.17");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=317.17,956.85");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=368.31,938.92");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=369.35,955.83");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=319.90,879.73");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=50.52,941.39");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=92.94,921.59");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=44.27,895.45");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=57.55,958.28");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=56.69,893.87");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=67.65,946.54");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=64.39,997.20");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=225.50,939.54");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=144.58,972.83");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=177.51,841.52");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=285.80,743.88");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=310.53,790.75");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=355.64,946.64");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=324.80,965.71");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=422.25,864.23");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=404.44,947.05");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=356.06,915.64");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=41.54,974.51");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=106.27,947.76");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=41.34,876.46");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=12.12,979.09");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=128.10,973.59");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=73.96,961.74");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=77.81,929.74");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=154.49,931.98");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=168.72,982.68");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=170.90,992.58");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=197.30,840.35");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=366.16,835.99");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=269.21,908.55");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=249.21,904.64");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=367.05,984.31");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=332.90,974.55");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=271.51,919.50");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=107.46,857.20");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=128.52,943.73");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=0.67,876.12");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=37.27,924.70");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=111.70,892.63");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=0.75,951.76");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=139.36,994.00");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=225.58,876.62");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=182.82,941.90");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=159.46,897.89");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=267.59,803.38");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=254.03,877.37");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=296.76,872.56");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=281.10,966.10");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=441.68,930.66");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=361.90,926.14");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=240.61,928.57");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=103.93,993.02");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=162.64,912.00");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=23.34,841.27");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=52.60,984.59");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=132.70,932.87");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=25.40,997.69");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=117.73,967.34");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=161.75,868.19");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=210.23,991.14");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=124.29,883.05");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=299.28,841.97");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=359.20,750.35");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=314.84,981.65");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=326.38,949.77");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=359.44,997.89");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=443.43,889.65");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=271.27,846.01");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=169.25,852.38");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=75.83,862.14");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=50.59,849.11");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=62.01,874.40");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=89.54,959.71");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=14.53,996.41");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=87.27,937.89");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=72.66,904.16");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=175.92,932.46");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=203.38,851.15");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=190.22,791.62");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=315.74,844.85");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=286.00,930.28");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=284.80,888.88");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=373.35,965.02");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=338.31,882.61");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=336.66,922.90");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=90.78,876.59");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=111.34,956.77");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=11.81,881.46");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=81.08,852.61");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=54.14,905.21");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=90.17,995.32");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=46.05,992.36");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=145.97,919.95");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=169.77,943.25");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=190.60,975.37");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=273.74,835.10");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=274.38,779.97");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=308.25,969.06");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=308.09,937.22");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=406.79,912.56");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=379.15,944.84");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=387.59,908.33");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=40.68,845.50");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=117.87,942.03");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=8.25,943.46");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=26.37,934.12");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=104.43,977.30");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=0.64,972.34");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=0.55,935.90");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=145.78,902.07");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=132.22,954.30");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=201.58,942.02");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=242.97,855.72");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=239.10,782.34");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=298.83,913.64");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=274.42,975.04");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=345.32,992.46");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=417.03,965.20");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=351.78,833.86");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=106.25,833.01");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=93.57,887.36");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=15.38,961.28");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=61.49,916.73");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=101.72,961.78");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=53.36,974.50");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=73.81,980.27");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=88.28,908.93");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=125.50,925.28");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=214.89,886.84");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=194.19,816.53");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=239.46,755.29");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=315.35,833.73");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=296.72,927.19");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=389.71,919.39");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=418.55,950.59");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=378.08,801.56");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=127.03,851.70");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=128.11,990.56");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=9.35,862.37");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=78.46,881.57");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=104.31,870.48");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=47.33,958.45");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=92.61,977.35");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=109.42,923.22");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=181.07,871.75");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=232.98,887.98");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=234.27,804.68");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=227.78,849.18");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=279.33,993.29");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=296.38,977.37");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=317.03,923.13");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=343.91,960.84");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=370.51,878.96");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=114.15,801.33");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=50.54,926.16");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=6.47,893.33");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=6.43,906.43");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=108.82,909.94");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=28.09,963.43");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=63.69,976.05");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=182.58,852.53");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=146.39,944.99");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=224.89,822.82");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=283.60,841.46");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=325.79,749.98");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=309.67,890.62");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=349.97,884.10");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=370.08,919.28");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=382.27,874.95");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=309.46,856.40");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=171.95,894.97");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=32.97,909.17");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=6.14,824.94");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=6.04,851.36");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=18.50,942.99");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=30.64,980.28");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=143.70,961.64");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=125.41,909.46");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=154.49,981.87");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=205.63,910.23");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=279.06,808.96");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=343.32,748.54");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=259.30,950.89");
    }

}

