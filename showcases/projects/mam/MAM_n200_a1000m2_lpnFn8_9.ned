
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn8_9
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
        @display("p=57.69,943.57");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=77.26,869.29");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=75.33,931.12");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=77.83,979.43");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=126.18,976.71");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=178.94,998.62");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=173.82,978.90");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=113.22,911.68");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=189.10,885.91");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=203.57,894.99");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=262.60,901.34");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=309.57,831.09");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=397.65,851.24");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=373.32,770.69");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=351.90,790.54");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=364.45,702.48");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=321.71,703.95");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=233.16,696.24");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=219.76,742.02");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=199.03,742.79");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=201.44,827.80");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=136.27,858.79");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=55.58,816.24");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=74.06,813.29");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=149.05,912.90");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=60.30,933.66");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=139.62,868.66");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=34.20,987.68");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=59.79,996.65");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=110.56,938.73");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=212.70,968.81");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=137.65,948.46");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=92.86,949.40");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=204.58,930.84");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=273.04,894.40");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=218.35,838.68");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=390.60,799.89");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=415.13,943.30");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=432.12,692.06");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=324.79,789.94");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=320.14,631.01");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=325.10,693.82");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=254.29,655.17");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=209.22,737.57");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=126.84,769.85");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=119.90,830.15");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=215.64,858.55");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=10.78,777.83");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=39.89,820.42");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=121.16,942.93");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=79.88,883.46");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=89.78,847.82");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=78.92,945.14");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=85.63,914.13");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=175.82,941.95");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=134.26,930.06");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=176.75,963.04");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=161.52,906.24");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=181.68,954.07");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=180.18,870.67");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=331.28,885.28");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=341.34,910.54");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=468.87,802.89");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=310.67,709.29");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=356.49,748.94");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=386.32,650.13");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=278.14,706.98");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=291.80,624.18");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=239.83,731.12");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=233.66,651.45");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=195.17,847.71");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=62.11,860.18");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=30.16,864.69");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=47.93,870.90");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=93.81,989.72");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=4.37,901.81");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=58.69,888.46");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=110.33,883.79");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=112.99,956.43");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=53.91,925.42");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=194.54,961.05");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=151.58,962.98");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=172.75,893.67");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=201.45,879.50");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=205.55,917.14");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=227.66,818.89");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=291.36,830.07");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=381.85,884.66");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=361.12,779.74");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=369.79,828.30");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=432.97,712.89");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=276.10,754.36");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=175.32,685.66");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=217.30,752.39");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=262.58,712.91");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=121.48,841.37");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=147.11,849.56");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=34.88,909.54");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=63.11,762.55");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=178.48,909.10");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=12.76,877.67");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=72.17,845.22");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=60.82,974.08");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=167.57,949.20");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=87.87,980.66");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=241.46,993.99");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=220.87,980.36");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=50.74,837.48");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=151.54,861.92");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=218.86,893.40");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=318.04,922.88");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=257.62,859.19");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=348.37,854.53");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=417.53,789.00");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=446.28,764.60");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=364.62,716.81");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=286.89,747.91");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=244.40,776.77");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=254.10,675.92");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=150.41,825.38");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=272.67,767.77");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=156.13,891.31");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=63.64,779.70");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=97.99,842.01");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=119.33,869.03");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=97.81,960.24");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=106.13,853.04");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=67.71,923.58");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=116.55,985.24");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=109.88,996.39");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=229.50,933.42");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=158.70,995.33");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=62.55,901.40");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=184.28,848.64");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=284.83,905.91");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=275.63,843.80");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=324.53,814.62");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=409.43,810.72");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=403.41,727.80");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=318.94,780.63");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=406.32,776.12");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=340.13,729.54");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=219.02,693.16");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=243.92,694.72");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=209.59,726.52");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=202.19,816.80");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=196.24,902.45");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=99.77,804.56");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=156.94,800.73");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=70.24,993.16");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=48.79,938.24");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=66.88,873.29");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=76.09,967.62");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=95.48,934.73");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=141.19,983.55");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=206.34,983.40");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=110.73,967.56");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=141.73,905.55");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=221.34,804.61");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=242.91,903.79");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=262.66,880.54");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=223.44,847.97");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=417.81,897.64");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=337.05,773.72");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=331.14,862.71");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=405.16,616.68");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=350.88,706.43");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=212.48,681.78");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=137.64,765.78");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=225.18,674.92");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=204.51,854.14");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=46.13,882.70");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=125.32,746.56");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=56.78,749.40");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=158.92,852.12");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=93.52,877.65");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=33.16,846.82");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=148.26,927.34");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=4.42,931.18");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=204.50,958.16");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=224.33,999.51");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=102.06,912.46");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=46.66,905.35");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=156.45,980.36");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=194.82,948.25");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=282.33,973.77");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=251.60,846.47");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=435.95,810.94");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=410.34,856.43");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=435.09,739.94");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=404.61,692.89");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=270.79,621.35");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=150.34,718.18");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=258.06,724.29");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=223.88,731.57");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=201.01,788.71");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=56.71,828.89");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=10.80,858.04");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=88.43,889.44");
    }

}

