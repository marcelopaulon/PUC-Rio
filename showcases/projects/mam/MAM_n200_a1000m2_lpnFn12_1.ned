
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn12_1
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
        @display("p=8.26,885.95");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=7.53,805.52");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=4.74,767.64");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=19.54,810.53");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=14.47,822.75");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=89.98,872.18");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=146.54,849.28");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=178.30,858.88");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=131.80,874.02");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=124.58,805.32");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=173.45,831.60");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=172.21,913.04");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=154.00,913.13");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=165.44,893.00");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=168.47,936.96");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=216.58,973.60");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=127.78,983.68");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=19.19,883.72");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=25.79,835.99");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=66.26,839.95");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=41.87,729.52");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=24.50,867.19");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=84.51,927.05");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=112.50,842.33");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=148.22,928.41");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=175.68,947.82");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=77.28,863.16");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=202.85,787.04");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=166.23,955.33");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=193.81,852.87");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=191.02,838.88");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=213.21,903.32");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=191.99,986.62");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=130.87,829.99");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=55.95,905.68");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=33.81,776.04");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=91.41,744.54");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=19.42,796.99");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=10.04,845.01");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=86.93,825.05");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=111.42,791.57");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=187.00,916.51");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=114.72,863.01");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=131.21,857.41");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=190.72,771.90");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=136.57,887.91");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=138.28,931.48");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=129.11,904.95");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=228.12,905.90");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=189.80,930.26");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=95.41,955.61");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=65.84,853.96");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=0.08,796.30");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=40.28,783.72");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=3.02,821.39");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=42.59,811.64");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=73.38,878.15");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=135.08,842.04");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=115.46,819.51");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=69.93,889.84");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=143.71,739.66");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=200.06,867.75");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=235.06,968.78");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=183.84,959.93");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=154.41,895.97");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=74.57,956.63");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=246.27,907.16");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=85.49,901.26");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=72.77,909.10");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=23.47,851.71");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=84.78,809.43");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=26.01,905.48");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=60.93,805.63");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=94.65,881.51");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=126.80,778.81");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=168.13,849.73");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=177.11,873.82");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=160.38,768.08");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=149.80,866.09");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=137.98,950.31");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=114.15,905.44");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=147.32,985.61");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=185.76,975.21");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=209.41,953.22");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=72.85,967.74");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=57.45,833.13");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=93.90,776.28");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=8.19,753.99");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=78.07,780.66");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=53.77,819.13");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=103.44,966.31");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=64.66,866.19");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=177.32,891.52");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=148.66,816.44");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=176.60,745.31");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=113.78,775.17");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=168.66,923.99");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=144.82,906.32");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=247.84,936.64");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=156.51,940.32");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=224.27,948.45");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=48.93,972.20");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=59.41,895.87");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=31.71,721.83");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=64.96,728.61");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=19.13,756.83");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=82.77,850.65");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=161.66,864.86");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=218.67,873.01");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=210.36,780.32");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=99.84,812.25");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=154.39,882.47");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=164.91,824.89");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=239.42,948.18");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=123.82,949.19");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=139.66,968.88");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=189.90,875.64");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=248.70,996.09");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=121.15,836.05");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=31.06,877.58");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=19.46,779.62");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=69.60,818.33");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=28.28,803.49");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=28.80,819.44");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=114.88,883.12");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=148.25,838.56");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=181.17,821.31");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=119.30,930.06");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=101.55,744.86");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=229.21,871.45");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=202.67,913.94");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=218.24,856.25");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=100.34,860.27");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=246.34,986.16");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=202.22,967.01");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=48.87,889.46");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=1.13,871.98");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=24.15,710.38");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=71.73,718.43");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=93.15,796.64");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=43.33,900.41");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=136.29,785.35");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=228.62,806.26");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=99.06,833.64");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=105.88,891.05");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=122.89,765.25");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=191.20,818.01");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=198.76,923.50");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=198.34,941.06");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=155.81,807.10");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=233.58,925.42");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=181.90,992.99");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=104.79,949.50");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=37.08,794.49");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=63.13,768.94");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=26.48,686.49");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=49.59,763.04");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=34.08,889.50");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=6.01,912.47");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=104.87,915.71");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=138.78,774.27");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=176.76,796.58");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=153.29,721.96");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=210.35,747.19");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=242.39,866.59");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=244.14,918.03");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=208.66,819.64");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=159.23,987.19");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=260.74,896.65");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=143.90,875.90");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=33.75,969.90");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=51.57,800.00");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=45.97,718.25");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=89.96,861.55");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=35.75,831.68");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=69.00,789.57");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=154.51,778.39");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=215.70,833.67");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=39.92,843.06");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=144.88,758.62");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=193.65,807.85");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=224.36,841.89");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=111.67,994.62");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=170.40,990.50");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=208.24,935.34");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=283.90,959.79");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=50.39,921.81");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=56.51,882.34");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=54.24,846.05");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=19.18,728.06");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=55.77,787.69");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=31.32,739.59");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=101.22,870.85");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=171.62,782.02");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=181.30,785.66");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=74.73,830.47");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=104.35,780.71");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=242.93,775.00");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=84.14,889.77");
    }

}

