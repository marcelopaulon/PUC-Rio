
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn8_6
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
        @display("p=100.00,700.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=144.90,618.81");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=187.86,674.67");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=207.35,630.08");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=261.60,701.26");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=307.06,741.90");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=378.97,691.05");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=395.69,693.65");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=412.20,636.27");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=458.77,587.81");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=539.06,638.23");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=536.23,652.46");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=580.39,641.44");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=599.89,553.70");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=596.42,525.19");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=613.74,609.18");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=575.29,684.20");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=551.66,662.17");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=563.20,658.93");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=523.91,573.54");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=521.21,594.56");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=481.45,532.67");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=540.63,567.08");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=606.01,542.24");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=626.62,559.02");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=142.45,689.77");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=144.26,588.96");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=271.91,724.39");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=221.99,630.68");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=274.80,671.91");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=359.17,799.25");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=360.07,699.39");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=427.23,736.14");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=435.32,601.71");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=425.92,635.75");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=464.63,615.15");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=566.41,599.43");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=536.63,604.76");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=595.01,482.18");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=563.64,493.42");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=601.00,566.19");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=572.45,718.45");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=615.89,694.94");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=591.62,719.36");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=455.22,630.05");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=488.60,502.27");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=402.89,560.13");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=546.62,535.17");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=519.14,544.12");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=684.43,555.51");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=70.67,768.22");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=133.29,610.47");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=241.08,694.15");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=172.27,722.13");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=320.93,656.49");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=216.63,703.82");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=426.28,681.23");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=444.84,778.83");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=432.03,591.44");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=405.52,643.99");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=577.90,615.53");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=495.86,639.49");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=567.77,543.25");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=570.59,510.01");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=504.30,558.91");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=636.83,583.63");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=591.04,688.63");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=549.50,642.01");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=602.51,714.97");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=455.47,533.37");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=502.02,654.97");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=403.49,581.85");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=492.82,523.82");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=613.80,630.49");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=576.25,595.38");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=153.73,649.20");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=67.98,612.98");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=192.98,683.89");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=283.07,615.06");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=314.29,669.16");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=321.73,706.21");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=316.48,694.76");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=488.83,668.97");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=457.41,661.85");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=435.05,669.06");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=588.33,613.43");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=568.34,574.38");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=512.77,676.50");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=661.13,575.84");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=605.75,514.14");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=673.56,635.30");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=665.13,704.50");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=563.87,675.06");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=576.52,669.29");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=594.22,593.23");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=479.86,599.81");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=519.99,458.28");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=620.43,619.01");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=694.05,585.81");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=559.00,525.59");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=160.04,743.13");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=185.61,647.70");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=177.64,656.95");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=172.21,610.48");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=345.38,698.15");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=320.42,794.00");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=342.69,731.94");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=410.44,777.42");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=414.60,619.99");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=426.46,566.21");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=521.64,630.42");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=533.87,703.82");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=586.57,559.60");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=559.93,610.72");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=567.39,558.06");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=549.78,595.74");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=550.60,693.04");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=571.15,634.80");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=518.93,620.26");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=521.80,511.48");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=610.41,577.96");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=456.74,545.21");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=527.20,486.62");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=551.16,495.82");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=664.23,547.93");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=118.83,700.73");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=182.50,588.24");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=143.56,675.81");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=204.00,618.21");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=209.67,657.80");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=399.63,739.92");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=399.00,712.13");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=408.73,730.64");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=321.36,603.64");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=444.76,579.11");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=598.14,582.95");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=447.11,687.41");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=548.07,706.17");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=587.70,572.46");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=610.27,453.49");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=699.81,647.94");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=504.70,739.17");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=478.13,687.95");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=591.36,658.96");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=465.00,565.96");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=462.59,639.32");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=532.68,465.48");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=480.49,545.52");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=583.02,476.61");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=674.36,589.82");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=24.07,726.93");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=114.03,672.93");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=238.27,678.82");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=181.10,600.77");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=220.61,683.72");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=323.80,745.15");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=364.94,667.00");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=465.67,756.20");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=384.54,646.21");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=444.09,551.84");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=546.54,651.79");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=511.60,694.79");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=620.79,587.14");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=640.76,539.97");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=579.17,525.67");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=539.11,583.75");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=498.84,621.94");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=473.26,667.30");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=581.32,725.54");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=515.05,562.00");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=518.67,584.37");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=457.29,477.37");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=482.71,587.62");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=581.56,543.59");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=552.11,584.75");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=28.78,716.94");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=127.41,641.39");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=176.76,750.27");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=161.01,717.82");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=276.38,657.68");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=234.99,771.86");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=361.91,685.16");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=363.78,630.34");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=416.11,656.99");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=453.58,598.90");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=540.47,627.79");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=461.31,677.61");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=574.14,654.08");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=621.14,520.30");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=624.63,572.65");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=521.63,647.98");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=567.15,699.94");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=593.92,632.72");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=548.31,610.98");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=491.77,578.42");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=491.50,555.29");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=493.91,433.86");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=533.96,551.62");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=666.90,506.97");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=668.97,528.10");
    }

}

