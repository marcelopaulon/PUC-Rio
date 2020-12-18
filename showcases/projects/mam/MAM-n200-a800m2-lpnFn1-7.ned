
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn1-7
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
        @display("p=778.00,299.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=741.83,300.07");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=756.45,257.75");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=739.06,269.34");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=727.84,261.79");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=697.89,340.61");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=739.64,328.79");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=771.48,261.34");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=707.32,242.80");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=718.56,214.47");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=787.94,146.72");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=797.79,139.41");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=787.67,161.78");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=779.28,232.48");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=779.99,201.89");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=768.42,201.03");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=750.63,202.32");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=765.36,139.54");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=774.98,77.63");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=756.72,65.82");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=747.81,58.99");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=741.65,45.78");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=653.64,9.05");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=601.03,32.01");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=582.81,26.03");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=524.34,4.11");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=489.88,40.25");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=399.54,39.10");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=470.52,9.81");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=550.61,32.67");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=578.40,120.93");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=506.94,66.19");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=547.63,42.99");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=612.97,69.59");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=640.82,157.96");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=591.70,93.67");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=636.74,57.69");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=656.97,72.04");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=608.31,47.36");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=652.07,43.29");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=653.34,32.45");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=630.92,45.01");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=542.67,10.52");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=558.59,55.82");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=571.21,63.97");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=477.31,93.89");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=538.08,34.52");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=581.87,10.41");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=642.34,37.52");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=647.31,92.45");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=565.40,0.23");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=559.16,18.44");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=578.07,105.95");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=626.95,188.47");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=670.55,138.44");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=651.25,117.38");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=582.56,160.65");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=594.42,79.36");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=615.05,108.59");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=605.49,86.78");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=628.65,178.18");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=682.37,191.58");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=731.65,118.31");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=765.63,119.94");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=757.97,273.81");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=799.27,323.74");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=714.14,343.78");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=726.35,286.17");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=697.68,292.38");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=728.38,340.16");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=704.35,322.45");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=687.76,358.91");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=650.19,335.95");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=650.75,366.61");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=583.56,388.43");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=561.27,346.77");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=594.59,349.76");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=540.95,335.81");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=491.30,308.04");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=528.60,243.78");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=535.24,289.59");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=578.85,307.29");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=596.75,306.19");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=613.35,360.03");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=610.84,311.99");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=548.26,377.26");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=499.61,326.18");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=551.09,341.01");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=501.47,278.04");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=477.12,339.40");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=483.10,330.64");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=403.80,318.24");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=382.98,299.83");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=366.65,265.30");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=329.37,257.49");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=378.82,239.68");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=373.44,249.67");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=345.77,226.61");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=403.86,241.66");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=458.22,228.42");
    }

    host_fn_rly_101: <default("SensorNode")> like INetworkNode {
        @display("p=466.44,208.95");
    }

    host_fn_rly_102: <default("SensorNode")> like INetworkNode {
        @display("p=455.85,203.90");
    }

    host_fn_rly_103: <default("SensorNode")> like INetworkNode {
        @display("p=490.77,257.13");
    }

    host_fn_rly_104: <default("SensorNode")> like INetworkNode {
        @display("p=490.97,184.26");
    }

    host_fn_rly_105: <default("SensorNode")> like INetworkNode {
        @display("p=509.20,149.51");
    }

    host_fn_rly_106: <default("SensorNode")> like INetworkNode {
        @display("p=534.40,81.45");
    }

    host_fn_rly_107: <default("SensorNode")> like INetworkNode {
        @display("p=556.67,90.95");
    }

    host_fn_rly_108: <default("SensorNode")> like INetworkNode {
        @display("p=557.07,164.72");
    }

    host_fn_rly_109: <default("SensorNode")> like INetworkNode {
        @display("p=535.08,132.45");
    }

    host_fn_rly_110: <default("SensorNode")> like INetworkNode {
        @display("p=541.64,123.62");
    }

    host_fn_rly_111: <default("SensorNode")> like INetworkNode {
        @display("p=638.13,109.54");
    }

    host_fn_rly_112: <default("SensorNode")> like INetworkNode {
        @display("p=644.28,65.69");
    }

    host_fn_rly_113: <default("SensorNode")> like INetworkNode {
        @display("p=588.36,64.88");
    }

    host_fn_rly_114: <default("SensorNode")> like INetworkNode {
        @display("p=604.87,203.78");
    }

    host_fn_rly_115: <default("SensorNode")> like INetworkNode {
        @display("p=593.32,222.80");
    }

    host_fn_rly_116: <default("SensorNode")> like INetworkNode {
        @display("p=583.95,251.85");
    }

    host_fn_rly_117: <default("SensorNode")> like INetworkNode {
        @display("p=663.37,301.86");
    }

    host_fn_rly_118: <default("SensorNode")> like INetworkNode {
        @display("p=679.29,301.57");
    }

    host_fn_rly_119: <default("SensorNode")> like INetworkNode {
        @display("p=653.54,312.14");
    }

    host_fn_rly_120: <default("SensorNode")> like INetworkNode {
        @display("p=655.39,279.63");
    }

    host_fn_rly_121: <default("SensorNode")> like INetworkNode {
        @display("p=660.30,257.44");
    }

    host_fn_rly_122: <default("SensorNode")> like INetworkNode {
        @display("p=679.94,228.36");
    }

    host_fn_rly_123: <default("SensorNode")> like INetworkNode {
        @display("p=700.42,205.66");
    }

    host_fn_rly_124: <default("SensorNode")> like INetworkNode {
        @display("p=705.50,195.56");
    }

    host_fn_rly_125: <default("SensorNode")> like INetworkNode {
        @display("p=689.61,146.94");
    }

    host_fn_rly_126: <default("SensorNode")> like INetworkNode {
        @display("p=675.04,199.89");
    }

    host_fn_rly_127: <default("SensorNode")> like INetworkNode {
        @display("p=754.56,167.06");
    }

    host_fn_rly_128: <default("SensorNode")> like INetworkNode {
        @display("p=741.38,213.01");
    }

    host_fn_rly_129: <default("SensorNode")> like INetworkNode {
        @display("p=675.83,177.34");
    }

    host_fn_rly_130: <default("SensorNode")> like INetworkNode {
        @display("p=718.56,137.54");
    }

    host_fn_rly_131: <default("SensorNode")> like INetworkNode {
        @display("p=766.22,108.54");
    }

    host_fn_rly_132: <default("SensorNode")> like INetworkNode {
        @display("p=775.33,127.10");
    }

    host_fn_rly_133: <default("SensorNode")> like INetworkNode {
        @display("p=692.52,24.27");
    }

    host_fn_rly_134: <default("SensorNode")> like INetworkNode {
        @display("p=621.43,83.33");
    }

    host_fn_rly_135: <default("SensorNode")> like INetworkNode {
        @display("p=667.81,113.14");
    }

    host_fn_rly_136: <default("SensorNode")> like INetworkNode {
        @display("p=657.85,107.53");
    }

    host_fn_rly_137: <default("SensorNode")> like INetworkNode {
        @display("p=631.45,201.40");
    }

    host_fn_rly_138: <default("SensorNode")> like INetworkNode {
        @display("p=636.17,246.40");
    }

    host_fn_rly_139: <default("SensorNode")> like INetworkNode {
        @display("p=692.62,219.80");
    }

    host_fn_rly_140: <default("SensorNode")> like INetworkNode {
        @display("p=736.98,148.24");
    }

    host_fn_rly_141: <default("SensorNode")> like INetworkNode {
        @display("p=775.49,149.07");
    }

    host_fn_rly_142: <default("SensorNode")> like INetworkNode {
        @display("p=791.33,108.35");
    }

    host_fn_rly_143: <default("SensorNode")> like INetworkNode {
        @display("p=795.79,207.84");
    }

    host_fn_rly_144: <default("SensorNode")> like INetworkNode {
        @display("p=614.77,402.77");
    }

    host_fn_rly_145: <default("SensorNode")> like INetworkNode {
        @display("p=590.25,336.82");
    }

    host_fn_rly_146: <default("SensorNode")> like INetworkNode {
        @display("p=595.58,374.74");
    }

    host_fn_rly_147: <default("SensorNode")> like INetworkNode {
        @display("p=600.89,440.64");
    }

    host_fn_rly_148: <default("SensorNode")> like INetworkNode {
        @display("p=652.21,417.09");
    }

    host_fn_rly_149: <default("SensorNode")> like INetworkNode {
        @display("p=730.83,436.43");
    }

    host_fn_rly_150: <default("SensorNode")> like INetworkNode {
        @display("p=789.95,506.67");
    }

    host_fn_rly_151: <default("SensorNode")> like INetworkNode {
        @display("p=768.82,531.58");
    }

    host_fn_rly_152: <default("SensorNode")> like INetworkNode {
        @display("p=730.72,477.24");
    }

    host_fn_rly_153: <default("SensorNode")> like INetworkNode {
        @display("p=675.09,521.08");
    }

    host_fn_rly_154: <default("SensorNode")> like INetworkNode {
        @display("p=704.52,509.80");
    }

    host_fn_rly_155: <default("SensorNode")> like INetworkNode {
        @display("p=683.77,452.09");
    }

    host_fn_rly_156: <default("SensorNode")> like INetworkNode {
        @display("p=643.96,423.95");
    }

    host_fn_rly_157: <default("SensorNode")> like INetworkNode {
        @display("p=599.46,450.92");
    }

    host_fn_rly_158: <default("SensorNode")> like INetworkNode {
        @display("p=616.26,327.58");
    }

    host_fn_rly_159: <default("SensorNode")> like INetworkNode {
        @display("p=669.18,239.82");
    }

    host_fn_rly_160: <default("SensorNode")> like INetworkNode {
        @display("p=569.76,235.95");
    }

    host_fn_rly_161: <default("SensorNode")> like INetworkNode {
        @display("p=637.74,211.75");
    }

    host_fn_rly_162: <default("SensorNode")> like INetworkNode {
        @display("p=601.76,249.64");
    }

    host_fn_rly_163: <default("SensorNode")> like INetworkNode {
        @display("p=778.24,220.38");
    }

    host_fn_rly_164: <default("SensorNode")> like INetworkNode {
        @display("p=759.94,236.39");
    }

    host_fn_rly_165: <default("SensorNode")> like INetworkNode {
        @display("p=790.33,177.17");
    }

    host_fn_rly_166: <default("SensorNode")> like INetworkNode {
        @display("p=798.28,195.53");
    }

    host_fn_rly_167: <default("SensorNode")> like INetworkNode {
        @display("p=757.52,191.96");
    }

    host_fn_rly_168: <default("SensorNode")> like INetworkNode {
        @display("p=738.65,165.22");
    }

    host_fn_rly_169: <default("SensorNode")> like INetworkNode {
        @display("p=772.08,177.65");
    }

    host_fn_rly_170: <default("SensorNode")> like INetworkNode {
        @display("p=767.53,218.66");
    }

    host_fn_rly_171: <default("SensorNode")> like INetworkNode {
        @display("p=641.49,185.21");
    }

    host_fn_rly_172: <default("SensorNode")> like INetworkNode {
        @display("p=717.80,160.95");
    }

    host_fn_rly_173: <default("SensorNode")> like INetworkNode {
        @display("p=663.42,224.52");
    }

    host_fn_rly_174: <default("SensorNode")> like INetworkNode {
        @display("p=605.61,266.36");
    }

    host_fn_rly_175: <default("SensorNode")> like INetworkNode {
        @display("p=586.77,170.56");
    }

    host_fn_rly_176: <default("SensorNode")> like INetworkNode {
        @display("p=524.70,205.40");
    }

    host_fn_rly_177: <default("SensorNode")> like INetworkNode {
        @display("p=552.22,289.65");
    }

    host_fn_rly_178: <default("SensorNode")> like INetworkNode {
        @display("p=515.86,325.69");
    }

    host_fn_rly_179: <default("SensorNode")> like INetworkNode {
        @display("p=542.58,366.56");
    }

    host_fn_rly_180: <default("SensorNode")> like INetworkNode {
        @display("p=508.69,371.56");
    }

    host_fn_rly_181: <default("SensorNode")> like INetworkNode {
        @display("p=427.80,297.59");
    }

    host_fn_rly_182: <default("SensorNode")> like INetworkNode {
        @display("p=455.49,291.45");
    }

    host_fn_rly_183: <default("SensorNode")> like INetworkNode {
        @display("p=442.13,255.16");
    }

    host_fn_rly_184: <default("SensorNode")> like INetworkNode {
        @display("p=470.44,284.36");
    }

    host_fn_rly_185: <default("SensorNode")> like INetworkNode {
        @display("p=447.52,320.57");
    }

    host_fn_rly_186: <default("SensorNode")> like INetworkNode {
        @display("p=417.85,245.77");
    }

    host_fn_rly_187: <default("SensorNode")> like INetworkNode {
        @display("p=509.18,245.17");
    }

    host_fn_rly_188: <default("SensorNode")> like INetworkNode {
        @display("p=496.32,233.20");
    }

    host_fn_rly_189: <default("SensorNode")> like INetworkNode {
        @display("p=556.17,249.42");
    }

    host_fn_rly_190: <default("SensorNode")> like INetworkNode {
        @display("p=533.81,232.86");
    }

    host_fn_rly_191: <default("SensorNode")> like INetworkNode {
        @display("p=588.66,239.69");
    }

    host_fn_rly_192: <default("SensorNode")> like INetworkNode {
        @display("p=622.02,252.44");
    }

    host_fn_rly_193: <default("SensorNode")> like INetworkNode {
        @display("p=624.22,160.29");
    }

    host_fn_rly_194: <default("SensorNode")> like INetworkNode {
        @display("p=637.83,228.83");
    }

    host_fn_rly_195: <default("SensorNode")> like INetworkNode {
        @display("p=647.62,266.35");
    }

    host_fn_rly_196: <default("SensorNode")> like INetworkNode {
        @display("p=777.61,321.16");
    }

    host_fn_rly_197: <default("SensorNode")> like INetworkNode {
        @display("p=787.90,318.54");
    }

    host_fn_rly_198: <default("SensorNode")> like INetworkNode {
        @display("p=778.74,249.40");
    }

    host_fn_rly_199: <default("SensorNode")> like INetworkNode {
        @display("p=790.99,287.80");
    }

    host_fn_rly_200: <default("SensorNode")> like INetworkNode {
        @display("p=729.68,235.49");
    }

}

