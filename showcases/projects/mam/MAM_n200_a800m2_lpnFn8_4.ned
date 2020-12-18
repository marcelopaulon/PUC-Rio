
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn8_4
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
        @display("p=172.07,670.40");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=164.79,737.41");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=245.36,709.26");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=254.28,716.82");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=274.85,752.92");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=245.59,797.84");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=224.17,798.39");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=312.85,795.56");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=382.82,794.73");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=335.89,766.00");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=367.69,782.45");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=424.34,776.01");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=380.10,770.92");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=353.07,784.75");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=263.55,748.58");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=283.63,694.79");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=302.88,740.48");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=249.88,690.78");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=252.77,772.05");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=320.71,775.46");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=352.28,725.45");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=292.84,735.66");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=355.21,749.74");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=411.84,787.18");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=46.94,782.02");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=199.12,699.60");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=175.95,756.99");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=250.00,662.17");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=231.44,714.58");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=336.35,680.97");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=212.92,792.44");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=198.57,799.93");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=324.25,751.28");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=361.05,772.64");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=375.94,701.77");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=389.96,729.52");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=455.61,778.22");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=411.82,771.09");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=351.14,712.28");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=242.38,738.41");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=279.48,728.75");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=277.39,785.62");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=183.48,721.77");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=177.75,713.02");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=366.05,748.94");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=349.61,652.02");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=271.01,705.69");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=411.29,736.73");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=402.75,792.95");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=187.87,672.30");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=215.83,689.95");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=142.54,731.64");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=296.06,782.75");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=235.94,690.17");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=304.84,716.58");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=246.81,781.22");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=258.17,787.29");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=306.62,787.01");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=348.90,772.30");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=291.26,702.45");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=405.00,694.02");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=399.75,779.64");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=416.51,711.14");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=329.22,794.12");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=312.94,750.28");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=241.09,756.32");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=291.50,748.74");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=227.46,659.29");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=254.31,727.30");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=345.69,703.54");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=412.25,664.30");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=293.34,725.34");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=369.52,718.04");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=387.42,719.04");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=22.35,659.31");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=85.54,718.41");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=113.28,709.80");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=229.74,740.92");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=237.33,675.81");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=250.31,746.21");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=291.89,763.94");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=194.21,728.32");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=340.51,745.70");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=380.61,735.94");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=280.52,798.35");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=394.19,746.14");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=448.28,788.08");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=434.46,687.84");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=361.91,739.56");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=203.78,672.46");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=271.58,689.48");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=283.69,741.33");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=310.83,649.67");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=305.47,767.50");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=318.69,678.12");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=337.25,693.54");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=304.70,729.42");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=356.68,797.18");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=409.05,718.09");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=126.36,707.98");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=238.87,642.24");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=92.52,679.88");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=290.84,791.51");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=250.42,622.81");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=273.12,766.83");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=215.32,742.62");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=151.17,773.45");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=316.61,784.97");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=445.89,733.84");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=340.11,729.51");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=422.46,763.23");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=375.17,753.68");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=462.87,746.59");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=269.80,792.37");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=170.24,777.67");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=303.99,672.88");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=357.66,664.43");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=237.46,628.76");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=284.80,773.27");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=355.23,759.80");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=361.55,707.03");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=321.83,736.69");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=398.44,667.63");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=368.35,792.98");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=127.75,750.65");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=154.65,711.88");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=160.75,645.05");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=325.88,708.30");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=205.53,724.45");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=239.26,770.37");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=188.39,787.05");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=218.31,774.68");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=340.22,712.88");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=443.69,756.34");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=435.62,764.17");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=417.24,697.55");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=488.27,762.85");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=401.05,767.98");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=377.38,725.21");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=223.86,698.02");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=212.37,649.24");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=313.12,722.42");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=326.61,723.03");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=229.86,765.83");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=391.35,772.44");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=360.27,638.81");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=267.40,717.27");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=383.37,685.14");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=472.81,749.62");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=111.52,692.39");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=84.10,666.02");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=96.22,769.91");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=288.89,634.76");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=237.14,700.16");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=226.45,729.52");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=234.51,788.99");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=224.84,783.78");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=243.46,728.45");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=388.47,786.07");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=343.97,756.39");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=442.29,777.76");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=397.19,714.31");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=394.07,756.37");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=344.77,686.38");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=247.92,676.60");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=259.09,617.72");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=269.75,739.76");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=239.07,653.64");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=201.27,742.26");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=406.44,753.96");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=360.09,694.59");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=366.94,677.45");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=421.08,674.89");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=487.40,722.06");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=102.87,726.53");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=204.95,689.58");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=155.31,731.82");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=183.90,636.76");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=213.99,705.78");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=188.06,761.69");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=201.23,768.81");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=198.41,752.49");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=344.62,794.86");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=441.02,713.95");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=422.48,738.62");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=427.83,712.27");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=424.17,688.12");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=471.41,736.32");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=385.23,708.23");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=334.46,776.75");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=287.13,679.89");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=323.08,668.09");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=259.46,699.38");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=256.51,761.65");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=317.20,765.20");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=403.98,676.56");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=215.98,755.86");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=320.64,689.02");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=424.94,790.74");
    }

}

