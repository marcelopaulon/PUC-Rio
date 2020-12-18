
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn12-3
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
        @display("p=594.00,195.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=658.61,137.30");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=590.80,121.41");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=668.18,113.08");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=690.13,166.61");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=699.42,192.74");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=783.72,199.92");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=762.43,219.78");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=791.27,137.85");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=733.01,145.68");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=771.84,198.46");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=733.00,127.20");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=676.72,209.17");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=697.44,207.24");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=712.65,181.16");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=726.55,227.99");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=704.25,244.85");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=609.72,138.66");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=639.79,112.44");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=610.40,125.47");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=642.25,173.55");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=655.51,112.77");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=759.31,235.93");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=689.15,231.25");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=745.07,236.53");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=777.80,122.18");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=725.27,50.87");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=748.92,205.84");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=711.67,62.70");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=646.13,257.33");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=645.37,244.34");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=703.19,275.38");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=669.66,238.87");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=687.48,295.00");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=609.23,194.19");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=690.75,155.25");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=602.88,116.04");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=580.99,103.46");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=707.04,255.39");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=703.32,221.84");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=725.86,255.92");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=746.33,216.79");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=780.87,176.80");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=745.07,187.85");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=765.09,181.79");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=793.82,62.85");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=687.49,112.63");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=703.67,124.91");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=635.70,202.99");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=718.48,214.66");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=741.86,258.21");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=548.39,167.39");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=679.35,188.98");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=571.17,121.75");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=742.81,101.46");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=700.38,143.42");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=681.64,124.14");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=767.94,261.02");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=677.26,225.88");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=778.28,85.84");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=719.57,108.97");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=774.40,249.11");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=762.55,131.92");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=659.13,271.99");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=760.55,192.75");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=673.97,178.51");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=733.31,193.77");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=763.82,288.06");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=552.48,218.63");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=670.79,153.06");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=585.13,41.84");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=635.31,66.48");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=755.73,99.80");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=706.53,165.56");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=795.24,174.23");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=789.79,237.13");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=745.49,120.65");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=657.81,82.75");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=731.58,160.93");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=668.52,128.18");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=627.78,136.38");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=667.11,223.74");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=748.91,143.95");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=771.82,225.34");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=690.98,279.63");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=576.40,201.87");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=676.34,165.53");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=604.47,93.04");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=663.46,74.49");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=591.81,156.57");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=667.04,282.36");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=789.07,252.06");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=749.86,288.46");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=725.96,185.67");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=647.25,193.40");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=774.00,215.35");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=713.65,135.16");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=665.99,207.86");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=624.17,265.25");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=692.50,241.69");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=671.75,310.36");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=707.71,233.89");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=578.99,238.54");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=562.01,125.90");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=543.29,137.75");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=704.39,78.57");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=697.49,102.69");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=617.70,187.04");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=799.98,200.97");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=692.89,176.36");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=749.57,57.86");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=751.27,109.26");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=785.16,147.07");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=735.25,114.42");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=640.29,301.62");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=656.43,167.87");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=761.82,250.51");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=731.67,325.40");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=657.42,237.22");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=608.13,217.82");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=577.16,146.32");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=589.77,80.35");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=718.86,73.56");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=669.51,92.99");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=730.87,281.99");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=757.26,296.04");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=794.36,276.74");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=761.37,116.75");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=675.26,102.74");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=753.03,256.66");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=743.86,77.74");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=655.40,187.35");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=755.86,159.15");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=655.82,200.56");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=785.17,210.12");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=744.03,313.79");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=562.81,144.38");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=599.36,168.86");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=636.71,83.41");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=647.32,39.61");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=702.04,181.14");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=658.08,253.51");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=759.71,145.44");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=723.58,243.35");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=798.47,99.73");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=790.69,113.12");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=782.32,229.53");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=695.15,69.18");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=630.58,239.20");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=652.20,222.60");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=617.46,170.83");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=735.46,204.86");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=609.44,229.06");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=597.27,183.44");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=684.42,144.28");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=564.34,173.70");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=738.18,91.02");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=637.53,149.96");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=622.32,209.99");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=724.51,120.36");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=710.59,296.44");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=795.37,74.22");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=774.33,188.02");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=735.78,218.31");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=756.90,77.51");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=658.27,156.90");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=646.94,153.85");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=713.52,196.63");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=754.77,176.37");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=685.75,257.35");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=582.13,228.95");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=569.60,164.78");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=587.84,169.10");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=704.71,40.21");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=686.40,217.67");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=720.34,284.66");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=779.55,157.45");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=751.21,273.40");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=775.04,99.39");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=724.07,140.04");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=746.13,168.75");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=652.37,100.07");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=627.36,222.87");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=633.05,185.27");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=707.25,150.82");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=715.95,155.98");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=740.00,335.72");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=521.77,201.00");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=626.46,194.56");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=548.97,106.87");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=619.70,81.84");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=665.49,192.66");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=775.04,143.34");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=795.60,294.33");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=780.18,309.11");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=781.75,50.37");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=727.63,172.51");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=775.31,280.15");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=674.31,60.54");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=608.38,272.62");
    }

}

