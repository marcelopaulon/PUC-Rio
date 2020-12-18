
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn8_9
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
        @display("p=34.67,731.09");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=23.35,768.10");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=74.18,733.27");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=62.78,736.12");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=156.34,706.44");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=190.82,725.59");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=178.56,735.13");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=158.20,675.02");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=80.19,690.77");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=71.54,718.57");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=147.63,662.59");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=122.85,652.46");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=100.63,630.19");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=120.59,638.96");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=179.38,665.04");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=201.27,603.57");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=200.32,633.55");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=196.45,656.18");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=136.00,671.36");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=148.10,778.55");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=113.00,790.13");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=60.19,754.20");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=75.61,763.21");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=171.49,777.77");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=117.76,676.99");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=50.02,650.37");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=82.08,779.14");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=135.79,742.96");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=138.63,696.78");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=195.49,755.22");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=192.68,779.24");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=224.75,717.15");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=135.67,628.42");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=168.21,643.52");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=92.70,738.40");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=197.40,711.68");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=26.55,652.32");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=197.77,620.84");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=89.56,644.75");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=181.09,676.90");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=223.94,597.55");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=218.70,656.07");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=175.23,652.34");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=136.00,769.10");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=135.13,728.90");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=71.09,794.23");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=48.29,749.35");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=124.13,685.40");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=137.00,757.45");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=84.85,671.87");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=54.37,766.24");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=47.28,727.88");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=136.54,660.41");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=8.35,750.18");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=190.28,694.87");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=282.12,687.37");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=162.18,686.47");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=122.77,596.74");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=92.89,691.40");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=61.65,708.41");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=158.18,745.09");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=171.35,598.85");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=105.71,542.69");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=63.45,608.37");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=209.33,704.49");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=213.46,605.21");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=245.57,605.62");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=158.73,634.55");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=199.72,677.22");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=241.43,761.66");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=132.85,798.37");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=101.51,719.41");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=85.56,751.27");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=169.06,799.25");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=113.71,769.99");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=37.66,698.27");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=19.61,682.59");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=72.40,743.52");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=43.57,790.93");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=180.48,753.06");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=241.30,715.23");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=192.25,736.77");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=108.37,638.93");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=155.74,716.99");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=71.19,701.31");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=237.57,639.49");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=75.70,616.47");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=69.32,592.71");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=62.91,662.05");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=173.98,685.17");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=277.65,620.33");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=227.13,668.58");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=150.41,642.87");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=189.71,631.77");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=148.20,790.67");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=85.05,795.90");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=7.25,727.87");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=109.12,752.22");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=202.88,776.86");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=158.63,622.10");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=48.99,673.86");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=29.81,753.97");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=34.53,673.90");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=19.98,740.07");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=102.13,763.91");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=171.73,763.32");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=183.05,714.62");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=156.38,654.61");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=17.11,636.12");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=109.42,731.55");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=173.43,627.73");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=167.43,666.59");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=12.73,663.51");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=141.19,584.71");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=268.02,645.99");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=132.21,607.23");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=126.85,666.20");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=199.55,558.70");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=142.99,681.89");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=205.95,723.69");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=149.65,733.15");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=41.92,713.50");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=128.33,704.32");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=188.77,765.34");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=111.37,696.04");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=91.06,760.03");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=52.51,713.38");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=48.91,687.07");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=0.42,670.00");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=94.23,773.80");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=206.95,748.52");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=126.72,781.22");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=155.06,603.08");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=106.09,604.28");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=1.70,691.06");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=76.19,629.08");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=220.29,639.14");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=152.55,612.98");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=26.41,619.12");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=122.52,718.00");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=249.33,587.51");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=263.06,604.03");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=207.77,664.00");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=80.71,655.76");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=206.63,786.69");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=201.87,763.69");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=59.40,798.92");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=19.41,756.10");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=151.72,767.89");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=167.99,734.07");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=83.10,723.45");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=69.42,772.13");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=20.86,702.21");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=109.61,713.55");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=93.12,663.38");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=110.94,685.73");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=198.69,688.48");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=233.71,655.49");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=52.93,633.88");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=91.34,634.71");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=69.40,673.52");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=143.30,652.90");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=116.91,560.31");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=105.59,650.37");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=228.94,738.59");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=221.21,581.22");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=180.76,567.12");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=180.68,636.31");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=178.63,697.79");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=127.03,761.32");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=162.12,758.94");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=102.22,796.50");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=119.73,728.41");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=239.44,749.36");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=65.34,684.04");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=1.29,717.91");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=0.83,790.04");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=55.23,783.64");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=27.32,693.03");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=216.48,745.09");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=249.25,787.75");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=251.12,689.78");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=213.30,713.84");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=122.78,752.02");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=35.25,742.94");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=186.69,586.36");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=90.80,606.65");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=151.12,696.80");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=181.63,596.17");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=170.36,748.49");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=171.98,611.21");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=222.38,611.91");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=256.91,650.98");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=115.58,663.32");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=229.62,775.17");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=36.58,772.22");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=33.26,786.63");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=10.59,767.95");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=160.93,781.56");
    }

}

