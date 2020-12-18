
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn8_7
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
        @display("p=100.00,700.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=156.77,737.24");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=118.45,648.24");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=71.81,706.23");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=57.29,729.54");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=25.00,713.55");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=17.21,700.11");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=63.45,617.37");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=50.91,689.31");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=152.11,668.60");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=181.00,656.67");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=150.84,751.37");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=130.04,763.04");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=80.99,712.45");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=55.05,760.13");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=77.98,748.30");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=47.48,791.55");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=126.50,752.79");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=32.41,763.39");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=28.63,799.00");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=4.87,709.86");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=65.60,744.62");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=118.80,698.12");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=128.61,690.97");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=198.35,688.46");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=104.33,782.33");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=146.22,724.77");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=86.80,654.06");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=49.17,735.65");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=89.33,673.77");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=27.19,644.95");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=108.32,675.75");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=124.37,614.97");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=19.42,661.67");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=145.70,679.22");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=136.26,608.71");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=178.08,725.05");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=114.52,722.05");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=86.46,785.51");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=54.62,710.53");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=20.96,728.60");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=141.74,760.57");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=114.57,788.24");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=2.60,776.29");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=21.70,776.58");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=36.61,689.87");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=136.53,698.88");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=37.96,642.40");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=55.10,673.87");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=121.11,669.92");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=89.59,706.03");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=189.45,742.48");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=102.37,689.74");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=124.49,772.13");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=101.08,738.74");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=88.35,729.22");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=27.02,748.28");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=8.88,542.36");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=37.47,744.34");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=165.24,662.47");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=182.18,666.65");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=144.93,652.66");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=211.11,725.05");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=76.29,658.12");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=102.10,724.80");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=67.54,718.50");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=73.17,776.62");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=125.41,730.46");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=7.89,788.06");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=28.33,787.00");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=80.23,694.23");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=66.24,692.16");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=186.98,701.43");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=136.40,640.16");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=199.60,597.69");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=65.97,681.96");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=164.48,672.65");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=120.06,658.59");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=84.40,643.07");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=16.29,682.37");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=31.41,727.18");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=5.57,689.47");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=60.80,558.28");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=103.17,615.86");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=194.83,635.85");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=166.78,699.03");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=175.41,774.42");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=179.89,795.39");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=74.83,632.76");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=72.06,760.59");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=92.78,766.63");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=56.75,750.16");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=145.45,773.12");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=46.55,776.55");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=39.24,784.30");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=62.68,638.88");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=46.00,651.79");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=164.41,724.76");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=50.69,633.92");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=190.11,769.84");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=76.09,737.06");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=145.24,735.38");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=179.87,686.20");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=31.76,667.60");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=55.66,660.42");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=97.36,751.44");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=35.10,707.60");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=83.83,541.76");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=15.60,641.68");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=165.24,578.43");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=220.09,689.58");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=156.80,679.50");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=157.49,780.97");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=105.46,761.84");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=140.91,783.81");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=67.15,652.72");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=1.18,737.62");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=67.59,789.27");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=15.83,767.00");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=60.40,781.47");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=2.60,721.83");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=102.20,713.37");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=99.76,660.61");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=142.64,710.01");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=270.06,705.12");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=178.95,644.73");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=155.16,798.88");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=109.19,635.26");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=89.24,688.86");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=132.08,779.09");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=8.08,665.62");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=3.43,604.47");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=159.95,632.40");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=0.23,644.68");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=91.62,604.11");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=192.35,713.20");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=176.98,748.85");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=85.01,796.76");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=113.71,620.73");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=16.76,799.17");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=107.55,749.83");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=9.43,729.71");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=130.79,717.59");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=82.28,757.86");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=0.14,759.10");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=42.88,716.42");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=79.83,677.77");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=180.83,620.08");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=64.64,669.24");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=190.79,660.46");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=69.91,605.85");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=63.00,769.13");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=90.15,618.25");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=43.32,699.98");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=89.86,741.70");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=57.43,697.80");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=32.20,611.73");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=68.20,568.63");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=127.41,629.77");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=213.81,714.05");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=156.15,621.67");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=134.66,678.86");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=56.18,799.76");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=45.83,621.06");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=11.73,754.83");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=151.50,698.99");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=123.67,799.27");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=174.10,710.51");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=105.66,797.11");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=69.56,799.24");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=15.69,745.56");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=56.81,649.12");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=164.34,746.27");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=124.78,709.08");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=200.99,701.61");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=81.49,770.24");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=80.20,723.21");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=156.54,652.39");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=93.05,632.27");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=26.21,692.67");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=30.15,681.72");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=0.96,631.06");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=53.61,599.88");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=40.49,680.22");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=132.73,593.22");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=224.27,627.15");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=249.87,746.09");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=194.41,784.20");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=43.88,763.79");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=27.38,737.66");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=135.94,741.04");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=18.38,788.91");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=135.90,792.78");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=1.34,748.28");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=95.56,790.92");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=14.85,711.16");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=39.94,798.73");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=41.82,728.47");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=110.55,704.00");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=232.37,706.64");
    }

}

