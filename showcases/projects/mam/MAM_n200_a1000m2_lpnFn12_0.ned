
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn12_0
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
        @display("p=66.78,877.63");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=21.41,885.09");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=51.35,922.47");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=20.48,945.27");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=105.26,925.47");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=88.66,941.39");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=101.22,856.91");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=162.93,820.09");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=222.03,750.41");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=217.43,794.27");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=206.33,754.55");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=140.76,826.51");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=126.66,786.66");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=140.39,787.25");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=112.65,738.05");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=159.91,663.31");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=85.17,875.80");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=151.78,837.55");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=50.08,970.93");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=113.42,931.41");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=77.92,900.54");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=60.21,914.02");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=133.27,884.38");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=115.55,831.75");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=167.51,789.82");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=200.63,675.94");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=263.51,748.32");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=212.86,826.88");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=155.52,895.31");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=96.02,789.31");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=86.05,788.55");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=155.43,753.67");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=132.96,677.14");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=86.35,893.85");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=66.77,896.47");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=0.69,916.95");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=85.33,931.46");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=35.50,928.59");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=53.91,875.05");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=53.48,954.49");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=113.88,945.97");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=246.05,810.92");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=196.28,709.69");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=208.03,774.08");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=132.51,769.72");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=47.49,815.75");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=181.41,799.33");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=63.01,740.99");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=72.13,690.58");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=98.69,732.46");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=179.02,955.85");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=46.19,942.11");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=45.52,853.69");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=52.64,863.25");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=47.74,988.67");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=150.66,886.37");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=155.00,978.93");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=87.92,829.95");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=129.16,811.59");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=221.03,770.68");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=165.70,809.16");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=185.48,677.35");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=102.14,814.23");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=181.97,824.14");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=163.71,697.60");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=142.10,729.23");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=130.58,594.17");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=131.92,928.37");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=78.00,885.19");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=20.05,812.23");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=15.91,969.25");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=22.74,934.09");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=191.84,879.52");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=7.79,888.02");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=111.23,914.72");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=204.25,846.08");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=232.26,721.48");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=190.28,773.47");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=175.95,694.23");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=63.07,766.43");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=88.01,799.03");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=64.37,818.23");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=58.83,716.53");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=169.90,636.09");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=149.32,853.42");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=91.34,906.64");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=40.56,901.92");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=100.29,954.15");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=27.96,989.07");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=29.64,869.40");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=14.76,993.40");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=77.25,821.27");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=231.98,874.73");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=194.10,694.10");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=217.68,814.54");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=185.60,710.72");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=169.83,747.68");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=206.27,734.43");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=190.37,812.60");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=86.84,703.15");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=188.76,751.63");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=89.29,853.54");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=43.30,888.33");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=112.05,875.41");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=66.12,940.08");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=29.86,955.92");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=55.81,979.93");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=89.12,959.71");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=71.75,843.86");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=219.73,853.96");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=229.58,761.79");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=191.43,789.67");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=251.47,679.82");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=146.50,867.45");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=176.07,778.51");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=151.36,807.18");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=105.37,723.90");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=195.31,642.58");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=128.25,857.70");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=67.17,793.15");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=99.41,934.71");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=59.98,930.83");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=70.14,955.53");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=135.23,982.88");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=78.06,995.37");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=55.01,848.13");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=179.86,811.93");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=267.48,663.68");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=131.00,747.00");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=263.40,736.01");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=204.23,812.64");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=32.33,784.99");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=139.22,845.00");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=161.32,715.45");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=179.29,651.42");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=110.32,997.44");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=31.99,911.87");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=32.85,892.37");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=77.72,917.50");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=92.40,921.90");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=129.80,968.73");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=70.82,974.28");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=94.83,871.05");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=158.97,739.34");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=164.35,726.53");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=285.52,864.54");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=246.33,747.63");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=122.53,771.25");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=115.75,854.07");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=113.65,713.19");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=119.15,806.64");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=145.93,678.97");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=128.10,874.87");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=12.75,860.45");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=0.07,870.53");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=50.34,905.24");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=39.64,981.69");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=145.57,926.65");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=170.12,944.99");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=180.73,902.20");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=196.83,831.30");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=210.53,744.81");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=261.90,781.30");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=186.18,834.63");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=222.18,877.62");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=155.69,781.98");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=117.05,762.29");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=39.67,707.81");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=145.31,693.81");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=113.69,864.91");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=52.27,783.87");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=10.20,872.15");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=21.02,909.41");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=55.75,886.14");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=12.39,952.26");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=23.73,976.03");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=116.60,900.30");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=172.99,848.52");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=221.94,784.21");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=245.91,778.18");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=197.64,803.21");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=87.08,840.28");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=196.87,761.48");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=236.83,773.01");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=68.90,782.62");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=242.41,705.99");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=143.64,967.29");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=76.30,943.01");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=90.73,816.24");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=99.48,889.61");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=10.49,978.94");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=61.45,988.46");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=95.06,967.88");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=130.19,918.27");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=102.90,839.69");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=136.10,756.13");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=271.40,722.00");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=201.86,658.31");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=159.99,799.32");
    }

}

