
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn8_0
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
        @display("p=69.19,875.24");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=49.42,957.32");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=132.43,894.74");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=43.28,927.67");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=83.15,909.19");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=83.95,985.68");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=43.44,971.02");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=79.35,965.84");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=21.73,946.01");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=64.48,863.46");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=71.89,836.88");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=0.95,848.17");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=6.45,833.01");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=16.28,818.40");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=26.69,895.50");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=9.37,881.10");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=110.99,882.05");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=139.24,806.35");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=193.84,762.73");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=287.44,739.70");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=311.58,755.04");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=328.35,821.44");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=339.74,796.20");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=321.57,794.03");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=59.00,952.65");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=81.75,857.63");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=64.18,961.34");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=185.94,906.33");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=34.68,867.49");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=119.20,921.26");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=74.63,955.90");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=13.81,966.26");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=90.16,968.30");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=9.78,938.43");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=143.64,850.37");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=15.95,892.86");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=45.76,841.97");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=8.90,773.92");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=59.83,832.90");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=40.67,855.80");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=74.67,900.41");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=122.81,875.45");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=212.67,818.87");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=188.46,753.48");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=311.49,724.05");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=331.06,754.72");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=391.27,762.36");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=350.39,793.66");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=354.65,824.38");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=85.63,879.23");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=42.77,798.74");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=45.75,884.82");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=160.90,917.08");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=115.10,986.13");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=54.66,932.94");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=143.25,940.10");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=49.31,945.75");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=34.98,909.38");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=55.31,917.22");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=137.46,831.63");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=85.51,832.85");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=29.73,937.33");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=32.51,846.31");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=29.74,812.02");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=29.22,879.91");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=25.37,828.41");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=61.79,822.81");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=161.52,813.56");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=236.62,810.04");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=256.44,789.19");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=227.20,776.39");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=290.98,797.92");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=405.47,788.97");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=380.25,835.91");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=98.79,826.55");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=92.38,818.74");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=6.09,923.30");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=116.09,947.58");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=34.23,920.85");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=173.14,905.64");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=64.82,975.22");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=34.33,987.79");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=125.26,987.38");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=113.57,935.64");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=160.90,882.19");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=92.52,840.61");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=15.48,753.33");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=54.38,900.02");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=4.29,788.26");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=97.69,945.06");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=13.75,911.42");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=111.89,972.37");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=193.27,850.64");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=251.74,809.47");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=256.97,685.45");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=295.13,848.21");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=312.15,805.11");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=369.41,823.15");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=299.45,857.75");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=113.02,871.59");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=61.54,882.48");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=67.06,942.26");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=161.44,972.94");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=35.76,958.66");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=127.01,952.35");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=97.88,991.19");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=67.43,926.33");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=127.58,973.73");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=81.90,940.05");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=161.18,871.93");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=110.82,774.53");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=66.22,852.91");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=17.27,841.20");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=55.00,806.41");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=8.62,975.32");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=19.73,862.18");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=202.28,885.59");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=137.90,724.14");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=163.74,739.67");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=377.10,748.12");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=279.89,703.62");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=349.75,740.83");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=423.95,798.57");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=271.40,791.44");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=74.52,818.43");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=133.44,924.95");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=43.67,981.86");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=185.71,932.23");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=92.00,862.06");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=110.90,899.68");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=62.36,910.06");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=54.08,981.00");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=87.61,898.99");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=29.73,972.92");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=124.63,940.48");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=86.13,810.13");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=57.09,773.41");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=47.04,819.05");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=20.84,779.55");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=3.67,899.53");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=47.29,873.82");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=114.96,806.54");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=142.68,860.57");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=221.20,727.22");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=360.71,714.37");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=292.69,689.15");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=368.82,848.42");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=286.90,775.96");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=236.42,752.36");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=155.45,903.46");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=117.73,836.76");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=127.60,998.98");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=143.21,888.93");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=54.03,998.33");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=114.21,960.40");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=85.56,951.20");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=2.69,954.31");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=42.13,894.79");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=6.40,871.35");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=107.70,796.48");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=80.14,870.64");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=21.25,873.53");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=32.86,769.45");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=5.53,800.93");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=6.13,819.63");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=103.79,865.23");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=83.03,800.26");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=120.46,786.98");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=159.71,693.59");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=314.87,745.26");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=253.85,704.49");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=325.81,843.02");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=349.76,859.50");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=335.75,775.77");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=150.60,956.14");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=72.50,785.98");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=21.74,993.26");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=210.68,902.45");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=22.72,926.00");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=74.72,979.03");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=70.22,999.07");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=101.13,976.89");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=67.20,986.05");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=32.69,948.68");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=105.29,813.49");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=55.93,848.88");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=59.62,786.94");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=72.06,772.10");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=41.71,785.76");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=63.99,892.18");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=100.18,912.76");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=124.33,822.56");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=70.49,742.98");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=224.87,685.95");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=313.19,703.12");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=341.01,696.08");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=342.87,831.22");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=354.23,769.74");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=308.36,784.27");
    }

}

