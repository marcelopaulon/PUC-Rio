
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn12_2
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
        @display("p=152.73,952.05");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=121.35,992.81");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=153.03,974.36");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=136.63,956.81");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=173.84,887.60");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=161.14,855.55");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=135.95,847.57");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=115.94,775.89");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=107.79,782.83");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=145.76,818.66");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=201.45,845.72");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=223.07,912.46");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=145.74,867.47");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=180.27,816.02");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=254.72,778.59");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=256.54,791.75");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=88.61,856.58");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=173.33,999.10");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=81.70,979.14");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=110.00,885.98");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=167.89,963.94");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=96.66,929.77");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=128.07,896.25");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=173.09,774.08");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=191.18,805.97");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=144.65,807.97");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=160.62,883.99");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=228.01,838.04");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=189.56,895.22");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=113.65,925.34");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=116.84,843.11");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=236.28,695.64");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=232.60,755.04");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=111.02,951.32");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=78.48,989.34");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=59.06,955.88");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=173.18,949.01");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=102.41,983.56");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=157.87,906.06");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=141.56,934.69");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=216.89,795.56");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=119.21,807.47");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=91.06,772.30");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=90.62,871.69");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=207.52,816.37");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=232.07,944.33");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=126.89,885.70");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=234.60,869.53");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=295.72,734.38");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=188.97,821.50");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=36.67,878.99");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=114.39,873.58");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=127.19,981.18");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=137.92,982.15");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=143.43,947.94");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=203.51,883.58");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=219.04,894.24");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=79.29,817.03");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=98.61,763.41");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=65.71,784.49");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=169.77,820.56");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=252.40,819.71");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=217.94,949.50");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=242.58,888.70");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=227.91,855.99");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=225.17,737.64");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=246.43,766.21");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=73.83,971.78");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=183.77,961.83");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=158.79,927.02");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=129.43,999.77");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=180.07,941.51");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=174.74,873.94");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=152.36,842.67");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=101.51,809.91");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=110.03,800.54");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=58.62,768.89");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=161.12,830.50");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=233.18,798.79");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=312.74,891.17");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=167.64,913.40");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=125.48,733.66");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=244.14,797.84");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=302.15,717.83");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=168.56,840.30");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=202.79,984.68");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=171.96,987.32");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=97.49,954.99");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=101.64,971.68");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=224.35,872.17");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=137.33,859.29");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=146.22,832.37");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=50.44,740.92");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=108.73,709.99");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=115.94,904.08");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=255.41,906.48");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=256.57,973.00");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=198.25,904.90");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=149.44,853.16");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=284.32,784.10");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=279.64,848.01");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=79.27,903.24");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=188.83,926.29");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=130.88,928.62");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=193.82,917.28");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=95.38,944.93");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=240.30,918.76");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=208.26,784.53");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=98.91,849.48");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=74.67,862.08");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=120.22,827.88");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=147.38,898.22");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=193.26,879.32");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=153.44,915.85");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=139.24,907.30");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=190.49,741.69");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=327.37,771.96");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=290.87,840.08");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=166.71,934.56");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=228.18,992.60");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=194.69,995.09");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=171.41,901.20");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=123.47,867.48");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=128.86,909.85");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=181.89,834.89");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=211.33,865.34");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=130.90,778.24");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=94.51,748.75");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=230.40,785.52");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=183.00,782.95");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=312.90,936.12");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=72.80,918.38");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=153.23,759.06");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=247.24,841.11");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=263.71,872.70");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=97.34,884.23");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=154.50,993.01");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=143.50,920.00");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=75.73,939.61");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=81.52,926.80");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=215.02,904.22");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=167.56,790.40");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=129.63,838.30");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=54.40,783.17");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=97.18,723.26");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=82.50,764.74");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=214.46,841.54");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=239.67,934.76");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=139.22,768.66");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=120.84,794.44");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=197.19,760.31");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=261.36,763.39");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=44.27,849.86");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=64.32,938.24");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=165.08,976.15");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=176.01,975.07");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=130.08,965.12");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=245.72,955.04");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=101.08,835.68");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=79.40,827.75");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=200.85,728.69");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=69.68,824.49");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=147.46,777.50");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=168.59,807.15");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=230.92,892.96");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=206.28,924.34");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=213.52,761.12");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=334.43,744.18");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=317.16,747.33");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=10.26,895.17");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=130.72,946.89");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=79.08,953.82");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=117.35,972.22");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=43.17,954.14");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=164.86,872.20");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=186.71,850.57");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=92.35,791.03");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=42.14,728.14");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=151.10,735.42");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=157.66,815.39");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=110.86,853.09");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=270.58,907.05");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=66.86,893.49");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=103.48,863.28");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=272.46,811.03");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=268.90,790.96");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=90.20,968.95");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=196.54,952.37");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=27.17,979.84");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=70.42,982.32");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=227.81,963.89");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=179.72,860.27");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=90.69,830.10");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=127.41,815.38");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=66.85,838.43");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=91.13,811.24");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=184.68,885.66");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=248.78,880.42");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=188.13,976.10");
    }

}

