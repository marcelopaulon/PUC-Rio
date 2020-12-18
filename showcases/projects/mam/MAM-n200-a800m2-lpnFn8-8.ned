
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn8-8
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
        @display("p=378.00,599.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=396.72,559.39");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=402.18,509.79");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=427.52,498.52");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=416.42,590.68");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=413.27,602.71");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=430.33,655.32");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=406.79,679.26");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=472.41,748.97");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=514.93,715.08");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=533.49,701.59");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=539.25,684.52");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=554.03,691.54");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=521.17,675.07");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=606.36,647.16");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=647.16,704.20");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=652.30,720.51");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=676.21,722.17");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=670.87,685.84");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=624.35,733.61");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=609.09,735.10");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=590.86,741.84");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=587.35,776.48");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=537.80,729.98");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=463.81,735.71");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=316.92,634.04");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=395.84,571.86");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=334.82,533.64");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=453.72,456.10");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=461.45,551.31");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=384.90,569.43");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=457.12,587.06");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=343.03,611.87");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=467.63,693.91");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=509.07,727.62");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=480.33,681.16");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=484.86,762.47");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=557.80,629.83");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=588.31,634.17");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=579.31,702.40");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=624.63,776.94");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=673.81,624.29");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=618.94,676.79");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=710.66,692.68");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=605.35,676.10");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=655.91,742.92");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=555.82,706.98");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=514.77,783.37");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=514.21,746.19");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=437.30,680.15");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=287.11,613.64");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=396.54,496.09");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=381.29,439.49");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=423.03,475.08");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=434.69,588.73");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=407.81,528.97");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=453.86,685.10");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=352.84,654.29");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=462.15,677.78");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=446.63,739.32");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=511.30,767.34");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=531.32,668.91");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=581.50,614.92");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=584.55,724.10");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=614.56,653.83");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=608.87,782.38");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=633.65,720.09");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=699.29,720.52");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=700.89,646.06");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=594.91,706.58");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=540.07,786.30");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=579.64,762.69");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=666.20,726.70");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=532.44,762.52");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=421.20,741.48");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=355.70,586.71");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=390.97,547.24");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=383.13,465.31");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=497.65,469.07");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=496.64,614.79");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=324.36,581.80");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=362.92,694.64");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=401.59,734.72");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=470.17,727.69");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=468.60,795.36");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=559.23,797.33");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=551.56,672.58");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=627.06,649.21");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=573.89,650.52");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=621.76,627.92");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=634.37,694.73");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=657.75,788.59");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=604.33,748.27");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=691.08,686.86");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=706.79,747.28");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=619.54,761.34");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=606.37,766.03");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=564.73,764.95");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=549.60,731.20");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=413.33,785.90");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=449.11,644.11");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=421.19,542.93");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=367.68,471.41");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=484.83,471.70");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=468.37,617.09");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=383.87,624.37");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=424.21,673.00");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=488.47,628.76");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=412.52,729.01");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=464.88,632.85");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=543.16,719.75");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=457.37,703.57");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=572.16,662.29");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=566.13,603.35");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=649.20,686.89");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=561.77,656.16");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=653.93,660.93");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=680.15,732.15");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=752.82,656.01");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=647.49,772.29");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=595.60,798.43");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=582.25,680.35");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=498.43,755.85");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=566.18,735.60");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=452.22,797.85");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=375.55,587.12");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=367.07,551.01");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=428.33,453.60");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=352.38,493.95");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=339.29,573.40");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=324.05,623.15");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=459.18,652.14");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=398.32,658.64");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=515.91,688.34");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=494.02,733.06");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=554.76,775.98");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=500.96,711.69");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=485.79,722.39");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=532.15,626.35");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=595.03,596.15");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=687.46,777.19");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=639.67,738.82");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=649.16,641.92");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=721.59,665.99");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=641.08,727.05");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=532.28,719.94");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=570.85,756.53");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=503.47,736.95");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=609.84,666.83");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=470.77,761.01");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=373.33,532.33");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=325.65,543.28");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=427.49,509.89");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=405.96,447.36");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=494.05,558.11");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=446.43,586.74");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=417.76,638.41");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=442.54,601.05");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=467.16,783.24");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=476.00,666.83");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=518.36,756.80");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=572.57,715.40");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=581.70,785.03");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=536.96,743.12");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=643.90,621.43");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=614.61,703.68");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=702.27,770.96");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=757.05,748.14");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=706.65,669.77");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=596.25,691.12");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=671.59,752.94");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=601.26,656.87");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=529.02,795.86");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=550.84,750.69");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=437.78,763.46");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=386.57,591.98");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=402.34,548.84");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=393.85,481.94");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=444.70,535.16");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=447.06,666.61");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=396.49,676.84");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=394.25,702.16");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=484.47,705.04");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=472.14,717.83");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=453.66,774.33");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=480.78,656.60");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=525.08,731.63");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=614.67,721.29");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=505.57,590.82");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=640.66,662.13");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=697.78,702.18");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=617.03,691.74");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=690.36,709.11");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=678.39,701.57");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=707.31,760.48");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=585.43,694.02");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=498.52,777.29");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=620.46,745.54");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=575.31,744.01");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=436.98,728.50");
    }

}

