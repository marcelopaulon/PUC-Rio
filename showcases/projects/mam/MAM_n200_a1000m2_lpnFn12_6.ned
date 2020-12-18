
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn12_6
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
        @display("p=103.18,924.01");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=44.21,919.59");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=134.42,860.55");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=149.40,833.47");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=144.26,810.83");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=109.15,759.40");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=153.52,715.46");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=185.48,668.78");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=224.78,696.76");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=141.31,661.78");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=97.85,687.03");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=90.02,712.57");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=120.81,723.84");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=139.87,716.51");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=176.92,657.99");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=193.90,646.09");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=66.76,983.99");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=34.34,990.47");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=46.91,895.27");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=72.93,913.01");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=98.00,809.87");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=146.95,756.86");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=69.48,706.41");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=70.37,763.35");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=238.20,702.88");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=289.01,675.81");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=115.76,643.04");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=92.11,614.35");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=96.38,656.90");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=112.78,708.97");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=122.70,777.20");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=163.84,663.60");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=213.12,634.64");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=102.97,872.78");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=114.08,881.79");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=82.99,957.97");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=155.03,889.93");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=182.74,743.40");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=221.71,751.93");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=127.89,740.24");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=141.87,703.64");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=245.96,745.64");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=289.06,749.09");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=216.13,679.36");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=58.84,710.01");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=46.70,704.14");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=114.99,696.69");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=104.07,725.49");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=133.35,669.74");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=260.71,666.93");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=83.38,940.80");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=73.50,932.12");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=95.48,962.80");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=199.90,871.59");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=191.70,786.43");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=161.89,837.67");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=97.38,770.99");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=217.69,730.44");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=194.83,760.82");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=193.42,676.68");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=133.96,691.75");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=68.84,725.43");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=90.62,724.42");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=141.00,735.92");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=48.05,686.90");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=196.55,712.05");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=200.08,657.72");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=69.54,887.24");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=113.88,986.73");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=118.13,972.07");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=94.62,840.07");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=189.22,820.70");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=145.77,853.56");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=117.55,744.65");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=170.01,786.78");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=271.06,623.42");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=307.91,733.01");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=72.66,657.51");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=70.55,685.06");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=78.98,724.49");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=148.22,648.02");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=105.42,673.32");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=202.91,617.34");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=239.03,576.40");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=85.37,858.60");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=132.77,902.18");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=21.67,882.38");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=153.03,801.08");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=96.15,914.49");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=77.77,821.65");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=101.89,789.22");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=170.65,719.39");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=232.53,636.87");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=252.51,637.38");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=88.59,629.77");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=67.15,737.60");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=14.63,735.08");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=85.74,734.69");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=77.01,743.18");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=180.14,704.88");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=269.74,585.04");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=134.91,936.51");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=130.68,882.93");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=45.32,831.80");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=163.26,822.02");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=223.02,783.79");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=133.17,811.87");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=39.87,732.88");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=172.32,625.13");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=210.69,669.27");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=317.79,700.10");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=160.29,635.16");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=101.97,596.96");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=106.71,634.93");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=163.35,710.01");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=140.59,676.73");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=133.73,637.09");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=225.31,659.07");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=99.43,945.47");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=81.75,835.26");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=5.49,889.62");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=58.03,880.11");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=152.42,867.52");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=135.84,793.77");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=89.09,756.96");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=151.55,735.78");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=116.62,684.70");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=237.50,607.74");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=116.88,580.17");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=100.92,700.72");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=18.03,651.32");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=106.40,802.40");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=51.49,739.21");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=108.46,610.56");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=197.93,722.28");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=38.94,907.03");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=94.63,974.65");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=4.72,855.99");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=183.59,779.35");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=201.51,893.19");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=117.08,791.70");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=94.87,827.22");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=160.68,687.08");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=233.59,689.97");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=210.57,689.99");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=86.33,671.37");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=130.13,609.32");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=26.20,739.85");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=108.23,657.84");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=197.33,700.89");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=142.34,608.31");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=252.47,708.39");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=147.49,912.62");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=95.48,889.16");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=54.86,948.27");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=125.29,839.51");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=179.49,847.54");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=163.40,803.26");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=195.29,747.80");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=145.22,691.58");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=213.73,648.73");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=127.37,699.83");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=129.68,647.44");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=2.67,700.13");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=42.39,714.56");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=184.44,763.74");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=182.68,689.87");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=189.64,582.22");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=168.37,673.65");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=85.04,887.95");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=60.24,930.69");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=0.29,956.49");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=35.68,860.36");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=185.99,831.18");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=97.36,860.03");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=91.33,696.03");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=191.60,735.95");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=252.39,656.16");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=279.11,651.04");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=164.36,616.52");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=118.65,630.14");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=60.32,794.05");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=109.14,819.56");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=167.21,694.67");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=241.64,596.09");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=187.13,619.27");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=136.70,970.86");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=156.71,979.60");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=78.18,922.58");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=164.72,853.60");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=172.40,770.04");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=123.00,821.34");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=107.64,738.20");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=246.37,730.51");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=153.66,698.79");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=254.88,621.30");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=171.36,638.77");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=36.81,672.89");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=28.01,752.26");
    }

}

