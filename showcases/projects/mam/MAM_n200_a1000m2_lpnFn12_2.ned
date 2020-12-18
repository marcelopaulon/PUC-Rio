
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn12_2
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
        @display("p=86.35,809.35");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=46.31,772.24");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=48.77,753.96");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=79.34,686.86");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=152.38,688.07");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=151.49,701.92");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=166.01,752.10");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=89.98,791.76");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=0.81,778.42");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=69.80,826.55");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=53.74,912.32");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=52.22,972.75");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=62.58,992.68");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=120.41,951.41");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=95.70,969.44");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=150.14,986.14");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=39.94,963.36");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=101.18,726.90");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=129.44,781.64");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=31.16,735.04");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=109.31,604.07");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=133.27,744.33");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=172.41,708.89");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=96.63,823.84");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=124.44,845.60");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=21.96,724.95");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=150.78,788.37");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=51.31,949.34");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=73.87,916.94");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=33.45,903.68");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=79.36,904.48");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=132.26,881.14");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=182.31,989.87");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=97.42,889.86");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=46.99,789.94");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=6.67,849.67");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=113.01,747.09");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=65.50,694.62");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=145.41,616.80");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=73.64,722.87");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=165.26,696.48");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=82.30,767.10");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=62.78,804.78");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=155.01,815.92");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=55.44,931.85");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=123.50,970.60");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=73.11,988.85");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=50.49,921.83");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=171.31,949.42");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=160.14,979.96");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=141.62,860.00");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=97.59,802.05");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=96.50,778.89");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=59.08,734.29");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=31.60,695.93");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=126.80,703.23");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=145.14,665.39");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=206.10,730.60");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=84.18,854.44");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=7.04,730.23");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=83.83,819.99");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=48.67,874.27");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=31.20,953.11");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=37.52,981.13");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=170.56,929.57");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=94.88,989.67");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=155.25,995.01");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=149.84,958.71");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=72.33,798.72");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=32.88,761.54");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=124.26,806.54");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=124.23,647.46");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=156.52,644.45");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=181.55,719.09");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=189.31,698.12");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=70.12,767.56");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=25.69,827.39");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=11.44,756.81");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=78.45,879.13");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=11.92,953.92");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=134.83,998.59");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=122.92,936.65");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=144.75,935.76");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=139.09,944.90");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=45.21,932.59");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=107.60,797.95");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=90.47,723.79");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=97.91,765.64");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=109.24,775.17");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=143.96,680.40");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,676.72");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=236.62,713.38");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=112.01,847.07");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=33.64,685.89");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=19.06,786.00");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=16.24,873.47");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=9.05,987.04");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=114.47,924.24");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=125.19,870.35");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=95.91,955.94");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=67.34,979.50");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=127.52,905.19");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=41.49,733.90");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=34.83,747.66");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=81.69,716.51");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=15.31,701.32");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=161.37,680.66");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=116.51,673.29");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=234.04,777.83");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=21.11,816.74");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=5.77,769.42");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=88.85,839.69");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=64.25,937.33");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=105.45,997.45");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=105.64,968.10");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=161.37,911.46");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=79.03,954.59");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=94.06,979.43");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=25.01,878.95");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=48.13,862.41");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=40.86,712.86");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=6.90,715.14");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=54.27,632.79");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=205.75,701.07");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=132.81,636.88");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=126.28,736.87");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=138.62,807.66");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=60.51,836.53");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=53.04,895.24");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=50.06,831.60");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=19.03,961.81");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=7.07,938.66");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=182.98,893.13");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=135.23,973.45");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=204.68,996.66");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=129.63,816.36");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=102.87,854.04");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=12.22,796.32");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=43.38,700.16");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=105.10,666.71");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=166.58,604.84");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=188.29,674.65");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=206.68,793.17");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=92.93,877.89");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=35.74,830.51");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=6.38,827.73");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=43.74,898.98");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=56.75,983.56");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=112.64,910.76");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=131.18,959.13");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=120.83,989.12");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=170.96,997.06");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=139.01,872.36");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=169.23,832.19");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=10.64,745.59");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=11.26,663.52");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=81.00,779.07");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=203.90,620.20");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=149.10,722.35");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=198.94,764.93");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=152.20,828.71");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=28.71,707.29");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=101.04,838.31");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=13.27,976.43");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=17.16,940.50");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=102.37,941.52");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=147.33,907.96");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=132.65,934.10");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=206.72,905.03");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=96.46,919.31");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=50.87,846.39");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=67.66,712.52");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=110.28,691.11");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=1.80,692.15");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=230.12,696.17");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=108.67,757.54");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=197.50,711.61");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=73.01,785.49");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=18.88,804.79");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=158.73,805.38");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=151.99,917.46");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=8.74,963.80");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=15.92,909.18");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=150.40,898.15");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=135.07,985.52");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=78.05,999.50");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=146.75,839.30");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=116.35,835.10");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=49.64,813.31");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=60.23,760.46");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=94.61,710.09");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=178.45,667.99");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=177.51,772.39");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=154.19,770.08");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=114.34,871.57");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=36.66,800.31");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=68.68,842.79");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=71.86,894.05");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=7.06,997.67");
    }

}

