
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn12-2
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
        @display("p=735.00,745.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=704.20,652.43");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=700.84,670.07");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=684.23,644.95");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=673.25,592.47");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=639.28,619.83");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=614.15,588.71");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=592.80,572.17");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=632.63,508.37");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=545.89,482.39");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=560.01,491.86");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=545.93,416.83");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=505.91,351.74");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=505.75,282.10");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=422.51,255.71");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=459.44,263.90");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=452.17,304.46");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=739.31,731.91");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=679.98,663.52");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=705.57,682.30");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=655.91,599.20");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=605.29,548.97");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=630.06,627.94");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=631.32,572.93");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=622.84,620.64");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=646.68,475.53");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=525.27,426.56");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=512.63,518.17");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=525.94,495.68");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=500.24,372.28");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=476.92,258.71");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=370.46,298.50");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=387.80,249.49");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=404.89,259.32");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=740.73,718.17");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=658.46,682.62");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=725.53,681.15");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=678.83,583.04");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=701.09,594.69");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=653.88,634.34");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=616.38,568.42");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=594.33,500.99");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=588.99,489.51");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=526.94,473.72");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=533.93,448.89");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=543.25,404.79");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=476.03,329.94");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=436.96,311.39");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=442.25,259.21");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=455.81,202.66");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=445.23,338.95");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=794.11,667.51");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=701.25,738.53");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=725.25,696.74");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=678.52,626.91");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=590.70,538.08");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=620.18,599.83");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=596.15,588.86");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=614.54,631.01");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=650.86,509.37");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=508.82,546.98");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=560.23,516.31");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=468.41,397.19");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=430.99,288.81");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=446.40,227.07");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=507.09,203.79");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=483.49,241.77");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=387.28,282.65");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=770.50,678.35");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=649.09,697.60");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=719.52,654.19");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=639.22,639.08");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=667.05,600.39");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=673.22,637.52");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=627.95,491.30");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=533.06,649.04");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=564.22,569.33");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=572.31,520.82");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=470.03,521.12");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=510.59,446.10");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=480.56,360.88");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=500.18,268.03");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=402.74,281.81");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=499.14,320.04");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=437.15,332.97");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=727.56,752.48");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=616.08,694.06");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=717.91,711.32");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=669.96,682.94");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=693.07,608.18");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=714.77,594.16");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=638.29,536.08");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=631.27,610.72");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=573.24,509.69");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=570.81,545.77");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=591.67,445.34");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=487.77,385.45");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=436.45,377.99");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=554.32,254.70");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=436.96,233.88");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=499.62,172.68");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=470.85,284.01");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=691.23,695.19");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=666.83,654.32");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=612.87,646.62");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=593.25,627.65");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=674.33,573.18");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=638.21,662.90");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=582.03,572.43");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=621.09,639.15");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=625.88,464.89");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=469.60,468.94");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=641.40,494.43");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=612.88,441.47");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=510.83,340.39");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=497.85,292.43");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=401.90,234.34");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=390.74,335.27");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=475.83,212.50");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=766.35,730.06");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=744.08,608.86");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=710.63,722.44");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=689.82,625.45");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=578.31,608.96");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=601.08,603.61");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=594.25,655.55");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=571.25,587.00");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=631.25,545.00");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=570.44,461.05");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=554.01,530.25");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=500.13,418.08");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=583.46,313.42");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=495.88,234.12");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=458.10,185.62");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=447.56,279.89");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=420.84,301.60");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=783.89,698.11");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=790.79,635.75");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=736.73,707.07");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=731.36,645.64");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=740.88,652.42");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=655.41,644.77");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=663.40,589.95");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=575.02,560.87");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=554.55,556.99");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=497.77,492.24");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=549.63,451.48");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=457.04,372.25");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=490.65,313.06");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=538.41,304.13");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=392.86,309.69");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=439.95,198.14");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=440.24,388.48");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=794.38,769.24");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=732.20,669.82");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=711.75,754.91");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=649.91,565.63");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=688.10,594.32");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=548.78,603.38");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=586.57,599.62");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=497.19,566.32");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=632.15,457.02");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=601.10,409.57");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=590.51,421.64");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=525.55,361.78");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=586.97,343.29");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=582.65,271.58");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=390.28,215.78");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=552.39,273.17");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=489.78,350.19");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=765.17,659.82");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=698.95,640.28");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=754.00,686.51");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=677.17,716.94");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=721.87,543.55");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=682.89,606.27");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=541.90,613.35");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=531.28,511.97");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=624.94,420.86");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=473.57,506.83");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=560.75,473.16");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=594.21,378.04");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=596.35,347.28");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=513.31,375.73");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=464.38,175.19");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=493.51,208.70");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=435.46,271.33");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=737.79,683.35");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=715.69,689.44");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=672.15,758.43");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=672.04,700.87");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=704.53,576.48");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=659.47,713.34");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=561.78,583.80");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=646.99,656.21");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=682.03,520.76");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=608.77,454.60");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=649.08,487.87");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=613.26,367.29");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=519.67,389.74");
    }

}

