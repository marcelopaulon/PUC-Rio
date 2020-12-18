
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn1-9
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
        @display("p=155.00,752.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=80.21,704.95");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=141.32,696.80");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=118.51,706.66");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=54.22,710.83");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=99.82,657.02");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=104.53,730.53");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=103.93,743.42");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=152.93,723.34");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=95.89,755.75");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=149.67,736.73");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=216.70,775.81");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=230.63,759.65");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=256.96,723.14");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=284.03,742.25");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=272.66,742.87");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=240.81,698.51");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=241.25,717.66");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=253.50,641.90");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=306.73,686.33");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=257.60,688.40");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=310.24,656.85");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=372.86,691.76");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=221.81,588.83");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=222.45,643.02");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=217.81,606.43");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=207.55,523.59");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=189.65,504.99");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=193.93,456.63");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=189.75,443.73");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=209.38,463.87");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=153.36,500.73");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=157.54,586.42");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=185.15,594.21");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=180.79,611.83");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=250.79,565.46");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=237.85,650.27");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=242.81,550.55");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=247.21,538.83");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=214.44,628.72");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=223.55,621.17");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=199.75,663.20");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=139.53,665.32");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=123.37,672.83");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=138.27,744.09");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=124.17,740.71");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=184.93,769.08");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=201.33,777.24");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=206.29,768.01");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=219.11,709.12");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=318.43,771.32");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=337.44,756.69");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=314.74,785.77");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=346.60,721.41");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=329.31,788.42");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=299.23,731.19");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=294.91,767.67");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=241.50,757.77");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=198.25,756.84");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=177.44,741.19");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=247.65,785.85");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=239.48,732.72");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=246.48,745.59");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=222.13,753.59");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=299.40,715.42");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=310.03,735.43");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=313.86,694.52");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=357.58,738.10");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=415.50,686.54");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=458.72,603.36");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=493.90,648.42");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=519.65,653.87");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=587.91,625.28");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=636.49,574.85");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=636.58,636.33");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=641.01,594.74");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=640.98,612.72");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=610.45,674.59");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=621.94,664.53");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=628.71,649.70");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=563.03,622.90");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=547.06,693.99");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=535.71,696.82");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=561.96,636.95");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=590.86,766.72");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=583.33,714.82");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=577.27,703.39");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=601.39,619.90");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=648.59,561.60");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=634.33,563.95");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=685.73,604.87");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=713.75,669.62");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=620.60,639.10");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=694.36,665.90");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=675.56,647.28");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=601.37,603.70");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=577.01,648.29");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=627.68,586.39");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=691.24,558.14");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=682.10,616.33");
    }

    host_fn_rly_101: <default("SensorNode")> like INetworkNode {
        @display("p=624.94,619.06");
    }

    host_fn_rly_102: <default("SensorNode")> like INetworkNode {
        @display("p=659.23,711.46");
    }

    host_fn_rly_103: <default("SensorNode")> like INetworkNode {
        @display("p=656.23,693.29");
    }

    host_fn_rly_104: <default("SensorNode")> like INetworkNode {
        @display("p=626.04,706.01");
    }

    host_fn_rly_105: <default("SensorNode")> like INetworkNode {
        @display("p=578.30,738.30");
    }

    host_fn_rly_106: <default("SensorNode")> like INetworkNode {
        @display("p=563.44,732.95");
    }

    host_fn_rly_107: <default("SensorNode")> like INetworkNode {
        @display("p=633.03,742.57");
    }

    host_fn_rly_108: <default("SensorNode")> like INetworkNode {
        @display("p=591.42,737.62");
    }

    host_fn_rly_109: <default("SensorNode")> like INetworkNode {
        @display("p=607.67,770.20");
    }

    host_fn_rly_110: <default("SensorNode")> like INetworkNode {
        @display("p=564.41,781.76");
    }

    host_fn_rly_111: <default("SensorNode")> like INetworkNode {
        @display("p=544.24,738.14");
    }

    host_fn_rly_112: <default("SensorNode")> like INetworkNode {
        @display("p=609.26,738.14");
    }

    host_fn_rly_113: <default("SensorNode")> like INetworkNode {
        @display("p=611.64,724.81");
    }

    host_fn_rly_114: <default("SensorNode")> like INetworkNode {
        @display("p=528.21,688.61");
    }

    host_fn_rly_115: <default("SensorNode")> like INetworkNode {
        @display("p=524.19,727.66");
    }

    host_fn_rly_116: <default("SensorNode")> like INetworkNode {
        @display("p=628.99,795.96");
    }

    host_fn_rly_117: <default("SensorNode")> like INetworkNode {
        @display("p=628.27,763.38");
    }

    host_fn_rly_118: <default("SensorNode")> like INetworkNode {
        @display("p=545.94,709.10");
    }

    host_fn_rly_119: <default("SensorNode")> like INetworkNode {
        @display("p=583.48,755.24");
    }

    host_fn_rly_120: <default("SensorNode")> like INetworkNode {
        @display("p=587.55,777.62");
    }

    host_fn_rly_121: <default("SensorNode")> like INetworkNode {
        @display("p=474.20,763.40");
    }

    host_fn_rly_122: <default("SensorNode")> like INetworkNode {
        @display("p=452.05,778.21");
    }

    host_fn_rly_123: <default("SensorNode")> like INetworkNode {
        @display("p=416.66,740.46");
    }

    host_fn_rly_124: <default("SensorNode")> like INetworkNode {
        @display("p=411.81,709.66");
    }

    host_fn_rly_125: <default("SensorNode")> like INetworkNode {
        @display("p=508.96,687.80");
    }

    host_fn_rly_126: <default("SensorNode")> like INetworkNode {
        @display("p=494.00,602.13");
    }

    host_fn_rly_127: <default("SensorNode")> like INetworkNode {
        @display("p=561.02,591.74");
    }

    host_fn_rly_128: <default("SensorNode")> like INetworkNode {
        @display("p=542.73,564.20");
    }

    host_fn_rly_129: <default("SensorNode")> like INetworkNode {
        @display("p=535.15,585.82");
    }

    host_fn_rly_130: <default("SensorNode")> like INetworkNode {
        @display("p=571.07,612.65");
    }

    host_fn_rly_131: <default("SensorNode")> like INetworkNode {
        @display("p=491.16,554.18");
    }

    host_fn_rly_132: <default("SensorNode")> like INetworkNode {
        @display("p=514.39,617.77");
    }

    host_fn_rly_133: <default("SensorNode")> like INetworkNode {
        @display("p=603.94,560.91");
    }

    host_fn_rly_134: <default("SensorNode")> like INetworkNode {
        @display("p=632.55,520.73");
    }

    host_fn_rly_135: <default("SensorNode")> like INetworkNode {
        @display("p=679.53,480.98");
    }

    host_fn_rly_136: <default("SensorNode")> like INetworkNode {
        @display("p=654.17,440.26");
    }

    host_fn_rly_137: <default("SensorNode")> like INetworkNode {
        @display("p=578.01,448.78");
    }

    host_fn_rly_138: <default("SensorNode")> like INetworkNode {
        @display("p=531.13,443.97");
    }

    host_fn_rly_139: <default("SensorNode")> like INetworkNode {
        @display("p=465.14,374.72");
    }

    host_fn_rly_140: <default("SensorNode")> like INetworkNode {
        @display("p=534.11,422.56");
    }

    host_fn_rly_141: <default("SensorNode")> like INetworkNode {
        @display("p=459.86,487.72");
    }

    host_fn_rly_142: <default("SensorNode")> like INetworkNode {
        @display("p=417.75,510.00");
    }

    host_fn_rly_143: <default("SensorNode")> like INetworkNode {
        @display("p=344.31,520.41");
    }

    host_fn_rly_144: <default("SensorNode")> like INetworkNode {
        @display("p=378.68,454.69");
    }

    host_fn_rly_145: <default("SensorNode")> like INetworkNode {
        @display("p=368.93,383.27");
    }

    host_fn_rly_146: <default("SensorNode")> like INetworkNode {
        @display("p=418.20,359.92");
    }

    host_fn_rly_147: <default("SensorNode")> like INetworkNode {
        @display("p=357.43,357.44");
    }

    host_fn_rly_148: <default("SensorNode")> like INetworkNode {
        @display("p=327.08,349.18");
    }

    host_fn_rly_149: <default("SensorNode")> like INetworkNode {
        @display("p=330.18,423.30");
    }

    host_fn_rly_150: <default("SensorNode")> like INetworkNode {
        @display("p=320.17,441.63");
    }

    host_fn_rly_151: <default("SensorNode")> like INetworkNode {
        @display("p=393.63,411.95");
    }

    host_fn_rly_152: <default("SensorNode")> like INetworkNode {
        @display("p=384.68,435.03");
    }

    host_fn_rly_153: <default("SensorNode")> like INetworkNode {
        @display("p=386.09,447.77");
    }

    host_fn_rly_154: <default("SensorNode")> like INetworkNode {
        @display("p=326.29,477.98");
    }

    host_fn_rly_155: <default("SensorNode")> like INetworkNode {
        @display("p=380.89,522.07");
    }

    host_fn_rly_156: <default("SensorNode")> like INetworkNode {
        @display("p=474.95,492.56");
    }

    host_fn_rly_157: <default("SensorNode")> like INetworkNode {
        @display("p=495.85,519.19");
    }

    host_fn_rly_158: <default("SensorNode")> like INetworkNode {
        @display("p=460.17,498.06");
    }

    host_fn_rly_159: <default("SensorNode")> like INetworkNode {
        @display("p=432.41,507.88");
    }

    host_fn_rly_160: <default("SensorNode")> like INetworkNode {
        @display("p=392.94,496.61");
    }

    host_fn_rly_161: <default("SensorNode")> like INetworkNode {
        @display("p=377.29,497.33");
    }

    host_fn_rly_162: <default("SensorNode")> like INetworkNode {
        @display("p=474.76,502.60");
    }

    host_fn_rly_163: <default("SensorNode")> like INetworkNode {
        @display("p=549.48,460.47");
    }

    host_fn_rly_164: <default("SensorNode")> like INetworkNode {
        @display("p=632.17,495.46");
    }

    host_fn_rly_165: <default("SensorNode")> like INetworkNode {
        @display("p=610.66,496.26");
    }

    host_fn_rly_166: <default("SensorNode")> like INetworkNode {
        @display("p=660.08,609.65");
    }

    host_fn_rly_167: <default("SensorNode")> like INetworkNode {
        @display("p=649.32,606.28");
    }

    host_fn_rly_168: <default("SensorNode")> like INetworkNode {
        @display("p=665.13,576.61");
    }

    host_fn_rly_169: <default("SensorNode")> like INetworkNode {
        @display("p=682.05,505.24");
    }

    host_fn_rly_170: <default("SensorNode")> like INetworkNode {
        @display("p=752.95,513.89");
    }

    host_fn_rly_171: <default("SensorNode")> like INetworkNode {
        @display("p=708.28,488.91");
    }

    host_fn_rly_172: <default("SensorNode")> like INetworkNode {
        @display("p=700.39,473.11");
    }

    host_fn_rly_173: <default("SensorNode")> like INetworkNode {
        @display("p=693.20,489.30");
    }

    host_fn_rly_174: <default("SensorNode")> like INetworkNode {
        @display("p=689.31,426.93");
    }

    host_fn_rly_175: <default("SensorNode")> like INetworkNode {
        @display("p=720.78,462.40");
    }

    host_fn_rly_176: <default("SensorNode")> like INetworkNode {
        @display("p=642.32,506.81");
    }

    host_fn_rly_177: <default("SensorNode")> like INetworkNode {
        @display("p=627.43,460.01");
    }

    host_fn_rly_178: <default("SensorNode")> like INetworkNode {
        @display("p=730.98,452.30");
    }

    host_fn_rly_179: <default("SensorNode")> like INetworkNode {
        @display("p=691.06,455.26");
    }

    host_fn_rly_180: <default("SensorNode")> like INetworkNode {
        @display("p=775.86,503.97");
    }

    host_fn_rly_181: <default("SensorNode")> like INetworkNode {
        @display("p=779.22,514.81");
    }

    host_fn_rly_182: <default("SensorNode")> like INetworkNode {
        @display("p=724.07,566.78");
    }

    host_fn_rly_183: <default("SensorNode")> like INetworkNode {
        @display("p=591.49,484.11");
    }

    host_fn_rly_184: <default("SensorNode")> like INetworkNode {
        @display("p=568.02,507.77");
    }

    host_fn_rly_185: <default("SensorNode")> like INetworkNode {
        @display("p=513.13,560.86");
    }

    host_fn_rly_186: <default("SensorNode")> like INetworkNode {
        @display("p=503.79,565.96");
    }

    host_fn_rly_187: <default("SensorNode")> like INetworkNode {
        @display("p=450.91,510.91");
    }

    host_fn_rly_188: <default("SensorNode")> like INetworkNode {
        @display("p=505.11,552.69");
    }

    host_fn_rly_189: <default("SensorNode")> like INetworkNode {
        @display("p=517.63,484.46");
    }

    host_fn_rly_190: <default("SensorNode")> like INetworkNode {
        @display("p=566.05,539.53");
    }

    host_fn_rly_191: <default("SensorNode")> like INetworkNode {
        @display("p=567.80,526.69");
    }

    host_fn_rly_192: <default("SensorNode")> like INetworkNode {
        @display("p=500.10,536.84");
    }

    host_fn_rly_193: <default("SensorNode")> like INetworkNode {
        @display("p=495.95,486.17");
    }

    host_fn_rly_194: <default("SensorNode")> like INetworkNode {
        @display("p=479.09,549.41");
    }

    host_fn_rly_195: <default("SensorNode")> like INetworkNode {
        @display("p=443.28,610.58");
    }

    host_fn_rly_196: <default("SensorNode")> like INetworkNode {
        @display("p=469.98,609.72");
    }

    host_fn_rly_197: <default("SensorNode")> like INetworkNode {
        @display("p=396.48,553.20");
    }

    host_fn_rly_198: <default("SensorNode")> like INetworkNode {
        @display("p=405.91,560.53");
    }

    host_fn_rly_199: <default("SensorNode")> like INetworkNode {
        @display("p=418.78,534.51");
    }

    host_fn_rly_200: <default("SensorNode")> like INetworkNode {
        @display("p=443.12,503.37");
    }

}

