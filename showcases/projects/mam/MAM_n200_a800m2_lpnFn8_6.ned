
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn8_6
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
        @display("p=182.59,755.37");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=149.57,735.89");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=183.45,724.93");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=209.74,771.45");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=226.97,751.76");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=251.47,773.44");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=217.31,685.08");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=195.07,710.08");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=89.15,721.80");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=40.03,748.73");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=14.92,776.08");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=43.11,798.17");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=52.10,790.82");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=19.04,794.97");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=8.64,729.12");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=75.83,717.58");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=85.19,689.38");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=65.64,700.77");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=7.35,632.36");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=39.63,629.97");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=43.76,658.31");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=111.16,608.59");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=79.17,632.26");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=73.74,571.88");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=146.49,643.01");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=223.18,792.20");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=152.50,653.72");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=265.39,754.16");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=184.09,707.78");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=148.12,769.78");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=312.85,769.62");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=212.01,672.21");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=245.28,756.11");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=130.51,637.58");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=30.91,760.75");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=11.13,693.57");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=92.27,793.37");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=83.44,750.35");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=20.23,741.31");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=37.43,701.86");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=121.22,732.70");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=81.68,700.84");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=8.92,673.06");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=67.58,585.32");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=42.22,590.45");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=89.01,677.77");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=178.50,540.71");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=111.66,704.79");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=104.05,511.47");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=98.40,606.52");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=128.33,723.14");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=162.13,717.92");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=185.10,735.20");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=239.33,780.52");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=204.47,726.76");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=314.79,783.23");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=150.02,690.26");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=235.56,672.81");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=117.63,667.83");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=59.84,710.78");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=76.29,790.47");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=23.26,704.05");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=64.73,784.17");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=11.58,786.32");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=22.34,715.18");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=48.72,722.73");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=43.20,692.64");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=103.06,728.79");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=31.04,595.65");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=28.94,657.77");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=69.43,649.05");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=163.55,561.30");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=25.35,607.48");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=87.32,590.74");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=139.46,696.76");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=168.43,758.72");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=133.80,736.80");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=208.03,738.41");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=159.81,733.66");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=195.89,750.52");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=255.36,681.50");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=218.19,626.51");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=181.72,769.42");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=95.61,665.53");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=53.94,658.66");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=69.71,752.81");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=53.50,760.01");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=132.43,775.57");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=22.98,782.24");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=34.74,714.31");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=63.47,734.84");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=110.74,659.26");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=73.44,778.56");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=13.15,563.16");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=53.67,641.50");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=13.99,708.93");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=80.26,612.86");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=29.05,680.97");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=84.15,561.22");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=107.59,783.36");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=122.08,786.72");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=151.51,797.95");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=125.18,703.16");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=237.34,740.71");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=217.52,733.96");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=288.50,793.64");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=173.75,618.51");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=228.81,618.40");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=92.66,755.28");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=119.71,694.65");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=2.37,772.25");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=58.38,751.06");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=74.04,736.93");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=2.48,792.82");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=18.79,729.98");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=73.34,671.26");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=52.87,697.37");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=141.36,708.64");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=17.79,640.94");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=119.26,622.07");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=16.36,659.60");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=157.58,668.16");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=48.07,569.72");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=79.23,523.60");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=125.35,748.61");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=113.13,752.48");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=202.84,656.44");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=217.04,748.65");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=121.67,797.44");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=206.22,755.99");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=200.08,785.10");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=254.20,723.20");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=208.36,692.34");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=22.32,672.44");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=44.92,738.68");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=64.67,767.88");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=5.23,747.83");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=42.63,772.97");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=31.03,795.91");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=55.33,669.73");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=139.95,752.11");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=67.56,659.79");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=92.04,655.48");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=61.39,683.93");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=40.26,610.39");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=39.06,647.97");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=110.15,538.69");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=88.63,541.20");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=90.63,552.98");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=102.90,711.48");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=281.17,741.50");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=138.81,723.81");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=245.61,676.50");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=241.90,798.68");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=257.28,733.24");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=236.19,760.89");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=288.66,617.60");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=259.87,705.46");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=167.42,708.89");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=26.61,751.37");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=86.70,781.03");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=17.54,757.80");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=49.34,780.57");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=112.15,768.08");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=41.68,676.98");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=165.55,687.68");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=141.46,671.44");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=122.40,646.96");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=63.96,636.69");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=5.11,718.96");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=91.12,638.25");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=143.54,628.24");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=51.41,620.83");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=106.85,563.41");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=126.93,672.25");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=158.44,701.00");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=145.66,787.00");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=208.12,795.08");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=241.41,686.24");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=299.48,705.45");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=308.53,727.17");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=231.11,646.02");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=252.51,696.18");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=110.06,681.91");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=122.49,761.77");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=31.69,771.28");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=106.78,798.00");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=77.30,762.26");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=102.11,767.71");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=77.65,657.40");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=102.28,648.68");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=68.60,724.67");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=49.83,712.35");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=33.66,568.24");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=71.40,623.93");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=102.31,674.07");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=65.48,541.99");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=97.28,689.57");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=125.40,593.97");
    }

}

