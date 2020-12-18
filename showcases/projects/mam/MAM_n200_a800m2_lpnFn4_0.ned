
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn4_0
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
        @display("p=164.66,684.79");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=224.14,714.08");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=310.69,702.15");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=317.57,748.27");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=263.92,772.16");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=299.45,735.25");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=231.34,779.75");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=236.28,796.43");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=214.47,757.58");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=163.43,774.03");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=155.49,781.24");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=173.09,762.90");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=175.10,667.43");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=225.74,692.85");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=215.36,684.57");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=217.09,705.44");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=257.94,753.58");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=275.45,798.73");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=282.23,753.21");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=316.58,677.44");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=381.07,652.26");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=343.47,673.40");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=314.78,692.33");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=232.60,708.27");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=262.87,712.10");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=209.45,739.76");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=205.84,774.17");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=120.69,768.90");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=116.38,731.15");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=27.15,693.41");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=25.63,713.14");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=11.62,732.50");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=68.97,787.48");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=138.20,755.54");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=65.68,697.21");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=72.32,625.88");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=73.16,544.02");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=58.53,517.88");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=30.03,550.16");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=35.20,499.12");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=15.83,508.33");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=33.14,527.19");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=4.20,551.76");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=54.38,592.65");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=40.53,535.34");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=28.58,621.59");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=26.15,600.05");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=10.78,610.59");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=42.36,605.72");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=175.95,639.96");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=191.17,597.14");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=234.08,718.80");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=301.97,709.78");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=335.91,788.53");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=173.20,799.67");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=369.51,748.81");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=253.01,788.44");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=280.29,787.75");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=182.36,788.66");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=190.45,771.00");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=154.78,767.02");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=126.96,739.12");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=189.29,636.28");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=229.84,683.34");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=143.72,726.66");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=187.04,694.68");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=279.84,732.65");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=359.45,796.15");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=350.57,772.87");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=350.58,607.39");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=392.89,624.70");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=402.58,686.62");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=285.28,660.40");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=230.32,736.91");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=273.80,697.81");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=255.47,682.67");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=220.53,775.89");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=75.94,704.78");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=135.13,691.06");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=16.22,687.60");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=61.93,737.64");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=23.37,786.09");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=66.85,753.99");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=125.62,784.75");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=82.42,778.06");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=162.85,608.64");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=21.99,539.44");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=14.51,518.35");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=87.48,486.75");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=27.37,509.09");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=15.42,493.48");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=42.90,524.13");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=38.67,466.58");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=101.03,632.88");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=1.23,577.18");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=60.10,664.60");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=88.12,523.26");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=12.36,628.88");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=16.96,548.41");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=97.16,602.70");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=185.19,617.27");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=265.29,676.33");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=348.05,691.15");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=293.41,684.12");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=232.61,767.42");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=363.41,786.62");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=162.46,794.29");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=146.46,774.18");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=121.15,758.43");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=238.02,754.29");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=88.72,791.44");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=223.62,796.87");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=132.56,702.88");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=246.55,647.26");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=211.54,618.41");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=253.01,666.84");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=326.84,716.36");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=253.79,766.31");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=260.68,721.88");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=276.74,643.95");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=385.39,668.43");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=265.77,647.65");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=357.73,673.91");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=263.39,785.91");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=209.17,723.35");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=204.03,697.15");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=162.36,701.04");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=195.93,779.96");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=74.48,677.01");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=1.21,633.32");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=15.67,719.19");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=57.34,716.41");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=54.50,761.37");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=113.06,665.53");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=99.91,745.85");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=74.99,645.25");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=123.08,476.33");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=57.34,537.40");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=47.71,508.27");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=101.35,467.85");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=40.08,483.75");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=52.40,465.14");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=60.55,612.06");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=11.15,644.20");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=121.30,569.86");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=82.47,692.04");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=91.37,662.26");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=53.09,642.44");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=45.81,660.12");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=149.72,666.02");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=198.40,760.90");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=174.31,696.14");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=234.70,659.52");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=329.27,741.66");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=334.72,767.20");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=316.91,655.06");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=191.66,717.67");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=308.40,756.21");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=241.55,677.16");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=148.41,788.99");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=147.08,693.35");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=204.47,709.30");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=108.23,683.23");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=210.26,631.86");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=286.89,631.29");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=277.11,769.79");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=172.84,741.02");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=303.95,795.88");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=295.19,726.00");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=261.39,660.36");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=407.36,674.44");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=376.21,631.09");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=307.20,640.98");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=306.19,667.06");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=248.20,710.32");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=132.90,770.14");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=209.26,791.25");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=120.99,703.16");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=106.85,754.23");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=70.09,772.54");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=45.87,739.96");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=36.65,732.17");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=43.44,711.87");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=161.30,719.69");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=52.44,682.60");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=96.95,572.35");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=100.99,621.65");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=155.41,528.85");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=90.85,581.61");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=53.79,440.74");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=49.05,474.88");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=127.60,528.96");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=45.28,561.71");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=83.43,547.40");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=67.96,560.67");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=31.87,611.55");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=97.67,561.01");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=16.16,591.98");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=31.72,588.16");
    }

}

