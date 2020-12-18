
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
        @display("p=432.00,484.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=376.52,509.62");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=310.61,539.08");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=324.24,522.84");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=385.58,472.68");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=481.45,471.13");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=524.28,470.16");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=550.36,479.11");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=545.52,530.00");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=480.69,539.58");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=516.04,526.59");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=503.06,561.39");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=502.82,600.64");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=505.15,589.81");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=415.89,600.37");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=460.33,644.19");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=485.06,626.77");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=442.73,645.43");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=507.63,705.68");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=485.64,778.60");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=544.17,754.15");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=579.47,731.90");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=566.95,719.09");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=549.53,626.02");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=523.28,627.67");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=413.26,476.87");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=411.74,487.80");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=282.42,504.99");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=341.26,521.62");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=449.71,502.35");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=508.20,485.52");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=619.46,441.23");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=548.00,491.98");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=487.85,512.63");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=531.45,581.51");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=539.79,607.95");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=520.49,559.99");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=444.23,656.56");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=493.93,552.11");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=430.14,616.97");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=505.41,656.36");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=457.95,665.54");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=497.89,640.88");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=491.74,700.93");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=455.64,740.35");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=505.14,748.83");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=614.85,820.45");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=563.30,778.09");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=540.23,725.02");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=554.75,611.12");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=456.15,478.87");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=342.52,418.63");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=324.71,546.84");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=419.77,538.65");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=384.43,536.62");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=497.75,483.02");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=511.92,460.34");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=549.97,449.49");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=574.11,507.78");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=437.79,537.43");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=533.74,509.81");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=507.29,577.54");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=545.66,635.95");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=510.73,608.93");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=449.09,629.55");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=399.42,577.70");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=496.36,612.59");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=485.53,640.87");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=464.44,680.77");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=428.32,743.05");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=524.60,756.11");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=589.26,715.77");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=622.21,775.33");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=535.02,693.22");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=568.32,646.08");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=392.45,499.26");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=360.49,561.43");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=333.73,503.84");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=308.71,481.56");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=324.08,480.74");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=440.85,412.48");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=578.35,442.89");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=493.21,466.87");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=490.45,456.64");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=484.66,525.91");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=526.73,531.38");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=555.22,640.06");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=412.69,626.63");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=470.02,650.02");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=417.18,673.81");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=483.35,709.54");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=426.44,653.62");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=389.72,685.63");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=437.31,757.52");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=537.20,819.04");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=596.77,745.73");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=615.27,689.52");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=582.52,708.20");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=581.70,534.86");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=490.49,566.77");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=471.04,501.64");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=359.30,487.83");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=267.74,549.29");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=250.03,506.76");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=329.90,532.30");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=469.21,466.99");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=603.94,434.32");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=598.00,512.45");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=548.95,539.83");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=505.95,523.98");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=472.49,584.08");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=565.28,623.68");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=468.16,558.65");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=560.33,652.99");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=387.94,642.84");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=399.24,680.40");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=437.62,634.83");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=455.63,721.55");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=489.37,687.76");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=473.08,719.95");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=546.01,788.85");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=492.62,741.56");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=553.48,695.16");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=480.58,653.31");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=568.53,667.57");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=342.34,496.97");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=379.44,521.67");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=300.44,539.99");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=296.37,581.43");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=410.75,386.63");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=513.33,549.98");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=523.53,508.52");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=560.40,493.68");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=572.28,594.37");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=405.08,554.36");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=530.95,545.08");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=472.35,518.80");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=489.01,593.76");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=570.13,555.12");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=457.23,528.69");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=521.67,646.72");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=443.56,608.41");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=432.30,576.19");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=490.77,754.89");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=480.59,825.07");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=505.04,722.11");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=590.46,781.04");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=616.83,796.34");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=601.55,633.14");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=549.11,718.17");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=446.04,454.31");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=322.76,439.24");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=327.04,610.94");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=383.06,597.41");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=371.00,550.61");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=495.54,520.57");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=500.54,423.56");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=539.98,437.80");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=613.23,469.96");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=538.05,566.34");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=458.08,508.22");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=439.48,562.68");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=463.89,548.64");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=551.55,557.77");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=452.25,517.03");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=502.29,622.96");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=519.16,598.11");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=474.17,605.93");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=516.56,661.07");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=536.48,707.88");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=587.39,738.07");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=518.34,707.67");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=603.37,688.73");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=590.14,609.49");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=503.26,688.11");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=437.33,447.47");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=435.41,520.13");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=227.73,594.38");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=270.17,442.02");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=349.44,436.94");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=497.60,535.78");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=561.19,391.83");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=616.13,529.37");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=572.87,481.97");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=427.87,565.95");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=567.85,535.21");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=468.92,632.36");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=413.32,560.27");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=530.00,637.96");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=410.32,591.04");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=444.87,718.28");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=544.80,686.45");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=468.86,618.07");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=486.80,768.01");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=402.42,733.03");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=514.18,810.81");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=595.13,697.87");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=555.54,757.85");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=567.10,608.36");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=480.32,681.78");
    }

}

