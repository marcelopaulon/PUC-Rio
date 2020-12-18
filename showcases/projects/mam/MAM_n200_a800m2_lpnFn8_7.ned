
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn8_7
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
        @display("p=82.84,667.73");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=131.73,689.24");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=124.42,765.06");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=116.89,729.81");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=191.85,777.35");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=207.26,758.06");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=143.23,734.10");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=172.44,689.47");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=188.50,676.28");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=152.53,768.07");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=71.84,765.74");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=149.91,715.78");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=192.08,662.84");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=212.13,671.69");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=286.93,711.19");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=248.59,793.89");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=308.84,741.80");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=271.24,795.96");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=214.33,699.00");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=134.64,666.80");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=106.35,688.08");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=89.99,773.03");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=177.06,784.62");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=224.27,753.42");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=111.62,659.58");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=79.99,648.59");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=206.68,716.81");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=189.09,793.91");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=81.36,735.52");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=163.28,777.10");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=156.14,724.15");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=180.06,760.09");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=233.03,668.97");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=242.02,711.10");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=124.63,708.20");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=62.42,729.31");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=134.30,620.54");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=163.66,663.46");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=140.03,642.99");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=352.09,778.37");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=230.09,793.47");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=340.43,773.37");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=246.10,761.15");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=254.52,641.28");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=126.26,725.97");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=85.76,596.91");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=40.22,759.40");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=158.71,710.40");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=251.26,722.74");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=71.46,679.95");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=85.34,680.94");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=121.08,692.46");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=189.62,726.52");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=126.15,646.12");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=118.81,791.94");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=212.85,766.84");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=136.05,764.08");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=198.77,693.03");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=108.86,629.52");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=184.13,739.59");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=62.91,772.96");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=136.57,721.99");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=179.05,658.30");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=206.48,659.63");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=333.95,631.71");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=257.71,770.65");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=387.81,743.07");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=329.38,720.66");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=162.56,685.88");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=56.24,634.33");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=10.51,668.98");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=12.44,797.12");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=268.72,751.92");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=273.00,771.20");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=64.66,717.32");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=22.37,686.65");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=99.02,637.04");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=99.99,715.01");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=153.47,757.87");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=202.58,782.83");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=153.60,679.22");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=104.97,728.48");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=186.08,694.40");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=187.22,624.40");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=219.89,715.45");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=85.38,747.60");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=100.23,799.46");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=170.23,635.84");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=222.29,584.92");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=282.68,763.28");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=245.91,773.32");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=228.59,781.97");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=328.59,732.63");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=161.83,645.96");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=105.30,676.55");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=32.69,644.04");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=103.47,776.84");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=170.01,749.36");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=246.11,664.84");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=38.20,698.28");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=88.82,653.53");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=146.78,779.38");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=140.81,743.85");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=80.70,777.22");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=195.32,715.76");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=226.18,765.86");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=115.77,749.26");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=205.28,681.41");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=267.82,696.35");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=135.31,753.33");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=22.15,768.05");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=119.45,778.31");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=166.67,606.39");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=237.21,743.58");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=267.09,616.70");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=159.48,799.10");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=297.80,777.40");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=299.12,707.03");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=263.20,684.51");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=159.29,587.62");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=181.92,633.90");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=165.29,718.31");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=236.06,732.23");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=207.49,735.62");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=28.84,713.17");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=8.98,722.67");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=40.06,713.36");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=110.99,759.39");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=66.72,651.41");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=197.80,753.41");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=258.88,739.31");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=175.94,725.56");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=147.77,692.84");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=266.60,664.64");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=143.71,792.05");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=13.33,774.49");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=178.84,679.75");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=256.36,665.96");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=223.57,691.31");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=272.88,735.34");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=334.92,785.20");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=266.82,725.14");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=301.97,796.58");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=308.67,687.50");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=176.78,700.94");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=148.21,617.73");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=83.26,714.74");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=232.39,705.39");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=171.85,794.07");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=59.19,690.74");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=45.87,621.46");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=68.11,749.28");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=171.67,768.60");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=141.34,681.34");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=193.51,763.81");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=297.58,762.84");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=70.06,736.68");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=242.84,635.32");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=204.64,608.61");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=160.95,740.86");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=56.65,763.85");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=113.19,769.70");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=136.46,604.25");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=240.95,695.47");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=218.62,649.89");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=217.90,798.11");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=329.70,746.60");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=281.98,776.01");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=284.38,753.03");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=121.62,634.66");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=77.26,629.93");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=1.53,765.59");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=211.10,747.64");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=231.06,720.12");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=156.45,637.14");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=88.70,728.36");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=94.64,609.70");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=79.13,793.33");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=96.92,746.72");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=93.61,760.13");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=216.57,681.29");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=201.83,705.36");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=194.84,649.26");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=274.08,673.12");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=150.34,748.33");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=59.42,743.38");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=141.19,704.02");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=246.33,737.34");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=214.19,613.43");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=364.71,690.19");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=236.03,761.18");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=289.44,731.81");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=336.31,754.90");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=265.92,639.31");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=63.71,618.95");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=133.87,782.21");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=8.12,753.53");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=226.23,739.86");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=278.07,697.79");
    }

}

