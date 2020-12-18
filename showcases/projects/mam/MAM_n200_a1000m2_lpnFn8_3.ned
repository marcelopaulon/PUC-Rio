
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn8_3
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
        @display("p=94.20,968.60");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=118.44,951.71");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=87.62,860.69");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=154.42,885.26");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=103.39,960.99");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=189.06,993.01");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=196.89,978.95");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=131.79,913.94");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=218.22,895.90");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=173.63,984.69");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=199.15,916.03");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=157.94,930.84");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=118.52,926.78");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=155.30,872.29");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=182.18,915.40");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=249.63,961.54");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=266.48,904.96");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=251.82,973.42");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=332.23,981.30");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=338.91,989.73");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=342.12,972.67");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=338.60,956.87");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=337.91,934.38");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=282.40,970.18");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=117.97,897.04");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=64.66,922.95");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=68.67,954.01");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=82.56,803.65");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=116.15,806.03");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=120.17,938.76");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=261.17,963.33");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=155.63,985.53");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=209.03,884.94");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=227.78,803.39");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=215.15,937.31");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=221.13,829.59");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=190.37,961.01");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=51.58,973.42");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=168.76,932.10");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=177.10,861.38");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=280.65,879.49");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=282.59,909.17");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=221.94,924.12");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=294.42,916.51");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=303.09,987.18");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=352.48,970.10");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=313.52,956.01");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=331.26,947.25");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=264.58,939.53");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=131.28,935.97");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=107.13,920.45");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=186.93,937.48");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=83.12,849.47");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=91.21,937.23");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=59.65,982.01");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=271.95,999.15");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=203.72,986.52");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=174.53,892.63");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=145.74,838.85");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=232.05,957.94");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=193.38,902.99");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=85.51,909.38");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=146.26,948.73");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=121.93,856.81");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=239.23,935.64");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=192.22,950.62");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=281.09,920.51");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=223.55,997.81");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=408.03,937.65");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=316.72,921.81");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=392.07,932.55");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=348.86,918.76");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=352.22,930.84");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=201.02,927.07");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=28.16,947.81");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=68.72,874.41");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=82.48,959.56");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=180.97,883.72");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=137.73,898.43");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=144.28,923.14");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=217.29,947.78");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=146.73,997.45");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=104.00,871.35");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=190.99,883.23");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=150.92,975.32");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=263.46,871.12");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=97.97,927.34");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=147.62,896.45");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=109.90,883.93");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=210.36,874.95");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=250.17,910.63");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=273.57,852.73");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=252.97,996.66");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=327.75,997.50");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=276.16,979.30");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=407.70,979.35");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=407.54,994.20");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=375.39,942.84");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=291.57,987.05");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=92.48,875.83");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=84.00,923.64");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=115.49,974.56");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=31.61,924.49");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=114.51,841.60");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=88.45,948.75");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=173.01,999.79");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=205.41,958.55");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=97.42,840.73");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=207.25,896.94");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=94.87,996.44");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=209.36,861.08");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=160.02,964.29");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=122.10,909.95");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=143.77,962.04");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=171.36,962.38");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=292.89,969.01");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=266.07,953.31");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=238.24,983.71");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=344.74,946.76");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=415.75,948.18");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=281.87,950.35");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=304.43,921.14");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=389.65,852.04");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=288.08,936.96");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=192.30,865.94");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=105.68,934.25");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=61.36,945.87");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=11.42,856.36");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=162.48,804.51");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=114.57,987.57");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=177.71,972.15");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=228.29,980.72");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=107.27,858.71");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=252.01,825.31");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=132.87,956.36");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=137.00,845.87");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=228.49,943.60");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=155.43,860.80");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=168.31,831.65");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=218.06,842.54");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=304.94,909.26");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=244.34,851.25");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=254.95,893.88");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=418.76,931.28");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=268.89,924.93");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=359.98,953.90");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=390.95,903.56");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=290.43,894.39");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=340.22,911.91");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=88.91,834.16");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=133.52,972.02");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=102.48,975.64");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=46.31,851.03");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=127.54,870.79");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=133.16,924.22");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=256.67,985.14");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=121.67,997.95");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=45.93,912.51");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=226.31,933.79");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=86.33,977.18");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=180.44,844.07");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=84.83,990.10");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=153.03,915.58");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=173.70,817.86");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=185.26,926.20");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=240.39,915.23");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=251.32,940.15");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=218.50,986.54");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=359.28,980.10");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=369.21,962.88");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=395.06,958.03");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=379.47,933.25");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=324.78,928.38");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=352.25,902.53");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=70.27,970.57");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=31.70,993.48");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=131.69,991.67");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=84.65,819.42");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=185.49,821.98");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=163.64,979.22");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=146.46,937.70");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=168.71,942.79");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=61.12,898.61");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=293.27,880.51");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=256.92,948.50");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=265.65,974.09");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=162.93,894.42");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=40.34,978.31");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=229.98,819.96");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=177.65,902.32");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=302.74,943.84");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=355.88,867.68");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=238.54,969.43");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=370.79,974.20");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=385.28,945.66");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=312.94,931.95");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=380.19,915.07");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=379.62,881.55");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=275.80,959.01");
    }

}

