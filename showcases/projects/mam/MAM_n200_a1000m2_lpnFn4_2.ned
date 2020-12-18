
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn4_2
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
        @display("p=104.99,917.76");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=98.05,845.58");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=58.59,923.61");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=58.54,965.63");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=18.17,893.01");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=5.28,909.86");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=66.46,951.30");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=21.53,957.78");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=4.06,983.18");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=19.69,930.21");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=34.95,999.59");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=41.30,977.15");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=52.21,890.41");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=41.39,874.56");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=24.13,826.26");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=88.91,805.62");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=62.86,831.01");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=66.21,808.23");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=25.04,790.06");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=4.55,854.69");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=7.41,842.76");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=8.27,782.24");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=47.01,863.01");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=39.96,846.62");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=36.54,818.19");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=46.84,776.20");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=15.26,767.62");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=51.01,843.21");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=27.00,876.25");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=65.56,819.02");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=42.08,809.53");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=17.86,842.06");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=62.69,846.89");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=58.96,879.13");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=77.89,945.74");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=51.25,938.37");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=89.53,911.70");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=51.66,986.98");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=11.89,950.39");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=30.35,972.27");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=119.99,934.63");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=119.45,893.55");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=142.25,985.90");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=109.59,970.67");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=88.00,962.60");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=99.84,995.21");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=73.41,958.96");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=135.48,971.65");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=143.44,962.07");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=151.88,838.46");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=119.44,910.62");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=102.28,812.92");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=11.14,937.06");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=90.11,938.45");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=7.29,881.12");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=45.99,899.77");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=57.18,866.86");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=55.72,954.40");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=1.76,960.02");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=39.16,928.91");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=19.34,997.49");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=82.42,990.87");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=95.32,825.16");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=125.86,864.20");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=52.33,761.18");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=125.46,754.36");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=50.88,735.67");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=100.19,791.57");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=85.34,763.03");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=32.45,865.09");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=15.02,853.01");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=5.09,720.24");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=72.80,769.25");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=79.81,891.89");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=85.21,791.12");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=67.89,709.18");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=49.21,689.46");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=81.30,857.39");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=41.33,831.86");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=110.98,803.43");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=4.13,764.41");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=27.78,907.43");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=67.24,860.13");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=76.86,878.20");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=97.61,951.53");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=40.34,913.75");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=158.88,886.89");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=129.87,949.38");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=86.17,902.16");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=68.57,988.67");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=87.89,871.86");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=121.46,836.58");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=209.40,984.74");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=150.95,974.82");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=148.76,997.18");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=29.00,940.96");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=135.27,913.99");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=110.92,939.66");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=176.39,953.58");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=158.58,908.15");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=37.03,962.21");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=116.25,849.13");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=98.10,885.12");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=70.83,896.44");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=2.45,924.41");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=27.87,924.17");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=67.15,935.10");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=18.56,974.20");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=22.50,983.55");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=14.05,921.24");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=98.31,974.73");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=51.93,914.16");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=96.88,925.36");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=31.30,840.19");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=13.20,820.90");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=78.70,811.97");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=70.42,756.77");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=107.83,826.27");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=77.25,748.39");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=99.98,873.49");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=7.15,869.31");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=21.08,729.68");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=40.39,766.96");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=27.96,854.69");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=107.86,759.92");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=75.75,822.66");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=5.03,747.77");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=61.44,749.07");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=9.46,804.24");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=58.88,775.03");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=75.23,719.49");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=3.58,828.98");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=122.23,780.68");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=127.82,848.56");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=176.97,932.53");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=41.36,939.94");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=48.93,996.91");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=62.07,980.95");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=0.89,939.78");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=32.59,985.66");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=212.47,901.10");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=213.91,922.05");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=175.05,991.92");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=157.18,949.35");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=86.81,979.76");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=136.31,935.32");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=83.27,920.15");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=121.63,980.72");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=179.66,943.14");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=197.93,895.97");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=188.16,865.07");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=73.28,833.03");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=2.35,997.32");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=120.79,999.78");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=35.38,898.74");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=33.30,888.35");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=32.24,950.66");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=44.69,951.85");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=6.84,971.74");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=59.64,904.25");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=101.98,964.12");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=121.97,922.75");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=135.72,892.65");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=87.97,836.39");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=44.65,744.94");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=103.01,861.95");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=33.77,740.79");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=109.43,782.67");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=52.42,796.49");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=2.74,791.47");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=66.87,795.61");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=52.33,823.34");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=108.26,839.76");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=129.25,801.91");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=119.06,825.68");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=142.47,773.98");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=60.11,727.07");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=119.51,792.27");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=125.58,885.34");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=133.59,785.95");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=37.82,796.73");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=76.33,906.58");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=75.51,846.98");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=22.27,864.01");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=150.14,895.82");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=16.18,873.81");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=146.22,871.74");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=63.23,999.48");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=67.92,917.19");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=46.81,965.51");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=152.01,936.94");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=161.90,968.72");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=163.69,979.74");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=185.68,975.28");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=77.36,970.37");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=167.92,942.94");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=157.07,918.97");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=212.29,934.19");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=203.74,950.63");
    }

}

