
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn4_0
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
        @display("p=61.71,916.54");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=80.77,994.59");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=38.49,941.57");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=113.96,922.98");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=43.65,974.01");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=82.48,967.26");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=66.97,941.44");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=135.91,898.77");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=125.27,888.18");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=83.05,903.09");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=73.64,883.17");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=98.39,808.71");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=114.96,835.34");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=100.10,860.01");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=55.71,826.61");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=14.36,793.79");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=32.48,790.66");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=41.06,706.01");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=29.39,721.27");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=73.86,774.35");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=87.16,770.46");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=80.46,789.91");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=51.36,803.40");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=5.01,909.60");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=28.26,964.30");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=41.99,923.87");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=45.61,955.57");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=13.06,890.47");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=16.45,905.16");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=14.84,950.84");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=115.34,952.35");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=121.47,972.91");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=153.62,934.04");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=80.18,853.52");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=71.12,894.40");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=61.25,880.52");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=41.16,857.71");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=2.86,800.63");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=32.63,753.07");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=24.85,766.78");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=69.74,806.63");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=47.16,815.66");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=132.20,837.40");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=111.06,883.60");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=102.06,875.19");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=100.51,922.99");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=67.16,961.90");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=64.59,906.54");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=89.52,884.41");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=50.96,879.34");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=14.42,880.10");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=124.96,921.78");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=58.56,955.15");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=99.21,969.54");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=1.76,898.01");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=80.03,948.98");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=125.03,908.11");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=105.34,936.92");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=210.68,919.89");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=87.00,956.64");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=61.36,927.36");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=65.69,847.47");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=149.75,805.80");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=162.72,867.98");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=41.52,798.85");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=17.86,843.31");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=67.18,750.89");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=20.38,744.62");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=57.89,736.34");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=91.79,842.78");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=141.15,785.79");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=63.54,857.51");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=112.66,793.08");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=34.25,907.07");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=25.23,900.10");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=6.39,982.41");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=109.57,987.15");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=84.73,826.86");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=0.60,848.43");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=11.63,935.88");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=135.20,971.11");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=157.20,917.64");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=178.73,979.10");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=160.48,881.35");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=80.64,871.33");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=5.67,922.84");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=16.98,779.95");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=16.67,823.00");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=0.91,670.79");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=67.28,691.30");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=23.91,832.15");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=50.01,906.66");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=139.92,849.60");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=104.13,951.17");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=72.74,917.13");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=148.26,886.70");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=92.46,941.67");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=131.03,872.23");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=119.96,858.74");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=27.84,923.04");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=144.31,945.16");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=51.02,943.08");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=3.72,875.35");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=91.43,916.13");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=27.03,980.53");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=135.35,957.37");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=88.22,927.99");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=220.91,911.38");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=188.22,896.51");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=113.94,907.05");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=102.41,826.60");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=127.65,801.57");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=125.86,846.46");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=28.09,883.80");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=66.50,818.86");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=0.84,773.08");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=110.23,734.20");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=41.35,689.46");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=26.06,632.10");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=102.32,786.81");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=42.83,747.72");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=68.26,795.67");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=87.04,724.44");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=45.25,893.80");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=17.43,971.38");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=33.40,994.19");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=53.78,989.01");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=40.18,840.33");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=33.95,893.94");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=46.52,933.77");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=177.99,923.15");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=119.03,898.39");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=147.45,906.59");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=156.19,815.53");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=122.62,824.42");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=25.86,937.11");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=59.34,762.65");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=9.14,734.03");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=86.56,737.06");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=57.74,784.24");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=28.14,817.11");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=102.24,749.24");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=141.08,737.81");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=185.65,851.44");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=90.98,855.48");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=186.91,909.74");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=67.49,983.35");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=71.64,838.35");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=117.29,811.86");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=167.74,949.16");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=55.14,850.37");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=145.17,984.83");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=58.04,972.24");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=188.15,935.33");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=32.25,949.61");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=127.15,990.94");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=32.52,863.91");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=177.68,887.71");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=160.07,901.70");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=42.03,986.25");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=86.28,802.66");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=91.84,793.26");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=131.33,855.47");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=197.06,883.19");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=132.27,792.01");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=39.81,884.35");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=38.80,770.37");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=34.68,661.55");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=7.13,745.78");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=15.20,713.19");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=72.22,706.38");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=100.08,714.00");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=31.03,848.73");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=0.33,832.05");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=3.76,948.42");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=65.62,870.78");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=8.78,998.29");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=6.89,857.72");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=19.46,858.48");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=4.01,959.02");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=162.36,990.71");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=138.52,921.05");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=151.21,870.54");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=138.46,820.38");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=72.63,863.52");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=57.42,890.77");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=73.90,826.67");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=5.94,757.77");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=18.52,754.47");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=30.98,805.66");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=59.16,712.88");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=61.57,774.16");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=161.10,778.51");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=159.01,843.14");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=51.95,865.70");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=148.78,998.39");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=87.46,984.34");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=44.22,827.94");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=98.82,890.05");
    }

}

