
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn4_4
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
        @display("p=43.61,893.51");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=28.07,953.81");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=32.44,943.56");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=52.73,961.18");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=94.99,962.28");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=171.45,983.39");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=149.34,970.39");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=134.98,893.79");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=162.46,908.03");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=181.50,938.00");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=130.86,928.79");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=174.12,906.36");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=149.03,829.64");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=156.92,845.11");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=106.16,913.45");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=150.11,903.24");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=178.01,842.42");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=194.71,937.98");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=224.44,889.93");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=222.50,970.93");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=264.43,916.81");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=255.50,852.11");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=282.11,899.83");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=337.25,894.71");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=412.56,872.64");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=421.33,861.10");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=393.99,938.05");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=450.82,873.76");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=519.90,848.53");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=488.17,858.81");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=484.70,885.52");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=445.05,845.41");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=370.91,823.49");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=383.68,817.06");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=391.24,828.81");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=347.12,850.87");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=328.25,791.11");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=341.43,771.65");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=353.90,732.54");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=323.47,721.58");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=286.34,805.27");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=202.38,813.37");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=246.63,821.70");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=186.47,825.80");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=106.33,849.23");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=73.42,857.62");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=90.90,865.38");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=59.81,784.70");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=30.66,767.04");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=101.67,873.58");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=65.14,916.62");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=80.81,891.52");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=34.68,908.40");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=63.03,946.08");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=95.60,925.95");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=150.08,943.46");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=137.98,945.98");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=220.35,924.49");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=180.71,858.83");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=209.74,950.72");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=161.22,959.56");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=191.34,892.15");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=115.89,837.17");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=171.62,875.26");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=72.42,953.57");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=164.29,815.70");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=196.10,802.76");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=161.78,978.18");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=230.09,916.00");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=219.34,983.93");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=223.93,954.56");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=312.89,803.34");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=198.18,928.11");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=409.70,826.08");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=452.99,836.65");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=427.79,912.29");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=375.46,998.33");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=547.71,883.50");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=435.88,865.59");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=460.99,881.90");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=424.84,846.36");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=494.47,829.26");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=329.81,909.36");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=366.82,807.06");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=401.70,778.66");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=317.59,930.14");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=286.11,867.84");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=375.28,747.48");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=360.18,673.79");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=313.57,732.94");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=307.49,901.82");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=232.61,840.56");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=240.56,883.70");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=190.76,788.10");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=116.06,858.04");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=56.07,842.96");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=78.35,820.31");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=32.21,723.08");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=39.14,836.25");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=41.43,874.21");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=63.66,867.18");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=21.76,910.40");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=2.83,923.54");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=67.24,975.23");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=18.05,947.02");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=179.10,967.83");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=200.03,986.30");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=134.97,795.41");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=167.77,865.98");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=205.77,870.26");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=122.76,951.72");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=170.98,956.92");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=228.35,865.48");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=157.76,876.04");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=161.03,993.26");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=147.03,991.09");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=136.27,839.89");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=268.45,954.49");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=181.33,915.18");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=270.28,998.75");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=282.38,977.86");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=265.73,889.17");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=322.35,969.83");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=345.57,871.29");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=353.34,894.21");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=459.17,781.62");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=402.26,948.69");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=455.74,931.46");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=514.87,937.71");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=399.31,850.30");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=473.26,913.95");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=381.09,830.65");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=312.45,860.88");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=454.44,794.76");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=447.66,775.08");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=329.74,828.97");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=322.20,810.64");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=387.58,839.29");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=335.72,717.05");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=337.54,803.85");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=299.93,760.64");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=208.03,884.76");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=194.55,844.18");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=136.99,740.12");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=81.53,918.61");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=68.85,792.72");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=129.07,815.41");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=73.31,805.96");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=14.47,668.67");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=167.50,832.14");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=43.93,852.05");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=88.00,906.30");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=25.87,934.28");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=83.31,993.97");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=155.06,893.36");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=116.39,911.10");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=96.13,886.50");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=181.27,814.97");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=152.98,914.54");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=245.20,904.09");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=84.87,935.15");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=204.47,901.22");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=200.84,831.22");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=96.60,786.94");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=98.33,840.86");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=84.06,964.78");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=107.70,813.21");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=121.22,986.87");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=269.04,828.23");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=284.47,930.03");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=277.63,949.32");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=261.09,796.16");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=276.71,967.32");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=313.41,956.80");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=433.54,838.29");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=420.47,892.99");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=371.61,923.40");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=445.52,912.88");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=586.08,816.91");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=473.86,863.96");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=492.95,879.08");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=530.95,880.26");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=379.67,861.55");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=310.24,842.28");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=400.51,840.12");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=356.49,916.52");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=302.96,829.05");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=356.80,777.45");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=366.78,738.89");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=280.18,755.32");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=338.82,751.57");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=177.88,796.94");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=251.61,893.66");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=159.33,754.06");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=87.14,830.11");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=132.90,878.42");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=90.30,769.31");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=78.39,787.25");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=0.74,756.22");
    }

}

