
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn8-9
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
        @display("p=552.00,161.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=491.90,114.61");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=566.18,89.63");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=477.28,102.86");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=531.25,53.92");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=511.81,43.09");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=598.68,75.00");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=677.47,80.58");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=633.56,18.19");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=685.50,19.58");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=608.05,60.98");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=677.76,56.05");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=737.13,11.73");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=758.22,25.32");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=669.40,2.51");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=665.69,34.25");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=751.26,43.85");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=738.53,108.58");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=728.03,120.49");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=798.65,78.65");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=754.66,73.19");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=743.51,59.39");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=787.85,37.57");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=755.99,192.36");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=756.18,178.58");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=513.37,144.98");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=460.07,149.58");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=593.03,174.19");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=507.19,172.44");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=487.06,63.48");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=501.67,52.84");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=572.68,102.21");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=637.97,126.09");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=670.78,24.07");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=709.69,22.09");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=611.19,76.80");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=621.80,37.64");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=730.57,3.87");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=783.40,83.79");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=644.25,80.90");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=698.77,33.71");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=772.59,39.42");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=720.44,99.22");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=696.07,125.40");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=723.59,37.73");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=717.53,127.78");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=659.70,7.12");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=719.65,0.85");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=792.73,270.07");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=782.88,176.66");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=556.98,146.74");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=552.65,42.87");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=573.91,37.53");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=460.34,101.05");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=436.49,38.77");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=577.53,20.47");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=525.22,89.46");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=671.54,148.23");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=595.40,59.34");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=646.67,33.96");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=553.31,0.50");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=706.08,68.54");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=701.23,91.36");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=762.76,91.02");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=721.10,24.61");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=663.01,46.78");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=774.44,63.92");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=744.20,29.85");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=775.40,150.58");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=705.03,50.45");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=733.24,131.82");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=736.81,46.05");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=786.60,106.78");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=709.38,168.40");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=729.25,178.69");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=465.34,116.41");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=518.57,53.64");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=583.41,133.39");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=485.79,45.85");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=513.35,115.45");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=490.10,4.27");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=569.85,7.66");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=633.00,155.21");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=629.13,55.99");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=681.25,31.58");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=612.29,10.52");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=624.79,103.43");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=719.34,51.31");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=730.69,94.96");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=685.70,41.60");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=620.41,72.09");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=777.59,74.33");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=674.53,168.38");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=745.24,125.23");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=755.34,13.80");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=770.78,119.96");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=751.32,2.84");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=798.34,26.30");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=790.66,228.83");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=719.53,161.32");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=565.43,158.51");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=485.10,137.27");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=593.59,39.23");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=499.01,75.50");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=476.78,90.62");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=529.78,41.10");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=598.08,90.75");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=661.42,73.11");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=643.23,63.32");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=716.95,114.34");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=632.95,86.33");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=665.71,62.49");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=733.04,32.12");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=672.59,41.55");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=648.34,18.40");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=725.32,63.90");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=790.84,50.87");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=750.63,113.45");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=659.23,157.35");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=791.73,156.75");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=790.15,126.21");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=693.09,75.52");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=785.35,61.37");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=744.86,195.76");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=771.64,179.07");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=617.39,204.88");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=453.02,118.75");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=585.83,3.40");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=442.99,153.47");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=530.23,113.33");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=489.66,89.64");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=599.30,150.48");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=654.97,119.96");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=573.15,70.47");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=748.81,87.06");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=625.98,131.65");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=689.17,63.38");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=754.98,59.87");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=713.33,11.02");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=621.03,1.24");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=660.49,24.64");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=731.77,75.16");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=784.61,135.45");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=663.26,91.65");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=766.55,56.86");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=742.76,76.65");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=679.47,107.69");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=765.24,130.86");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=769.03,224.52");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=712.14,138.58");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=523.64,135.26");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=538.93,102.37");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=558.25,107.31");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=527.20,170.57");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=538.61,84.47");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=529.85,70.85");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=549.15,71.25");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=604.65,120.87");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=567.70,23.60");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=694.65,24.53");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=612.64,46.72");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=613.65,28.24");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=689.32,0.05");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=699.18,6.36");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=715.68,77.85");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=583.85,56.53");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=766.69,78.96");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=731.49,194.25");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=646.93,92.64");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=747.55,103.68");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=760.19,106.12");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=780.80,98.27");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=799.63,102.82");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=790.72,216.64");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=733.80,142.66");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=498.98,95.52");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=510.76,88.80");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=581.65,123.12");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=389.20,113.92");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=584.93,101.88");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=477.70,21.28");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=666.66,112.75");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=656.84,172.74");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=634.85,28.98");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=678.79,97.29");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=618.70,111.90");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=598.28,5.26");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=799.99,2.86");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=798.55,67.94");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=589.57,20.40");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=599.22,103.59");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=772.88,10.31");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=695.97,166.80");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=779.31,190.49");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=787.44,71.59");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=774.64,27.33");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=790.11,12.97");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=692.49,52.16");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=740.40,211.61");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=746.79,252.48");
    }

}

