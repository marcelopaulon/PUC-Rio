
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn4-8
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
        @display("p=513.00,628.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=586.37,619.60");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=549.95,590.76");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=534.96,597.23");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=534.16,551.78");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=551.68,562.26");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=578.43,543.42");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=550.26,637.54");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=555.53,651.26");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=535.60,661.22");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=558.32,749.76");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=538.49,737.02");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=502.28,668.58");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=477.24,709.36");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=497.01,721.32");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=601.28,756.18");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=536.13,710.54");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=627.48,735.43");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=585.59,750.22");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=518.91,723.47");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=482.69,667.62");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=495.36,733.95");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=491.95,810.72");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=530.25,835.37");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=540.81,864.90");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=534.73,930.45");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=512.33,901.51");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=513.90,887.08");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=458.08,844.03");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=537.15,816.08");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=571.43,738.81");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=561.62,767.25");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=525.15,708.24");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=449.64,732.10");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=471.84,746.99");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=519.49,645.01");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=505.12,649.40");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=559.12,679.52");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=548.16,814.89");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=497.87,830.83");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=470.10,820.63");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=473.42,835.72");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=520.14,842.34");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=462.70,811.10");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=480.13,785.55");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=520.62,774.53");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=571.70,806.93");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=636.17,762.20");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=654.64,726.30");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=728.66,700.70");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=464.33,541.02");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=531.45,614.87");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=506.98,659.43");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=570.31,519.87");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=542.48,621.22");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=521.92,610.67");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=614.45,522.74");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=483.29,651.92");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=472.18,615.92");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=527.48,674.60");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=538.67,724.94");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=557.11,731.69");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=565.65,692.56");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=458.68,620.08");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=506.95,738.55");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=618.35,682.17");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=550.10,697.87");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=627.30,786.59");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=560.02,717.61");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=510.97,714.68");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=464.80,680.99");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=535.02,790.28");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=466.31,850.45");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=603.92,861.03");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=618.79,826.22");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=507.23,987.91");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=550.38,908.85");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=574.23,864.16");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=445.72,824.40");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=537.78,851.85");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=575.74,689.09");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=602.07,797.59");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=475.14,732.88");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=409.70,694.15");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=492.29,658.35");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=474.00,576.34");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=470.96,649.73");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=576.85,601.66");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=586.05,818.89");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=499.19,848.87");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=523.57,891.48");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=388.51,826.47");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=458.56,792.40");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=420.16,862.61");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=390.08,753.94");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=436.58,806.68");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=626.69,854.89");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=637.86,786.38");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=697.94,749.64");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=810.25,729.37");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=417.03,617.26");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=657.74,591.42");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=481.04,597.24");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=569.36,634.16");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=598.28,622.79");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=597.77,532.87");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=587.85,471.78");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=552.54,626.14");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=653.39,657.05");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=617.06,660.03");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=590.96,799.05");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=601.24,772.87");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=503.25,691.30");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=496.87,755.92");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=577.87,764.96");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=616.11,762.67");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=628.49,711.56");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=611.11,742.00");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=508.37,766.97");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=490.98,636.05");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=525.35,749.51");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=451.04,645.13");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=532.21,881.72");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=575.57,886.97");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=571.51,817.41");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=524.81,935.41");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=513.23,873.42");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=553.77,925.43");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=549.42,856.71");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=515.04,811.71");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=591.51,650.83");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=555.73,839.84");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=534.11,757.77");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=425.94,680.45");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=543.99,756.18");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=506.07,559.90");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=546.49,679.53");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=603.40,695.66");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=498.65,820.64");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=472.65,760.21");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=431.61,848.36");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=419.51,872.70");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=502.14,883.31");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=416.33,836.94");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=480.85,827.12");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=553.94,806.53");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=623.75,802.34");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=640.43,737.70");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=642.66,680.93");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=635.15,668.27");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=470.95,627.92");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=523.59,656.87");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=475.75,551.89");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=472.69,521.76");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=581.89,481.30");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=651.28,565.76");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=606.65,555.23");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=454.68,630.37");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=624.99,629.75");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=519.24,666.42");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=545.73,776.66");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=591.11,727.93");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=455.88,754.46");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=487.02,714.22");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=471.65,776.25");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=595.66,782.92");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=500.98,620.69");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=655.48,822.09");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=581.24,709.84");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=489.95,745.84");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=486.07,695.85");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=449.17,770.58");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=501.06,805.14");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=601.40,819.51");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=578.79,847.55");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=533.10,947.33");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=426.59,890.68");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=444.04,889.78");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=384.11,871.02");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=591.23,764.31");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=580.85,798.09");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=519.11,795.64");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=517.22,678.66");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=466.97,698.00");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=453.29,698.42");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=560.77,606.80");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=502.03,582.94");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=559.36,702.21");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=595.54,834.13");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=526.49,822.31");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=476.83,882.52");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=460.64,825.27");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=499.06,905.73");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=469.42,862.51");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=446.09,749.11");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=422.66,793.01");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=559.03,826.23");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=674.72,750.47");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=680.67,780.88");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=706.28,666.58");
    }

}

