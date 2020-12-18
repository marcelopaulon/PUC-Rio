
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn12_9
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
        @display("p=78.96,966.38");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=74.04,985.74");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=12.60,947.98");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=99.02,928.96");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=62.00,880.25");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=52.04,976.70");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=65.34,965.66");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=57.21,937.47");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=60.28,994.26");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=100.31,958.52");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=144.79,936.70");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=198.77,921.97");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=160.28,895.58");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=114.35,846.95");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=80.13,808.66");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=84.13,852.39");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=113.23,871.84");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=85.61,977.12");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=143.26,975.41");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=41.45,920.88");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=47.01,930.59");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=81.48,865.12");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=59.91,955.43");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=71.95,925.63");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=90.73,915.69");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=32.61,986.92");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=184.52,996.70");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=216.58,985.20");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=250.74,874.54");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=185.59,904.11");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=144.53,763.68");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=73.03,794.03");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=91.10,781.36");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=78.96,838.53");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=22.38,896.80");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=71.99,954.75");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=4.92,972.26");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=111.03,928.45");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=89.23,821.11");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=49.74,950.84");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=146.00,992.03");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=34.38,906.95");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=44.90,983.93");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=119.06,916.36");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=104.87,991.75");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=215.10,928.59");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=215.75,829.51");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=149.27,881.56");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=32.94,840.06");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=17.94,885.02");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=48.74,879.14");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=27.79,938.80");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=114.54,971.24");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=16.65,924.62");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=154.62,908.49");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=11.62,798.26");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=27.72,916.44");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=133.18,902.88");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=137.32,955.75");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=128.14,986.76");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=113.70,960.17");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=169.85,984.88");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=152.13,838.40");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=224.33,848.70");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=38.14,895.83");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=77.43,772.08");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=109.44,769.95");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=55.89,901.15");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=165.85,940.65");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=60.21,983.75");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=33.06,952.58");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=80.98,904.76");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=97.20,828.46");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=108.64,942.57");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=16.84,961.12");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=45.88,997.52");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=15.19,976.22");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=85.80,997.71");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=113.21,984.70");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=173.56,972.43");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=150.33,919.49");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=112.78,802.75");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=53.49,841.24");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=50.03,850.95");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=74.88,874.92");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=103.96,882.74");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=118.33,948.48");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=84.39,955.17");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=132.33,926.13");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=53.57,795.83");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=122.56,938.94");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=124.26,968.10");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=116.02,997.70");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=101.66,979.16");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=92.92,966.56");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=182.65,925.14");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=217.26,893.21");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=155.84,867.02");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=184.07,865.57");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=39.98,827.23");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=112.47,860.26");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=134.53,839.49");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=167.48,959.90");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=58.39,924.52");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=2.17,938.69");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=62.26,867.66");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=84.64,893.20");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=87.53,943.94");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=88.90,926.68");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=53.64,861.07");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=132.06,997.14");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=159.49,924.04");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=209.37,903.14");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=158.01,988.33");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=187.57,807.82");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=167.65,817.93");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=31.44,777.53");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=146.68,847.91");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=96.70,874.08");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=3.19,902.99");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=22.05,993.18");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=9.80,989.45");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=155.46,952.90");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=21.37,794.63");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=37.96,971.20");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=68.44,908.73");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=61.26,848.27");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=42.97,940.11");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=97.06,939.49");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=200.61,971.06");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=165.93,859.62");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=118.10,881.75");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=97.71,863.08");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=120.84,796.12");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=122.77,904.76");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=126.15,866.98");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=73.41,891.88");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=9.85,911.44");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=35.91,857.18");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=122.67,893.66");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=71.84,975.74");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=126.78,958.40");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=40.55,960.76");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=23.78,970.11");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=0.07,928.42");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=166.92,885.50");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=151.48,963.82");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=209.32,937.29");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=244.60,917.04");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=150.23,806.26");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=88.15,797.82");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=19.78,781.17");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=169.61,919.12");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=73.86,938.22");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=154.67,942.83");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=27.17,866.10");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=176.33,879.34");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=17.68,939.04");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=46.53,909.39");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=0.50,954.85");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=112.11,907.42");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=75.73,999.62");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=155.89,974.53");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=232.45,945.40");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=287.98,935.71");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=223.04,882.34");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=126.66,779.83");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=15.68,871.06");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=4.71,822.36");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=125.14,846.43");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=103.52,918.63");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=164.07,999.51");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=35.01,875.40");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=129.93,885.75");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=53.49,808.07");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=140.50,965.63");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=92.71,884.52");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=23.99,906.88");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=95.15,988.33");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=167.16,902.86");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=180.33,949.52");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=187.74,942.29");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=206.61,953.22");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=101.04,843.22");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=82.35,757.31");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=82.63,828.83");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=51.15,890.55");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=54.54,966.18");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=34.10,999.76");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=32.07,887.49");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=143.55,869.38");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=73.55,855.01");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=78.71,917.36");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=98.95,999.94");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=22.37,852.26");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=11.53,999.71");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=185.80,982.67");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=144.19,909.51");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=201.13,993.00");
    }

}

