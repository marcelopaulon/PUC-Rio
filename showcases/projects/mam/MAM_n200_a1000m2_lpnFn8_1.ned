
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn8_1
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
        @display("p=129.91,938.32");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=143.15,925.97");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=232.45,966.53");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=215.38,958.84");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=183.49,989.07");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=225.28,990.27");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=220.07,930.51");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=194.36,849.50");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=220.43,891.08");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=170.92,857.81");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=231.18,793.11");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=292.33,822.07");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=287.29,843.18");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=288.97,870.81");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=339.04,795.48");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=365.90,883.42");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=349.41,871.38");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=337.40,932.29");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=313.73,845.49");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=310.71,857.34");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=303.81,889.81");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=284.44,985.04");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=275.16,963.99");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=228.37,880.73");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=109.43,938.58");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=64.85,969.77");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=118.54,952.13");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=255.00,996.36");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=257.37,911.43");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=205.24,990.92");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=301.70,981.02");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=186.02,922.31");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=192.37,806.31");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=211.71,882.53");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=197.61,827.59");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=259.41,846.14");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=238.94,858.01");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=299.39,832.95");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=245.73,883.24");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=354.52,778.21");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=398.46,892.22");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=367.03,921.70");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=314.37,909.36");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=291.60,759.16");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=297.16,922.23");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=279.49,859.26");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=342.09,920.93");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=224.28,902.90");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=195.18,903.46");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=129.99,905.76");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=212.65,916.40");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=125.50,999.32");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=201.89,939.98");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=262.74,890.02");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=234.04,943.18");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=256.18,966.34");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=231.74,982.54");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=227.02,838.57");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=289.35,942.24");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=159.26,855.85");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=184.41,771.49");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=280.14,826.34");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=324.72,855.31");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=228.50,860.00");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=295.86,802.90");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=287.74,894.52");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=388.14,891.44");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=318.23,987.85");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=318.50,788.07");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=319.83,875.77");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=316.86,963.68");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=271.33,975.74");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=243.84,922.11");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=166.62,803.74");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=109.99,915.85");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=190.71,948.13");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=109.62,849.03");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=278.82,901.51");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=172.87,994.44");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=145.00,937.93");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=196.61,964.70");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=180.36,941.64");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=193.66,838.83");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=245.11,910.19");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=197.88,891.48");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=162.75,842.56");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=258.53,777.16");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=268.47,813.87");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=299.77,968.17");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=363.37,786.15");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=350.68,881.46");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=411.15,929.07");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=405.72,950.69");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=371.76,780.41");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=288.39,913.08");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=305.06,903.76");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=319.93,977.63");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=274.40,992.71");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=167.21,819.81");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=91.03,891.99");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=166.63,973.99");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=186.28,977.94");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=165.26,951.58");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=255.71,955.73");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=99.43,984.24");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=261.33,986.10");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=161.00,992.16");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=242.77,816.27");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=192.27,875.92");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=210.78,869.47");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=250.96,793.02");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=389.93,830.57");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=290.90,856.87");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=305.93,958.38");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=333.46,812.25");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=365.30,836.93");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=379.77,835.04");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=391.77,997.28");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=273.22,783.24");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=330.96,907.71");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=276.62,928.37");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=284.52,997.83");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=356.42,914.80");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=235.81,832.02");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=19.00,889.39");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=134.94,974.66");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=167.62,914.45");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=305.37,929.89");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=246.19,867.06");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=102.67,972.80");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=213.42,974.47");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=210.30,932.89");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=194.66,789.67");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=254.53,872.67");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=179.47,845.62");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=171.15,753.16");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=343.28,778.30");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=251.54,858.49");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=308.04,941.78");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=330.56,711.01");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=416.86,886.50");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=347.44,859.05");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=429.60,941.48");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=310.09,820.52");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=371.75,804.32");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=247.48,935.90");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=279.20,954.60");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=331.33,964.78");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=184.56,814.44");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=119.67,886.14");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=92.92,921.29");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=144.80,910.65");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=183.32,965.75");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=244.02,962.15");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=119.67,970.02");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=138.01,987.07");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=194.94,988.93");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=168.93,830.80");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=249.40,846.12");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=236.49,806.45");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=292.87,741.92");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=318.22,766.84");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=264.17,934.94");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=273.81,887.76");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=285.71,802.98");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=423.62,817.82");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=322.34,923.01");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=344.61,952.24");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=301.03,811.94");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=302.94,869.24");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=333.40,870.11");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=366.12,996.75");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=373.32,956.54");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=290.72,883.68");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=61.41,933.71");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=52.96,998.36");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=179.67,909.59");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=244.05,983.56");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=156.34,963.69");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=161.70,925.76");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=300.83,995.66");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=182.58,861.07");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=205.81,851.10");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=234.55,903.50");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=156.46,809.75");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=221.62,781.32");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=328.12,761.53");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=277.02,876.50");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=326.56,947.22");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=335.68,893.17");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=402.43,804.63");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=349.44,891.86");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=387.44,866.65");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=347.19,753.25");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=266.49,829.66");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=251.25,829.53");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=356.40,948.53");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=288.02,960.32");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=258.09,805.07");
    }

}

