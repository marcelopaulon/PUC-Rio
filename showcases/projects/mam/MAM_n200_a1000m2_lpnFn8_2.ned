
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn8_2
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
        @display("p=58.12,967.96");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=16.85,975.78");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=8.13,992.50");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=86.32,992.05");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=146.62,990.22");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=172.57,966.18");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=193.27,999.49");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=180.18,930.40");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=106.53,884.40");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=118.19,899.44");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=133.69,900.66");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=170.89,876.72");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=262.20,894.11");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=297.71,818.97");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=231.03,843.25");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=221.12,776.68");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=161.70,755.31");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=175.03,837.55");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=180.57,787.14");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=141.86,793.79");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=116.72,792.79");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=94.72,784.14");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=96.22,802.02");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=62.08,776.69");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=130.05,930.19");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=65.88,898.04");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=99.75,942.26");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=102.88,975.95");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=66.47,973.48");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=162.59,990.85");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=208.15,873.48");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=136.73,969.98");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=123.44,908.14");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=24.75,940.12");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=48.56,871.83");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=167.82,908.61");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=213.88,911.66");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=287.80,938.70");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=342.14,883.65");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=297.60,871.33");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=232.85,791.73");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=181.87,742.52");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=148.41,814.47");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=174.56,732.38");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=131.29,875.69");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=202.65,744.01");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=60.23,848.90");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=4.71,797.96");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=85.36,767.49");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=88.54,950.79");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=108.09,936.06");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=18.77,991.34");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=67.12,924.01");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=46.53,948.70");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=198.02,918.23");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=213.63,984.20");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=140.91,980.01");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=162.28,897.26");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=153.99,849.93");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=68.94,947.41");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=184.44,820.79");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=208.49,884.75");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=267.27,932.34");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=226.32,868.21");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=208.80,935.73");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=244.85,842.66");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=120.43,695.22");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=236.59,904.08");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=188.71,798.40");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=143.54,854.11");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=111.51,857.49");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=34.24,735.84");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=56.78,716.93");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=123.85,776.79");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=69.58,884.61");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=69.42,959.37");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=11.85,924.43");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=38.41,999.72");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=77.40,926.03");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=159.26,973.61");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=139.71,938.73");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=218.11,996.41");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=194.27,942.65");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=145.09,878.26");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=141.46,950.40");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=152.34,888.99");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=188.51,863.09");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=256.28,944.01");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=243.64,741.92");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=217.95,839.54");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=247.25,788.03");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=161.68,744.20");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=149.66,786.98");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=213.35,765.56");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=138.20,704.78");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=160.94,819.39");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=97.51,769.93");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=45.15,762.72");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=78.23,727.80");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=96.60,916.17");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=49.31,983.68");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=34.09,979.10");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=84.85,977.80");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=172.57,982.20");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=209.29,951.66");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=199.58,981.96");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=109.06,964.01");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=134.03,849.28");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=136.33,886.98");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=84.62,965.36");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=35.07,905.66");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=227.78,882.11");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=277.11,954.96");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=325.19,760.85");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=165.73,781.55");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=234.35,695.72");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=119.28,722.14");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=79.81,840.06");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=234.33,821.76");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=130.97,792.36");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=53.63,813.26");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=55.22,795.37");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=75.51,816.52");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=97.79,750.04");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=125.21,804.05");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=63.00,996.97");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=19.86,964.43");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=46.47,924.45");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=167.82,943.04");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=106.56,996.39");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=265.61,973.63");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=237.99,959.45");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=87.13,903.00");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=113.85,841.76");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=99.91,954.35");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=137.87,867.40");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=181.81,972.14");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=271.29,861.21");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=309.41,827.20");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=199.79,835.03");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=280.41,783.31");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=203.96,689.63");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=245.28,888.41");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=156.35,773.98");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=170.77,821.42");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=75.68,783.16");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=33.87,718.15");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=173.45,770.40");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=123.95,710.35");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=48.21,902.76");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=86.28,935.83");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=0.67,941.03");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=28.04,970.67");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=124.05,964.96");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=193.04,952.73");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=201.44,991.84");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=124.87,939.91");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=238.42,870.11");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=124.20,886.20");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=177.13,949.10");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=179.96,889.24");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=162.83,933.32");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=293.39,928.37");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=311.71,806.39");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=150.92,900.48");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=154.48,828.65");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=117.70,822.83");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=256.67,802.44");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=193.23,785.09");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=215.47,804.40");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=115.86,875.88");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=24.53,809.00");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=82.47,791.42");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=35.35,795.15");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=56.81,911.00");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=92.59,880.74");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=6.36,967.27");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=0.75,924.28");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=148.21,933.13");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=185.27,962.48");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=260.70,962.18");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=189.88,901.93");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=242.07,945.04");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=20.73,878.39");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=96.86,928.88");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=72.17,853.27");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=257.50,876.60");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=218.82,938.97");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=370.93,784.38");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=199.07,821.10");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=231.34,772.19");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=124.25,755.37");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=217.51,860.82");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=160.52,802.95");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=169.98,809.81");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=90.38,719.96");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=59.18,872.20");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=128.09,766.08");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=68.74,762.10");
    }

}

