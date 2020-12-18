
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn8-1
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
        @display("p=835.00,348.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=860.89,342.59");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=782.53,386.90");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=764.27,304.73");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=770.33,282.16");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=784.03,315.68");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=761.45,288.45");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=737.69,376.55");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=750.72,395.89");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=743.51,425.42");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=756.21,433.45");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=721.44,480.22");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=814.71,448.28");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=837.84,404.05");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=830.75,384.27");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=852.24,319.17");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=866.06,280.98");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=781.21,265.71");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=745.68,346.67");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=722.59,368.34");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=722.01,380.17");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=646.19,344.60");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=724.30,292.58");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=678.30,273.26");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=632.53,195.47");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=799.77,426.00");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=941.94,382.31");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=788.54,395.01");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=727.48,393.50");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=849.33,336.70");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=763.16,328.77");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=756.86,254.33");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=748.55,364.40");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=702.67,315.97");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=830.26,411.37");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=753.60,416.82");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=738.90,541.49");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=838.78,541.67");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=825.48,400.92");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=906.98,337.92");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=878.03,272.86");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=892.83,234.41");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=762.82,269.04");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=776.00,335.47");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=639.23,406.91");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=700.24,370.45");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=567.96,353.27");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=734.50,270.60");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=649.40,259.98");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=692.45,199.11");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=880.77,372.42");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=864.59,364.34");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=803.92,481.23");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=762.22,228.41");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=777.36,298.77");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=733.34,237.07");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=732.44,226.01");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=772.14,359.72");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=680.41,333.74");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=716.74,433.72");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=686.17,475.23");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=753.13,505.69");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=788.06,377.76");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=888.87,471.57");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=805.83,307.01");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=820.06,328.98");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=952.18,300.42");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=801.34,266.24");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=712.05,291.68");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=671.09,383.15");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=682.74,440.95");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=671.57,434.48");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=707.07,300.45");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=683.87,237.63");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=550.79,192.34");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=873.59,331.86");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=899.47,300.03");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=804.71,409.02");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=742.50,301.82");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=805.82,285.54");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=807.72,296.27");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=696.61,271.35");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=713.25,406.21");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=739.40,405.06");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=759.75,464.20");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=789.83,485.47");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=742.17,491.25");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=760.82,513.02");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=858.61,399.37");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=829.64,443.70");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=842.75,243.70");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=855.62,287.27");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=784.07,290.33");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=719.70,280.78");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=692.43,450.42");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=732.28,302.84");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=630.87,351.28");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=634.04,289.80");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=638.24,242.85");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=561.02,206.92");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=802.70,340.96");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=889.06,395.88");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=793.50,411.29");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=710.14,238.25");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=728.99,351.06");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=795.55,284.17");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=749.59,204.85");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=721.29,319.73");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=696.79,358.52");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=793.92,359.01");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=726.99,498.40");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=667.04,493.28");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=884.39,443.90");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=845.68,439.47");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=895.09,407.72");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=890.51,291.44");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=845.90,192.20");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=747.79,260.61");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=800.62,393.00");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=737.45,365.09");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=678.70,391.22");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=604.85,428.87");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=747.30,311.36");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=691.97,308.87");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=608.94,169.91");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=810.54,258.46");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=954.70,323.71");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=774.10,412.74");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=832.25,330.95");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=789.62,333.23");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=761.09,343.83");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=831.15,242.18");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=705.52,385.68");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=691.04,335.11");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=752.38,446.34");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=785.07,460.75");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=713.56,452.19");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=812.70,420.21");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=851.69,408.83");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=897.81,428.58");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=902.87,388.06");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=835.09,188.83");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=751.09,272.90");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=776.19,374.71");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=756.82,405.98");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=702.83,287.64");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=595.98,422.88");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=750.40,327.97");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=672.53,345.28");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=616.51,207.53");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=879.85,343.84");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=913.50,260.66");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=725.94,421.66");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=807.49,367.66");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=725.98,260.17");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=796.01,316.01");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=771.72,233.80");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=723.88,448.97");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=696.57,436.59");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=695.93,463.07");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=737.84,462.66");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=781.31,546.65");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=785.38,426.33");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=902.36,418.78");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=884.03,384.43");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=845.30,347.03");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=887.61,205.18");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=724.58,200.47");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=744.49,384.95");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=685.80,429.79");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=648.22,355.62");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=674.46,291.36");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=719.13,221.56");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=687.78,286.45");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=549.17,143.01");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=834.02,427.46");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=863.42,325.26");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=855.84,374.41");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=705.39,341.39");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=827.31,317.97");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=782.70,230.35");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=715.95,249.75");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=710.02,421.87");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=693.07,392.14");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=759.77,358.85");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=825.50,479.54");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=703.12,512.64");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=797.92,455.49");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=866.08,418.90");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=787.14,449.69");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=856.51,228.75");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=808.97,353.30");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=825.63,201.02");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=733.84,336.66");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=652.50,390.48");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=648.62,436.07");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=582.13,381.76");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=695.69,221.32");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=709.75,327.10");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=570.54,149.66");
    }

}

