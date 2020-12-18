
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn8-5
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
        @display("p=717.00,10.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=756.06,40.59");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=718.76,40.56");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=717.27,24.05");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=684.56,104.69");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=686.24,151.64");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=640.62,119.68");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=663.37,54.51");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=676.65,32.34");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=691.76,95.08");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=676.15,85.37");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=637.00,82.38");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=627.93,78.11");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=631.77,139.24");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=688.82,126.46");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=753.03,60.24");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=768.14,7.93");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=723.59,58.94");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=666.31,117.44");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=617.08,55.41");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=662.81,96.24");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=651.11,122.89");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=647.21,101.92");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=618.52,37.79");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=554.19,11.50");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=742.49,79.86");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=775.99,25.85");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=686.52,59.33");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=761.72,19.00");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=733.81,169.79");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=712.74,84.88");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=646.18,133.93");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=656.33,44.04");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=673.35,43.30");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=712.29,97.54");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=694.91,72.77");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=563.70,49.11");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=622.19,102.32");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=540.03,165.93");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=623.01,126.76");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=680.15,95.39");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=753.31,29.33");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=750.00,142.62");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=672.29,137.01");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=604.28,38.48");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=601.05,119.08");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=577.39,174.10");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=611.84,128.88");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=654.20,66.68");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=604.27,10.55");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=659.16,23.56");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=757.13,75.43");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=640.49,10.94");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=736.12,12.24");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=736.44,24.10");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=703.97,172.54");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=575.84,125.66");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=722.07,76.30");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=631.97,95.21");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=659.69,156.21");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=693.92,5.04");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=640.56,50.33");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=581.57,41.99");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=627.86,111.30");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=651.79,190.70");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=778.00,88.93");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=699.33,33.97");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=737.76,1.02");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=660.69,106.94");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=550.41,38.75");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=755.37,121.27");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=601.99,203.82");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=611.41,100.79");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=614.52,72.39");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=548.04,27.36");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=642.18,30.35");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=782.68,62.17");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=669.37,21.33");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=781.27,8.56");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=728.63,145.42");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=611.41,176.08");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=738.93,126.25");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=635.07,39.67");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=753.57,92.93");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=629.21,161.86");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=733.03,38.31");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=618.01,81.88");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=708.70,68.36");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=563.36,182.64");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=697.95,132.79");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=763.49,61.71");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=790.02,30.10");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=793.75,55.97");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=675.62,167.34");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=538.66,16.91");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=583.01,61.96");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=699.11,108.80");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=724.92,100.13");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=531.46,68.76");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=532.45,3.70");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=660.26,34.14");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=750.91,49.81");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=661.00,9.11");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=658.31,83.56");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=711.97,120.47");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=697.73,189.94");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=698.29,48.45");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=640.57,67.03");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=702.15,14.95");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=684.84,139.96");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=600.51,97.20");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=581.36,109.58");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=619.70,140.21");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=570.48,199.07");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=702.12,148.81");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=764.19,49.05");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=741.25,45.48");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=726.75,113.96");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=591.06,153.28");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=590.23,35.68");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=593.55,53.00");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=661.56,167.68");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=601.34,138.50");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=686.48,36.45");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=536.47,42.15");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=689.39,19.49");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=769.00,37.50");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=712.72,52.16");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=647.43,78.61");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=764.37,92.20");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=691.71,174.37");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=702.80,87.91");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=573.44,55.28");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=600.29,65.48");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=660.86,143.18");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=674.88,70.91");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=610.75,114.48");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=590.73,23.91");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=631.73,151.75");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=733.44,67.20");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=779.14,111.92");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=793.53,15.84");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=759.18,111.86");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=630.25,196.38");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=613.07,19.92");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=680.63,116.66");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=619.39,208.77");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=617.95,160.65");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=551.61,74.17");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=505.13,52.48");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=707.01,6.03");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=776.66,48.98");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=709.23,37.39");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=796.02,40.89");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=726.69,190.23");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=724.05,219.09");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=587.97,88.00");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=576.10,24.71");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=676.73,128.03");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=679.07,10.05");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=672.78,151.99");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=570.40,72.13");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=604.23,26.44");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=664.41,204.85");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=661.60,178.58");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=726.56,47.81");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=754.52,4.10");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=794.84,75.70");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=613.13,190.05");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=628.26,62.59");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=621.12,172.75");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=563.24,146.74");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=567.74,119.27");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=622.80,47.11");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=510.52,15.40");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=625.33,3.23");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=799.15,120.89");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=673.85,54.38");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=699.69,61.25");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=653.23,55.23");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=694.73,211.43");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=601.58,86.75");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=603.06,49.54");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=636.11,104.91");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=686.15,189.33");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=597.92,108.87");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=693.44,83.62");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=565.24,92.94");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=606.00,160.47");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=719.88,171.37");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=707.55,140.10");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=736.49,55.91");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=743.21,151.68");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=636.45,169.62");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=635.15,21.04");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=742.59,106.26");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=650.89,146.20");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=739.73,91.49");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=549.75,53.18");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=559.94,60.19");
    }

}

