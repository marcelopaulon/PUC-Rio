
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn8_6
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
        @display("p=123.69,862.56");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=84.61,805.61");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=90.22,842.58");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=51.41,800.11");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=81.70,780.59");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=93.94,826.30");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=21.33,834.03");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=26.21,774.63");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=25.72,741.53");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=15.07,740.03");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=49.69,822.31");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=109.35,743.11");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=97.39,807.91");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=130.10,774.99");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=154.19,834.32");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=214.33,864.69");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=239.67,883.57");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=240.50,835.82");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=171.35,861.26");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=176.19,903.96");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=138.68,871.03");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=178.55,844.11");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=203.25,781.35");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=200.98,855.07");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=141.60,921.09");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=158.16,900.85");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=22.02,795.44");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=131.11,844.60");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=117.79,789.76");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=124.62,719.16");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=152.72,820.60");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=65.60,774.81");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=105.92,766.22");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=2.01,798.84");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=11.57,700.49");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=96.35,787.16");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=96.43,747.44");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=54.32,843.81");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=124.56,684.45");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=150.33,869.66");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=276.45,821.31");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=326.94,930.65");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=297.77,806.09");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=265.35,877.61");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=234.09,871.37");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=189.32,805.72");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=166.12,821.50");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=227.07,814.66");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=169.18,810.29");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=115.89,930.34");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=121.04,910.61");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=40.31,745.54");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=78.85,836.17");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=132.57,827.78");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=36.94,699.21");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=127.56,808.02");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=61.20,794.50");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=85.77,729.15");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=43.63,814.12");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=37.63,722.32");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=54.38,753.06");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=169.87,787.03");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=41.09,790.95");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=175.34,747.60");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=184.29,739.41");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=212.79,875.95");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=290.24,870.22");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=229.17,845.30");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=227.54,833.02");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=79.37,882.79");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=106.93,816.56");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=166.87,839.14");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=236.10,706.88");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=286.70,831.28");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=195.01,885.51");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=27.69,852.43");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=57.33,732.41");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=63.60,815.93");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=77.56,748.37");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=36.23,764.96");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=143.28,839.81");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=32.77,796.53");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=44.12,780.37");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=111.94,719.05");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=43.32,687.02");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=25.90,881.30");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=100.66,674.02");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=138.09,882.87");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=78.48,715.54");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=120.26,817.56");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=177.63,887.40");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=140.80,896.60");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=316.37,859.86");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=169.60,873.87");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=141.17,960.11");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=118.66,882.92");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=231.11,781.75");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=234.09,792.71");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=150.45,781.33");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=70.43,890.27");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=70.92,932.44");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=45.91,831.79");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=40.68,842.32");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=70.76,702.93");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=116.35,771.58");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=28.33,809.36");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=11.42,807.59");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=29.19,755.10");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=27.66,720.43");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=74.56,789.60");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=16.59,846.93");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=89.72,692.53");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=157.12,807.24");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=141.99,686.22");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=132.16,792.75");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=219.58,949.60");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=263.45,919.92");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=186.62,836.67");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=120.40,840.07");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=180.98,934.51");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=149.21,881.69");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=176.30,759.37");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=259.77,742.73");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=184.13,870.57");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=83.67,929.38");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=109.98,868.53");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=72.44,801.93");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=41.51,913.68");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=65.69,868.64");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=163.37,755.91");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=100.38,852.37");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=11.18,833.45");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=0.82,730.50");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=50.18,764.33");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=14.18,667.07");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=121.35,851.16");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=172.96,769.91");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=142.56,765.17");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=200.07,748.25");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=156.71,915.99");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=197.89,869.45");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=217.89,928.08");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=240.90,900.52");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=255.62,823.21");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=169.17,916.64");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=75.78,818.76");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=217.15,907.53");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=160.21,746.27");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=138.41,805.86");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=14.84,868.23");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=106.38,956.57");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=74.49,762.03");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=108.05,837.51");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=43.64,860.59");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=123.19,704.38");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=55.23,867.85");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=68.86,914.65");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=1.85,772.04");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=2.82,652.02");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=60.33,691.18");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=110.38,799.06");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=87.26,706.52");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=160.28,848.59");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=70.73,843.30");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=168.39,928.39");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=221.34,795.93");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=255.15,901.10");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=257.49,834.12");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=190.13,926.12");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=247.38,943.98");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=207.94,800.08");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=127.71,889.13");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=241.02,747.79");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=171.63,799.38");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=117.43,893.93");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=130.59,904.85");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=62.28,833.50");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=44.42,931.24");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=85.26,791.41");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=129.30,694.02");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=36.25,873.48");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=89.80,853.48");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=12.04,791.65");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=5.86,745.18");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=15.17,648.88");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=1.33,891.85");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=106.13,776.47");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=14.80,768.53");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=126.00,748.51");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=160.62,773.99");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=290.44,891.00");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=254.74,881.85");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=243.86,800.27");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=251.24,859.57");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=157.29,860.93");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=206.49,924.78");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=266.43,816.63");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=292.49,819.10");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=202.58,905.39");
    }

}

