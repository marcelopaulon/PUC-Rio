
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn4_0
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
        @display("p=23.40,895.04");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=13.63,870.40");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=39.68,943.70");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=36.59,933.18");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=61.29,921.12");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=42.29,870.35");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=4.01,933.13");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=9.33,949.29");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=16.04,940.93");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=2.20,921.47");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=20.34,980.27");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=47.28,910.60");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=34.59,969.21");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=100.78,886.19");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=176.49,823.92");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=133.90,877.00");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=138.37,865.97");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=87.97,883.51");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=126.29,822.14");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=68.78,865.65");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=50.85,823.88");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=68.63,782.56");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=105.51,870.86");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=77.49,854.37");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=29.24,922.80");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=59.81,885.62");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=84.51,961.13");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=89.09,940.15");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=28.53,944.64");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=17.11,961.59");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=52.86,990.08");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=112.94,945.55");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=124.96,946.58");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=117.60,989.63");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=33.36,981.51");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=34.13,825.17");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=56.83,789.04");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=83.49,812.57");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=166.81,798.27");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=213.74,861.70");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=139.99,924.65");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=149.05,943.55");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=184.19,954.78");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=155.07,999.81");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=112.00,926.77");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=183.89,860.48");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=34.15,955.51");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=71.35,923.12");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=147.06,963.81");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=81.44,910.10");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=21.71,882.06");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=1.19,821.42");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=67.32,945.22");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=49.82,840.13");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=52.61,930.99");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=25.75,804.17");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=17.64,993.57");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=5.36,962.60");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=8.79,910.79");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=66.02,853.39");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=70.05,910.03");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=67.76,978.00");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=48.57,949.56");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=83.72,836.16");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=99.95,861.33");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=205.45,855.10");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=105.06,937.65");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=168.84,901.78");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=102.26,811.72");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=157.44,858.55");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=118.49,858.51");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=41.32,800.63");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=40.22,903.33");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=51.05,860.92");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=114.93,893.66");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=34.00,892.31");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=157.82,962.52");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=9.78,981.99");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=100.04,955.31");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=66.67,995.90");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=48.47,971.91");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=112.55,958.69");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=72.55,884.50");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=196.11,967.49");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=37.85,995.87");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=94.81,790.44");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=73.67,791.62");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=37.51,758.75");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=235.26,782.70");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=305.69,842.63");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=218.28,966.38");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=159.54,884.58");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=157.32,896.33");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=222.63,977.26");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=130.02,892.25");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=225.01,809.87");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=106.04,987.01");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=76.80,931.72");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=100.08,966.85");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=19.77,950.99");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=40.08,884.12");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=57.31,847.66");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=53.88,899.39");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=134.02,935.54");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=102.97,832.68");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=70.08,801.19");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=6.50,993.54");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=88.85,995.27");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=38.62,844.93");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=67.90,898.67");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=100.27,976.99");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=27.33,852.68");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=95.14,924.05");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=7.31,887.71");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=156.71,825.29");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=123.72,781.26");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=120.97,875.58");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=0.14,898.82");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=124.36,840.82");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=69.44,771.76");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=60.17,834.71");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=16.25,827.29");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=112.53,842.83");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=133.17,793.67");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=43.88,920.08");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=136.66,851.72");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=120.11,908.38");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=75.36,951.81");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=24.32,935.11");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=11.94,901.01");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=44.45,961.30");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=136.90,977.35");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=154.08,932.45");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=181.72,996.52");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=78.16,992.20");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=84.67,865.44");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=50.99,813.50");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=86.19,779.35");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=253.68,805.93");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=266.34,933.90");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=150.00,917.28");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=191.30,932.97");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=217.70,998.68");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=85.05,976.99");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=80.00,895.95");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=175.12,851.89");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=123.99,969.83");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=57.75,963.27");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=235.88,998.71");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=97.97,911.61");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=17.43,840.88");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=14.11,856.18");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=131.01,960.39");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=70.18,961.09");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=1.52,861.83");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=60.93,873.24");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=3.91,848.72");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=84.81,924.18");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=49.04,879.53");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=31.07,911.81");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=100.33,999.03");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=59.85,910.36");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=49.61,999.56");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=188.69,899.65");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=165.09,840.00");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=139.25,885.80");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=194.62,845.54");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=31.57,877.08");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=154.16,837.24");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=71.38,832.52");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=49.32,765.16");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=24.28,750.96");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=183.31,872.60");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=174.50,835.57");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=4.31,876.05");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=31.85,794.26");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=66.67,932.34");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=88.35,951.48");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=32.35,866.60");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=17.49,921.54");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=135.03,994.65");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=195.70,979.19");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=214.13,983.30");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=197.53,991.52");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=24.56,969.11");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=18.93,783.16");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=8.12,769.10");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=73.04,819.54");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=95.59,800.99");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=179.72,770.62");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=220.78,942.07");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=183.43,975.68");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=167.59,943.37");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=186.86,985.28");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=146.77,874.98");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=246.46,930.91");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=43.73,983.10");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=143.79,899.68");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=153.38,972.56");
    }

}

