
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn1-1
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
        @display("p=410.00,626.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=415.85,648.62");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=490.85,634.27");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=533.45,545.49");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=546.18,538.80");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=561.64,534.70");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=563.24,460.85");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=498.24,389.51");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=467.53,327.12");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=416.34,342.25");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=443.00,283.65");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=440.40,263.36");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=411.23,287.37");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=448.50,271.99");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=452.95,218.02");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=479.68,122.37");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=545.15,170.57");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=525.51,97.49");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=536.71,93.74");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=563.71,57.70");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=500.13,47.14");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=538.62,82.75");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=603.71,126.88");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=544.74,116.65");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=499.18,104.24");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=500.54,189.36");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=507.70,200.99");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=493.65,229.77");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=502.74,223.50");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=522.19,219.04");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=606.71,235.64");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=600.38,208.54");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=615.41,218.53");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=631.81,217.36");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=659.01,281.73");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=685.29,264.61");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=723.28,282.63");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=672.47,280.68");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=754.17,272.89");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=699.89,287.90");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=665.70,302.45");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=607.80,254.46");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=579.85,214.92");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=580.66,256.67");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=571.96,279.83");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=545.31,288.17");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=471.47,313.22");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=468.41,294.63");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=456.31,316.61");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=533.56,367.96");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=556.07,349.07");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=564.28,333.17");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=497.75,297.35");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=527.34,352.48");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=492.36,346.34");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=428.43,303.82");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=476.74,261.80");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=550.02,209.17");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=644.73,303.33");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=644.63,269.91");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=645.27,280.66");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=639.79,291.22");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=653.30,295.67");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=670.96,261.99");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=688.39,211.13");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=641.97,204.81");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=607.57,188.29");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=569.72,130.53");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=561.92,102.15");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=617.90,159.02");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=590.19,131.49");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=534.37,43.61");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=558.05,48.83");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=596.73,139.11");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=605.00,115.22");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=626.58,120.53");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=631.02,159.82");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=585.56,148.91");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=598.80,167.82");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=609.64,151.55");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=563.44,179.25");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=569.64,201.41");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=584.52,205.47");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=643.60,172.33");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=744.87,198.89");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=698.09,136.80");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=663.85,94.59");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=657.06,86.77");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=646.04,145.53");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=632.78,171.71");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=700.80,117.65");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=750.36,114.12");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=757.02,100.50");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=767.33,70.76");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=795.68,11.12");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=783.73,37.98");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=729.70,57.00");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=676.86,79.43");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=723.59,142.30");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=733.15,131.26");
    }

    host_fn_rly_101: <default("SensorNode")> like INetworkNode {
        @display("p=637.34,108.49");
    }

    host_fn_rly_102: <default("SensorNode")> like INetworkNode {
        @display("p=587.53,97.18");
    }

    host_fn_rly_103: <default("SensorNode")> like INetworkNode {
        @display("p=631.48,144.27");
    }

    host_fn_rly_104: <default("SensorNode")> like INetworkNode {
        @display("p=536.27,212.42");
    }

    host_fn_rly_105: <default("SensorNode")> like INetworkNode {
        @display("p=495.19,133.95");
    }

    host_fn_rly_106: <default("SensorNode")> like INetworkNode {
        @display("p=482.36,220.78");
    }

    host_fn_rly_107: <default("SensorNode")> like INetworkNode {
        @display("p=455.22,279.62");
    }

    host_fn_rly_108: <default("SensorNode")> like INetworkNode {
        @display("p=420.89,224.81");
    }

    host_fn_rly_109: <default("SensorNode")> like INetworkNode {
        @display("p=411.38,231.72");
    }

    host_fn_rly_110: <default("SensorNode")> like INetworkNode {
        @display("p=427.48,288.20");
    }

    host_fn_rly_111: <default("SensorNode")> like INetworkNode {
        @display("p=518.44,333.00");
    }

    host_fn_rly_112: <default("SensorNode")> like INetworkNode {
        @display("p=411.50,249.70");
    }

    host_fn_rly_113: <default("SensorNode")> like INetworkNode {
        @display("p=429.89,276.41");
    }

    host_fn_rly_114: <default("SensorNode")> like INetworkNode {
        @display("p=375.56,257.45");
    }

    host_fn_rly_115: <default("SensorNode")> like INetworkNode {
        @display("p=346.08,246.86");
    }

    host_fn_rly_116: <default("SensorNode")> like INetworkNode {
        @display("p=324.36,255.94");
    }

    host_fn_rly_117: <default("SensorNode")> like INetworkNode {
        @display("p=277.02,282.16");
    }

    host_fn_rly_118: <default("SensorNode")> like INetworkNode {
        @display("p=292.41,252.10");
    }

    host_fn_rly_119: <default("SensorNode")> like INetworkNode {
        @display("p=310.95,235.75");
    }

    host_fn_rly_120: <default("SensorNode")> like INetworkNode {
        @display("p=255.68,272.90");
    }

    host_fn_rly_121: <default("SensorNode")> like INetworkNode {
        @display("p=251.22,316.42");
    }

    host_fn_rly_122: <default("SensorNode")> like INetworkNode {
        @display("p=234.84,314.36");
    }

    host_fn_rly_123: <default("SensorNode")> like INetworkNode {
        @display("p=197.67,391.55");
    }

    host_fn_rly_124: <default("SensorNode")> like INetworkNode {
        @display("p=138.71,386.71");
    }

    host_fn_rly_125: <default("SensorNode")> like INetworkNode {
        @display("p=186.48,326.87");
    }

    host_fn_rly_126: <default("SensorNode")> like INetworkNode {
        @display("p=128.46,373.11");
    }

    host_fn_rly_127: <default("SensorNode")> like INetworkNode {
        @display("p=121.60,390.61");
    }

    host_fn_rly_128: <default("SensorNode")> like INetworkNode {
        @display("p=157.97,427.28");
    }

    host_fn_rly_129: <default("SensorNode")> like INetworkNode {
        @display("p=108.56,359.14");
    }

    host_fn_rly_130: <default("SensorNode")> like INetworkNode {
        @display("p=75.58,404.39");
    }

    host_fn_rly_131: <default("SensorNode")> like INetworkNode {
        @display("p=147.57,445.04");
    }

    host_fn_rly_132: <default("SensorNode")> like INetworkNode {
        @display("p=144.91,489.95");
    }

    host_fn_rly_133: <default("SensorNode")> like INetworkNode {
        @display("p=183.39,515.71");
    }

    host_fn_rly_134: <default("SensorNode")> like INetworkNode {
        @display("p=170.73,500.11");
    }

    host_fn_rly_135: <default("SensorNode")> like INetworkNode {
        @display("p=198.00,547.13");
    }

    host_fn_rly_136: <default("SensorNode")> like INetworkNode {
        @display("p=279.94,519.12");
    }

    host_fn_rly_137: <default("SensorNode")> like INetworkNode {
        @display("p=243.21,550.82");
    }

    host_fn_rly_138: <default("SensorNode")> like INetworkNode {
        @display("p=184.07,595.03");
    }

    host_fn_rly_139: <default("SensorNode")> like INetworkNode {
        @display("p=110.45,610.88");
    }

    host_fn_rly_140: <default("SensorNode")> like INetworkNode {
        @display("p=121.40,597.32");
    }

    host_fn_rly_141: <default("SensorNode")> like INetworkNode {
        @display("p=132.85,573.39");
    }

    host_fn_rly_142: <default("SensorNode")> like INetworkNode {
        @display("p=56.56,539.37");
    }

    host_fn_rly_143: <default("SensorNode")> like INetworkNode {
        @display("p=105.30,466.67");
    }

    host_fn_rly_144: <default("SensorNode")> like INetworkNode {
        @display("p=124.61,480.54");
    }

    host_fn_rly_145: <default("SensorNode")> like INetworkNode {
        @display("p=102.96,455.38");
    }

    host_fn_rly_146: <default("SensorNode")> like INetworkNode {
        @display("p=57.26,449.75");
    }

    host_fn_rly_147: <default("SensorNode")> like INetworkNode {
        @display("p=51.98,477.81");
    }

    host_fn_rly_148: <default("SensorNode")> like INetworkNode {
        @display("p=36.91,451.17");
    }

    host_fn_rly_149: <default("SensorNode")> like INetworkNode {
        @display("p=33.25,464.18");
    }

    host_fn_rly_150: <default("SensorNode")> like INetworkNode {
        @display("p=8.64,440.49");
    }

    host_fn_rly_151: <default("SensorNode")> like INetworkNode {
        @display("p=1.09,488.03");
    }

    host_fn_rly_152: <default("SensorNode")> like INetworkNode {
        @display("p=3.47,474.04");
    }

    host_fn_rly_153: <default("SensorNode")> like INetworkNode {
        @display("p=19.48,459.64");
    }

    host_fn_rly_154: <default("SensorNode")> like INetworkNode {
        @display("p=24.09,434.60");
    }

    host_fn_rly_155: <default("SensorNode")> like INetworkNode {
        @display("p=12.46,533.91");
    }

    host_fn_rly_156: <default("SensorNode")> like INetworkNode {
        @display("p=20.19,602.74");
    }

    host_fn_rly_157: <default("SensorNode")> like INetworkNode {
        @display("p=67.20,567.06");
    }

    host_fn_rly_158: <default("SensorNode")> like INetworkNode {
        @display("p=91.90,633.53");
    }

    host_fn_rly_159: <default("SensorNode")> like INetworkNode {
        @display("p=59.46,633.55");
    }

    host_fn_rly_160: <default("SensorNode")> like INetworkNode {
        @display("p=56.18,645.68");
    }

    host_fn_rly_161: <default("SensorNode")> like INetworkNode {
        @display("p=10.78,569.57");
    }

    host_fn_rly_162: <default("SensorNode")> like INetworkNode {
        @display("p=42.11,554.05");
    }

    host_fn_rly_163: <default("SensorNode")> like INetworkNode {
        @display("p=20.05,564.01");
    }

    host_fn_rly_164: <default("SensorNode")> like INetworkNode {
        @display("p=66.18,517.89");
    }

    host_fn_rly_165: <default("SensorNode")> like INetworkNode {
        @display("p=66.45,590.71");
    }

    host_fn_rly_166: <default("SensorNode")> like INetworkNode {
        @display("p=127.01,653.92");
    }

    host_fn_rly_167: <default("SensorNode")> like INetworkNode {
        @display("p=144.81,628.54");
    }

    host_fn_rly_168: <default("SensorNode")> like INetworkNode {
        @display("p=71.69,631.45");
    }

    host_fn_rly_169: <default("SensorNode")> like INetworkNode {
        @display("p=103.93,662.35");
    }

    host_fn_rly_170: <default("SensorNode")> like INetworkNode {
        @display("p=45.16,650.85");
    }

    host_fn_rly_171: <default("SensorNode")> like INetworkNode {
        @display("p=8.53,712.21");
    }

    host_fn_rly_172: <default("SensorNode")> like INetworkNode {
        @display("p=58.09,725.33");
    }

    host_fn_rly_173: <default("SensorNode")> like INetworkNode {
        @display("p=46.20,724.51");
    }

    host_fn_rly_174: <default("SensorNode")> like INetworkNode {
        @display("p=103.51,695.56");
    }

    host_fn_rly_175: <default("SensorNode")> like INetworkNode {
        @display("p=119.87,701.75");
    }

    host_fn_rly_176: <default("SensorNode")> like INetworkNode {
        @display("p=61.72,680.82");
    }

    host_fn_rly_177: <default("SensorNode")> like INetworkNode {
        @display("p=21.65,697.38");
    }

    host_fn_rly_178: <default("SensorNode")> like INetworkNode {
        @display("p=10.45,748.86");
    }

    host_fn_rly_179: <default("SensorNode")> like INetworkNode {
        @display("p=44.84,672.17");
    }

    host_fn_rly_180: <default("SensorNode")> like INetworkNode {
        @display("p=57.10,693.98");
    }

    host_fn_rly_181: <default("SensorNode")> like INetworkNode {
        @display("p=20.68,755.16");
    }

    host_fn_rly_182: <default("SensorNode")> like INetworkNode {
        @display("p=30.86,718.00");
    }

    host_fn_rly_183: <default("SensorNode")> like INetworkNode {
        @display("p=94.54,768.45");
    }

    host_fn_rly_184: <default("SensorNode")> like INetworkNode {
        @display("p=11.99,776.71");
    }

    host_fn_rly_185: <default("SensorNode")> like INetworkNode {
        @display("p=9.46,765.62");
    }

    host_fn_rly_186: <default("SensorNode")> like INetworkNode {
        @display("p=67.64,741.16");
    }

    host_fn_rly_187: <default("SensorNode")> like INetworkNode {
        @display("p=78.68,742.23");
    }

    host_fn_rly_188: <default("SensorNode")> like INetworkNode {
        @display("p=22.96,741.12");
    }

    host_fn_rly_189: <default("SensorNode")> like INetworkNode {
        @display("p=38.69,689.27");
    }

    host_fn_rly_190: <default("SensorNode")> like INetworkNode {
        @display("p=93.80,618.49");
    }

    host_fn_rly_191: <default("SensorNode")> like INetworkNode {
        @display("p=151.16,576.71");
    }

    host_fn_rly_192: <default("SensorNode")> like INetworkNode {
        @display("p=84.05,583.29");
    }

    host_fn_rly_193: <default("SensorNode")> like INetworkNode {
        @display("p=28.23,481.84");
    }

    host_fn_rly_194: <default("SensorNode")> like INetworkNode {
        @display("p=55.85,464.90");
    }

    host_fn_rly_195: <default("SensorNode")> like INetworkNode {
        @display("p=19.54,412.27");
    }

    host_fn_rly_196: <default("SensorNode")> like INetworkNode {
        @display("p=55.97,372.53");
    }

    host_fn_rly_197: <default("SensorNode")> like INetworkNode {
        @display("p=57.84,334.67");
    }

    host_fn_rly_198: <default("SensorNode")> like INetworkNode {
        @display("p=96.12,350.76");
    }

    host_fn_rly_199: <default("SensorNode")> like INetworkNode {
        @display("p=135.28,344.22");
    }

    host_fn_rly_200: <default("SensorNode")> like INetworkNode {
        @display("p=169.67,366.61");
    }

}

