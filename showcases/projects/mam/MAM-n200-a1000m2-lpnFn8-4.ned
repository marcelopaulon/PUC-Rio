
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn8-4
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
        @display("p=151.00,841.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=165.12,742.55");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=191.45,772.31");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=141.63,837.27");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=158.34,815.43");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=189.81,827.84");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=146.59,728.16");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=151.48,754.35");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=97.33,700.21");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=113.59,736.22");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=95.39,735.58");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=118.50,761.30");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=106.30,791.19");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=118.60,832.56");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=101.32,833.90");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=57.17,756.49");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=12.36,724.37");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=24.10,746.72");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=63.90,707.19");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=22.07,625.34");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=87.25,685.37");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=79.31,660.50");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=51.66,632.11");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=150.90,621.97");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=151.69,590.01");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=164.60,839.55");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=221.37,729.24");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=204.41,712.17");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=169.45,855.51");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=200.82,753.44");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=286.62,828.61");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=206.52,740.49");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=138.47,763.01");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=128.77,696.91");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=132.83,727.30");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=49.59,657.53");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=176.34,710.87");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=145.54,852.22");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=83.78,854.27");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=105.53,824.62");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=129.35,825.26");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=69.51,732.52");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=35.38,737.46");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=13.55,708.75");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=12.54,649.89");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=90.74,601.42");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=47.71,688.66");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=19.20,606.09");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=91.77,587.28");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=221.15,596.66");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=132.14,849.13");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=144.75,698.38");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=276.73,750.89");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=201.32,790.98");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=116.92,751.15");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=205.09,859.94");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=108.64,668.04");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=89.83,830.55");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=139.94,632.04");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=93.30,749.12");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=73.31,676.10");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=102.90,773.38");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=151.67,796.38");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=45.12,773.58");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=8.52,869.08");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=56.06,732.21");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=19.10,690.01");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=54.32,718.33");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=0.54,736.75");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=3.27,661.63");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=106.30,681.77");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=37.67,674.30");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=58.73,639.35");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=225.27,649.82");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=114.28,599.58");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=102.01,927.03");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=158.32,661.42");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=224.60,801.85");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=96.74,849.08");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=169.19,817.24");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=213.03,749.47");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=160.14,731.80");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=176.27,750.25");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=69.57,789.62");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=176.35,662.54");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=21.93,782.99");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=130.87,750.94");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=74.37,801.24");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=176.24,787.27");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=66.75,845.58");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=41.29,761.33");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=12.78,802.71");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=10.68,841.08");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=65.17,629.93");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=61.96,543.54");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=125.28,654.63");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=30.74,704.03");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=86.80,723.09");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=167.14,692.20");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=126.50,585.24");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=178.60,896.41");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=149.90,808.57");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=196.72,836.22");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=167.37,769.68");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=181.06,821.21");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=257.75,797.64");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=148.60,711.27");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=118.06,696.69");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=70.88,652.40");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=145.71,745.75");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=77.32,773.63");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=118.15,707.80");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=52.83,838.82");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=153.91,774.21");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=141.37,777.58");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=124.02,682.74");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=85.17,761.00");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=54.97,777.59");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=45.01,713.63");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=40.21,598.77");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=39.83,661.26");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=86.82,649.11");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=53.36,598.43");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=141.59,610.84");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=172.54,625.88");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=85.09,791.30");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=239.15,772.04");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=248.48,762.82");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=142.87,821.19");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=188.77,742.81");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=195.97,818.61");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=96.08,785.59");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=218.03,689.72");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=139.88,648.99");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=133.98,801.46");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=153.54,684.56");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=114.57,857.31");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=108.98,720.25");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=112.38,841.63");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=70.08,827.86");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=30.37,765.00");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=58.09,802.03");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=115.74,773.44");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=67.25,717.25");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=10.30,559.62");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=109.05,616.61");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=118.17,726.07");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=13.09,616.19");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=127.68,643.20");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=214.12,658.76");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=100.30,913.35");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=170.70,804.37");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=235.31,739.63");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=144.66,915.51");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=218.90,873.79");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=124.10,902.58");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=88.09,695.58");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=210.26,784.84");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=115.33,656.89");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=59.78,656.93");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=127.48,785.15");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=48.87,747.68");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=64.97,861.59");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=82.92,889.44");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=26.54,855.26");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=107.69,746.86");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=28.32,727.59");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=98.56,803.53");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=8.25,784.06");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=121.23,614.76");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=63.35,694.16");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=72.47,593.67");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=75.67,605.13");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=204.52,560.18");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=116.38,572.99");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=165.58,908.51");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=172.59,725.75");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=246.86,828.20");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=135.47,862.65");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=229.90,760.57");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=207.25,813.08");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=184.79,700.58");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=187.70,663.77");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=167.09,641.86");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=127.16,771.55");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=136.98,789.01");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=101.21,756.95");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=114.79,804.32");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=180.22,845.83");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=86.79,910.55");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=36.34,824.11");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=2.91,752.94");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=81.64,742.75");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=25.04,655.16");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=75.06,573.14");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=154.22,671.33");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=77.61,582.91");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=39.64,566.52");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=135.78,576.64");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=101.60,582.13");
    }

}

