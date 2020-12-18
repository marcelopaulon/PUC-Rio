
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn8_1
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
        @display("p=73.37,883.51");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=68.09,866.53");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=36.88,852.14");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=1.61,909.10");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=86.22,961.54");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=75.17,986.17");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=11.10,914.45");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=61.68,929.55");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=60.74,909.09");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=58.32,895.68");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=96.98,857.00");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=112.03,856.98");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=112.83,871.65");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=124.53,872.38");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=137.99,939.12");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=60.95,943.36");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=25.26,877.27");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=36.13,897.31");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=81.74,902.04");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=150.23,972.35");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=230.09,946.08");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=194.48,867.46");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=243.65,865.04");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=287.37,809.60");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=160.41,935.88");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=32.72,861.84");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=130.83,815.94");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=47.23,932.31");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=75.18,919.61");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=88.20,948.66");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=112.04,994.08");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=25.32,908.25");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=123.44,936.58");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=55.85,971.59");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=149.54,856.04");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=135.47,784.63");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=89.47,867.19");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=168.88,898.10");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=212.23,836.49");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=206.88,959.21");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=15.81,891.05");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=54.48,850.37");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=79.63,847.81");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=101.71,922.14");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=180.67,967.19");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=241.14,935.00");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=249.68,924.75");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=171.56,846.48");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=218.17,769.12");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=111.09,895.40");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=92.19,908.91");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=86.74,877.97");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=1.00,926.15");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=4.51,979.90");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=24.93,918.70");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=86.74,990.50");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=38.97,917.68");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=130.73,982.54");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=5.20,967.25");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=17.12,980.69");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=52.21,836.52");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=137.18,927.63");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=179.76,830.96");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=134.99,869.81");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=160.70,908.14");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=85.66,929.90");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=16.60,936.75");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=26.52,964.75");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=64.70,977.32");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=190.51,980.11");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=258.75,968.14");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=193.56,916.62");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=333.06,899.42");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=373.37,769.06");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=104.13,939.61");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=31.69,931.76");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=30.35,804.32");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=33.97,884.25");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=51.65,886.44");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=118.70,954.69");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=100.38,976.81");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=98.18,962.74");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=4.65,951.41");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=67.08,819.06");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=78.49,939.44");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=100.28,866.79");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=154.52,800.18");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=133.79,913.63");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=95.90,885.79");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=200.24,879.51");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=77.96,974.02");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=33.66,972.73");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=101.69,832.40");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=73.55,838.65");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=143.13,958.07");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=238.14,959.62");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=197.94,831.40");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=253.70,830.97");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=268.56,897.36");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=124.55,908.25");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=117.44,837.93");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=160.79,831.94");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=42.99,874.69");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=14.16,878.75");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=170.08,968.69");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=119.41,977.76");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=73.79,894.30");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=75.28,962.19");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=115.30,915.76");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=31.46,842.22");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=92.41,823.49");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=187.22,879.87");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=147.29,945.17");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=143.96,896.88");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=172.16,926.46");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=52.13,991.04");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=19.15,868.79");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=54.52,815.53");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=130.98,827.36");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=180.55,996.49");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=288.39,946.30");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=185.17,817.50");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=245.29,840.58");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=315.29,836.34");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=142.73,837.59");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=62.33,884.38");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=40.63,832.58");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=84.93,799.43");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=25.95,890.86");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=38.22,990.79");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=25.34,951.85");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=50.90,906.10");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=7.25,991.95");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=88.12,979.94");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=118.01,886.91");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=71.36,760.58");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=161.24,864.17");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=109.62,822.65");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=144.34,908.09");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=124.06,925.47");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=55.25,959.32");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=64.33,856.57");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=39.66,955.43");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=60.25,805.44");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=129.74,995.88");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=206.01,993.12");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=271.35,841.68");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=272.38,864.49");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=262.43,745.93");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=135.10,844.40");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=55.91,869.72");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=5.12,825.82");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=44.41,815.02");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=34.18,818.51");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=73.25,908.95");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=42.50,999.94");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=72.11,951.42");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=5.78,893.80");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=82.36,888.32");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=124.03,859.96");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=123.82,773.41");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=99.44,786.32");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=179.14,895.03");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=210.45,887.17");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=108.56,880.73");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=155.88,923.40");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=62.94,791.14");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=14.89,851.48");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=14.37,837.62");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=177.74,984.01");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=230.61,935.31");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=205.71,857.41");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=267.54,884.58");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=237.01,855.28");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=145.97,870.53");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=104.83,951.19");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=25.52,832.78");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=10.24,861.58");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=33.46,943.38");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=148.47,982.28");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=14.73,957.25");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=0.33,873.28");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=2.37,851.36");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=16.85,996.67");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=45.29,803.48");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=105.16,844.21");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=171.52,808.56");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=187.31,851.44");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=74.31,803.31");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=218.02,988.77");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=4.05,938.01");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=9.71,789.77");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=79.68,811.95");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=137.68,970.17");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=193.73,959.62");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=248.53,947.25");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=207.58,825.82");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=227.18,906.21");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=316.66,893.99");
    }

}

