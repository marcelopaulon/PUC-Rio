
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn12-6
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
        @display("p=529.00,547.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=515.30,610.28");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=525.69,601.39");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=532.25,573.15");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=475.25,532.05");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=515.69,522.79");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=507.06,497.01");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=585.36,481.87");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=550.98,473.71");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=525.11,481.19");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=574.81,437.56");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=607.87,442.92");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=564.41,369.55");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=502.30,438.34");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=483.50,415.39");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=500.48,423.63");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=610.77,468.28");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=550.01,628.24");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=607.40,622.02");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=574.08,564.40");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=517.38,554.77");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=404.46,514.04");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=503.82,523.74");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=532.31,520.02");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=537.65,473.13");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=592.76,448.82");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=492.56,572.88");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=630.65,474.49");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=649.36,439.04");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=573.25,350.14");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=461.47,408.30");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=455.40,467.79");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=504.90,412.84");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=612.47,495.43");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=571.00,610.84");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=540.96,584.72");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=471.33,642.40");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=555.10,665.77");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=446.29,572.45");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=557.98,518.08");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=515.00,424.90");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=582.49,398.59");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=550.91,450.23");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=555.90,488.90");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=530.06,449.30");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=642.34,455.37");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=579.44,362.88");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=500.98,382.30");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=521.85,343.93");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=547.79,376.78");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=628.01,385.34");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=553.47,598.24");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=464.02,571.95");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=541.40,601.43");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=524.49,510.89");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=499.25,533.02");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=527.52,463.57");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=487.18,500.33");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=573.66,458.57");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=477.27,433.48");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=564.78,396.67");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=560.14,459.24");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=645.86,403.33");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=568.77,385.11");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=460.52,366.45");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=470.14,472.27");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=549.70,426.15");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=622.75,455.74");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=495.85,634.09");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=511.23,533.97");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=466.99,584.11");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=538.91,670.96");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=430.11,547.51");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=475.09,593.30");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=515.88,469.31");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=583.02,468.70");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=581.32,506.51");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=507.03,450.99");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=600.32,346.35");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=613.35,420.21");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=531.89,319.46");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=518.99,447.38");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=424.21,459.21");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=544.07,460.46");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=625.62,404.21");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=582.51,521.80");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=504.46,645.50");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=556.78,687.11");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=577.19,489.54");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=498.57,503.72");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=573.32,539.77");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=590.69,532.10");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=542.29,487.41");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=643.71,494.09");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=511.85,485.88");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=526.02,420.59");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=667.72,522.34");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=569.42,406.26");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=544.56,439.72");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=413.71,445.63");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=534.83,384.96");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=593.33,467.61");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=486.87,604.46");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=442.50,649.84");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=583.06,657.16");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=495.43,663.01");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=460.37,532.15");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=542.26,501.45");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=431.23,451.05");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=589.41,492.61");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=598.88,425.45");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=601.89,456.05");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=517.77,378.80");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=645.14,505.11");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=552.32,386.84");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=513.89,361.45");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=447.53,410.96");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=471.05,380.50");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=657.24,409.03");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=472.55,497.62");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=565.48,681.35");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=488.78,563.55");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=471.76,626.93");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=483.96,538.56");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=606.95,536.47");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=505.36,575.75");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=554.28,508.59");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=481.09,482.33");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=494.62,410.01");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=624.56,438.77");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=572.98,513.53");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=593.89,295.97");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=442.02,514.14");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=488.28,390.35");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=461.12,457.08");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=585.45,426.02");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=519.20,544.02");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=518.00,589.46");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=509.56,510.96");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=519.56,623.52");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=451.10,545.08");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=500.07,586.83");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=468.89,514.70");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=625.31,501.22");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=612.69,479.28");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=537.51,511.10");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=632.49,429.25");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=645.28,362.49");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=556.62,359.47");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=447.20,370.43");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=397.53,436.52");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=462.65,387.55");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=664.22,422.83");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=574.29,596.00");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=574.74,551.08");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=556.52,584.10");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=532.45,562.02");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=446.35,504.26");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=493.10,443.37");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=533.19,591.61");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=564.70,529.52");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=491.93,486.14");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=563.49,481.80");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=643.54,469.40");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=532.79,405.92");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=540.17,346.97");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=418.14,394.49");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=542.48,417.25");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=466.87,488.82");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=661.62,436.30");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=601.41,589.55");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=541.78,536.39");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=599.33,609.31");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=528.80,641.56");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=426.72,486.88");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=491.48,518.33");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=488.98,470.35");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=657.97,483.81");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=560.66,440.78");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=613.75,510.66");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=637.66,412.05");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=621.62,349.68");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=618.00,296.54");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=406.84,456.07");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=412.43,352.49");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=433.77,428.24");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=661.22,513.41");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=588.87,612.71");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=512.07,598.20");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=587.35,672.51");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=519.56,570.39");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=392.11,556.50");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=523.15,532.38");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=417.97,503.06");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=576.55,415.59");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=520.71,396.57");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=486.70,425.15");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=598.56,497.27");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=530.08,501.84");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=542.57,296.06");
    }

}

