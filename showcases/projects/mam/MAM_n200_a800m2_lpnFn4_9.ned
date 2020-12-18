
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn4_9
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
        @display("p=108.69,604.88");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=132.43,624.75");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=104.89,713.07");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=59.11,636.75");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=78.27,550.47");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=97.07,507.50");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=146.84,490.47");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=122.83,504.78");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=157.87,541.65");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=83.94,580.62");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=17.89,623.07");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=74.48,635.53");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=49.13,662.34");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=143.54,793.69");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=138.46,738.67");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=146.18,759.66");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=147.61,782.28");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=200.39,744.46");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=177.03,742.77");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=123.22,740.72");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=41.10,693.34");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=36.50,727.31");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=67.44,738.68");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=45.09,744.31");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=4.54,791.47");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=56.12,765.36");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=59.53,749.54");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=80.82,658.71");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=116.36,633.52");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=63.86,672.20");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=132.34,702.26");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=175.77,771.37");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=206.98,768.15");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=155.57,686.57");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=204.99,729.04");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=175.90,754.12");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=208.97,676.43");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=221.63,706.42");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=260.75,731.13");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=216.62,697.65");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=275.84,724.64");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=216.31,792.98");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=277.66,792.54");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=374.95,778.32");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=310.93,784.71");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=299.67,754.91");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=324.37,724.54");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=304.51,689.35");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=312.88,622.17");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=174.82,676.30");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=24.05,595.14");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=190.56,580.30");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=166.87,638.67");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=108.99,694.18");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=25.63,546.53");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=140.92,552.54");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=161.72,566.37");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=122.52,564.60");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=134.80,560.94");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=15.07,636.27");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=1.58,574.06");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=31.52,620.23");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=136.33,641.57");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=151.79,715.37");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=175.90,659.77");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=191.49,692.69");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=153.48,774.00");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=221.22,676.40");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=202.89,700.99");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=173.55,715.05");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=12.74,747.73");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=59.51,716.91");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=74.02,726.26");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=114.23,677.81");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=19.20,797.17");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=88.27,750.76");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=75.96,761.07");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=36.89,609.71");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=100.73,656.52");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=3.33,668.72");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=121.34,722.36");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=124.36,779.19");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=286.85,745.35");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=151.14,665.72");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=268.46,681.63");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=164.35,754.83");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=193.92,591.25");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=240.12,726.72");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=241.71,685.73");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=263.16,705.27");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=233.03,769.87");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=177.79,798.82");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=220.48,729.43");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=420.83,772.75");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=345.72,727.28");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=243.56,755.24");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=399.45,687.43");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=340.76,684.42");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=245.82,617.53");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=6.76,695.19");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=95.53,637.37");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=139.76,583.11");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=46.58,649.00");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=0.06,685.81");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=92.81,648.98");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=135.65,459.20");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=160.21,483.74");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=190.24,501.66");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=154.90,559.03");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=56.43,567.36");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=23.65,683.91");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=8.20,627.49");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=25.12,648.00");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=134.95,783.83");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=130.61,732.04");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=110.12,784.04");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=122.22,695.57");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=258.79,753.59");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=160.02,731.26");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=168.67,780.79");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=59.11,684.92");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=87.34,720.60");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=84.47,686.42");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=70.38,779.15");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=0.06,775.22");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=64.40,701.36");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=101.77,771.44");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=85.81,670.61");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=85.11,593.18");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=68.96,662.83");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=109.30,744.03");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=187.68,775.57");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=134.85,756.30");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=135.05,657.10");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=244.32,791.66");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=223.09,760.40");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=221.25,594.80");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=296.49,723.93");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=316.31,769.35");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=194.00,620.95");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=334.16,734.27");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=241.94,744.99");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=304.35,714.32");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=440.13,773.87");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=301.91,779.79");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=309.93,757.38");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=401.15,780.25");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=247.36,694.42");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=231.85,599.35");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=159.34,741.76");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=91.76,621.44");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=105.37,556.09");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=109.45,618.97");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=123.50,584.61");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=162.88,589.87");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=123.72,533.00");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=72.79,433.59");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=120.27,463.45");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=192.40,533.52");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=99.07,485.66");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=6.68,719.87");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=32.79,634.16");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=39.20,668.13");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=91.01,788.80");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=128.19,711.46");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=102.40,728.23");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=201.74,799.97");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=209.33,749.42");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=172.33,726.64");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=123.03,758.96");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=135.66,669.12");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=36.91,707.03");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=80.98,739.84");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=53.08,727.07");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=85.57,772.68");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=54.98,775.77");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=19.72,740.34");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=87.50,710.16");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=151.13,645.65");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=57.17,613.83");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=186.29,733.40");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=137.65,684.34");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=240.36,708.28");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=202.41,667.71");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=165.49,658.66");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=189.69,676.11");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=233.74,661.16");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=220.96,716.92");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=273.94,734.73");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=248.39,603.76");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=269.08,755.64");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=195.92,781.88");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=350.66,787.02");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=445.45,711.98");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=365.46,741.21");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=364.67,705.93");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=313.42,719.49");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=311.47,654.27");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=291.08,643.92");
    }

}

