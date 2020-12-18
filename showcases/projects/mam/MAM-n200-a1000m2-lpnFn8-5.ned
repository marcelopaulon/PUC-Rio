
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn8-5
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
        @display("p=931.00,281.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=907.18,199.48");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=897.52,193.96");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=966.49,216.65");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=971.21,236.91");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=905.06,182.70");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=836.49,211.27");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=875.56,252.94");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=814.90,234.02");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=845.52,248.96");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=778.35,261.03");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=747.54,215.10");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=809.74,272.43");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=906.87,291.00");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=966.75,253.86");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=933.51,243.22");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=839.67,231.34");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=756.23,205.97");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=755.21,247.74");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=791.75,274.63");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=760.03,182.57");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=738.47,175.97");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=714.50,238.89");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=774.11,215.93");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=767.74,139.08");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=944.00,262.00");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=853.92,264.88");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=882.66,214.59");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=979.66,262.77");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=977.97,249.64");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=886.69,125.68");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=810.97,290.34");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=887.32,242.70");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=863.50,179.70");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=869.86,215.37");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=816.92,256.86");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=791.51,244.28");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=805.73,262.96");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=891.68,260.54");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=977.30,216.42");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=908.83,272.00");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=789.68,264.68");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=674.54,215.11");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=768.42,303.32");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=858.12,226.98");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=748.05,148.99");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=805.51,132.17");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=726.02,298.46");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=832.44,247.04");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=861.23,128.26");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=969.95,320.02");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=928.51,207.29");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=833.40,126.96");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=982.49,289.33");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=946.06,280.49");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=894.84,164.83");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=845.74,141.83");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=856.61,254.16");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=824.59,141.53");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=859.59,238.53");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=847.17,273.76");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=741.34,206.87");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=805.67,210.13");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=839.97,301.20");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=933.25,222.41");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=846.65,213.33");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=828.62,219.33");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=697.90,224.24");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=774.95,204.50");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=785.89,305.21");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=749.19,191.12");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=794.12,97.25");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=654.06,199.17");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=792.73,200.51");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=699.81,212.05");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=919.25,235.55");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=997.23,169.75");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=889.42,204.48");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=951.41,229.37");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=907.66,218.11");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=974.55,151.31");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=921.29,259.54");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=824.39,318.92");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=879.85,300.19");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=826.77,162.52");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=760.24,229.43");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=690.63,172.96");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=877.01,228.85");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=876.35,368.22");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=998.58,219.08");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=900.56,255.63");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=784.43,162.93");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=745.48,243.09");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=743.99,258.14");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=725.55,277.10");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=712.52,185.12");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=744.24,162.37");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=749.52,226.92");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=770.85,225.57");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=771.09,97.31");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=956.64,369.49");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=859.03,141.55");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=865.63,205.63");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=953.93,219.55");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=957.84,259.89");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=894.82,227.07");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=802.94,224.86");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=885.60,275.41");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=788.83,226.14");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=783.17,288.61");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=775.82,271.87");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=685.64,246.94");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=826.75,289.88");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=945.16,380.12");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=978.12,193.22");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=935.93,334.35");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=852.40,151.20");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=805.87,162.36");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=776.31,188.63");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=803.41,249.57");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=791.63,112.44");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=722.17,145.19");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=670.69,226.49");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=767.51,193.76");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=681.18,112.02");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=957.43,207.00");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=954.60,165.62");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=865.81,155.03");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=993.19,180.14");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=968.12,270.33");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=926.73,162.71");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=863.51,272.32");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=870.65,262.19");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=818.73,214.68");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=931.63,262.64");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=851.69,323.68");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=731.29,219.45");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=757.46,306.68");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=853.59,340.98");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=908.86,241.82");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=880.49,197.97");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=796.51,293.58");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=806.36,198.62");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=704.75,193.33");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=721.19,331.63");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=702.92,113.77");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=722.20,178.37");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=654.92,187.01");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=834.22,258.84");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=717.24,216.82");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=929.63,364.25");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=941.01,191.05");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=893.32,176.15");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=961.85,229.02");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=978.76,333.85");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=846.27,184.03");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=803.07,236.12");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=875.88,332.35");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=802.02,306.52");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=913.04,302.62");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=712.01,319.31");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=764.71,157.62");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=836.75,322.20");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=993.12,275.92");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=991.24,241.40");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=951.33,290.84");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=877.92,167.42");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=679.70,152.70");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=685.45,302.45");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=833.58,356.43");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=732.39,98.01");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=756.83,132.85");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=738.43,187.21");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=738.63,270.09");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=780.82,91.08");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=947.99,342.86");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=882.00,187.31");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=919.77,191.19");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=908.28,230.06");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=951.63,310.44");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=877.12,103.53");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=858.96,287.71");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=890.93,304.11");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=720.88,202.67");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=834.40,191.37");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=792.47,183.43");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=765.17,244.39");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=802.68,280.78");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=919.43,292.71");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=954.51,244.49");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=917.21,207.97");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=890.49,145.97");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=698.97,271.31");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=675.17,288.36");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=869.27,323.24");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=819.02,176.95");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=777.97,241.96");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=728.26,313.95");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=729.32,161.56");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=834.13,77.53");
    }

}

