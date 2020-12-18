
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn4_3
{
    parameters:
        @display("bgb=1600,1600;bgg=100,1,grey95;bgu=m");
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
        @display("p=100.00,700.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=197.79,695.62");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=147.34,781.51");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=218.99,682.47");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=271.37,671.07");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=273.52,690.42");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=331.77,734.18");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=408.53,732.45");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=425.81,671.06");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=493.69,712.98");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=476.27,724.06");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=446.33,755.38");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=463.03,728.32");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=390.00,763.61");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=382.23,709.47");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=455.68,762.35");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=530.57,767.50");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=554.85,761.26");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=541.49,789.17");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=551.35,782.47");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=488.47,753.77");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=523.56,791.20");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=500.68,798.69");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=535.19,726.53");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=531.98,659.89");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=573.55,696.58");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=517.55,702.07");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=549.35,752.68");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=462.64,740.94");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=466.46,694.12");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=429.78,748.57");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=441.68,704.58");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=423.08,633.19");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=376.91,634.75");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=394.79,640.24");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=441.11,614.32");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=389.18,606.53");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=348.49,542.95");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=349.62,555.60");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=297.65,604.14");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=294.14,629.66");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=309.78,692.95");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=287.71,756.80");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=266.29,747.03");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=219.82,795.25");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=234.65,788.87");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=90.45,764.11");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=71.50,767.03");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=59.45,773.40");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=101.79,785.43");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=179.07,681.57");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=223.46,732.81");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=186.60,731.44");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=174.37,739.25");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=204.60,598.53");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=292.72,643.86");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=300.43,709.18");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=444.74,715.31");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=504.78,720.05");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=527.73,629.53");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=491.35,695.30");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=477.20,799.15");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=396.30,657.87");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=395.15,669.32");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=404.59,785.38");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=494.95,776.49");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=450.54,790.82");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=478.14,788.17");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=545.63,701.83");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=578.95,714.37");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=478.78,665.32");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=563.71,784.75");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=429.12,762.50");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=592.28,732.70");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=572.52,636.21");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=558.68,640.44");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=581.18,748.54");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=548.70,724.97");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=512.76,742.15");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=524.94,725.67");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=367.04,670.73");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=468.42,662.45");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=384.16,625.72");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=400.07,678.82");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=447.81,667.87");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=462.17,605.15");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=327.81,636.91");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=348.59,525.42");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=372.26,617.48");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=312.52,546.89");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=328.33,622.03");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=352.63,707.89");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=336.38,694.67");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=296.57,786.40");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=182.82,794.34");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=202.03,717.24");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=134.35,682.36");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=32.34,783.57");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=42.84,765.60");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=141.78,745.47");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=99.11,671.12");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=245.16,705.53");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=178.24,775.30");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=284.62,687.52");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=263.06,708.42");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=313.01,762.93");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=364.85,714.13");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=406.34,708.84");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=397.26,695.00");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=553.67,739.45");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=481.35,767.87");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=496.19,734.46");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=384.51,670.26");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=352.03,783.98");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=392.03,720.60");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=472.69,704.32");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=515.37,772.70");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=613.76,777.29");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=570.79,749.08");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=605.15,734.09");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=430.74,690.34");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=453.60,780.53");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=449.06,740.65");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=513.14,727.71");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=456.03,656.56");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=578.71,724.77");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=515.67,683.58");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=525.40,753.17");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=488.33,724.84");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=399.36,753.79");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=363.00,740.99");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=419.04,710.89");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=346.24,621.21");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=371.56,648.80");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=421.21,548.23");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=363.24,584.30");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=409.19,631.67");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=387.78,578.74");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=312.73,489.10");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=310.21,517.56");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=279.36,579.34");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=301.81,741.84");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=275.64,758.25");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=249.05,750.43");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=226.71,765.62");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=244.38,781.37");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=46.40,682.47");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=82.66,780.73");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=65.44,784.35");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=164.58,720.58");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=115.87,629.60");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=217.09,745.96");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=150.93,735.15");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=256.06,627.16");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=335.28,679.53");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=276.03,656.72");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=372.04,684.75");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=466.93,765.89");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=433.78,721.92");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=539.07,711.51");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=472.51,734.34");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=395.95,776.58");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=506.37,705.23");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=384.17,732.62");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=335.87,721.85");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=373.90,760.07");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=630.52,768.64");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=466.03,796.20");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=471.77,752.53");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=627.47,799.65");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=512.57,665.31");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=602.43,774.68");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=588.55,792.84");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=500.49,673.12");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=459.44,668.29");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=583.98,694.50");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=491.83,683.27");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=541.33,768.65");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=453.78,708.15");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=406.07,649.76");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=419.57,755.97");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=400.92,740.27");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=460.62,575.67");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=342.93,603.10");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=391.80,547.39");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=437.60,632.18");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=354.80,672.50");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=333.04,522.12");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=378.45,534.16");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=278.06,618.79");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=302.10,622.70");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=282.67,711.33");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=346.31,750.70");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=350.06,772.34");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=163.09,733.84");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=260.10,772.39");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=47.98,788.69");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=111.15,775.94");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=92.13,730.91");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=64.83,799.90");
    }

}

