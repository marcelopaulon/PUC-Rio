
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn8-6
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
        @display("p=717.00,80.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=737.79,19.15");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=725.97,10.42");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=782.29,39.54");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=701.32,29.58");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=732.55,110.60");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=780.65,91.28");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=713.02,124.66");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=683.98,132.92");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=712.29,61.67");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=684.01,54.51");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=731.40,77.61");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=714.94,50.88");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=697.71,137.63");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=619.82,178.53");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=639.08,187.64");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=561.60,238.09");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=641.74,282.96");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=592.09,235.11");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=528.38,234.12");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=552.79,165.37");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=578.56,241.01");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=604.20,203.35");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=606.98,231.12");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=649.81,152.75");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=756.89,92.66");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=795.38,37.94");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=650.55,46.74");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=797.15,69.23");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=691.04,30.38");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=726.65,92.48");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=784.64,13.96");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=664.39,126.52");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=729.02,215.96");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=728.27,142.29");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=639.85,79.07");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=753.30,5.52");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=711.29,23.69");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=643.13,65.63");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=621.65,134.13");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=662.16,179.70");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=630.36,251.98");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=682.01,279.81");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=511.57,239.10");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=522.91,255.77");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=535.86,77.17");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=579.51,256.26");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=687.61,222.71");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=588.42,168.14");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=633.79,140.13");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=739.21,60.79");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=764.49,32.80");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=654.94,57.98");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=779.54,49.30");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=694.60,18.37");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=672.26,102.67");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=717.37,158.32");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=757.16,122.53");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=697.49,120.48");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=781.89,119.11");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=707.86,88.89");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=766.08,66.94");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=672.07,88.60");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=733.45,51.46");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=642.33,239.53");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=676.49,159.33");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=540.46,248.65");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=601.31,311.24");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=573.09,148.45");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=488.47,223.13");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=498.84,173.87");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=571.99,268.80");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=673.27,185.54");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=578.14,172.21");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=584.91,95.12");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=704.41,145.79");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=727.00,30.07");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=699.23,45.44");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=711.92,10.59");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=793.73,22.75");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=728.19,126.40");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=760.89,175.58");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=706.70,162.68");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=772.35,152.30");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=760.54,50.30");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=644.49,55.30");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=781.11,63.30");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=716.60,34.45");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=671.40,63.88");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=592.01,207.35");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=625.88,212.81");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=514.03,181.04");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=614.49,330.10");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=606.77,218.48");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=537.03,196.89");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=568.08,202.01");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=547.95,329.28");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=634.51,218.67");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=521.61,190.95");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=582.62,106.26");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=711.38,101.76");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=679.52,21.52");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=744.63,0.48");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=780.82,26.98");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=746.35,40.36");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=759.39,150.75");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=789.96,97.66");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=749.38,141.52");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=632.44,49.69");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=698.46,73.36");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=686.65,104.38");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=766.67,101.60");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=724.98,69.34");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=749.62,102.95");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=557.02,196.17");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=551.95,222.00");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=502.27,246.06");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=622.68,280.02");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=610.01,242.38");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=558.20,286.30");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=564.22,223.36");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=490.24,285.70");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=616.74,208.74");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=602.20,192.93");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=592.24,141.41");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=738.52,86.20");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=738.51,32.49");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=660.90,29.22");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=767.45,123.86");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=632.14,30.47");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=793.41,181.64");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=711.83,136.32");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=719.02,114.79");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=662.76,167.01");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=619.51,68.83");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=670.61,36.96");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=731.67,169.71");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=748.32,50.30");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=674.22,225.08");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=631.25,107.42");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=657.35,188.74");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=551.23,240.26");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=641.33,250.65");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=617.28,195.39");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=496.61,255.66");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=495.43,207.22");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=606.75,149.73");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=582.78,191.77");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=640.88,202.34");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=565.22,173.01");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=690.16,89.81");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=665.32,79.06");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=644.35,20.21");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=769.07,76.89");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=611.42,13.63");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=772.09,171.59");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=721.99,101.33");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=781.07,184.83");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=682.00,114.10");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=728.03,40.84");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=691.30,65.30");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=690.79,150.09");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=677.08,76.63");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=744.10,223.43");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=687.20,203.28");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=675.96,210.54");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=562.03,186.57");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=623.79,266.72");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=550.39,276.18");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=583.17,281.34");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=515.11,219.67");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=583.21,327.37");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=603.01,254.39");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=594.98,275.56");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=621.72,79.96");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=650.91,88.53");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=754.44,80.58");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=720.98,0.03");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=762.12,133.56");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=609.13,54.59");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=744.67,124.43");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=780.64,134.58");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=746.16,155.26");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=619.59,114.35");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=645.33,122.53");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=699.70,59.52");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=796.23,110.21");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=783.28,78.77");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=759.50,207.22");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=538.96,160.80");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=661.33,251.31");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=511.73,249.76");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=558.79,322.77");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=534.96,215.69");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=569.48,292.76");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=494.98,155.86");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=631.49,324.90");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=579.33,224.06");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=704.02,224.03");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=695.09,192.62");
    }

}

