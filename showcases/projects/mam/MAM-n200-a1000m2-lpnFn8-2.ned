
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn8-2
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
        @display("p=649.00,390.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=641.59,363.73");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=666.44,375.69");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=682.30,428.96");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=703.81,426.44");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=712.80,437.95");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=678.93,402.33");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=709.04,476.00");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=681.99,388.07");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=642.43,324.56");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=709.35,326.51");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=723.79,342.42");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=813.49,378.45");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=807.02,362.20");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=719.03,320.95");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=676.53,326.67");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=669.58,343.36");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=652.73,304.36");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=664.82,313.82");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=605.31,351.92");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=524.24,377.82");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=573.82,390.16");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=485.31,430.50");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=509.29,409.31");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=567.91,332.34");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=659.08,394.69");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=626.67,369.59");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=577.75,413.78");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=719.84,480.81");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=742.50,437.04");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=766.38,428.10");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=700.33,363.26");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=665.11,498.31");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=741.18,389.36");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=634.17,313.15");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=737.96,278.49");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=755.89,409.11");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=829.16,382.22");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=816.20,305.17");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=721.78,298.91");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=657.84,251.95");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=710.42,342.80");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=613.07,331.05");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=597.73,301.37");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=529.54,397.27");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=504.56,314.37");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=652.67,434.70");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=477.89,513.27");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=554.51,379.79");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=571.74,322.69");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=672.19,449.99");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=636.66,353.40");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=631.49,387.24");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=661.30,416.36");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=733.75,495.42");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=736.05,468.36");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=631.29,436.48");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=703.04,518.97");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=694.66,457.13");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=647.15,256.34");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=687.14,301.83");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=695.44,349.15");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=761.56,323.35");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=840.93,404.93");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=736.59,374.03");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=641.45,404.99");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=611.69,280.81");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=673.61,280.19");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=647.89,283.22");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=633.78,417.07");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=563.19,438.10");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=533.04,447.70");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=448.58,416.33");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=547.32,443.90");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=517.30,314.32");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=687.49,341.54");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=690.62,398.93");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=726.28,399.78");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=664.22,352.10");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=737.25,406.76");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=678.62,441.89");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=735.32,353.95");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=620.36,483.84");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=749.08,363.24");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=626.94,320.12");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=725.05,245.46");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=752.44,338.14");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=828.53,451.56");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=876.90,404.14");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=781.83,267.27");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=590.75,326.01");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=678.38,257.50");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=638.85,295.86");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=620.82,288.04");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=686.26,312.98");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=505.57,288.63");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=595.00,354.13");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=484.46,446.17");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=476.01,352.66");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=548.12,324.97");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=610.57,393.03");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=718.00,370.37");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=666.22,460.08");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=591.09,411.22");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=768.29,502.43");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=801.76,406.56");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=620.12,386.07");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=722.21,466.20");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=721.53,355.24");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=706.41,291.23");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=652.30,363.74");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=789.70,350.75");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=887.46,323.76");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=842.15,385.04");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=742.32,333.28");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=665.67,267.81");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=753.00,377.23");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=712.50,253.39");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=619.46,356.48");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=592.27,262.71");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=451.59,406.55");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=650.74,447.22");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=397.68,388.57");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=472.03,433.16");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=547.64,368.21");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=711.73,400.61");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=601.52,371.68");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=617.23,306.32");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=701.23,396.89");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=694.37,446.81");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=805.45,438.59");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=630.16,336.00");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=760.39,463.14");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=623.16,398.32");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=694.93,318.09");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=687.97,266.53");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=766.81,384.39");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=879.36,392.13");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=875.68,307.92");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=794.76,261.17");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=670.67,291.26");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=572.27,363.49");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=676.43,267.50");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=677.94,349.43");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=628.12,297.37");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=473.91,371.74");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=582.89,335.86");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=535.46,491.89");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=527.90,419.32");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=571.28,289.77");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=602.41,475.08");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=659.98,335.50");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=665.57,442.02");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=699.91,382.73");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=745.07,477.14");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=673.88,485.52");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=768.10,446.35");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=640.77,489.19");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=652.19,346.85");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=631.80,272.18");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=777.60,286.20");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=767.65,365.19");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=861.36,403.55");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=735.27,305.16");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=720.13,278.37");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=609.01,361.84");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=694.80,285.23");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=683.64,220.01");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=623.96,225.53");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=588.30,285.06");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=553.53,424.90");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=527.12,434.34");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=424.36,415.56");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=539.69,470.30");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=551.18,303.21");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=655.30,405.41");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=650.91,293.00");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=680.11,372.83");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=751.28,393.37");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=678.94,457.83");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=773.07,466.84");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=655.42,381.07");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=718.00,516.50");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=708.13,454.29");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=621.89,270.24");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=738.45,241.49");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=814.25,345.12");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=823.54,371.68");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=849.55,346.37");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=741.28,260.71");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=758.53,309.25");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=697.97,329.49");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=726.98,256.63");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=689.04,360.25");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=602.94,410.37");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=458.98,328.03");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=555.80,362.18");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=498.49,413.41");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=473.49,396.17");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=497.85,347.36");
    }

}

