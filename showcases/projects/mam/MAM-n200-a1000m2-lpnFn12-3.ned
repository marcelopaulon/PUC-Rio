
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn12-3
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
        @display("p=10.00,835.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=91.65,782.31");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=114.94,798.02");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=144.26,744.25");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=174.77,692.61");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=140.52,714.28");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=59.34,660.95");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=89.56,608.74");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=135.24,530.56");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=160.44,529.41");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=154.22,618.96");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=146.54,671.83");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=116.01,734.26");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=64.79,739.95");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=48.77,715.88");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=49.39,728.78");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=9.79,730.60");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=0.09,915.52");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=48.63,837.18");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=187.84,807.11");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=136.35,841.65");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=171.19,702.35");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=211.00,739.50");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=56.81,709.92");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=29.58,540.87");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=89.54,518.34");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=90.88,506.38");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=130.67,622.01");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=150.05,694.42");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=104.48,776.65");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=84.16,738.53");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=95.96,771.36");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=72.24,668.30");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=56.37,642.52");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=3.30,845.00");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=68.69,824.84");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=165.82,729.68");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=113.31,787.83");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=147.17,783.76");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=117.97,682.08");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=26.28,642.81");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=14.07,588.57");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=205.76,536.79");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=193.22,558.08");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=200.42,621.07");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=121.80,596.47");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=85.85,706.41");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=41.69,646.85");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=74.31,789.08");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=33.79,720.26");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=26.42,669.10");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=42.90,846.52");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=143.17,814.22");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=118.21,755.63");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=196.58,707.00");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=157.55,714.48");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=101.05,679.42");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=144.77,627.39");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=105.30,595.82");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=162.02,591.60");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=144.18,455.60");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=197.92,598.85");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=213.24,654.82");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=181.23,672.96");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=96.58,802.10");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=34.50,750.61");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=28.26,689.17");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=15.54,714.15");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=52.74,898.77");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=55.52,762.91");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=173.87,792.35");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=103.02,747.52");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=179.40,598.38");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=90.66,659.81");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=25.97,593.86");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=77.73,698.79");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=129.22,493.77");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=150.03,497.14");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=70.36,613.21");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=134.70,637.13");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=128.63,710.31");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=151.18,752.12");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=33.99,732.86");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=53.29,749.36");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=3.16,751.30");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=48.93,811.35");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=91.80,832.72");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=194.39,766.79");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=155.74,829.09");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=160.76,680.20");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=101.59,727.82");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=21.33,705.77");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=73.68,628.05");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=131.88,473.47");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=143.35,609.41");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=121.50,626.41");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=105.02,613.70");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=164.85,739.87");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=80.79,776.52");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=16.88,754.42");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=94.47,694.37");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=28.64,796.74");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=11.89,795.80");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=107.33,839.93");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=127.89,867.55");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=184.46,777.51");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=166.55,636.03");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=100.92,712.85");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=60.66,672.01");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=103.87,638.55");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=134.79,543.72");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=208.32,479.23");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=138.10,588.04");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=171.00,660.11");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=50.04,775.03");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=74.49,760.00");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=59.09,790.07");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=93.54,645.38");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=67.76,720.94");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=6.40,822.78");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=32.58,808.69");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=191.36,748.62");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=132.67,734.56");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=201.34,735.88");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=217.82,688.45");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=153.02,660.01");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=19.79,634.16");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=100.81,526.35");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=219.59,525.94");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=194.16,630.12");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=132.36,766.46");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=83.45,755.10");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=68.87,836.16");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=77.90,683.42");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=67.65,770.06");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=33.22,764.75");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=19.44,918.26");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=21.00,788.81");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=67.21,804.09");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=147.88,704.59");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=131.15,684.58");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=176.87,651.89");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=48.61,627.27");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=123.23,641.24");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=91.14,543.97");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=194.16,459.56");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=248.61,625.46");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=129.70,669.74");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=116.06,696.84");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=59.07,810.06");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=79.07,649.10");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=94.63,757.10");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=2.59,634.20");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=38.01,784.10");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=162.11,797.31");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=131.12,801.82");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=111.15,720.69");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=227.26,724.73");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=200.19,676.26");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=36.95,567.84");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=95.43,630.84");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=182.69,531.48");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=214.12,492.63");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=75.16,594.03");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=110.64,656.09");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=195.95,692.19");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=6.60,661.98");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=43.39,700.79");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=80.86,727.02");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=9.21,698.63");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=11.32,893.59");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=82.68,817.83");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=32.04,842.64");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=162.38,808.43");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=255.51,633.91");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=225.66,742.11");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=81.80,671.99");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=93.13,618.32");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=150.70,482.07");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=226.93,492.74");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=240.81,613.19");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=214.07,641.77");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=114.47,765.11");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=26.06,829.69");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=4.52,685.80");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=68.83,706.90");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=22.80,679.06");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=11.22,877.73");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=60.56,857.82");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=210.37,798.79");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=113.42,813.76");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=152.57,773.59");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=121.78,723.37");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=2.40,720.28");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=25.04,656.57");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=114.67,528.41");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=204.55,497.25");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=170.92,675.32");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=103.34,585.61");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=205.67,765.16");
    }

}

