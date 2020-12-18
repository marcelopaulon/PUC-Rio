
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn4-9
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
        @display("p=502.00,277.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=491.32,287.15");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=453.62,279.77");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=474.39,255.49");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=493.64,270.16");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=469.92,272.21");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=544.88,279.56");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=584.61,322.02");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=596.94,305.70");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=575.01,309.46");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=587.45,333.15");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=579.37,404.60");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=562.68,404.05");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=486.67,341.99");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=433.02,350.63");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=491.67,397.23");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=414.81,428.57");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=399.51,460.52");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=492.34,484.41");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=553.86,480.43");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=593.17,439.20");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=589.78,527.81");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=597.73,591.73");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=544.63,551.34");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=548.51,573.91");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=569.96,543.30");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=578.01,578.74");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=668.42,602.37");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=727.31,588.57");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=703.05,629.53");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=777.33,635.71");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=713.33,681.28");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=735.97,698.52");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=707.04,780.99");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=661.51,771.72");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=669.48,748.94");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=670.66,765.99");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=703.68,746.27");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=727.32,675.38");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=667.64,654.28");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=678.19,668.80");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=749.21,604.31");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=723.99,551.58");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=751.21,508.40");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=797.74,515.58");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=789.82,492.40");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=764.15,499.93");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=758.26,483.66");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=771.47,536.20");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=734.20,504.38");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=428.80,212.00");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=442.52,278.54");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=370.82,312.51");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=502.41,293.18");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=421.17,295.98");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=469.18,290.09");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=573.93,244.12");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=617.24,330.57");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=541.50,240.57");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=522.51,332.33");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=508.93,332.77");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=620.02,493.82");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=558.67,429.21");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=542.85,321.39");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=438.25,329.05");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=523.76,378.21");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=389.44,338.25");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=364.42,484.78");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=572.10,521.50");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=515.57,461.96");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=656.48,515.65");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=652.13,597.16");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=627.80,665.01");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=616.14,608.70");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=588.74,492.74");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=631.90,472.67");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=532.62,543.80");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=638.59,591.55");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=669.70,619.87");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=683.25,621.26");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=740.58,556.88");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=666.80,673.77");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=712.90,653.67");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=786.23,764.27");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=655.51,791.80");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=752.70,796.23");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=690.48,757.57");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=677.98,779.82");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=790.85,664.83");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=656.27,629.36");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=646.17,606.02");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=698.95,572.14");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=741.87,487.20");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=767.60,480.01");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=796.34,591.28");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=713.97,488.74");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=702.60,545.18");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=697.21,457.71");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=749.13,567.95");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=709.63,443.85");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=557.20,315.01");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=462.72,302.53");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=392.41,294.60");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=459.30,229.60");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=470.22,228.83");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=431.66,245.57");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=479.52,291.69");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=572.13,276.86");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=569.33,288.48");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=617.78,349.08");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=612.70,298.81");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=566.28,389.64");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=493.11,355.24");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=449.89,302.75");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=473.29,372.64");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=456.98,413.56");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=436.66,438.72");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=390.94,422.86");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=435.20,522.73");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=538.95,512.09");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=593.16,461.24");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=554.52,507.85");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=606.81,639.31");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=523.31,533.81");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=512.01,615.63");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=579.87,557.15");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=604.92,624.46");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=691.97,607.44");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=675.78,520.69");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=796.55,655.06");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=760.20,652.30");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=729.67,766.29");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=748.59,666.08");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=695.31,772.56");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=623.55,681.48");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=710.27,725.32");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=613.63,684.20");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=739.88,742.83");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=709.65,664.64");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=682.33,631.40");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=603.83,613.27");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=745.75,526.44");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=751.18,647.30");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=760.10,530.37");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=776.52,583.29");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=705.10,534.21");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=685.22,551.53");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=797.16,464.07");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=772.77,512.85");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=714.53,426.44");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=529.81,195.62");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=508.64,307.29");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=446.45,225.00");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=461.12,201.11");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=553.60,269.84");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=462.82,326.99");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=580.23,219.92");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=561.39,328.28");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=678.96,293.84");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=583.51,344.91");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=630.96,350.30");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=608.09,446.98");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=514.28,404.15");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=476.08,339.03");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=512.22,355.57");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=435.28,453.45");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=447.69,459.35");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=414.25,450.92");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=503.57,486.55");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=539.53,492.20");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=589.37,423.00");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=555.67,589.48");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=571.27,621.05");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=608.03,564.60");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=463.24,595.52");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=579.03,487.47");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=542.16,561.71");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=602.01,553.63");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=642.85,554.95");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=733.92,640.44");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=782.74,626.40");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=655.86,649.62");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=733.76,726.18");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=701.18,795.76");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=601.31,764.79");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=612.94,728.54");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=644.53,772.93");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=731.37,754.38");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=673.32,593.56");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=743.12,680.48");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=686.05,595.70");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=737.65,665.78");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=738.10,536.20");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=726.89,527.43");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=738.84,517.26");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=767.97,443.90");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=782.04,421.56");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=787.41,555.39");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=772.05,523.12");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=693.86,490.48");
    }

}

