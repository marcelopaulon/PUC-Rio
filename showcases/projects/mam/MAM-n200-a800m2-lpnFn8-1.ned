
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn8-1
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
        @display("p=616.00,246.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=624.32,254.81");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=600.20,226.92");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=539.58,207.76");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=558.84,288.42");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=619.63,143.42");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=584.65,122.98");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=574.51,133.01");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=528.57,206.25");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=475.15,182.42");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=531.48,119.80");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=609.61,63.80");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=619.97,2.58");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=679.36,79.31");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=690.38,65.86");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=690.11,35.11");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=678.13,90.04");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=610.16,156.82");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=588.01,166.30");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=640.60,122.00");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=621.65,36.82");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=583.53,44.86");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=667.10,2.97");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=697.93,19.37");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=620.86,17.18");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=604.03,165.70");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=658.10,209.08");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=599.84,180.90");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=507.33,163.25");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=538.23,220.19");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=690.14,180.60");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=665.08,152.23");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=582.94,205.48");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=514.04,193.74");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=509.68,274.46");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=574.37,104.59");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=625.86,50.53");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=716.58,20.55");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=633.39,58.54");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=657.88,58.03");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=604.19,18.89");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=644.46,80.48");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=548.42,219.19");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=615.96,192.03");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=672.22,102.90");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=530.42,3.43");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=572.87,52.46");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=630.68,1.00");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=727.09,51.30");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=645.98,23.07");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=662.24,325.35");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=643.16,239.86");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=596.34,297.02");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=523.02,217.95");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=552.35,279.67");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=622.81,154.01");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=573.99,119.53");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=543.64,115.18");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=510.40,298.11");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=565.13,166.86");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=498.18,111.18");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=554.49,98.54");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=691.09,2.45");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=633.30,111.96");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=681.66,149.59");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=749.15,18.44");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=703.36,62.82");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=600.37,130.38");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=588.88,184.22");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=680.87,48.97");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=595.61,96.12");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=502.40,39.31");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=675.50,16.98");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=702.13,5.32");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=633.42,38.01");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=643.50,310.42");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=572.63,293.51");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=613.90,211.24");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=574.10,178.20");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=546.33,299.20");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=632.02,219.21");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=655.06,89.34");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=485.52,150.15");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=518.66,178.73");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=395.02,227.14");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=522.87,145.26");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=587.91,88.04");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=656.48,8.46");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=629.97,125.44");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=702.67,42.99");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=670.30,33.85");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=692.90,158.69");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=679.62,122.04");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=559.78,259.11");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=694.34,139.06");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=673.64,62.88");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=566.47,82.57");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=574.22,36.03");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=714.66,10.26");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=604.50,89.94");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=690.40,274.07");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=594.65,242.00");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=551.02,191.77");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=472.07,159.95");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=545.22,256.80");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=607.31,45.63");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=589.26,113.37");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=500.33,80.66");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=545.32,167.29");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=427.70,159.80");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=560.25,128.04");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=609.71,9.80");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=558.50,7.93");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=666.51,84.14");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=774.92,110.00");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=709.16,100.78");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=740.91,151.12");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=651.69,124.17");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=535.92,105.92");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=554.69,145.06");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=706.15,74.72");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=649.15,40.39");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=739.61,31.19");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=710.43,30.46");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=581.39,23.77");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=607.71,271.06");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=644.27,350.26");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=668.38,165.14");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=492.71,259.23");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=625.01,334.84");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=647.80,140.15");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=525.74,55.47");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=504.89,141.36");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=514.77,208.04");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=442.53,232.98");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=439.06,147.73");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=676.29,135.47");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=604.92,0.59");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=602.16,73.98");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=636.13,90.82");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=689.79,91.56");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=664.65,94.46");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=588.62,65.79");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=502.58,183.66");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=618.44,131.40");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=527.88,15.30");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=540.58,67.26");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=613.58,82.95");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=748.10,79.59");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=654.08,99.59");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=530.09,279.03");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=693.35,285.06");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=684.50,214.62");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=575.78,221.25");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=545.33,355.00");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=641.41,158.15");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=626.05,102.11");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=652.37,182.81");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=468.75,172.01");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=429.96,93.69");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=559.83,201.61");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=525.57,33.94");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=576.18,76.37");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=708.51,152.66");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=753.49,117.05");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=656.30,78.19");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=717.70,128.46");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=637.75,134.18");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=622.53,204.54");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=643.17,191.99");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=644.69,49.58");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=543.97,95.52");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=661.41,43.93");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=774.12,76.10");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=629.77,22.02");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=641.51,203.86");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=601.72,314.53");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=673.04,269.55");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=472.42,217.39");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=478.15,244.03");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=598.34,150.92");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=502.49,121.14");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=516.38,60.31");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=569.30,229.50");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=394.49,159.17");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=534.12,161.58");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=576.83,3.87");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=563.28,62.42");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=733.77,12.41");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=699.78,126.80");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=710.17,115.95");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=710.42,180.34");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=638.25,148.64");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=563.97,110.67");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=658.91,34.09");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=609.41,100.51");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=562.74,43.61");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=692.18,80.02");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=735.53,80.87");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=554.83,33.07");
    }

}

