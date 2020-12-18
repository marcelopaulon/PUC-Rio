
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn12_0
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
        @display("p=108.78,909.35");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=164.76,925.84");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=208.80,969.49");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=178.42,900.85");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=117.93,950.50");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=110.97,958.92");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=134.63,875.31");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=123.18,889.11");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=66.84,971.90");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=64.34,938.85");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=44.00,929.41");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=59.95,897.21");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=111.53,821.65");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=100.98,827.46");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=25.41,796.97");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=6.88,838.41");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=10.26,878.64");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=108.55,933.70");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=246.05,965.49");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=192.92,966.14");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=265.73,883.32");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=192.06,981.15");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=168.55,943.51");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=88.17,887.54");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=103.40,856.74");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=92.71,919.69");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=32.83,974.61");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=43.09,918.42");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=10.24,942.57");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=65.86,765.19");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=153.87,848.07");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=60.10,826.13");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=3.12,909.54");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=72.14,831.11");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=70.58,895.48");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=233.21,992.12");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=187.74,921.34");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=142.96,924.29");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=168.86,895.87");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=109.98,975.71");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=94.54,851.49");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=112.42,887.32");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=59.01,997.20");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=27.20,918.55");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=30.89,905.38");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=139.52,951.42");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=40.19,772.70");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=96.47,817.01");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=77.19,777.66");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=46.20,848.08");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=62.37,884.57");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=129.68,898.30");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=175.24,916.48");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=159.60,982.73");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=266.30,896.46");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=141.60,987.56");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=99.22,979.04");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=171.56,785.60");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=184.39,874.25");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=33.49,927.02");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=102.37,989.08");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=46.99,961.99");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=93.26,970.40");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=142.63,825.94");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=114.63,793.78");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=54.17,835.38");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=16.02,763.66");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=124.89,867.73");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=100.27,887.96");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=225.46,969.49");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=221.78,915.95");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=91.27,867.82");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=130.05,929.73");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=171.38,974.18");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=107.46,802.87");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=75.19,964.25");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=97.84,938.74");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=123.07,968.35");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=131.47,960.24");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=57.00,848.46");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=89.80,798.46");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=118.90,808.66");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=51.53,793.66");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=31.21,851.59");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=53.16,921.38");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=84.20,945.06");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=237.94,869.53");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=226.95,897.35");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=244.49,848.09");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=145.88,966.20");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=174.41,960.80");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=122.94,831.20");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=83.34,955.12");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=12.58,954.93");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=79.74,905.51");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=130.14,911.32");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=26.29,953.92");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=143.80,767.33");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=120.47,747.10");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=24.08,896.86");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=60.56,865.80");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=121.48,937.23");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=76.48,995.93");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=115.82,839.19");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=270.27,974.77");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=246.02,905.75");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=39.02,943.90");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=52.84,908.68");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=130.79,848.13");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=203.72,869.43");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=153.91,927.60");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=14.99,984.52");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=7.92,865.03");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=51.19,951.99");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=17.42,820.32");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=110.28,920.44");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=17.61,749.30");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=1.75,828.99");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=75.19,927.27");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=181.91,938.30");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=202.80,955.01");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=179.33,984.25");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=146.78,900.63");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=81.37,980.48");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=59.85,961.82");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=83.43,915.97");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=171.97,881.11");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=154.97,944.58");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=72.12,880.99");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=127.76,979.59");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=37.88,842.32");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=172.99,798.64");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=100.52,735.73");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=61.48,707.05");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=38.05,744.58");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=160.15,877.98");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=113.41,897.30");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=193.49,891.08");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=295.66,931.36");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=203.75,881.72");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=85.98,928.53");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=145.34,879.30");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=190.77,834.61");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=44.19,830.80");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=12.08,994.88");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=65.40,987.67");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=27.41,936.16");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=18.40,864.84");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=31.93,861.57");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=176.91,858.09");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=29.86,759.11");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=0.16,762.51");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=97.14,997.88");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=37.91,884.74");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=151.78,865.36");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=206.54,982.86");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=217.06,955.55");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=186.83,999.75");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=168.55,907.32");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=142.04,862.68");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=151.59,811.10");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=9.76,926.07");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=46.31,890.32");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=6.47,972.08");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=95.69,950.42");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=130.23,740.45");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=66.49,794.11");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=38.27,733.19");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=66.83,905.59");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=157.60,827.59");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=139.95,974.29");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=220.00,862.79");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=220.74,996.42");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=213.79,827.77");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=51.23,987.51");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=194.16,991.95");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=203.42,828.49");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=210.28,854.64");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=25.60,983.06");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=114.03,992.88");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=71.85,862.42");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=120.88,921.44");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=93.38,745.73");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=105.06,846.30");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=48.02,780.87");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=23.94,830.45");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=163.24,861.12");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=79.27,873.33");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=193.16,908.96");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=263.85,940.52");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=225.56,981.87");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=99.32,961.20");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=52.46,972.04");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=191.67,866.62");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=154.07,887.31");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=65.05,919.38");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=72.27,948.78");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=16.86,973.03");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=16.61,908.87");
    }

}

