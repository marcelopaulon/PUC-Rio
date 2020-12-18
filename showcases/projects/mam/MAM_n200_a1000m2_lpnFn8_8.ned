
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn8_8
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
        @display("p=115.88,972.72");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=125.90,967.04");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=152.98,954.82");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=144.20,974.95");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=99.01,966.15");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=102.33,985.11");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=159.00,917.60");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=209.82,962.14");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=180.30,990.36");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=158.76,937.73");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=118.53,957.85");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=152.69,892.35");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=217.69,817.67");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=270.87,842.94");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=271.10,873.49");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=233.45,853.82");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=249.57,840.36");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=170.97,800.23");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=165.97,776.81");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=161.43,764.03");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=136.30,668.74");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=196.98,719.83");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=157.95,706.08");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=146.95,706.95");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=94.48,918.47");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=168.99,895.50");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=129.80,931.69");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=141.59,922.46");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=76.84,972.94");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=112.60,919.30");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=131.09,999.90");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=135.22,899.37");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=185.08,954.32");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=273.37,959.23");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=197.13,960.04");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=88.81,888.79");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=117.82,880.28");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=127.02,776.80");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=275.01,892.02");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=317.20,953.61");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=220.47,863.91");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=229.18,840.92");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=106.66,829.49");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=255.69,814.04");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=107.47,715.22");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=199.21,692.85");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=161.54,717.69");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=158.48,736.44");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=177.17,686.83");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=107.97,907.91");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=111.59,945.75");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=68.01,914.70");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=165.64,962.96");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=156.12,981.34");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=8.93,953.52");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=127.28,942.09");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=174.66,885.12");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=251.18,905.15");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=193.34,972.00");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=207.19,999.25");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=84.43,989.10");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=179.31,895.36");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=216.04,793.71");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=293.31,769.99");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=262.40,859.21");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=208.28,916.50");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=188.47,918.34");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=146.01,805.15");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=177.97,755.63");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=169.69,738.37");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=155.37,634.71");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=212.56,717.54");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=225.08,640.82");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=86.02,766.90");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=16.25,916.92");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=87.34,943.07");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=185.70,978.90");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=222.81,992.92");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=162.07,997.17");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=46.34,984.91");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=77.81,948.75");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=179.63,906.71");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=244.76,963.02");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=178.62,964.72");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=130.83,987.76");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=50.29,999.98");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=184.45,875.22");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=197.19,852.48");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=305.07,842.03");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=287.95,854.74");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=248.96,873.29");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=249.41,851.79");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=171.81,828.18");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=151.42,778.39");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=219.42,705.22");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=101.64,654.80");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=198.24,667.24");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=82.73,663.91");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=189.98,760.77");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=121.63,901.48");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=98.14,950.09");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=67.86,964.58");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=169.93,946.43");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=92.30,998.44");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=42.03,961.92");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=95.71,976.22");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=168.79,915.43");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=211.23,972.89");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=199.36,987.81");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=110.17,934.36");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=133.08,977.79");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=148.02,838.53");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=225.71,787.72");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=326.52,913.17");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=300.30,870.36");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=237.18,834.63");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=197.76,864.89");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=198.96,797.37");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=213.90,838.23");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=208.25,753.52");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=75.72,655.81");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=167.43,646.06");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=140.56,728.30");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=116.14,785.35");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=77.61,918.46");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=32.63,954.60");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=42.19,926.93");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=178.09,938.22");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=223.58,928.18");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=114.80,985.44");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=70.28,998.87");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=95.48,853.96");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=202.62,945.50");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=255.36,990.56");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=212.50,939.67");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=194.90,926.31");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=177.24,860.45");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=236.23,770.03");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=190.23,892.31");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=235.36,818.72");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=167.07,854.63");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=258.81,885.08");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=117.11,770.03");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=170.89,788.15");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=94.70,813.80");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=85.75,643.25");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=235.91,699.69");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=133.51,688.17");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=69.72,680.67");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=36.03,872.07");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=171.01,976.94");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=221.12,955.46");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=153.02,929.51");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=138.55,964.18");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=150.31,965.00");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=21.64,996.76");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=118.83,836.13");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=190.67,996.85");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=269.15,982.58");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=118.69,847.95");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=97.62,933.77");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=101.68,885.50");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=209.68,779.10");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=234.84,913.55");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=259.07,827.73");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=189.93,905.61");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=301.30,793.13");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=147.25,792.30");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=262.12,785.63");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=156.66,747.37");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=170.36,694.89");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=143.71,717.72");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=189.40,734.74");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=149.09,697.02");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=55.35,913.49");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=141.34,932.49");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=151.33,994.25");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=201.23,880.78");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=208.75,903.43");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=1.82,982.67");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=54.45,962.45");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=161.67,907.09");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=245.01,998.38");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=227.60,964.32");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=237.08,900.88");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=148.58,940.34");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=148.68,909.06");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=298.10,856.93");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=201.64,827.85");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=209.01,858.78");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=250.15,795.33");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=229.47,752.01");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=205.37,806.84");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=111.27,736.66");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=207.19,728.87");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=150.20,617.98");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=186.53,656.33");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=142.52,610.81");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=167.34,669.85");
    }

}

