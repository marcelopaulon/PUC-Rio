
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn12_9
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
        @display("p=140.11,903.88");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=104.42,823.76");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=159.22,903.98");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=203.71,841.05");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=178.17,843.68");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=122.52,881.61");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=152.23,787.97");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=98.20,791.56");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=0.03,782.64");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=62.05,754.58");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=10.03,724.81");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=91.02,735.53");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=44.90,670.42");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=48.03,603.16");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=35.31,528.32");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=21.76,557.17");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=57.22,944.21");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=182.84,911.45");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=114.44,808.87");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=164.51,916.62");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=196.54,802.03");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=138.51,875.39");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=139.48,792.11");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=152.81,773.51");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=72.06,713.62");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=13.76,816.61");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=72.76,693.31");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=17.22,713.53");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=98.84,745.12");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=77.75,651.52");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=119.13,533.76");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=15.45,476.52");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=23.61,580.45");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=122.34,914.70");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=57.99,865.44");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=193.23,829.76");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=242.32,906.31");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=271.60,787.52");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=190.68,879.00");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=133.08,819.21");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=161.55,782.55");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=133.73,777.78");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=23.27,758.42");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=132.31,757.74");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=87.78,781.40");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=158.50,674.10");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=24.69,625.93");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=74.37,607.53");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=64.48,598.12");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=4.96,570.84");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=101.91,925.95");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=82.75,880.44");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=66.95,767.81");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=109.57,891.41");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=220.59,752.76");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=198.53,902.73");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=85.35,862.76");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=105.37,866.44");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=78.54,798.51");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=75.87,829.20");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=118.32,700.96");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=38.93,691.16");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=118.43,717.61");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=91.66,706.77");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=63.42,504.81");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=107.25,553.44");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=26.59,612.51");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=151.91,934.11");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=76.28,899.86");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=84.48,770.68");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=135.76,929.86");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=212.09,851.38");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=217.24,828.30");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=150.61,848.93");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=215.23,740.95");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=13.64,841.66");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=2.20,825.73");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=78.24,746.71");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=47.43,769.87");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=133.79,666.45");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=34.27,769.38");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=0.36,561.03");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=49.78,523.38");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=90.11,558.99");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=171.92,905.31");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=160.36,825.81");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=134.28,830.09");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=166.28,933.27");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=227.09,860.68");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=176.18,883.70");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=76.40,940.40");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=215.41,779.78");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=78.37,735.05");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=2.61,732.15");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=121.71,759.34");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=103.98,725.98");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=67.21,737.60");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=58.21,663.28");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=31.73,540.56");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=66.10,480.56");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=38.86,579.11");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=105.86,985.89");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=199.74,919.41");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=52.51,850.69");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=165.71,891.05");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=260.54,869.89");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=167.25,760.66");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=130.21,901.05");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=226.74,774.50");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=85.25,816.12");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=39.27,735.89");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=31.70,799.46");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=29.76,700.74");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=60.81,782.60");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=90.74,618.06");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=79.76,588.30");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=65.86,567.47");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=31.66,593.18");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=114.03,936.22");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=224.96,942.74");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=151.78,754.30");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=219.37,972.53");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=264.72,901.27");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=239.31,809.98");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=37.85,902.08");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=188.22,706.65");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=132.15,726.56");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=10.68,799.34");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=116.46,750.64");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=50.19,756.71");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=50.99,724.46");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=114.61,739.28");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=68.00,514.26");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=106.32,527.07");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=43.47,556.34");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=144.63,839.94");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=87.61,944.58");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=34.68,888.55");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=223.99,876.70");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=284.39,811.56");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=251.32,860.34");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=165.64,960.84");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=173.46,781.85");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=111.76,794.18");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=13.95,779.28");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=88.50,695.12");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=0.73,706.61");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=52.60,652.69");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=25.81,643.37");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=53.61,538.79");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=10.11,541.70");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=61.14,550.04");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=144.70,948.79");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=147.82,861.47");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=38.59,831.51");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=96.10,846.81");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=198.31,862.98");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=202.14,812.41");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=68.81,872.47");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=202.68,791.89");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=144.10,730.18");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=39.44,850.05");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=42.77,799.13");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=81.99,667.18");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=115.92,780.43");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=122.64,621.44");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=117.71,598.81");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=40.80,492.77");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=36.22,566.29");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=104.48,812.84");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=177.36,947.64");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=43.40,819.46");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=158.52,882.85");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=193.50,773.28");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=218.20,901.01");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=78.04,963.03");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=131.79,699.16");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=126.78,837.09");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=2.57,687.26");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=122.77,688.46");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=28.52,745.31");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=50.54,743.85");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=133.20,651.75");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=79.86,572.67");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=102.70,461.40");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=69.25,627.88");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=109.69,958.84");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=126.91,983.41");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=108.27,840.97");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=63.64,927.19");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=264.58,833.13");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=172.07,817.24");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=128.32,965.98");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=62.62,819.97");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=105.66,779.80");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=8.01,757.15");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=90.31,837.98");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=17.99,687.19");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=74.62,724.08");
    }

}

