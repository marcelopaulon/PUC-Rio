
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn8_9
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
        @display("p=152.80,881.51");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=199.56,926.88");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=191.28,917.10");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=213.07,931.03");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=225.85,940.73");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=171.15,855.76");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=167.66,826.95");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=240.78,844.55");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=214.36,895.45");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=263.13,961.79");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=357.23,937.50");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=375.95,899.31");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=323.26,890.55");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=312.89,905.75");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=279.30,904.95");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=308.46,957.80");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=234.96,915.62");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=229.91,851.16");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=202.72,867.67");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=124.28,827.86");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=143.39,898.10");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=129.13,942.90");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=80.55,986.44");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=97.04,968.22");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=21.91,917.82");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=127.42,884.55");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=209.98,945.43");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=219.40,872.78");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=263.11,904.05");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=255.13,947.89");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=156.55,829.33");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=101.36,877.07");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=216.98,832.61");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=155.62,924.17");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=241.47,984.07");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=329.24,998.87");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=398.98,857.71");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=273.77,923.95");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=286.25,840.95");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=198.38,886.02");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=366.34,965.13");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=247.66,860.61");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=283.99,815.78");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=233.76,898.90");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=110.12,868.10");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=143.18,963.85");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=136.45,889.18");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=43.83,988.79");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=80.36,973.69");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=12.95,893.20");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=93.65,866.76");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=187.54,860.73");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=157.09,996.81");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=138.38,981.19");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=291.41,959.76");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=155.76,814.44");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=131.38,773.48");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=263.77,841.25");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=221.77,887.26");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=237.15,972.35");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=366.72,908.18");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=408.63,862.76");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=314.88,868.87");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=297.12,944.63");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=337.57,832.58");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=317.17,929.10");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=264.75,943.39");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=150.46,908.43");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=228.78,869.23");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=197.73,827.42");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=85.02,920.49");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=59.76,996.04");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=88.51,903.74");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=103.79,950.69");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=162.18,910.01");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=120.27,811.55");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=190.84,961.84");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=175.95,903.85");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=180.15,955.75");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=248.93,932.96");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=224.40,919.18");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=77.56,852.87");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=286.82,763.44");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=178.55,832.52");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=244.38,950.84");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=337.23,853.14");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=414.15,843.35");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=341.72,912.08");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=283.19,858.19");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=218.06,968.15");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=269.01,895.40");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=178.37,925.41");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=189.63,762.49");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=197.90,846.52");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=129.89,802.44");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=113.89,942.34");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=144.39,929.97");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=17.27,968.23");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=104.51,975.10");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=62.44,872.21");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=67.62,916.01");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=181.75,937.22");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=127.56,848.02");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=273.93,885.63");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=234.37,878.93");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=196.09,816.70");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=146.86,867.22");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=271.60,851.78");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=237.22,827.14");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=244.30,961.18");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=414.58,911.84");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=338.07,956.25");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=353.80,867.41");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=278.19,993.26");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=327.73,931.46");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=387.81,977.73");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=195.01,946.72");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=253.08,870.31");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=226.28,841.03");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=137.33,812.38");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=187.73,878.66");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=131.96,961.57");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=163.57,962.93");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=110.11,885.92");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=95.56,846.09");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=172.39,802.92");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=247.53,908.10");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=152.96,948.47");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=181.09,983.56");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=233.92,948.05");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=103.97,804.01");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=150.74,850.58");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=221.31,813.20");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=250.12,836.81");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=253.78,983.85");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=301.66,931.54");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=350.56,994.61");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=324.93,861.56");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=303.65,849.75");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=294.02,813.76");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=327.51,962.42");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=328.38,916.88");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=281.61,801.86");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=170.59,892.89");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=109.39,922.73");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=112.17,990.66");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=124.18,866.48");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=85.04,937.17");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=84.27,875.22");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=38.49,893.00");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=223.16,908.05");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=110.93,898.47");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=203.94,917.37");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=208.78,904.49");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=280.89,949.08");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=152.35,777.02");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=226.29,762.82");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=279.20,784.53");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=223.99,956.37");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=196.06,901.77");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=366.86,869.48");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=350.85,826.91");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=343.00,844.96");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=305.93,877.16");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=277.46,827.41");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=293.44,996.15");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=262.81,923.68");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=305.20,795.90");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=297.24,841.39");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=70.42,809.25");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=177.25,878.93");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=94.20,946.13");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=27.31,995.58");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=134.37,999.32");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=79.68,947.73");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=162.97,872.08");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=252.88,893.28");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=226.67,992.34");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=160.61,940.64");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=275.89,973.46");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=179.21,758.56");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=219.27,791.65");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=263.50,861.17");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=226.46,799.42");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=353.00,925.04");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=404.49,996.98");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=394.61,809.59");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=412.81,897.37");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=381.47,921.56");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=342.35,863.26");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=315.84,941.07");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=304.63,974.96");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=175.22,777.72");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=163.87,794.46");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=105.10,786.19");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=79.98,823.73");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=128.03,976.47");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=60.79,956.76");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=56.80,969.92");
    }

}

