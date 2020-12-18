
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn12-1
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
        @display("p=669.00,126.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=708.04,37.60");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=677.08,51.03");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=661.86,52.95");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=641.55,37.36");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=665.66,63.59");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=618.59,46.42");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=619.46,10.42");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=589.96,12.61");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=606.87,30.02");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=666.46,87.24");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=721.29,37.12");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=687.70,119.38");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=687.08,53.78");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=755.10,63.82");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=697.53,38.12");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=716.39,87.10");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=739.53,116.83");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=778.43,69.92");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=705.83,54.21");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=640.38,79.64");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=671.02,9.38");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=708.26,3.31");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=602.73,110.48");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=614.24,98.87");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=577.92,38.54");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=566.64,79.73");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=657.52,139.81");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=632.92,46.51");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=650.33,85.12");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=731.36,92.84");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=762.88,56.54");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=714.84,21.58");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=721.34,56.82");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=688.87,143.94");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=775.99,2.24");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=587.33,28.33");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=742.18,31.54");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=637.73,128.16");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=670.95,105.75");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=558.37,48.85");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=655.22,73.00");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=577.13,4.52");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=601.81,60.77");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=754.70,107.37");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=690.27,16.92");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=752.11,158.72");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=741.30,43.95");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=736.75,128.25");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=712.94,107.12");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=672.64,169.43");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=641.77,163.44");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=732.18,36.21");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=743.84,104.19");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=651.76,47.06");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=698.26,98.75");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=653.82,58.92");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=535.69,1.64");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=655.16,7.45");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=622.48,92.16");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=559.76,12.75");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=680.91,81.02");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=700.92,82.05");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=754.38,142.56");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=588.38,69.62");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=773.88,109.90");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=710.11,97.52");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=720.37,142.22");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=679.50,70.48");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=800.08,75.79");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=767.56,37.80");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=608.06,0.48");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=626.13,69.37");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=619.21,28.67");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=600.03,139.76");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=601.36,47.03");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=542.54,77.76");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=634.13,24.80");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=700.32,19.07");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=659.17,113.42");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=705.91,186.01");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=780.19,46.88");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=808.59,124.43");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=687.39,35.04");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=705.34,68.37");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=619.31,155.91");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=787.81,25.59");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=695.65,60.09");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=662.61,19.39");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=591.57,49.75");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=669.59,137.14");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=642.37,104.14");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=642.34,10.84");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=566.57,95.22");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=547.03,100.35");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=721.72,74.18");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=791.37,92.65");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=642.98,63.55");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=614.42,78.08");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=772.96,58.00");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=732.01,61.08");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=649.89,128.53");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=684.74,109.62");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=726.19,23.42");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=662.29,29.78");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=594.05,81.77");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=566.05,24.43");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=599.43,99.50");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=606.62,14.58");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=592.87,1.96");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=500.57,36.19");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=524.75,2.30");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=707.52,146.40");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=799.55,16.17");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=696.79,152.14");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=722.14,0.85");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=751.66,9.00");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=688.89,94.29");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=751.53,118.16");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=690.75,166.30");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=722.02,117.52");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=584.82,86.67");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=739.45,13.66");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=647.85,19.95");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=672.55,21.35");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=673.58,32.16");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=627.80,106.41");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=576.92,21.87");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=567.99,34.47");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=633.18,88.67");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=727.44,106.28");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=646.09,192.57");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=773.52,95.97");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=732.92,1.29");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=693.53,7.35");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=662.27,100.72");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=722.09,176.75");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=751.12,53.48");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=625.43,133.07");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=702.40,110.07");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=548.26,21.43");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=707.88,120.81");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=561.36,109.45");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=537.29,59.78");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=566.27,0.80");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=511.08,11.43");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=664.66,162.78");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=739.16,79.75");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=635.18,149.51");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=764.11,87.04");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=775.87,28.60");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=795.76,55.44");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=787.69,110.90");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=620.66,194.63");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=631.13,13.93");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=753.60,38.79");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=754.01,79.76");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=570.15,12.62");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=690.64,78.31");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=669.44,115.92");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=612.05,56.23");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=573.50,107.89");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=598.49,36.30");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=676.39,96.54");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=817.96,46.70");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=753.09,130.78");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=729.20,49.69");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=765.92,23.23");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=777.45,16.25");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=737.00,141.70");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=693.65,133.24");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=802.21,42.70");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=580.69,60.18");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=704.50,133.99");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=576.66,71.80");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=643.00,52.78");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=625.35,57.04");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=629.73,1.17");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=527.43,13.41");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=645.10,0.77");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=582.29,121.32");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=682.87,26.06");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=740.37,171.92");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=763.59,75.38");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=783.85,81.92");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=753.57,25.86");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=771.22,142.01");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=660.47,220.29");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=682.59,4.47");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=630.95,34.62");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=624.38,143.97");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=626.94,120.57");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=669.82,73.33");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=571.07,63.06");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=549.56,10.22");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=629.66,78.84");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=569.44,119.63");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=689.68,179.56");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=810.76,78.52");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=613.84,144.77");
    }

}

