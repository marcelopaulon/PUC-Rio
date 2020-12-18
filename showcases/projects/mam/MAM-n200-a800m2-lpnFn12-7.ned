
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn12-7
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
        @display("p=784.00,182.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=789.69,116.34");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=774.92,156.80");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=787.91,201.37");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=798.17,188.39");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=730.78,182.58");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=663.79,180.23");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=720.48,159.11");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=728.04,257.01");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=787.64,237.43");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=782.86,323.21");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=687.93,338.36");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=731.77,302.13");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=766.05,267.18");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=720.12,190.93");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=672.83,123.58");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=611.69,103.69");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=721.44,201.02");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=764.75,90.72");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=770.26,234.60");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=774.50,202.27");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=712.53,236.32");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=685.35,185.58");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=690.29,128.95");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=773.94,131.19");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=755.15,283.30");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=738.43,256.78");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=704.48,305.29");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=679.29,306.01");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=792.78,312.39");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=786.07,276.85");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=744.45,207.16");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=739.71,88.03");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=634.54,32.88");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=756.20,199.33");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=697.59,104.92");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=761.97,223.50");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=767.67,186.48");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=757.09,214.41");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=799.00,171.12");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=588.48,183.73");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=696.03,145.99");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=712.34,251.03");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=797.91,277.84");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=746.28,358.16");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=746.12,310.43");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=733.50,287.36");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=750.99,254.87");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=635.08,182.15");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=647.33,54.52");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=593.53,99.79");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=762.00,159.64");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=744.78,124.10");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=697.42,116.61");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=771.72,297.50");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=797.08,127.82");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=713.69,137.43");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=595.04,136.91");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=651.93,209.26");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=737.51,348.06");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=783.96,250.22");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=716.40,390.28");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=628.96,405.13");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=658.50,270.76");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=744.99,282.37");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=718.89,178.41");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=680.15,70.89");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=667.43,58.20");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=793.26,105.45");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=765.65,43.28");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=749.82,159.55");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=791.14,138.22");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=773.84,280.57");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=742.86,189.61");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=609.42,183.51");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=739.98,148.46");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=771.27,247.76");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=757.37,234.82");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=795.14,263.62");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=683.47,394.27");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=675.68,349.34");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=798.38,216.35");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=652.36,190.14");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=745.73,178.55");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=601.71,68.92");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=776.99,103.67");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=755.52,55.29");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=742.06,104.35");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=705.69,219.11");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=748.32,133.65");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=685.50,102.18");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=657.46,260.12");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=686.72,156.40");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=720.43,283.40");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=714.55,264.59");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=714.24,376.03");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=699.46,340.32");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=762.79,352.22");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=683.34,230.22");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=631.57,210.79");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=665.36,154.01");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=585.64,122.12");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=786.61,166.23");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=757.66,129.53");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=799.94,228.59");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=756.87,183.61");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=740.62,233.45");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=677.29,159.87");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=733.98,171.10");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=656.56,224.60");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=701.98,249.86");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=761.74,316.54");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=771.78,321.20");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=680.38,328.65");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=772.04,310.82");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=669.65,264.15");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=719.58,216.10");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=653.88,87.32");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=598.60,80.47");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=773.53,220.42");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=792.72,62.09");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=742.22,69.61");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=693.50,198.66");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=702.93,173.57");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=675.17,110.36");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=648.51,113.66");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=663.87,233.89");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=682.97,267.32");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=727.33,272.15");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=784.33,357.73");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=651.76,385.71");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=703.37,282.25");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=730.50,336.57");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=700.02,187.80");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=616.92,63.89");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=606.85,151.73");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=751.53,272.18");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=703.77,138.75");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=798.92,149.52");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=799.41,205.21");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=786.23,218.29");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=756.82,109.17");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=619.17,229.99");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=734.66,157.53");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=771.37,172.57");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=730.02,228.60");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=786.26,335.85");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=707.64,352.05");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=785.87,297.30");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=778.54,345.31");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=672.59,200.70");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=682.61,121.05");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=564.39,75.65");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=732.82,216.27");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=782.28,142.94");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=730.51,131.84");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=766.79,120.35");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=709.77,151.03");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=716.21,96.76");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=675.60,188.22");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=725.29,113.81");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=694.93,166.88");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=741.63,266.30");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=747.38,345.85");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=648.35,361.50");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=754.34,297.04");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=745.61,245.59");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=768.11,141.77");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=697.08,41.57");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=599.61,45.89");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=731.83,243.77");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=693.77,93.09");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=755.56,143.73");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=761.13,173.74");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=776.86,268.80");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=722.99,145.21");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=631.10,161.44");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=672.93,89.32");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=693.91,270.54");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=796.45,159.25");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=716.75,335.07");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=651.97,327.36");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=692.81,315.95");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=742.60,329.23");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=736.69,199.10");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=635.16,147.99");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=568.66,126.83");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=778.76,82.19");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=749.93,43.32");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=785.40,154.20");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=758.64,245.96");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=781.46,122.59");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=685.40,256.10");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=570.21,191.85");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=630.71,119.09");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=634.18,233.52");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=796.95,247.09");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=798.00,371.92");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=689.09,367.85");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=646.49,262.22");
    }

}

