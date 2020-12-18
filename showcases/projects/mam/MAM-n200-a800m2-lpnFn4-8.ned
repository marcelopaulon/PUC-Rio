
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn4-8
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
        @display("p=296.00,684.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=281.36,691.28");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=299.20,709.87");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=266.00,785.75");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=335.12,748.79");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=323.20,779.52");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=323.40,796.73");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=300.80,793.14");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=251.71,746.74");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=276.93,659.49");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=352.00,722.06");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=411.86,791.48");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=396.43,777.27");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=407.16,769.55");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=391.16,728.79");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=418.60,690.34");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=504.39,663.18");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=472.51,677.73");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=551.13,644.41");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=604.06,684.65");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=578.88,617.87");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=622.33,658.54");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=692.97,702.40");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=720.40,636.95");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=742.29,611.88");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=708.85,671.07");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=679.10,576.05");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=642.00,563.02");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=620.32,565.44");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=689.66,530.14");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=595.07,550.52");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=559.97,562.89");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=524.53,624.50");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=463.87,553.35");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=556.66,584.33");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=541.44,586.74");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=473.45,613.70");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=388.81,657.47");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=479.28,661.75");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=521.64,654.89");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=535.41,638.01");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=576.51,661.25");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=608.46,656.92");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=659.62,604.00");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=645.35,606.07");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=655.67,653.51");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=698.82,667.07");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=773.34,640.76");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=715.93,588.85");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=651.17,638.02");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=359.59,744.48");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=299.00,642.30");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=360.75,787.98");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=214.06,711.22");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=423.13,784.03");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=384.44,797.25");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=287.00,707.74");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=282.27,794.45");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=248.59,708.63");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=326.38,677.98");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=296.66,663.29");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=465.62,743.32");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=421.49,707.36");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=369.76,742.34");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=449.86,738.88");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=470.10,708.73");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=536.54,724.03");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=421.74,733.89");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=606.27,633.70");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=668.81,613.50");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=622.67,532.81");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=637.88,646.37");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=654.86,680.88");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=701.54,652.44");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=767.94,543.24");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=678.34,589.79");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=702.64,577.67");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=586.46,535.51");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=607.15,598.20");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=671.09,521.59");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=571.06,525.97");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=568.45,473.16");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=484.63,691.87");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=443.00,548.84");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=588.68,494.24");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=511.38,623.85");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=415.74,546.73");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=369.21,717.38");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=499.04,730.49");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=585.31,639.77");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=606.58,578.51");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=573.58,696.06");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=646.16,664.86");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=595.29,576.57");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=614.25,618.81");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=690.24,678.56");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=718.20,677.51");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=760.80,566.19");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=654.72,556.03");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=609.99,561.32");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=290.77,604.52");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=311.82,706.21");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=287.22,720.13");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=232.60,749.37");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=319.01,760.02");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=266.53,757.23");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=225.96,789.62");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=270.01,776.43");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=276.79,679.51");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=348.52,698.69");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=301.77,725.57");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=387.89,744.00");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=437.99,699.59");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=408.28,721.58");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=408.01,648.85");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=365.40,632.04");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=441.82,646.60");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=463.55,663.71");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=524.30,606.99");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=673.52,723.50");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=554.57,611.55");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=622.65,647.30");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=694.43,689.00");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=735.69,639.38");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=695.89,616.93");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=671.47,740.39");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=650.79,572.61");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=680.24,545.89");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=625.75,575.72");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=645.97,508.17");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=549.42,570.75");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=543.26,601.43");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=588.42,649.92");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=365.48,570.98");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=513.44,569.32");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=476.44,650.01");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=514.55,585.28");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=381.61,674.14");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=454.10,680.95");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=505.52,633.98");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=565.95,641.71");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=551.83,691.98");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=645.77,718.90");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=674.94,603.94");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=701.45,567.58");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=595.78,634.25");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=628.76,668.60");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=756.33,642.81");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=653.62,531.83");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=670.11,627.05");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=242.85,669.01");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=241.09,601.13");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=373.10,646.95");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=239.36,756.92");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=367.31,692.12");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=365.37,733.18");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=299.04,753.42");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=306.27,762.54");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=251.75,730.49");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=299.10,594.76");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=299.57,737.78");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=485.11,786.56");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=441.88,770.68");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=349.67,771.98");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=474.23,777.45");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=414.39,672.30");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=404.53,663.73");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=460.29,588.65");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=573.41,676.32");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=628.36,679.82");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=633.65,591.30");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=645.04,622.18");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=701.58,723.42");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=728.07,705.01");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=744.56,626.53");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=763.24,700.05");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=701.18,607.50");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=625.97,601.62");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=680.70,638.08");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=689.05,487.38");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=621.29,630.08");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=492.44,585.21");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=501.71,651.41");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=395.61,546.47");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=536.73,655.33");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=496.89,521.72");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=472.57,603.57");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=379.93,709.06");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=413.40,627.19");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=512.43,599.47");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=517.47,667.46");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=514.64,698.37");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=562.83,744.17");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=627.73,689.90");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=641.52,579.89");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=721.05,611.70");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=724.01,598.90");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=780.05,720.10");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=772.13,575.90");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=622.38,553.86");
    }

}

