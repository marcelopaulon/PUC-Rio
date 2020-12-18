
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn4_1
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
        @display("p=41.28,711.24");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=50.35,719.14");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=15.57,693.10");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=11.61,613.71");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=0.93,656.44");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=19.23,657.25");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=54.90,630.80");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=95.79,719.09");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=77.32,679.32");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=124.26,667.44");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=126.81,677.27");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=132.72,698.78");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=113.66,698.38");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=57.57,775.12");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=26.57,794.75");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=61.93,705.89");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=59.80,642.71");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=105.70,571.42");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=201.90,595.41");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=284.44,640.22");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=363.47,616.53");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=400.57,612.55");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=373.45,661.99");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=361.13,714.40");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=350.68,711.97");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=312.31,745.55");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=301.04,668.05");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=260.52,666.67");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=317.32,703.70");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=410.14,677.10");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=416.75,648.55");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=459.80,724.11");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=449.15,733.96");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=386.88,772.31");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=354.53,744.73");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=361.56,752.87");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=421.23,786.98");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=496.44,728.22");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=430.40,751.27");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=469.68,718.03");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=387.10,703.27");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=353.41,694.47");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=274.16,695.01");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=304.71,680.55");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=332.65,634.98");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=390.59,626.77");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=341.05,597.76");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=300.06,605.67");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=261.10,677.20");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=71.29,710.49");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=37.27,734.32");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=93.17,735.22");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=1.61,707.60");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=14.94,574.77");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=42.42,618.18");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=2.07,601.59");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=7.02,567.10");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=102.45,739.96");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=130.10,615.07");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=149.18,634.76");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=76.25,614.26");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=88.09,668.40");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=79.00,648.87");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=63.76,763.50");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=93.32,771.54");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=94.54,757.27");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=39.62,605.53");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=133.98,512.01");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=196.19,605.61");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=339.24,713.05");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=294.98,565.10");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=384.88,577.27");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=386.83,566.97");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=362.22,730.11");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=361.68,684.68");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=240.52,771.75");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=379.89,725.65");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=246.38,626.36");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=338.85,674.31");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=411.20,776.83");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=411.51,581.14");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=514.64,752.28");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=417.26,745.81");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=450.82,763.78");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=310.89,770.85");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=341.03,765.54");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=419.34,797.15");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=518.66,664.01");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=518.13,711.91");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=528.19,689.44");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=392.68,751.43");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=352.03,766.38");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=305.44,711.12");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=249.31,602.00");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=362.26,671.19");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=374.29,616.71");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=389.39,600.97");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=358.33,555.89");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=284.61,681.38");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=131.05,687.90");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=9.77,721.44");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=60.68,739.06");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=13.17,674.95");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=9.86,640.16");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=19.81,601.66");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=43.65,648.10");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=150.05,654.79");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=115.72,649.33");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=122.09,595.80");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=146.92,577.56");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=179.18,706.79");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=108.45,715.09");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=40.67,662.53");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=55.18,757.98");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=108.30,784.93");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=25.17,734.37");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=59.29,557.92");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=64.23,575.70");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=164.51,565.11");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=224.13,691.10");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=354.44,606.05");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=355.73,567.42");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=400.16,725.29");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=380.23,695.21");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=395.45,676.72");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=402.73,754.67");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=216.28,651.65");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=329.93,730.47");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=323.02,679.19");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=404.41,695.15");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=396.61,637.40");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=474.49,738.35");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=450.33,701.21");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=364.26,771.81");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=371.76,707.02");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=339.98,750.94");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=375.20,748.06");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=433.79,691.96");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=448.96,748.10");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=467.67,770.42");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=309.70,723.28");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=348.37,664.49");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=293.71,715.00");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=324.46,597.24");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=319.43,555.43");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=336.57,663.02");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=314.27,622.37");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=285.37,602.81");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=284.81,653.22");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=159.40,768.02");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=65.20,791.68");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=83.27,713.27");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=92.52,686.21");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=6.34,529.31");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=40.89,676.82");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=30.40,623.37");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=66.51,668.92");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=81.97,762.73");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=68.35,751.55");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=51.02,681.06");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=56.38,616.24");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=161.86,695.03");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=93.14,616.49");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=70.36,778.76");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=4.58,772.06");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=151.70,690.42");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=109.91,660.37");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=39.00,535.80");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=187.54,615.54");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=224.07,599.01");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=360.34,636.15");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=370.86,585.57");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=450.50,718.04");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=377.49,737.63");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=427.73,771.00");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=325.54,655.72");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=302.48,692.60");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=237.31,586.28");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=330.89,700.38");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=506.21,659.44");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=353.37,652.39");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=464.37,749.18");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=481.85,725.86");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=378.95,781.90");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=321.81,752.08");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=330.22,768.04");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=437.15,726.08");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=505.01,741.97");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=449.32,773.74");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=489.33,635.27");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=426.85,679.22");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=342.31,646.81");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=289.80,760.21");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=288.06,701.66");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=319.92,580.24");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=429.38,576.14");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=395.98,526.83");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=285.49,581.98");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=266.38,718.37");
    }

}

