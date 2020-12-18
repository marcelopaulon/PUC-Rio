
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn4_5
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
        @display("p=68.41,901.25");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=97.32,839.63");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=132.23,887.55");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=139.47,865.49");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=206.38,842.99");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=114.91,840.13");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=114.25,893.84");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=143.02,935.60");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=91.16,857.31");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=113.01,869.26");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=175.75,811.97");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=193.13,881.41");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=200.67,819.08");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=251.80,827.29");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=286.67,867.42");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=271.52,860.47");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=192.27,856.27");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=226.20,854.49");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=269.11,877.94");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=283.25,914.97");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=299.23,912.57");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=267.02,897.99");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=321.04,885.46");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=283.95,972.41");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=287.90,988.52");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=259.87,937.63");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=241.71,880.38");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=197.75,869.53");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=222.13,888.82");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=202.29,929.48");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=225.54,920.72");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=192.71,955.50");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=156.49,938.59");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=135.12,959.63");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=200.18,979.03");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=216.41,993.34");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=194.48,996.74");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=186.24,947.22");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=102.99,953.72");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=107.43,964.11");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=89.72,991.27");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=118.67,977.41");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=36.34,827.22");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=39.61,793.05");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=20.55,784.69");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=19.97,795.88");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=62.56,821.57");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=44.63,812.03");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=25.82,856.76");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=46.44,917.82");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=145.51,857.15");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=87.02,835.44");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=150.48,894.51");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=176.79,839.60");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=189.41,826.16");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=147.81,783.52");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=175.29,851.03");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=152.77,922.02");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=103.26,859.27");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=101.91,883.68");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=163.13,804.01");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=192.55,914.18");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=174.40,906.64");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=257.42,791.78");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=269.48,827.93");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=288.44,840.05");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=240.75,789.85");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=210.29,863.29");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=276.75,945.31");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=254.06,850.05");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=268.72,840.92");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=207.87,884.72");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=330.56,901.73");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=252.95,950.30");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=354.68,998.58");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=244.91,907.46");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=301.70,846.51");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=229.99,800.24");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=164.08,846.92");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=207.34,943.27");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=210.83,912.91");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=219.05,970.97");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=173.93,956.81");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=125.25,996.03");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=277.27,997.70");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=176.62,923.78");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=202.67,904.54");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=225.47,936.86");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=78.10,934.83");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=95.53,946.32");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=124.09,955.86");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=142.73,914.43");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=118.80,802.56");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=61.38,753.58");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=11.21,757.86");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=66.55,839.15");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=53.19,848.17");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=22.99,832.73");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=27.72,814.99");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=19.04,873.87");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=41.18,901.76");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=169.16,879.13");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=89.42,877.80");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=123.84,916.80");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=149.98,875.89");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=149.59,802.39");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=146.49,947.59");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=234.02,904.17");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=113.98,881.32");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=36.80,844.22");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=240.83,848.66");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=169.77,789.34");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=159.43,775.67");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=231.27,830.85");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=310.29,867.99");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=200.09,891.07");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=164.05,946.97");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=227.21,875.15");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=232.49,865.25");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=249.87,864.00");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=293.26,925.80");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=293.47,819.08");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=265.51,961.83");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=210.96,962.54");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=383.40,971.23");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=257.81,911.23");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=254.25,896.28");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=185.36,864.74");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=226.90,950.34");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=174.83,894.54");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=290.29,953.21");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=234.48,979.82");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=79.84,912.30");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=149.76,998.63");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=132.78,978.42");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=294.85,969.22");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=194.25,939.66");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=213.39,931.76");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=25.31,938.03");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=66.03,964.05");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=92.27,971.54");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=103.13,975.26");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=33.09,803.12");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=49.02,727.64");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=46.65,762.66");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=100.79,821.96");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=69.17,804.50");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=75.70,761.01");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=58.63,868.74");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=51.54,935.19");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=35.26,962.41");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=158.74,866.68");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=172.89,937.18");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=137.84,827.89");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=185.12,790.70");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=118.50,826.82");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=132.83,925.39");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=70.51,875.05");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=76.53,850.21");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=101.46,792.57");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=163.32,729.80");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=276.24,889.05");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=190.37,895.99");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=257.85,731.27");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=375.63,867.75");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=277.67,786.71");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=127.96,839.75");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=215.28,804.89");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=298.26,795.43");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=272.38,911.95");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=333.19,943.40");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=279.44,925.14");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=413.80,880.59");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=317.69,935.08");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=321.81,953.39");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=283.25,855.64");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=327.35,840.51");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=179.82,884.85");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=123.45,900.66");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=279.84,956.49");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=158.31,886.10");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=214.05,980.12");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=95.22,913.24");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=158.75,990.84");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=148.50,958.08");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=269.49,986.51");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=161.72,973.17");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=110.19,989.32");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=172.63,972.11");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=51.66,970.29");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=49.20,955.81");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=85.58,944.47");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=103.54,778.93");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=30.72,737.52");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=65.51,784.00");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=55.86,808.97");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=1.88,771.49");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=0.33,819.20");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=7.56,840.29");
    }

}

