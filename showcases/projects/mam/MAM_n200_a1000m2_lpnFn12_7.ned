
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn12_7
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
        @display("p=94.47,909.95");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=58.28,986.86");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=93.10,994.54");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=27.51,995.70");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=3.14,903.70");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=3.58,835.26");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=72.30,905.50");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=144.51,851.70");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=106.62,861.38");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=150.26,792.01");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=151.35,802.57");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=177.80,837.55");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=98.30,851.23");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=71.92,863.51");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=29.28,844.36");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=84.79,782.24");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=90.53,938.63");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=61.72,939.55");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=73.95,980.08");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=125.04,989.16");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=37.80,979.58");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=33.98,855.73");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=75.45,837.71");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=125.52,959.33");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=195.30,824.18");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=109.14,776.16");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=118.41,798.55");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=137.05,704.85");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=202.15,775.30");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=124.70,837.92");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=85.69,853.75");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=17.60,775.88");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=58.02,775.17");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=104.63,885.28");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=147.74,907.76");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=50.29,972.73");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=103.21,996.38");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=23.46,946.58");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=31.07,918.98");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=63.48,834.73");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=84.51,970.98");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=195.61,844.41");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=38.65,830.82");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=73.51,795.40");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=144.66,880.41");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=253.93,822.27");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=91.03,832.33");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=59.92,886.49");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=70.74,756.64");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=93.48,763.55");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=145.78,920.26");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=129.05,920.06");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=62.14,959.10");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=14.38,956.99");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=38.72,931.93");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=52.14,958.57");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=30.88,767.56");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=40.41,874.94");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=116.25,819.73");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=7.31,865.68");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=138.34,790.97");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=159.78,899.95");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=176.17,801.76");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=97.03,798.28");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=66.02,805.43");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=41.30,843.30");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=71.99,783.12");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=109.70,914.40");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=130.15,885.41");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=7.98,973.42");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=148.42,984.22");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=42.75,951.97");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=1.75,892.89");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=39.69,818.68");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=62.00,869.64");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=141.06,833.84");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=18.69,870.15");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=205.86,813.15");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=171.64,857.84");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=259.08,851.41");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=73.47,915.67");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=111.63,877.78");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=80.93,888.11");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=74.23,825.94");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=108.30,981.14");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=82.59,906.83");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=45.55,989.36");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=81.44,993.94");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=11.15,999.57");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=22.18,931.32");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=23.24,897.76");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=25.48,861.86");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=111.99,788.12");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=159.78,779.34");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=80.20,806.99");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=153.73,754.93");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=240.21,850.23");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=39.00,885.67");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=167.15,832.99");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=43.87,863.54");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=108.34,743.67");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=97.94,870.94");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=103.54,924.82");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=4.30,951.00");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=69.42,925.93");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=77.27,946.36");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=44.84,914.05");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=6.26,817.86");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=6.18,846.20");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=143.65,823.84");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=85.45,819.78");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=154.61,818.59");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=180.05,760.42");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=194.62,906.73");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=140.71,768.39");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=66.23,854.88");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=19.79,820.58");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=110.28,763.19");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=121.24,941.33");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=61.43,915.77");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=0.41,990.24");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=183.49,977.15");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=90.79,960.28");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=25.24,887.29");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=26.76,827.84");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=74.10,876.65");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=215.39,919.65");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=129.62,854.13");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=189.81,780.83");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=133.79,812.45");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=223.54,897.30");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=85.08,872.84");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=93.01,881.95");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=32.44,794.68");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=94.19,688.12");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=8.52,875.83");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=116.49,952.75");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=69.16,996.52");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=102.18,937.92");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=22.51,978.98");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=20.52,916.73");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=54.35,858.08");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=131.86,905.56");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=178.93,911.69");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=55.59,899.94");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=150.44,772.83");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=118.17,756.74");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=154.09,876.59");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=53.23,846.34");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=108.25,835.74");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=50.83,825.94");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=36.24,805.45");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=163.06,966.85");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=177.23,894.90");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=50.26,942.16");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=160.34,947.94");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=120.19,977.82");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=42.49,898.04");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=28.89,784.74");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=161.90,923.86");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=117.00,849.70");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=56.73,813.35");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=95.75,809.58");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=230.89,743.26");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=166.75,843.34");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=187.79,835.17");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=134.28,872.99");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=22.89,809.56");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=85.77,742.89");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=141.07,958.91");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=122.84,869.49");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=26.50,963.80");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=173.27,988.54");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=13.73,940.86");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=81.73,928.96");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=11.60,809.04");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=12.42,898.93");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=132.28,761.71");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=54.83,788.94");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=223.33,756.01");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=175.24,818.71");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=249.49,855.52");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=92.02,893.59");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=3.70,935.40");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=111.48,809.41");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=179.90,785.95");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=76.55,962.26");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=138.59,935.49");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=55.60,997.38");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=143.93,997.43");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=105.27,955.13");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=5.42,920.21");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=41.60,777.57");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=109.43,965.31");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=116.15,905.26");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=140.02,893.86");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=121.91,774.22");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=220.87,770.80");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=216.61,832.58");
    }

}

