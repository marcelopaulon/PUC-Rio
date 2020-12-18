
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn8_4
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
        @display("p=98.40,933.41");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=96.18,946.70");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=139.43,949.10");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=149.10,934.24");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=212.09,957.45");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=183.82,887.42");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=185.19,848.25");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=212.21,888.82");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=278.10,823.96");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=300.51,851.44");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=264.66,798.03");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=226.73,792.02");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=169.76,868.03");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=201.78,881.38");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=190.67,916.13");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=182.56,959.66");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=179.59,970.29");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=160.56,961.20");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=140.55,960.37");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=95.84,917.61");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=71.93,908.70");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=17.19,859.13");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=6.65,877.61");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=0.94,918.97");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=166.88,831.48");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=55.13,966.42");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=24.07,960.39");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=150.00,945.99");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=163.03,937.42");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=214.89,994.09");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=237.73,910.09");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=177.93,836.24");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=226.51,935.65");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=281.28,769.86");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=295.77,883.23");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=257.83,808.67");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=305.31,756.69");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=153.06,858.20");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=269.30,853.54");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=276.99,939.93");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=152.93,978.32");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=167.08,986.34");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=191.52,952.70");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=154.12,919.72");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=83.02,912.34");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=118.97,862.44");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=61.19,890.82");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=95.88,871.78");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=35.97,928.39");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=24.17,876.65");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=66.39,879.37");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=74.67,956.97");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=147.06,886.84");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=180.77,929.30");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=207.59,966.39");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=222.44,817.97");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=250.64,851.03");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=227.39,862.72");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=203.79,869.64");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=310.04,857.07");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=278.28,836.07");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=243.75,871.06");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=91.41,906.74");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=251.51,961.56");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=180.82,947.14");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=119.58,967.71");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=89.99,960.88");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=193.77,971.05");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=191.31,999.50");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=148.01,969.57");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=37.90,867.50");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=34.26,850.33");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=8.26,887.58");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=49.00,941.86");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=76.46,851.09");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=82.24,984.24");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=90.32,971.13");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=125.27,981.36");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=223.22,974.72");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=247.37,996.76");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=99.19,844.84");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=108.95,820.03");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=244.07,930.60");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=261.30,826.06");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=282.27,850.24");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=312.98,721.96");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=181.37,797.87");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=172.83,883.03");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=244.54,835.96");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=258.74,928.78");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=137.46,976.71");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=118.06,939.85");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=219.89,918.20");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=171.12,944.45");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=108.94,853.24");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=134.64,864.09");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=17.25,936.85");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=62.26,901.62");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=74.16,972.96");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=117.24,905.94");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=32.08,953.66");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=84.49,888.48");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=107.00,911.59");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=161.01,947.56");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=217.33,946.79");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=233.54,815.92");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=173.86,811.96");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=206.13,833.14");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=214.58,800.54");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=352.85,767.61");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=264.95,707.92");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=217.02,744.08");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=83.96,863.43");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=283.86,915.84");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=230.93,882.08");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=249.81,905.00");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=124.30,888.16");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=113.47,889.40");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=185.39,985.85");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=170.09,916.77");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=135.86,898.23");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=66.54,929.68");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=50.30,812.29");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=54.96,859.89");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=125.84,929.11");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=40.77,959.85");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=138.46,927.68");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=147.92,998.81");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=68.69,946.76");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=197.45,939.86");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=191.13,863.34");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=239.39,777.60");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=288.61,899.31");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=292.12,808.81");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=370.47,841.30");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=224.49,737.33");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=202.51,735.24");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=186.33,829.02");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=236.07,891.28");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=246.23,945.97");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=251.49,889.14");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=117.47,955.75");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=209.99,932.94");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=99.98,987.42");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=81.98,929.71");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=2.78,941.41");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=5.59,848.39");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=14.80,900.35");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=83.49,945.70");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=56.78,916.87");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=50.34,930.98");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=46.94,891.58");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=122.35,917.27");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=225.06,993.36");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=302.49,987.65");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=274.68,867.65");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=248.91,786.86");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=274.94,888.42");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=326.82,853.26");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=293.42,860.05");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=262.54,894.79");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=307.95,766.69");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=129.95,837.43");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=128.84,854.69");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=194.03,927.07");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=189.03,877.62");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=161.93,998.42");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=127.71,954.80");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=118.54,997.89");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=134.04,910.53");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=89.39,836.56");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=50.44,787.41");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=81.53,898.60");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=7.61,927.21");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=58.18,841.28");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=113.38,924.26");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=25.12,898.56");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=56.28,998.31");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=109.87,979.13");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=230.56,950.57");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=105.12,877.36");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=197.59,785.66");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=271.74,922.45");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=201.42,854.56");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=337.21,854.52");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=243.96,824.73");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=266.83,720.19");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=107.18,836.37");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=146.33,839.47");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=218.63,983.84");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=155.57,905.44");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=171.97,954.44");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=205.59,985.94");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=138.77,994.64");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=35.57,904.83");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=96.49,887.02");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=69.92,795.13");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=19.40,975.19");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=10.59,985.46");
    }

}

