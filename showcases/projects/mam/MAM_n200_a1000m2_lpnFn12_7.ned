
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn12_7
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
        @display("p=112.59,905.13");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=89.21,959.67");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=123.36,908.75");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=131.02,889.56");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=163.22,930.55");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=227.95,995.22");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=277.00,987.25");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=309.97,909.38");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=310.49,861.77");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=345.00,838.45");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=403.72,846.23");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=375.17,882.49");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=373.80,897.70");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=402.57,903.17");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=366.97,984.77");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=382.57,982.97");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=23.01,912.60");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=85.08,984.87");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=164.51,966.20");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=121.61,955.26");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=137.73,881.98");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=131.21,925.18");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=253.54,978.11");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=205.54,951.97");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=268.22,858.78");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=284.53,925.51");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=372.79,789.62");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=410.33,814.27");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=349.98,958.36");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=389.23,962.10");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=416.09,889.61");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=332.87,952.99");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=414.70,979.56");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=115.50,891.67");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=64.49,888.12");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=54.03,894.99");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=184.29,946.95");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=148.78,896.83");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=196.08,891.44");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=173.29,995.15");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=299.97,995.09");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=295.82,921.52");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=395.07,895.96");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=386.30,836.84");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=454.56,858.49");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=427.81,927.93");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=320.32,847.45");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=410.36,992.69");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=442.74,928.37");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=405.01,970.98");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=111.37,919.11");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=44.00,942.49");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=45.27,961.10");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=125.86,970.76");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=108.43,939.56");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=195.15,918.10");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=223.98,942.05");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=334.20,910.23");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=305.39,894.07");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=297.26,878.17");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=407.53,881.63");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=410.47,854.30");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=391.99,880.65");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=291.26,935.70");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=336.25,866.35");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=388.29,905.61");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=414.79,924.66");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=14.72,892.02");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=45.91,973.76");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=107.09,964.77");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=70.20,979.95");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=115.28,875.67");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=211.76,930.88");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=182.69,961.16");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=277.28,951.09");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=256.94,910.23");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=395.37,821.67");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=333.79,834.37");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=420.64,877.96");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=402.09,947.10");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=355.58,881.52");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=345.69,906.13");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=441.83,970.29");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=326.31,999.17");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=158.33,883.61");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=113.23,835.85");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=62.59,958.94");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=140.20,871.12");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=150.61,868.09");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=150.41,942.96");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=146.45,981.48");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=256.79,989.13");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=291.70,850.87");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=326.49,823.20");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=368.99,840.10");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=452.66,794.42");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=383.19,822.66");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=328.09,879.18");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=498.92,902.13");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=319.87,982.93");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=367.52,974.26");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=62.28,935.74");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=132.55,942.54");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=24.74,954.28");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=113.10,845.89");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=58.66,905.50");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=218.07,916.84");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=259.67,947.30");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=247.89,957.76");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=267.18,899.49");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=298.58,827.78");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=394.74,855.10");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=436.04,863.35");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=303.17,938.45");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=373.14,861.44");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=381.18,925.15");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=363.44,959.50");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=302.69,949.80");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=101.78,885.78");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=44.95,879.48");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=52.68,989.30");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=175.01,895.92");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=46.47,851.38");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=182.45,929.21");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=229.37,956.93");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=263.40,927.84");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=255.67,887.76");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=353.03,892.27");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=356.78,759.99");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=414.80,828.32");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=350.07,873.09");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=318.40,922.26");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=383.46,870.80");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=367.01,915.04");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=359.57,944.13");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=169.59,884.37");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=101.36,986.59");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=64.44,999.34");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=199.97,880.97");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=95.60,841.34");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=252.00,934.53");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=210.66,979.10");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=264.94,979.36");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=342.11,888.57");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=235.43,817.46");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=300.42,767.34");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=375.71,799.37");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=438.66,874.83");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=466.54,904.31");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=418.17,966.74");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=387.62,997.91");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=355.77,930.80");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=74.96,873.47");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=184.45,876.97");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=38.69,912.88");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=158.53,994.94");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=60.82,843.53");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=214.07,857.84");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=236.75,925.99");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=208.62,962.17");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=309.88,847.31");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=312.58,823.58");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=333.60,844.58");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=314.20,878.70");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=394.64,928.56");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=363.13,895.87");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=434.90,842.25");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=379.60,955.18");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=461.91,974.37");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=6.82,901.10");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=147.27,927.47");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=92.00,940.16");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=182.01,841.29");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=121.50,828.63");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=168.39,981.81");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=190.59,993.39");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=223.29,968.61");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=286.47,946.54");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=243.91,792.90");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=286.95,801.26");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=445.15,847.71");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=368.73,851.63");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=363.78,805.47");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=460.24,827.10");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=348.28,970.08");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=432.90,974.80");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=129.33,813.70");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=110.75,952.40");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=95.72,972.58");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=134.32,851.74");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=154.04,855.79");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=120.41,864.78");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=272.64,937.13");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=236.54,967.22");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=289.79,991.00");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=270.22,919.50");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=278.38,842.10");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=389.21,783.53");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=401.29,797.91");
    }

}

