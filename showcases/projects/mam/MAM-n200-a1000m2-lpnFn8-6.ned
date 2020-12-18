
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn8-6
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
        @display("p=996.00,345.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=910.90,340.58");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=884.10,386.60");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=818.52,317.96");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=765.45,381.82");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=706.21,336.69");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=638.05,364.95");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=643.52,421.50");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=716.25,382.34");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=681.98,377.13");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=651.72,349.27");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=696.73,430.19");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=736.10,504.90");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=739.13,420.84");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=781.68,404.78");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=764.29,413.02");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=673.22,417.99");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=598.91,363.37");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=626.78,329.74");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=654.24,260.98");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=654.15,273.54");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=672.52,306.89");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=679.97,404.70");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=664.39,328.99");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=705.44,360.63");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=932.72,314.20");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=921.98,348.66");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=908.65,363.18");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=777.11,296.25");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=771.15,367.68");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=749.20,342.11");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=639.50,340.54");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=626.72,411.32");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=684.48,359.00");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=652.34,435.26");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=719.80,334.39");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=635.05,401.13");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=699.79,533.32");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=746.87,430.27");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=745.13,485.33");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=740.88,387.89");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=651.74,411.36");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=584.48,390.36");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=704.86,373.73");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=644.00,316.69");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=681.69,269.31");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=648.30,302.62");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=705.50,417.42");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=581.46,360.65");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=745.62,364.09");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=978.12,304.21");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=881.94,413.80");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=814.69,345.00");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=816.41,397.60");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=803.97,321.47");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=737.51,269.98");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=662.43,298.65");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=600.08,405.83");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=761.97,401.34");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=719.88,346.17");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=668.54,346.51");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=678.50,488.15");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=705.59,503.23");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=718.39,482.96");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=821.31,437.61");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=729.91,459.54");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=689.98,418.17");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=691.95,386.60");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=557.84,310.79");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=636.21,288.54");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=680.11,241.69");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=613.46,337.36");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=672.83,472.14");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=647.94,377.23");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=740.04,351.96");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=980.00,341.97");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=864.44,327.70");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=833.41,399.86");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=816.38,302.45");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=674.75,391.22");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=756.84,318.35");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=595.97,317.66");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=728.37,418.46");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=729.89,375.36");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=704.98,439.90");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=671.65,335.92");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=674.47,456.33");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=704.83,472.65");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=702.30,513.27");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=720.30,427.55");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=817.49,456.28");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=725.69,402.07");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=619.72,355.37");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=550.03,325.46");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=622.91,266.01");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=691.73,296.41");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=668.85,382.60");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=704.41,395.19");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=717.58,277.66");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=646.50,397.54");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=998.74,368.85");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=918.06,318.38");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=903.86,331.42");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=821.79,387.95");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=745.47,374.54");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=723.81,287.03");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=625.75,293.08");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=636.68,449.40");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=769.82,357.50");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=619.46,309.12");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=633.44,348.93");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=780.96,429.89");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=667.16,536.08");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=719.67,448.78");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=806.51,378.40");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=818.90,473.94");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=648.82,445.54");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=541.80,359.92");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=633.03,391.25");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=674.57,194.38");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=672.28,234.39");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=659.05,283.92");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=695.68,465.63");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=689.01,310.07");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=698.94,350.40");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=985.53,258.17");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=939.68,354.67");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=846.32,475.40");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=856.99,296.06");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=844.26,389.85");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=739.87,318.97");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=560.59,358.30");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=620.48,446.95");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=669.41,429.17");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=611.57,391.29");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=674.74,437.84");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=629.71,379.69");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=683.50,515.53");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=791.83,381.07");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=743.47,495.19");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=802.08,434.34");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=697.88,453.22");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=539.26,379.04");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=705.78,325.54");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=705.86,290.12");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=641.58,268.59");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=730.70,238.63");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=647.86,476.45");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=600.42,267.32");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=776.26,384.25");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=939.89,329.63");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=907.02,265.18");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=860.97,460.56");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=871.60,285.21");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=763.29,289.29");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=759.83,369.16");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=569.27,403.38");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=613.73,408.19");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=729.81,352.70");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=621.53,372.42");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=589.49,327.01");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=694.54,501.30");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=732.22,557.18");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=690.29,438.47");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=831.14,448.08");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=738.25,398.06");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=618.21,399.03");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=601.89,327.43");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=633.03,278.53");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=649.44,326.23");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=707.05,216.89");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=703.28,271.77");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=684.70,394.59");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=582.12,279.21");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=731.60,333.40");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=984.82,273.28");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=882.50,369.88");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=922.19,441.22");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=830.30,282.36");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=784.67,364.22");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=717.06,305.74");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=608.79,437.82");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=565.26,432.25");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=714.62,366.27");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=654.47,455.89");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=615.54,299.16");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=699.40,489.01");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=773.82,522.08");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=736.47,439.92");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=850.98,343.71");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=750.80,403.90");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=695.54,407.75");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=554.26,443.31");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=686.41,334.44");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=574.74,301.72");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=627.76,242.03");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=733.57,290.97");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=657.06,387.96");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=721.35,266.46");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=662.09,367.75");
    }

}

