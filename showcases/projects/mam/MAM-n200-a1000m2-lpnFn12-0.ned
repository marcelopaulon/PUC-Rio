
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn12-0
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
        @display("p=152.00,854.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=101.78,819.94");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=169.47,778.11");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=142.08,790.66");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=175.07,738.29");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=192.62,812.85");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=237.04,791.25");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=237.35,764.48");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=258.96,674.33");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=205.79,649.76");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=206.69,723.48");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=148.57,802.78");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=181.74,789.39");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=135.16,805.15");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=63.39,862.94");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=90.79,813.27");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=124.58,814.34");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=122.34,853.41");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=98.92,765.24");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=125.80,707.49");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=76.73,783.45");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=192.53,756.33");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=206.49,824.26");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=218.53,800.58");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=258.48,734.04");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=232.95,661.45");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=145.22,648.67");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=171.14,702.78");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=83.08,856.64");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=176.54,815.04");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=116.03,843.11");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=20.86,849.07");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=63.10,833.65");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=171.21,824.68");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=222.82,866.93");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=73.51,753.04");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=125.53,779.49");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=129.36,754.09");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=157.90,727.58");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=203.61,809.79");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=208.10,765.81");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=255.88,800.26");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=200.90,597.24");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=301.43,650.93");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=180.21,648.58");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=110.26,747.69");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=241.80,801.28");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=140.90,776.29");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=94.25,941.33");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=49.94,744.20");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=91.21,878.89");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=218.20,814.93");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=67.35,804.10");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=168.30,765.36");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=195.88,786.83");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=93.27,781.74");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=180.83,718.10");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=169.44,801.69");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=230.43,848.46");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=228.96,649.60");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=215.49,665.64");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=129.15,690.24");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=212.16,861.99");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=187.92,735.79");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=157.43,784.87");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=107.53,897.90");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=161.97,813.90");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=44.41,820.13");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=109.40,803.23");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=27.40,875.62");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=112.21,859.59");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=75.36,739.98");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=209.30,776.92");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=133.27,846.98");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=314.72,822.26");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=292.89,797.16");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=235.78,642.17");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=224.71,595.49");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=153.58,707.94");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=181.33,751.10");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=227.34,781.70");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=123.65,804.12");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=61.28,890.52");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=108.28,770.21");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=68.67,842.63");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=131.15,893.84");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=148.71,871.16");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=146.13,739.32");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=162.37,753.04");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=203.78,660.05");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=259.00,839.73");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=270.95,782.78");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=221.44,738.27");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=194.36,677.19");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=168.18,648.12");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=245.93,754.07");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=108.01,849.80");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=193.46,855.59");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=211.42,750.70");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=83.50,944.92");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=100.96,861.10");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=164.58,853.64");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=94.64,889.57");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=142.16,841.08");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=243.54,724.84");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=141.16,757.70");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=258.76,763.75");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=183.36,863.60");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=272.47,822.75");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=286.40,701.69");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=243.15,673.19");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=226.60,615.29");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=257.75,722.13");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=150.47,819.54");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=255.18,787.20");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=110.66,786.82");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=117.24,920.75");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=53.00,898.50");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=211.71,847.79");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=107.24,834.72");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=34.34,799.81");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=90.66,750.70");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=191.98,837.00");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=153.24,764.88");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=214.27,836.00");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=228.05,770.70");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=297.80,764.16");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=270.67,696.18");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=199.19,614.45");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=143.97,728.60");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=134.45,819.62");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=237.41,817.57");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=157.67,842.51");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=43.23,861.15");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=80.91,827.79");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=80.74,842.30");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=120.92,832.87");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=129.46,861.27");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=121.19,764.43");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=131.96,763.78");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=143.13,679.27");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=166.77,790.91");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=274.19,809.79");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=318.86,806.74");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=322.69,635.06");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=206.30,680.16");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=225.40,720.03");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=114.64,878.19");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=215.23,876.56");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=110.04,731.34");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=30.13,888.47");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=82.24,806.50");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=90.60,794.88");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=183.98,910.32");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=13.12,832.33");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=226.32,708.01");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=124.95,735.80");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=199.56,730.86");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=196.91,771.64");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=270.71,854.46");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=186.94,779.41");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=274.87,667.54");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=117.61,646.32");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=291.47,776.49");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=84.04,732.81");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=97.94,739.55");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=72.57,872.55");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=74.94,882.64");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=30.70,742.05");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=191.03,888.91");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=140.61,855.42");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=15.17,867.73");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=138.67,873.06");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=116.26,696.23");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=178.16,763.08");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=237.76,831.43");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=243.27,780.73");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=281.55,838.76");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=266.95,636.81");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=237.35,567.92");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=196.61,740.95");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=135.96,722.58");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=194.21,713.30");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=184.20,874.30");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=66.22,912.15");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=182.58,823.33");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=116.48,719.46");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=160.62,907.66");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=29.51,820.77");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=90.80,721.68");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=221.72,748.93");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=177.58,689.08");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=267.81,871.77");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=211.73,705.35");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=297.41,825.43");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=232.55,677.42");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=195.52,647.75");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=223.51,693.08");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=64.25,779.07");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=193.36,798.97");
    }

}

