
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn12-5
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
        @display("p=883.00,229.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=807.11,252.08");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=822.22,267.26");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=739.26,306.01");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=778.04,324.95");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=721.39,311.73");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=684.81,351.93");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=751.22,303.89");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=793.12,306.53");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=784.44,314.50");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=779.26,247.97");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=750.19,236.95");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=790.46,294.58");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=761.51,352.79");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=791.28,403.54");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=793.49,351.38");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=810.23,443.15");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=922.07,220.95");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=762.81,280.67");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=864.26,241.33");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=732.65,268.05");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=812.42,239.70");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=737.13,391.29");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=713.00,369.38");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=735.53,286.06");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=696.92,330.60");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=852.27,366.47");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=783.93,277.90");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=739.39,258.37");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=829.83,288.04");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=792.67,421.44");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=807.15,409.79");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=750.38,326.19");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=833.27,462.58");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=953.82,274.61");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=741.12,202.52");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=807.69,295.80");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=806.05,332.47");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=765.57,421.26");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=647.25,331.75");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=638.38,370.98");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=664.84,313.80");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=833.13,301.68");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=816.32,225.85");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=760.29,251.26");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=714.51,149.31");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=867.46,307.11");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=763.07,326.03");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=736.54,436.86");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=844.63,343.27");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=806.76,493.62");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=902.43,174.31");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=810.78,214.06");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=898.43,246.98");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=694.81,225.10");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=728.00,348.24");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=743.30,216.28");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=701.90,346.79");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=829.97,342.50");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=865.72,257.49");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=809.42,357.21");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=768.21,261.19");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=758.74,292.34");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=783.94,204.27");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=765.82,383.55");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=752.66,478.99");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=865.99,410.08");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=804.47,463.92");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=836.63,245.97");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=739.63,230.00");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=764.75,211.12");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=719.93,340.42");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=860.78,318.08");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=714.35,322.61");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=652.72,440.91");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=703.42,359.25");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=816.69,302.92");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=744.70,291.86");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=729.00,214.64");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=726.32,172.43");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=837.99,220.77");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=785.96,364.40");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=776.14,394.64");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=724.53,413.60");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=824.59,510.17");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=948.12,232.35");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=850.97,240.14");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=872.27,292.20");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=802.50,314.70");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=845.75,267.57");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=674.20,268.31");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=654.91,276.28");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=714.78,266.36");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=775.03,309.36");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=857.75,343.79");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=772.53,219.50");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=688.58,178.74");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=863.24,352.77");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=757.02,440.64");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=718.16,395.95");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=762.90,372.69");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=744.28,450.51");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=909.94,156.85");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=902.12,263.90");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=869.73,226.86");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=727.34,295.54");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=689.47,342.65");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=811.92,345.45");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=723.70,386.86");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=778.66,381.22");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=796.10,285.57");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=784.37,267.01");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=783.53,225.67");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=734.94,239.19");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=811.15,322.75");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=778.92,436.07");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=761.70,406.70");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=874.13,389.30");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=783.66,471.25");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=849.76,185.47");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=796.00,267.17");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=895.54,200.26");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=684.52,236.02");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=807.52,381.44");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=658.88,253.00");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=728.61,360.73");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=752.48,345.16");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=835.89,390.54");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=780.40,298.93");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=791.05,331.57");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=710.74,203.51");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=772.70,364.17");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=689.84,419.30");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=695.40,399.19");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=879.29,368.33");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=841.76,422.69");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=906.52,308.41");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=816.77,257.71");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=910.66,276.94");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=820.24,277.13");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=806.66,266.67");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=705.37,284.54");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=664.98,431.80");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=722.03,253.99");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=879.18,283.26");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=765.29,306.32");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=764.85,240.65");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=755.44,185.70");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=741.29,276.26");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=738.43,355.81");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=756.52,461.84");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=776.03,336.81");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=837.00,516.46");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=883.67,293.42");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=827.16,194.23");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=813.52,193.10");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=691.08,247.59");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=690.47,322.01");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=712.12,306.52");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=678.46,295.28");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=749.04,254.32");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=749.88,380.25");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=693.19,306.75");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=788.81,189.96");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=738.86,186.63");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=844.73,310.59");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=740.20,316.59");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=872.88,402.60");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=813.61,420.89");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=744.36,415.84");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=935.33,295.65");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=854.01,197.56");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=792.85,180.76");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=705.53,260.03");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=721.04,277.95");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=680.92,306.01");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=682.13,430.97");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=691.30,283.77");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=856.32,296.95");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=825.05,320.25");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=817.87,165.99");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=841.84,202.06");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=751.94,209.64");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=723.23,371.97");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=722.53,425.68");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=826.43,356.19");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=836.62,490.64");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=894.54,275.70");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=800.83,160.97");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=793.47,216.21");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=658.57,301.56");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=833.59,368.76");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=638.08,291.73");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=675.15,371.74");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=772.62,229.57");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=738.37,367.03");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=827.58,398.59");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=797.58,242.12");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=670.71,224.16");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=862.62,277.31");
    }

}

