
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn12_4
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
        @display("p=137.74,881.73");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=141.07,910.36");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=152.39,842.07");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=156.53,859.58");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=144.91,858.12");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=146.39,895.07");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=57.49,851.60");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=39.52,908.83");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=14.80,844.97");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=21.35,858.57");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=4.75,857.66");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=8.63,917.19");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=63.63,987.40");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=92.01,973.95");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=87.38,960.64");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=126.72,924.09");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=11.19,929.67");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=93.23,948.04");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=159.89,929.91");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=128.96,788.34");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=231.03,811.87");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=152.55,871.96");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=107.88,921.12");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=80.34,887.10");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=116.05,899.02");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=99.00,807.00");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=40.72,897.87");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=10.68,827.89");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=59.26,963.26");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=50.71,969.80");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=81.63,988.71");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=58.18,935.90");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=203.90,974.45");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=78.93,923.17");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=110.56,943.93");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=105.59,976.07");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=246.04,818.10");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=205.72,896.65");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=151.36,823.19");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=180.11,962.22");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=83.64,828.27");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=5.75,959.36");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=53.80,861.80");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=99.78,835.38");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=34.50,813.83");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=65.40,900.93");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=127.66,972.73");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=122.02,991.44");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=104.38,911.03");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=135.17,929.87");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=93.75,908.64");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=184.60,850.06");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=76.33,864.96");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=92.78,779.76");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=170.14,879.43");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=179.66,908.38");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=156.48,903.81");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=111.65,846.07");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=50.20,910.87");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=65.40,822.27");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=20.41,883.13");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=13.45,764.80");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=1.72,926.04");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=40.37,997.84");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=151.99,995.10");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=26.82,892.52");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=94.41,929.56");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=127.80,854.75");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=201.69,849.11");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=84.84,852.89");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=200.63,922.50");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=169.07,859.01");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=126.70,844.50");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=193.98,860.37");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=42.50,874.42");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=114.70,859.49");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=11.74,754.94");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=11.38,894.96");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=57.92,881.09");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=39.26,924.89");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=77.63,955.52");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=27.23,939.01");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=101.27,961.83");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=129.83,875.58");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=141.84,841.91");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=227.41,868.46");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=97.25,984.65");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=179.95,831.97");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=188.90,893.06");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=124.43,888.20");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=162.97,912.38");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=88.67,764.16");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=9.84,875.95");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=22.27,790.26");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=42.10,946.72");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=26.11,766.82");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=64.24,865.28");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=149.85,958.25");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=19.82,987.68");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=124.67,904.90");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=180.21,884.33");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=107.21,891.67");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=148.76,938.20");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=95.24,868.79");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=163.61,835.50");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=187.74,782.79");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=235.69,859.22");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=216.46,901.24");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=66.71,919.73");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=109.03,869.06");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=24.01,830.78");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=50.88,823.66");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=9.93,817.57");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=4.53,903.48");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=55.31,996.36");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=113.18,983.90");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=73.22,968.58");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=33.34,955.33");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=23.51,868.79");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=201.83,881.03");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=124.25,834.76");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=123.50,820.15");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=230.35,884.85");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=164.86,772.02");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=136.76,898.55");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=59.24,841.00");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=44.23,834.87");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=73.17,784.60");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=9.44,775.28");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=1.35,846.67");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=38.51,850.73");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=65.08,976.45");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=168.37,948.82");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=28.54,968.49");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=222.42,945.10");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=152.66,914.30");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=57.59,924.75");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=121.61,939.78");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=120.22,797.88");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=194.18,810.71");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=164.39,812.66");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=216.69,933.35");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=53.91,800.38");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=39.60,935.04");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=26.02,848.96");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=94.36,795.15");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=84.57,840.76");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=11.99,941.13");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=49.89,959.70");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=116.48,961.18");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=26.21,911.86");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=62.98,945.41");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=67.55,890.07");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=177.77,929.40");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=95.83,848.95");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=212.38,885.14");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=175.44,867.28");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=114.22,882.19");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=182.48,979.86");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=90.58,882.56");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=51.95,897.80");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=26.84,750.16");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=101.40,877.06");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=41.83,885.28");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=26.18,926.52");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=78.60,940.71");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=33.09,980.45");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=152.76,969.29");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=85.14,999.82");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=84.85,871.55");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=140.43,966.84");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=172.65,821.15");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=219.61,816.18");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=211.80,835.83");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=187.49,798.25");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=155.87,882.40");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=9.30,800.89");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=75.04,844.54");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=34.06,800.45");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=34.16,864.05");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=65.78,832.84");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=14.46,967.90");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=98.45,994.92");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=99.23,939.25");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=167.54,984.40");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=138.31,955.09");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=82.00,978.27");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=125.67,865.72");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=83.51,905.80");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=173.17,845.88");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=184.76,818.15");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=110.90,825.26");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=236.91,933.29");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=48.56,758.32");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=132.72,944.59");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=61.15,769.62");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=24.22,810.23");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=29.30,782.59");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=69.98,932.00");
    }

}

