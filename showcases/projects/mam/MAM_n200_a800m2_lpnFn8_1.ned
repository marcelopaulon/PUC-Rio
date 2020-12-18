
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn8_1
{
    parameters:
        @display("bgb=1600,1600;bgg=100,1,grey95;bgu=m");
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
        @display("p=100.00,700.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=96.86,711.13");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=99.07,736.85");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=46.79,691.39");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=15.58,754.04");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=39.14,746.47");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=90.84,758.86");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=70.45,767.63");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=61.79,731.45");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=85.89,737.05");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=14.01,776.24");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=60.99,715.32");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=97.20,750.42");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=130.44,790.35");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=176.52,728.24");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=168.36,714.41");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=72.35,739.44");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=61.42,772.75");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=46.90,754.92");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=110.79,775.36");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=159.78,794.07");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=166.65,724.34");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=258.90,758.28");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=290.00,785.96");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=274.38,780.97");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=103.78,605.14");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=51.29,639.04");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=60.21,744.61");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=3.13,706.20");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=92.70,772.82");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=45.35,780.02");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=49.55,792.95");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=43.99,720.51");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=36.79,649.98");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=110.55,677.61");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=37.26,773.03");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=71.96,715.64");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=128.27,760.20");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=69.92,787.73");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=212.39,793.74");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=97.20,724.80");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=68.71,693.70");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=60.19,799.11");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=2.61,767.27");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=121.25,698.70");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=197.51,755.03");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=213.69,713.09");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=250.47,799.86");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=289.81,737.35");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=245.83,737.99");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=78.77,678.37");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=93.79,687.47");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=122.58,657.27");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=46.36,730.32");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=13.02,791.44");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=6.91,725.63");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=106.48,720.76");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=130.20,738.92");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=55.77,700.86");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=1.80,782.74");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=16.79,742.99");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=17.24,695.58");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=133.30,696.27");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=102.95,789.61");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=164.94,745.51");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=233.44,778.04");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=72.22,728.55");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=32.57,794.73");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=35.70,709.13");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=193.95,728.82");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=145.76,725.96");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=212.82,752.16");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=173.33,773.94");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=288.56,772.57");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=189.21,790.21");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=127.07,676.67");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=166.69,703.69");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=107.05,748.35");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=97.86,645.02");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=39.68,666.96");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=27.90,699.14");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=141.69,756.68");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=61.68,757.59");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=76.58,758.19");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=15.21,717.69");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=32.18,720.93");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=24.30,766.12");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=20.97,686.26");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=90.93,796.78");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=231.97,746.43");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=182.12,778.84");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=78.19,655.96");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=150.61,799.72");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=35.06,783.94");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=78.72,776.24");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=200.28,738.60");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=215.83,736.14");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=346.93,786.80");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=283.39,760.86");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=355.78,736.02");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=165.57,627.36");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=49.17,742.24");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=153.66,660.37");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=20.90,656.99");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=27.62,673.16");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=21.70,796.83");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=147.99,714.54");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=20.06,731.59");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=90.53,663.79");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=126.98,707.00");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=79.58,748.59");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=24.51,710.92");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=118.02,732.54");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=119.09,785.29");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=141.98,745.70");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=134.42,656.41");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=116.13,649.58");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=0.02,755.66");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=5.02,741.72");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=115.30,763.46");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=163.51,777.01");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=100.70,763.54");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=252.89,777.58");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=366.93,741.42");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=271.77,766.71");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=159.25,765.70");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=140.99,689.68");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=54.59,723.81");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=113.40,620.57");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=3.47,681.37");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=37.82,683.44");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=73.52,705.21");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=109.83,797.44");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=123.58,748.61");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=176.72,763.61");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=33.53,761.08");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=58.26,688.21");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=137.17,713.03");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=139.78,783.96");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=247.28,671.00");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=178.02,702.04");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=51.11,671.45");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=100.51,779.12");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=75.55,799.64");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=152.39,782.49");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=152.77,739.48");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=259.80,708.11");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=261.16,746.91");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=271.60,791.45");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=306.57,799.77");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=95.42,677.19");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=143.89,646.85");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=60.50,662.97");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=65.51,607.96");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=55.34,783.06");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=88.80,702.96");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=81.85,718.27");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=125.98,772.10");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=108.92,666.93");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=168.92,789.40");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=24.42,785.13");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=15.54,628.57");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=162.11,693.65");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=107.66,710.57");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=186.18,737.55");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=197.07,673.39");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=49.47,764.62");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=126.40,799.78");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=33.74,733.36");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=134.11,728.58");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=158.22,755.34");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=188.89,641.25");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=321.28,755.88");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=311.93,770.77");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=354.22,747.14");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=87.44,643.18");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=157.68,711.36");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=49.96,656.97");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=3.49,692.90");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=12.77,765.46");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=2.91,661.78");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=148.40,772.93");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=79.26,691.22");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=62.69,640.25");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=90.08,784.35");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=0.91,717.08");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=105.77,633.00");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=28.94,745.48");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=208.08,779.70");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=179.71,690.23");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=218.26,726.24");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=139.53,665.64");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=105.67,691.34");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=70.32,666.60");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=136.66,770.71");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=248.51,761.98");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=202.27,664.55");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=249.51,714.75");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=278.01,746.32");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=334.22,762.82");
    }

}

