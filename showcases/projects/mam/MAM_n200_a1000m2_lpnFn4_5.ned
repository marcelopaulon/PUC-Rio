
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn4_5
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
        @display("p=101.28,987.00");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=119.12,964.98");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=115.50,930.50");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=36.01,925.33");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=117.29,898.52");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=108.24,968.33");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=162.84,910.53");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=218.51,910.87");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=156.03,901.08");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=93.24,909.83");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=79.88,877.91");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=75.43,964.46");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=116.20,918.13");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=189.84,851.07");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=255.21,805.71");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=244.92,800.33");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=292.30,780.72");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=313.63,826.65");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=334.28,881.94");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=310.43,958.80");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=278.99,915.63");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=342.00,869.87");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=249.32,893.62");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=259.37,900.68");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=188.26,909.04");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=179.19,917.66");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=178.42,929.43");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=144.24,951.16");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=140.91,895.43");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=107.67,858.81");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=171.27,848.20");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=156.61,854.15");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=152.00,826.05");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=198.64,748.35");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=260.89,733.85");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=189.87,789.23");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=129.68,785.12");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=120.15,802.35");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=135.00,842.90");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=67.72,813.66");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=82.46,798.07");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=61.03,787.51");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=47.73,845.12");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=25.84,846.64");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=7.97,853.61");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=65.73,844.90");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=139.46,911.98");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=126.85,922.29");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=151.84,974.63");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=94.13,873.08");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=23.91,972.66");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=62.50,987.90");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=89.15,936.77");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=0.23,846.90");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=99.00,882.21");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=138.88,927.05");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=218.65,871.42");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=259.66,823.48");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=82.97,889.00");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=50.26,871.09");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=106.10,822.04");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=99.26,951.93");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=112.98,846.36");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=256.54,910.79");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=272.16,783.63");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=237.00,758.59");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=310.26,780.79");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=312.45,879.22");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=345.74,939.31");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=386.16,992.12");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=223.78,929.76");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=258.16,842.91");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=240.76,875.07");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=281.33,986.20");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=206.76,890.42");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=268.59,896.56");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=217.14,838.96");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=216.41,957.92");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=135.78,801.13");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=117.14,835.63");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=102.35,810.42");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=172.00,795.25");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=149.77,764.81");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=225.74,774.27");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=274.02,647.84");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=183.12,694.75");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=172.92,696.27");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=108.74,802.54");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=152.20,776.39");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=44.70,820.68");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=147.48,742.52");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=49.26,774.68");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=68.74,899.53");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=9.63,817.24");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=5.44,837.76");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=65.12,910.76");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=98.28,863.11");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=119.85,997.18");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=138.22,976.85");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=76.96,857.86");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=128.29,911.81");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=119.06,975.43");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=52.61,901.94");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=114.16,955.44");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=146.22,935.15");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=41.25,968.19");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=136.61,943.21");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=235.97,912.53");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=164.31,865.16");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=134.28,965.59");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=58.10,957.91");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=21.27,882.22");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=161.62,935.92");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=202.56,819.53");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=219.02,809.34");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=235.04,842.37");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=328.44,695.20");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=228.98,807.77");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=246.37,928.72");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=325.96,975.83");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=275.66,995.72");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=348.01,849.18");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=220.94,827.48");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=235.62,929.01");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=193.60,827.31");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=181.79,945.09");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=195.96,933.47");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=136.86,861.53");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=120.08,853.53");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=99.72,838.79");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=140.90,883.47");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=141.29,851.84");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=161.95,801.65");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=249.03,678.28");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=236.77,729.98");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=207.48,853.42");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=96.57,692.07");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=130.78,814.68");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=209.33,783.94");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=95.25,820.63");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=92.97,785.84");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=43.80,796.81");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=65.88,939.38");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=46.16,834.41");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=25.17,930.43");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=59.23,855.84");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=228.75,869.07");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=125.98,933.57");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=179.49,972.21");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=92.62,927.33");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=21.39,995.40");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=152.17,944.08");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=196.09,962.05");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=40.75,998.49");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=52.40,923.23");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=121.97,942.80");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=178.86,992.36");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=211.96,863.80");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=186.99,877.58");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=39.27,870.06");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=61.09,891.85");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=1.26,951.24");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=120.85,867.18");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=209.53,827.69");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=255.34,766.58");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=325.01,832.73");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=262.11,754.75");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=236.81,780.95");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=427.15,914.27");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=291.92,972.36");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=260.16,960.10");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=368.61,891.82");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=222.77,900.67");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=276.22,943.81");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=203.33,945.66");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=184.43,867.13");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=246.89,987.45");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=159.00,958.32");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=179.35,899.71");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=110.53,877.53");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=171.36,817.76");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=168.62,895.42");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=116.63,817.13");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=192.30,840.94");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=216.10,665.58");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=208.19,796.64");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=195.40,799.35");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=143.57,719.64");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=161.06,888.40");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=64.16,834.64");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=125.27,824.53");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=18.28,793.68");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=78.80,839.06");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=23.92,909.62");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=33.51,854.46");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=118.87,769.26");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=73.40,980.81");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=153.06,913.30");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=241.09,970.97");
    }

}

