
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn4_1
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
        @display("p=39.45,952.79");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=1.70,945.97");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=25.42,976.41");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=70.34,935.34");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=20.82,860.00");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=21.70,827.01");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=57.76,848.74");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=83.78,786.06");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=65.72,837.18");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=79.81,823.14");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=84.11,837.19");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=82.02,897.82");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=43.58,902.45");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=44.43,870.31");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=4.22,820.87");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=9.01,857.48");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=32.18,766.01");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=117.04,814.41");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=190.92,861.90");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=144.46,914.90");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=164.25,912.31");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=107.99,917.47");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=91.59,860.13");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=101.68,943.81");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=115.92,858.98");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=144.05,890.82");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=178.39,801.39");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=271.63,798.06");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=221.51,768.33");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=140.22,741.91");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=154.44,832.73");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=87.99,816.87");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=181.67,775.77");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=181.42,842.55");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=209.05,896.91");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=277.13,918.58");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=284.90,945.12");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=347.25,944.44");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=359.16,935.20");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=329.17,923.11");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=319.13,996.03");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=250.52,963.12");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=187.36,970.84");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=205.10,926.00");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=146.34,942.43");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=129.02,946.25");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=93.52,963.57");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=177.04,969.84");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=193.19,901.56");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=75.16,857.22");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=70.90,887.41");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=6.35,976.58");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=42.34,942.97");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=25.49,929.68");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=56.48,812.67");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=32.75,815.90");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=91.32,870.98");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=83.49,797.01");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=111.01,836.12");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=107.99,774.17");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=45.49,826.22");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=103.12,872.77");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=126.95,895.98");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=100.54,810.53");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=4.35,733.69");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=11.83,878.86");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=10.78,834.44");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=147.45,852.67");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=174.04,872.19");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=210.85,983.63");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=139.29,833.89");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=87.76,907.76");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=60.22,933.37");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=85.79,927.56");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=79.61,811.07");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=110.25,973.42");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=206.00,784.13");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=234.16,817.24");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=231.59,762.06");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=212.87,759.34");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=174.96,832.23");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=102.41,792.86");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=149.60,785.36");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=191.49,937.57");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=243.99,887.45");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=357.87,894.78");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=278.24,860.30");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=316.98,911.75");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=394.90,945.97");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=400.53,988.37");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=351.92,955.53");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=251.65,941.99");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=166.93,996.64");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=208.67,827.81");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=168.68,964.14");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=138.75,975.79");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=49.19,959.96");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=126.68,963.45");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=189.68,819.55");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=35.63,910.51");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=41.06,927.47");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=13.28,910.12");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=71.54,952.29");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=62.55,904.48");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=57.09,946.76");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=66.66,743.05");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=147.06,870.61");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=113.57,847.50");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=50.16,741.97");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=97.43,838.51");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=0.75,869.55");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=111.65,880.11");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=52.71,883.65");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=109.62,933.44");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=30.40,799.11");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=4.15,843.36");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=55.12,784.35");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=129.58,781.77");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=210.27,771.51");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=193.81,878.91");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=222.56,912.55");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=64.38,993.02");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=171.72,898.69");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=119.41,996.55");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=156.74,891.82");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=158.95,923.92");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=134.18,809.96");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=257.79,780.26");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=238.39,683.35");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=165.94,734.25");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=129.64,884.21");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=5.36,784.38");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=236.20,778.89");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=256.46,874.40");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=227.58,887.42");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=276.51,894.05");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=321.99,935.45");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=266.20,922.57");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=379.26,956.99");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=280.93,963.55");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=271.80,972.53");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=235.85,908.88");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=266.56,953.75");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=217.04,931.16");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=169.06,851.25");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=191.62,991.91");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=89.48,952.98");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=253.27,988.66");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=198.04,910.56");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=143.56,961.98");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=47.27,858.27");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=18.74,896.15");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=46.13,983.89");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=22.29,872.70");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=57.91,828.25");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=19.55,730.99");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=74.33,751.17");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=117.57,793.77");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=42.12,782.54");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=133.25,852.02");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=125.92,915.49");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=71.01,874.32");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=59.09,893.78");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=39.69,884.76");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=32.71,736.30");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=26.36,848.50");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=48.18,717.19");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=128.64,771.44");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=266.54,858.06");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=222.91,949.97");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=254.70,908.83");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=132.91,865.15");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=76.72,762.63");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=24.97,949.58");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=114.75,759.71");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=135.53,902.35");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=103.64,828.33");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=288.86,840.99");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=218.04,846.93");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=72.26,696.20");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=233.71,831.91");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=130.57,796.99");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=145.04,804.39");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=250.69,797.04");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=226.32,868.24");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=286.57,931.41");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=339.01,930.61");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=361.19,949.91");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=319.86,884.12");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=410.42,933.98");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=316.26,968.25");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=330.15,943.01");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=202.16,989.67");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=130.28,931.05");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=63.05,968.52");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=118.15,903.51");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=115.45,890.63");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=234.40,938.04");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=200.66,944.26");
    }

}

