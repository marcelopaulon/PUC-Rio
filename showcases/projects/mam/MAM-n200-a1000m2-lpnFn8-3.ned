
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn8-3
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
        @display("p=344.00,824.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=297.07,871.59");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=219.67,883.96");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=203.85,935.40");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=210.44,946.97");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=151.04,930.93");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=233.62,903.09");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=190.30,822.45");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=244.22,850.43");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=270.63,782.73");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=227.85,812.39");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=319.08,807.47");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=349.65,850.25");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=262.08,826.03");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=352.52,863.63");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=283.67,903.56");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=313.24,860.28");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=379.12,915.89");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=313.19,913.10");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=336.78,970.46");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=316.63,969.46");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=259.38,974.92");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=254.23,949.77");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=285.84,979.07");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=223.42,959.17");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=252.62,799.99");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=353.09,883.07");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=265.52,887.71");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=197.77,885.59");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=229.79,971.32");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=96.78,928.80");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=246.89,887.77");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=203.62,828.96");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=218.33,865.34");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=330.58,827.15");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=171.31,882.27");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=339.30,802.04");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=367.37,859.56");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=245.12,823.96");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=311.37,835.68");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=328.43,937.20");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=322.86,780.31");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=385.33,897.76");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=359.28,944.83");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=328.34,962.71");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=272.52,903.62");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=214.48,926.36");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=267.52,854.22");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=312.43,998.43");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=188.91,921.38");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=338.02,835.27");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=223.09,841.08");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=233.02,880.17");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=201.71,924.49");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=170.81,914.33");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=111.92,989.39");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=212.16,857.47");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=234.02,777.08");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=217.97,903.15");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=195.23,737.46");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=154.81,794.78");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=368.30,805.91");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=386.31,870.72");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=271.20,815.39");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=311.04,870.93");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=257.59,842.15");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=301.29,925.11");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=357.35,920.03");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=385.48,970.82");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=347.97,975.21");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=395.10,952.06");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=272.82,989.40");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=267.24,921.68");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=344.36,934.73");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=288.01,966.28");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=281.06,852.84");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=277.31,838.28");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=155.71,844.69");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=184.86,937.15");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=240.63,977.49");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=78.51,919.42");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=170.04,866.19");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=229.94,798.57");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=165.37,835.28");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=321.59,753.46");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=303.13,784.36");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=260.04,731.54");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=343.77,788.44");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=279.79,759.53");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=450.45,870.79");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=261.86,907.81");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=276.62,877.41");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=323.50,997.48");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=357.66,999.51");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=360.28,988.78");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=296.76,972.44");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=266.85,961.11");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=225.76,944.45");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=372.64,998.94");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=241.07,868.23");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=426.14,832.24");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=234.08,843.53");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=194.02,897.07");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=173.36,936.97");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=226.75,932.49");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=131.62,939.05");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=155.38,857.32");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=156.85,750.08");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=291.57,819.74");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=263.10,775.80");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=148.81,828.91");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=289.54,833.29");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=436.91,872.83");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=301.87,803.88");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=412.11,928.16");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=278.62,928.60");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=318.59,886.64");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=431.54,922.03");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=391.46,880.82");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=367.57,900.39");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=340.75,960.76");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=292.58,937.35");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=284.69,990.22");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=194.91,984.07");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=189.29,963.17");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=287.22,866.66");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=294.36,855.52");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=238.78,917.91");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=203.47,965.20");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=264.43,866.33");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=145.72,906.62");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=168.45,963.48");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=226.58,739.05");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=199.56,768.96");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=317.73,695.14");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=287.52,777.27");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=303.30,765.13");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=388.78,822.23");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=188.39,763.34");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=326.32,844.74");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=338.88,855.86");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=396.94,862.37");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=296.40,947.88");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=286.68,953.52");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=401.31,983.06");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=373.85,963.63");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=317.16,935.82");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=302.67,884.01");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=333.64,899.58");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=149.96,976.06");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=305.01,823.26");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=209.49,893.04");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=159.52,905.89");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=214.35,937.64");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=194.11,998.09");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=174.34,898.30");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=234.01,823.33");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=266.71,765.18");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=319.57,820.12");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=279.11,790.42");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=130.97,792.59");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=335.17,744.27");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=414.42,817.54");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=257.91,757.34");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=358.13,831.74");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=289.45,911.85");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=378.80,929.10");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=394.44,934.63");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=338.19,883.94");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=303.86,988.69");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=309.11,957.94");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=224.49,915.19");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=251.64,921.82");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=277.75,914.78");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=191.89,945.65");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=362.74,749.31");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=288.67,884.35");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=248.99,788.79");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=138.76,958.63");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=254.72,894.48");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=126.34,915.94");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=242.16,835.76");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=175.03,806.63");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=254.72,873.80");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=255.76,700.74");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=197.92,858.11");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=325.16,796.50");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=351.30,906.25");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=261.06,811.37");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=382.71,851.28");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=249.16,994.88");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=393.52,852.08");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=393.03,989.63");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=341.98,867.16");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=353.00,956.33");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=327.60,925.60");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=166.70,944.77");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=176.88,926.49");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=234.86,988.98");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=257.42,940.10");
    }

}

