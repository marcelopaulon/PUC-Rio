
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn4_6
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
        @display("p=22.27,755.46");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=39.25,741.53");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=50.85,744.38");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=70.70,730.60");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=59.49,788.82");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=30.49,786.09");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=70.87,769.78");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=96.33,752.05");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=69.50,746.97");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=118.08,713.96");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=148.51,736.86");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=138.74,713.97");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=210.40,676.20");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=184.42,591.31");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=248.12,531.68");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=237.05,555.74");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=264.97,573.74");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=283.71,575.51");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=319.01,571.75");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=331.80,596.76");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=346.58,689.73");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=378.20,716.85");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=347.04,720.73");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=356.69,659.62");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=433.40,695.91");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=437.80,756.70");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=424.12,721.28");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=421.69,731.06");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=411.37,721.33");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=349.59,645.01");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=321.46,628.07");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=251.64,648.04");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=208.78,653.28");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=176.94,728.78");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=114.86,777.64");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=108.18,727.93");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=29.50,684.86");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=26.66,698.92");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=35.65,704.61");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=44.28,722.69");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=34.22,724.61");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=10.06,736.69");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=5.55,720.25");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=55.16,732.06");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=56.97,699.03");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=108.42,759.74");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=87.53,759.63");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=154.27,724.97");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=93.33,798.09");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=105.91,771.34");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=61.19,716.57");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=87.31,721.63");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=9.90,668.68");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=119.44,702.56");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=11.11,760.16");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=118.72,740.47");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=83.26,770.90");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=23.37,718.14");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=130.85,765.17");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=153.06,796.84");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=182.72,664.95");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=141.38,668.43");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=249.99,626.63");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=265.57,544.46");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=280.41,534.87");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=176.76,565.44");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=246.19,607.23");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=267.26,591.14");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=278.65,620.34");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=357.19,607.56");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=359.10,703.39");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=435.72,792.91");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=369.37,696.13");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=341.17,668.45");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=414.71,745.72");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=512.82,708.01");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=368.47,723.22");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=507.84,764.98");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=434.38,681.36");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=355.78,626.68");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=313.96,561.73");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=257.99,659.01");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=265.60,714.92");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=173.26,658.38");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=122.23,785.49");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=151.78,655.62");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=14.79,603.22");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=41.99,628.56");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=75.43,673.53");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=22.78,769.29");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=22.88,779.35");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=12.17,656.13");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=91.24,708.54");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=79.51,693.51");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=105.97,656.10");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=95.09,735.67");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=80.11,745.20");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=197.26,755.31");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=14.58,792.23");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=113.88,672.62");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=24.17,797.46");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=18.39,730.33");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=61.57,684.87");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=130.08,749.56");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=39.57,763.83");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=108.78,795.42");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=74.22,757.02");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=108.14,747.26");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=47.31,755.86");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=149.68,688.69");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=214.05,750.44");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=209.81,712.82");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=188.70,646.36");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=147.68,612.14");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=288.65,524.90");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=236.95,510.84");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=349.80,550.67");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=266.99,628.96");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=249.87,552.58");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=335.26,620.46");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=269.27,670.26");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=386.36,707.98");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=356.66,689.34");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=361.18,751.78");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=415.72,763.04");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=475.33,683.79");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=434.13,727.68");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=376.82,657.66");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=398.94,728.11");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=389.29,692.42");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=409.36,655.99");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=246.43,594.90");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=174.31,676.89");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=163.46,731.25");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=138.35,785.78");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=42.70,665.05");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=19.61,687.37");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=41.92,613.04");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=30.01,655.49");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=54.47,772.45");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=85.68,667.09");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=7.36,784.01");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=6.38,750.44");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=126.83,682.43");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=99.30,637.80");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=154.13,781.19");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=54.79,799.71");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=195.34,773.39");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=128.22,798.85");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=75.32,604.61");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=28.60,733.24");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=6.43,680.46");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=137.21,726.81");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=129.43,777.09");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=99.65,781.52");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=33.28,754.88");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=48.47,781.71");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=98.32,721.39");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=76.33,712.54");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=138.99,702.47");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=233.80,736.42");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=164.89,777.70");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=194.89,588.78");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=230.36,638.59");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=210.19,556.81");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=160.32,579.66");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=226.66,517.46");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=244.59,486.16");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=379.21,495.96");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=322.30,513.09");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=285.89,737.22");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=444.47,659.64");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=303.25,764.88");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=376.85,677.56");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=488.89,704.07");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=496.91,737.61");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=508.83,694.77");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=354.88,793.26");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=403.07,714.83");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=380.08,582.62");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=310.37,604.25");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=310.66,640.26");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=169.82,709.23");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=248.51,768.02");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=207.53,789.47");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=123.82,730.76");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=45.29,682.26");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=26.72,618.06");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=46.23,708.20");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=21.21,666.78");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=15.52,699.63");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=57.38,761.27");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=1.56,693.57");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=50.19,636.22");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=139.05,687.73");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=108.85,688.58");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=186.21,766.65");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=182.33,779.30");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=79.53,798.36");
    }

}

