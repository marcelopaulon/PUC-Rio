
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn12_1
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
        @display("p=150.17,747.29");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=145.29,727.25");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=47.64,706.34");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=110.58,771.43");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=131.07,781.10");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=114.01,720.62");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=62.93,720.40");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=131.95,767.20");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=167.60,766.45");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=175.19,774.63");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=160.91,736.52");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=155.87,756.85");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=219.22,776.99");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=253.95,711.76");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=265.10,676.48");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=306.24,598.97");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=89.08,773.99");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=198.13,751.51");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=146.04,700.81");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=40.81,721.26");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=131.51,747.29");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=157.04,785.10");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=119.20,780.37");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=82.39,707.99");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=197.90,695.72");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=212.32,687.67");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=184.84,787.55");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=179.03,662.38");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=131.15,709.28");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=257.51,793.44");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=259.32,629.85");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=269.88,666.19");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=320.21,599.97");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=109.91,702.22");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=210.16,744.01");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=178.09,648.96");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=9.66,731.92");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=155.49,693.36");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=67.05,786.29");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=80.00,796.63");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=39.70,694.30");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=72.02,775.67");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=81.06,734.78");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=221.92,696.58");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=168.37,729.63");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=171.50,674.66");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=211.07,765.24");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=245.61,722.01");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=247.27,674.22");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=298.55,692.27");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=152.84,679.67");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=138.77,758.96");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=227.56,721.53");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=27.54,656.14");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=130.22,797.31");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=172.13,692.20");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=117.93,693.62");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=5.78,753.33");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=148.92,777.85");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=259.72,773.08");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=193.08,727.86");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=182.20,699.02");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=174.31,748.72");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=186.51,741.76");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=283.74,704.76");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=279.40,672.40");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=298.21,618.01");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=134.38,696.11");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=141.39,673.09");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=90.35,666.65");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=62.97,736.95");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=93.79,756.15");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=98.82,785.86");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=70.10,676.14");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=116.76,644.27");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=33.40,772.17");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=152.60,796.97");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=197.08,683.62");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=110.25,674.04");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=182.50,728.55");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=262.75,748.87");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=300.48,768.69");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=273.02,652.62");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=254.35,546.22");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=80.18,723.97");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=131.11,672.54");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=63.94,753.20");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=59.09,709.79");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=122.61,752.42");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=196.98,766.65");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=34.37,733.10");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=54.65,655.03");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=103.99,722.17");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=205.18,718.51");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=97.66,746.80");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=219.14,748.53");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=108.74,732.57");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=231.35,769.34");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=292.70,650.62");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=215.11,674.27");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=262.13,650.84");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=8.08,675.03");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=120.03,654.50");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=117.97,763.87");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=33.85,612.59");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=130.68,732.50");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=202.34,789.16");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=26.66,708.21");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=65.05,698.02");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=191.88,710.95");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=77.77,765.22");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=174.54,798.56");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=163.83,777.46");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=234.70,743.02");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=284.35,780.56");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=283.53,637.83");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=274.80,684.97");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=386.14,609.14");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=149.37,622.99");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=168.06,718.67");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=164.53,650.45");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=54.01,751.49");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=89.96,799.96");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=97.41,712.57");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=95.04,734.91");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=91.80,649.29");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=84.51,695.93");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=222.18,760.44");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=253.67,731.48");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=205.92,777.96");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=171.47,706.45");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=246.12,772.11");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=323.55,765.36");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=311.20,727.92");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=295.39,605.09");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=77.30,602.73");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=74.69,689.49");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=53.04,688.81");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=21.79,619.12");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=119.99,739.66");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=226.41,799.58");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=70.24,708.65");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=42.71,795.95");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=100.05,772.04");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=215.60,714.90");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=233.57,695.88");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=135.21,649.27");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=108.28,791.33");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=270.70,782.09");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=272.62,732.35");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=236.24,647.06");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=372.73,607.58");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=37.16,760.67");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=100.26,687.95");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=139.06,739.05");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=53.02,678.21");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=108.44,753.17");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=82.99,786.33");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=199.00,741.02");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=43.55,650.24");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=167.99,788.98");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=193.86,776.60");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=273.94,768.92");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=243.24,683.95");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=120.80,678.22");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=261.70,761.95");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=290.12,723.24");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=295.33,661.01");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=326.11,575.83");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=103.93,634.59");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=186.31,672.99");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=83.31,755.30");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=55.19,773.58");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=42.94,740.07");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=147.68,714.03");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=63.93,685.78");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=102.51,665.98");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=76.33,745.89");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=152.03,768.12");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=214.85,786.69");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=141.51,770.28");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=131.88,684.54");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=240.36,707.35");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=250.12,643.54");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=272.77,712.93");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=282.08,624.95");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=90.01,678.42");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=225.95,732.17");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=156.69,658.32");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=3.67,717.20");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=125.13,723.63");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=204.51,799.40");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=181.76,713.60");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=30.74,796.06");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=202.98,704.46");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=181.22,761.00");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=236.66,727.78");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=214.79,726.31");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=160.69,709.83");
    }

}

