
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn12_0
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
        @display("p=38.62,723.44");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=116.37,616.68");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=59.80,599.97");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=36.93,595.60");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=22.39,691.04");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=24.26,755.28");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=18.83,733.87");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=43.34,768.25");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=29.53,772.90");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=99.00,764.10");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=18.66,767.74");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=56.85,689.56");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=51.53,742.50");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=77.03,725.09");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=85.53,716.81");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=38.49,744.09");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=122.47,727.36");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=116.07,779.83");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=67.73,666.90");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=72.75,595.24");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=30.66,633.19");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=59.05,656.66");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=4.94,772.57");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=65.46,789.48");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=57.42,782.64");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=57.71,701.13");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=134.82,754.95");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=84.45,795.74");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=50.48,729.61");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=57.43,754.74");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=98.73,743.22");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=138.01,692.70");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=46.01,676.42");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=79.05,695.85");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=53.53,715.24");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=152.38,634.69");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=62.47,587.78");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=96.79,568.40");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=101.65,638.33");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=41.99,753.70");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=36.69,656.54");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=6.82,787.80");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=19.41,705.05");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=182.31,764.43");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=24.30,723.05");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=10.33,695.36");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=69.18,732.90");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=82.53,738.02");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=125.06,697.67");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=107.05,786.50");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=184.50,726.10");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=64.85,721.85");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=94.48,614.91");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=141.60,572.98");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=38.47,614.97");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=16.22,679.95");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=10.40,717.58");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=2.49,745.13");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=29.55,713.37");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=94.80,785.18");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=147.75,766.47");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=82.59,778.70");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=77.42,669.85");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=32.80,679.64");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=119.86,715.47");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=96.41,733.12");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=62.94,746.17");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=103.22,688.21");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=2.23,674.04");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=152.64,705.24");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=12.78,542.14");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=40.17,571.61");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=1.77,603.44");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=41.99,695.58");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=30.81,669.34");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=136.16,731.94");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=58.97,771.05");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=97.09,669.24");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=73.37,773.89");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=111.86,695.42");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=102.49,796.94");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=7.27,685.56");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=59.14,638.07");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=36.00,733.88");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=114.03,643.88");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=15.14,750.74");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=168.24,611.55");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=56.28,576.72");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=32.71,524.11");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=67.97,678.60");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=10.95,760.68");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=43.98,643.40");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=112.18,722.21");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=28.50,792.25");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=145.81,791.34");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=43.33,797.20");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=8.05,636.14");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=18.66,797.68");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=94.16,681.02");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=115.17,740.52");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=92.77,709.07");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=116.84,632.96");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=25.50,658.02");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=204.05,615.56");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=4.38,613.54");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=84.05,597.98");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=4.77,661.41");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=0.23,732.55");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=42.68,782.18");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=44.42,708.61");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=16.95,786.92");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=99.68,753.36");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=56.91,797.90");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=59.98,623.72");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=120.27,767.42");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=154.96,689.00");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=90.00,637.03");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=105.53,678.38");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=77.68,640.58");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=88.24,658.21");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=119.66,686.18");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=71.71,579.31");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=27.90,573.71");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=117.87,670.61");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=12.38,670.45");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=31.91,763.08");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=83.46,684.46");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=88.48,770.34");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=139.73,709.10");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=111.79,759.05");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=86.32,627.63");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=96.80,721.71");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=167.62,710.81");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=75.16,748.61");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=120.09,749.28");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=90.30,693.19");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=0.53,697.93");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=134.93,611.52");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=44.95,665.10");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=48.88,509.90");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=47.94,655.55");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=72.74,796.88");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=67.75,651.61");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=127.36,780.58");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=86.00,753.34");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=134.52,788.26");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=67.72,697.76");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=70.79,708.55");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=118.96,798.95");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=155.11,748.74");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=102.96,651.63");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=69.76,758.70");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=166.20,731.87");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=26.87,742.04");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=108.00,608.70");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=154.54,619.98");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=33.30,689.80");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=26.10,619.15");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=2.03,755.32");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=109.40,770.47");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=80.64,762.00");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=32.61,701.97");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=170.47,752.40");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=1.99,799.69");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=1.05,651.81");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=135.58,766.17");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=56.62,672.64");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=106.28,735.49");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=129.83,716.43");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=171.23,649.16");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=14.33,644.59");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=138.65,648.63");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=106.19,626.43");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=6.42,576.08");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=14.87,592.16");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=0.02,721.18");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=77.21,657.65");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=129.97,797.83");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=107.65,711.28");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=191.49,785.26");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=81.69,705.70");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=50.24,611.53");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=145.14,747.33");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=141.59,673.10");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=91.00,648.04");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=130.76,743.13");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=185.64,682.47");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=129.67,686.13");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=180.33,657.12");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=61.80,611.82");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=70.16,538.04");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=26.34,604.83");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=0.24,709.95");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=18.26,634.50");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=140.21,777.65");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=121.53,788.86");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=164.44,720.31");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=14.25,777.20");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=47.12,633.83");
    }

}

