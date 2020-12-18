
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn8_3
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
        @display("p=178.37,743.07");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=266.67,749.02");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=311.56,737.75");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=307.41,701.60");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=262.63,664.72");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=257.35,645.42");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=248.76,703.62");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=256.64,719.85");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=244.82,682.80");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=297.30,683.27");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=333.59,773.38");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=354.22,791.80");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=353.11,736.32");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=297.44,707.35");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=279.55,706.47");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=241.42,628.50");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=287.62,663.88");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=350.45,665.36");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=342.58,641.26");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=363.10,700.49");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=312.70,641.72");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=332.61,611.43");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=249.07,610.37");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=212.12,602.64");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=68.23,673.80");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=223.62,738.89");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=181.81,793.63");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=301.75,719.58");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=230.32,667.88");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=270.27,644.19");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=227.43,651.74");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=282.19,773.79");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=189.27,687.07");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=265.14,678.75");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=328.56,592.74");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=344.33,729.89");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=344.72,775.13");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=384.40,700.49");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=361.86,656.04");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=194.77,740.62");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=231.63,589.67");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=238.24,607.77");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=374.35,657.79");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=311.56,715.89");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=369.77,671.63");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=327.72,565.86");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=331.67,580.92");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=282.61,548.54");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=139.30,553.81");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=127.31,637.39");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=228.06,691.63");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=259.18,780.34");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=321.06,657.01");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=247.57,736.57");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=216.51,654.96");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=220.17,717.94");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=236.04,732.46");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=243.84,694.45");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=339.78,691.90");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=330.41,676.03");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=415.10,743.10");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=374.71,776.86");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=322.92,777.86");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=275.62,680.68");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=334.85,632.01");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=198.89,576.59");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=287.07,736.26");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=309.09,660.47");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=309.24,559.07");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=315.80,769.69");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=302.91,590.44");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=319.50,667.63");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=196.42,639.41");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=168.32,590.08");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=86.64,652.40");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=176.75,773.43");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=199.57,797.12");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=289.15,646.59");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=228.14,761.46");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=292.70,615.87");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=339.14,663.63");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=193.70,758.40");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=272.11,730.23");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=215.94,667.34");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=303.09,625.09");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=344.40,705.56");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=277.14,789.72");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=383.27,645.90");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=243.56,669.74");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=213.39,749.00");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=250.86,635.59");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=290.54,604.63");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=439.61,641.54");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=384.61,656.40");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=425.21,671.05");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=397.55,607.15");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=276.42,591.73");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=188.83,595.78");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=185.23,666.77");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=151.48,715.37");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=186.84,715.42");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=203.42,693.57");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=340.30,762.06");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=315.62,612.26");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=280.76,614.65");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=260.17,550.20");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=162.06,698.99");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=218.92,703.58");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=231.76,711.05");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=231.28,637.86");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=303.87,788.20");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=289.53,715.97");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=439.19,766.70");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=386.11,712.86");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=310.34,691.95");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=176.45,617.06");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=261.80,654.38");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=368.48,616.41");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=276.76,572.32");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=272.91,663.87");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=410.16,634.05");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=373.48,588.01");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=252.01,512.91");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=172.62,536.93");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=57.79,638.41");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=196.72,726.87");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=299.06,762.33");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=388.04,730.87");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=386.61,744.29");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=257.33,757.56");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=189.75,613.73");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=196.36,660.69");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=179.30,657.86");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=219.23,772.88");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=290.16,696.87");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=279.37,751.27");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=322.62,790.11");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=411.23,722.68");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=369.63,713.14");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=254.29,690.55");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=258.65,623.29");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=283.90,636.06");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=309.70,678.75");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=315.58,626.20");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=402.46,733.54");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=320.11,731.85");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=353.38,528.43");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=248.67,559.40");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=149.08,602.08");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=144.26,750.29");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=208.73,790.50");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=327.92,712.64");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=271.44,778.14");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=363.91,690.03");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=208.61,681.62");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=198.06,681.49");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=224.46,799.10");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=244.38,722.16");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=252.57,590.65");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=341.74,617.89");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=354.80,713.81");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=301.15,736.01");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=397.21,701.62");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=323.85,747.84");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=305.06,750.73");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=275.18,623.22");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=333.95,655.02");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=393.47,685.80");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=411.57,597.89");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=352.49,608.57");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=338.83,598.99");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=374.62,555.67");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=245.49,599.52");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=235.39,545.61");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=89.94,688.75");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=130.16,784.29");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=236.20,778.96");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=268.52,703.35");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=297.18,795.80");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=180.53,701.48");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=203.94,626.96");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=252.09,766.23");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=175.20,730.18");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=161.17,640.16");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=365.45,639.29");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=348.83,748.12");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=385.70,793.11");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=286.71,682.80");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=365.57,723.86");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=264.04,798.29");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=223.43,618.22");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=344.88,676.54");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=394.47,664.87");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=416.19,689.40");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=381.98,684.98");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=383.47,624.22");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=425.84,595.19");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=271.87,606.70");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=214.17,584.95");
    }

}

