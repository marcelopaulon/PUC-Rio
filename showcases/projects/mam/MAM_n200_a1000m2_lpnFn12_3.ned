
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn12_3
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
        @display("p=148.08,859.23");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=196.61,861.90");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=211.35,850.50");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=292.68,807.89");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=316.84,724.31");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=285.83,747.81");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=240.28,800.83");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=219.72,868.00");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=137.09,868.78");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=150.59,846.34");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=98.30,839.46");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=184.41,801.80");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=173.95,795.15");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=235.79,825.26");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=177.68,771.89");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=175.60,760.65");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=93.85,913.52");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=178.38,781.99");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=206.71,800.96");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=233.80,878.09");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=201.21,821.63");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=272.33,695.33");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=269.38,831.63");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=224.19,759.65");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=183.84,908.28");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=114.74,898.12");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=220.26,827.95");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=80.48,937.55");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=179.82,819.87");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=162.56,712.46");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=214.40,897.80");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=211.54,792.09");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=219.59,802.23");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=130.57,858.90");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=173.25,913.12");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=227.15,942.59");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=190.92,888.40");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=332.38,805.62");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=362.22,809.81");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=340.09,797.65");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=269.43,749.58");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=217.70,946.55");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=170.54,833.21");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=131.82,809.20");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=140.20,829.38");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=166.88,776.40");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=254.07,800.55");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=190.76,783.56");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=141.09,718.57");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=92.70,744.70");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=43.00,965.19");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=153.19,935.27");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=282.93,817.88");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=189.77,833.14");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=329.05,788.73");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=335.32,720.73");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=255.25,722.15");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=294.07,770.17");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=247.54,870.85");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=156.86,813.47");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=130.03,881.63");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=36.95,829.97");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=202.36,723.15");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=149.86,803.38");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=250.63,772.14");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=195.82,750.07");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=116.61,714.90");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=123.22,925.82");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=227.95,894.16");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=110.82,878.27");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=262.89,867.31");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=277.61,781.58");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=225.34,707.09");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=324.45,773.35");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=152.49,756.16");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=304.04,914.14");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=126.90,846.10");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=110.39,857.22");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=125.95,825.12");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=269.04,792.55");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=249.74,848.01");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=251.93,826.00");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=155.57,791.57");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=241.21,765.00");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=157.00,831.30");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=83.87,787.21");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=256.74,857.13");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=158.84,906.86");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=306.63,828.79");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=306.32,716.73");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=259.76,765.56");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=238.60,751.01");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=284.61,850.04");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=116.35,820.42");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=181.51,852.74");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=81.75,835.95");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=208.14,714.33");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=171.18,845.67");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=182.86,862.92");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=218.79,816.78");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=157.42,771.52");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=69.23,906.92");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=236.69,899.46");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=259.80,908.11");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=223.84,787.64");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=298.97,820.76");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=346.45,721.58");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=213.65,741.25");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=216.47,839.12");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=272.26,882.97");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=89.93,887.58");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=146.84,890.85");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=44.45,892.81");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=162.84,800.12");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=164.61,763.63");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=312.63,864.20");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=107.11,794.28");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=133.85,769.03");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=86.36,809.57");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=58.77,829.13");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=224.41,859.13");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=286.40,895.51");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=199.96,808.63");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=336.88,745.42");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=234.82,693.21");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=244.97,711.11");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=245.37,939.19");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=125.56,898.21");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=90.05,859.66");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=105.90,829.93");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=143.10,811.95");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=169.35,859.08");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=172.90,889.18");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=187.30,759.94");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=141.49,756.02");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=131.61,948.95");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=223.02,903.07");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=278.32,864.11");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=216.65,880.24");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=338.89,820.95");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=312.36,769.31");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=320.10,678.41");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=335.79,773.35");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=192.82,850.33");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=126.37,961.43");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=158.20,747.52");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=88.47,824.22");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=223.50,848.32");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=139.46,731.50");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=162.18,869.70");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=158.65,724.77");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=180.36,687.78");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=68.66,850.39");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=132.17,783.05");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=188.67,939.38");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=200.52,837.68");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=278.23,767.24");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=281.07,708.95");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=242.37,734.12");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=236.59,774.52");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=280.84,911.44");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=165.83,820.93");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=117.92,913.89");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=132.77,797.56");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=113.20,758.37");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=259.85,838.81");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=307.68,849.47");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=151.59,704.02");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=117.87,779.10");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=52.18,935.88");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=136.66,840.72");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=201.77,881.39");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=232.74,915.20");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=299.82,861.98");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=373.09,726.06");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=281.72,734.07");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=254.90,741.02");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=317.90,876.00");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=158.84,965.29");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=204.38,897.61");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=58.96,903.15");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=175.30,809.25");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=213.08,781.15");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=241.99,921.45");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=140.02,697.44");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=113.32,686.62");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=146.98,904.98");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=119.52,800.33");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=268.37,813.41");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=284.29,797.72");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=371.15,770.33");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=385.50,782.25");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=213.95,700.35");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=272.87,723.99");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=251.13,886.04");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=93.60,869.99");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=108.11,807.79");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=110.65,932.77");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=162.39,883.94");
    }

}

