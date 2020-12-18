
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn4-4
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
        @display("p=643.00,83.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=654.77,62.37");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=608.98,117.01");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=621.78,150.07");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=598.15,190.80");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=601.58,140.58");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=570.70,54.08");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=542.81,96.08");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=568.65,97.51");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=562.01,71.22");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=581.57,127.10");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=588.11,220.18");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=556.96,221.19");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=584.86,267.42");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=559.97,260.24");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=634.60,309.54");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=706.25,292.48");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=737.00,286.10");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=755.57,346.21");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=744.78,354.07");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=784.93,304.26");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=745.78,235.07");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=760.64,200.13");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=757.53,187.95");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=773.41,213.57");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=725.31,206.37");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=714.24,206.40");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=684.97,209.63");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=663.14,134.70");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=630.15,104.88");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=576.26,170.68");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=556.92,171.00");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=565.70,108.30");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=498.40,57.55");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=482.90,27.60");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=597.98,92.00");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=508.77,85.89");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=526.42,8.62");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=579.99,12.55");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=503.50,71.29");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=450.02,83.17");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=506.61,100.66");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=510.24,182.25");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=526.07,148.01");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=579.68,104.26");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=643.84,165.50");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=647.37,188.82");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=608.07,169.18");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=586.38,231.18");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=566.78,179.17");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=656.57,108.01");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=693.82,75.22");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=598.45,64.74");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=588.92,161.90");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=689.10,162.94");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=568.02,87.07");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=500.54,5.78");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=551.49,131.76");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=524.56,46.26");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=519.07,83.07");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=668.77,162.26");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=622.56,237.06");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=575.81,203.31");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=584.31,191.99");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=590.30,312.10");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=608.64,359.94");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=702.92,321.13");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=680.47,233.45");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=779.29,359.75");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=662.20,361.99");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=754.32,272.11");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=720.60,228.78");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=781.92,146.96");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=770.51,170.48");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=755.50,227.85");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=727.32,151.80");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=739.46,215.38");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=647.03,278.29");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=672.96,126.39");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=661.75,16.77");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=621.36,127.27");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=622.77,172.98");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=502.82,34.99");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=486.90,53.55");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=447.53,38.72");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=555.56,88.33");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=484.56,79.41");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=568.36,6.42");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=591.59,40.69");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=519.77,115.44");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=435.37,107.71");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=585.76,83.71");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=493.81,125.40");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=551.77,64.24");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=538.67,35.05");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=647.88,220.34");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=674.75,201.15");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=628.72,247.95");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=618.47,202.35");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=484.28,205.06");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=666.49,49.12");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=673.21,72.62");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=616.09,182.30");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=599.95,157.13");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=598.11,173.48");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=648.85,150.89");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=488.75,66.21");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=575.94,71.40");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=598.46,107.75");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=626.25,57.57");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=666.04,89.35");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=666.25,207.76");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=607.98,304.86");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=553.10,336.72");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=551.41,265.57");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=673.98,280.04");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=787.43,329.99");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=755.75,285.25");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=746.93,340.36");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=732.13,312.60");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=798.80,290.62");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=670.04,223.05");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=713.83,256.24");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=684.88,141.49");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=773.06,240.83");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=726.89,250.05");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=684.25,183.61");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=688.01,307.19");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=681.65,119.41");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=706.85,154.20");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=635.01,181.38");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=521.07,168.71");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=527.86,187.48");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=554.60,112.98");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=427.21,55.03");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=525.35,28.61");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=504.32,133.77");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=541.16,16.45");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=615.32,64.95");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=431.39,121.00");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=515.20,146.79");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=482.46,111.56");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=431.22,199.74");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=573.22,121.28");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=527.15,55.95");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=613.54,221.99");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=694.47,131.39");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=581.14,182.27");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=657.97,271.78");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=625.77,188.49");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=562.66,43.02");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=687.68,17.20");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=548.01,48.56");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=631.85,147.55");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=650.51,140.38");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=626.99,117.29");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=538.90,63.40");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=502.78,119.50");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=647.10,40.18");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=603.17,28.60");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=573.28,146.13");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=631.90,263.09");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=569.42,218.85");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=663.65,231.75");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=544.98,197.57");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=568.61,367.34");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=730.06,322.40");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=714.79,355.24");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=735.32,297.63");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=719.92,365.37");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=792.59,263.04");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=786.99,202.64");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=741.24,257.79");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=736.12,177.01");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=744.54,152.39");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=794.25,243.41");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=698.64,211.01");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=707.66,234.75");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=743.68,86.46");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=561.45,135.98");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=554.97,182.48");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=594.98,206.95");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=546.75,79.33");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=464.96,91.24");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=430.49,8.65");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=612.09,100.62");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=537.99,46.98");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=440.49,51.74");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=577.68,2.54");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=452.06,106.99");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=488.06,88.87");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=534.82,171.35");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=539.61,246.71");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=513.50,126.59");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=613.72,24.31");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=658.35,72.12");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=686.92,242.91");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=538.02,182.04");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=525.31,215.78");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=538.87,218.71");
    }

}

