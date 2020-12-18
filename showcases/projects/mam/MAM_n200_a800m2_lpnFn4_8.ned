
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn4_8
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
        @display("p=101.52,655.54");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=21.09,758.37");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=62.03,697.89");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=63.86,759.98");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=141.44,751.31");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=121.70,705.32");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=112.95,716.10");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=101.02,758.46");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=166.56,796.99");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=154.49,799.14");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=95.29,779.99");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=190.13,768.85");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=180.77,743.66");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=186.32,758.88");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=241.41,777.41");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=242.51,763.59");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=248.81,789.40");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=201.09,752.82");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=174.68,758.93");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=252.95,740.86");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=270.09,752.97");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=281.49,696.08");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=335.42,731.02");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=428.06,722.94");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=448.59,700.77");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=428.69,675.81");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=425.68,649.67");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=388.81,641.21");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=362.01,613.25");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=349.06,620.51");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=369.08,634.66");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=406.20,597.94");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=436.45,538.19");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=514.42,518.24");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=561.35,538.65");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=571.69,513.62");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=604.50,596.49");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=668.44,671.67");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=707.52,744.11");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=750.84,713.41");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=661.39,730.22");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=711.84,710.39");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=701.07,696.13");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=685.64,770.57");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=722.05,787.74");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=666.78,784.89");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=682.49,789.00");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=652.82,704.19");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=649.35,687.31");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=175.24,710.79");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=121.16,587.79");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=31.25,787.75");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=44.27,787.94");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=127.01,757.92");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=177.88,771.34");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=84.90,795.02");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=97.64,687.05");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=8.11,746.29");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=223.52,757.71");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=138.56,728.78");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=88.80,742.26");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=172.69,780.19");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=215.11,693.44");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=252.04,726.52");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=195.41,780.97");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=215.30,787.35");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=284.51,756.63");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=190.61,799.93");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=157.38,773.62");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=243.89,671.50");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=300.01,673.44");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=312.39,704.56");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=388.69,726.24");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=439.33,782.21");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=351.46,680.31");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=528.53,671.73");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=391.84,625.34");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=408.66,698.97");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=335.95,653.14");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=336.71,609.63");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=417.15,571.76");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=454.08,644.22");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=481.81,450.57");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=553.53,589.44");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=556.89,452.17");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=558.29,491.98");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=627.53,657.73");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=675.63,632.95");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=622.01,759.38");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=728.51,668.21");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=643.58,733.95");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=715.82,666.62");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=653.24,615.17");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=697.21,777.11");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=747.37,700.12");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=735.32,732.99");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=633.09,719.23");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=666.15,661.12");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=713.85,725.69");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=98.84,613.94");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=55.66,600.96");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=47.27,726.83");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=77.13,695.17");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=117.93,766.62");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=218.98,739.28");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=76.43,757.01");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=157.27,635.03");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=111.58,788.73");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=262.51,783.00");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=159.56,702.45");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=74.46,774.17");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=161.43,734.39");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=222.40,794.47");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=241.70,692.32");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=300.41,762.30");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=239.72,741.72");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=211.98,775.36");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=213.16,759.00");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=132.15,768.96");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=292.23,696.47");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=299.39,716.50");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=210.43,632.54");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=395.07,716.81");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=386.03,779.20");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=385.74,678.23");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=444.12,724.94");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=476.20,688.45");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=319.25,678.31");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=353.37,558.50");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=297.56,598.79");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=387.12,600.99");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=320.43,570.26");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=477.66,523.93");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=536.70,565.87");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=543.15,534.26");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=514.91,434.38");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=683.16,646.31");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=658.96,577.31");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=646.85,756.49");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=765.96,734.56");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=653.55,770.42");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=638.78,681.20");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=718.30,764.30");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=756.20,738.22");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=730.93,798.76");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=702.36,786.71");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=672.66,798.95");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=617.13,637.57");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=718.31,694.52");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=112.31,755.92");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=141.24,681.82");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=29.07,769.02");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=82.52,673.30");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=52.46,767.77");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=108.94,670.06");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=182.20,674.51");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=117.58,739.77");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=51.36,694.36");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=134.21,783.71");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=201.86,796.43");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=45.54,744.57");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=137.95,712.83");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=169.76,691.31");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=110.78,777.88");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=233.79,710.18");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=156.23,749.52");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=207.75,716.58");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=262.29,717.63");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=205.77,733.62");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=253.61,699.56");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=346.53,781.20");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=275.62,673.06");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=315.41,778.81");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=464.82,754.36");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=507.77,695.89");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=437.27,640.71");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=378.55,694.51");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=353.44,657.15");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=335.51,682.49");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=348.30,599.35");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=422.24,623.57");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=391.94,589.59");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=421.43,509.53");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=571.79,581.14");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=541.49,484.67");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=532.44,576.32");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=593.59,631.72");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=603.33,728.22");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=703.76,762.89");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=741.85,744.26");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=622.21,697.27");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=717.34,735.49");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=753.93,691.38");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=783.91,781.08");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=742.17,718.64");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=741.91,778.14");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=645.62,779.80");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=665.12,705.17");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=605.74,703.31");
    }

}

