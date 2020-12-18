
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn4_7
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
        @display("p=115.29,698.91");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=126.97,695.64");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=101.41,620.42");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=179.53,614.07");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=96.40,631.42");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=67.91,702.27");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=76.98,711.35");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=80.39,613.67");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=93.85,683.39");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=78.16,686.85");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=132.42,734.60");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=122.37,772.81");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=101.30,764.21");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=120.79,745.16");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=136.26,650.16");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=108.71,662.72");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=164.36,691.47");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=65.06,632.88");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=71.99,647.92");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=76.90,551.41");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=144.35,506.99");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=163.33,432.47");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=141.07,497.47");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=98.03,497.67");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=103.31,484.54");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=127.00,510.80");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=123.31,564.98");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=175.01,575.18");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=156.02,500.14");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=209.52,526.77");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=282.99,546.13");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=318.86,631.02");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=308.92,700.60");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=332.52,775.64");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=338.26,720.54");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=377.56,699.99");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=379.71,739.30");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=428.43,752.93");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=420.45,723.28");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=354.86,708.10");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=353.96,751.18");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=386.30,752.72");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=472.08,721.84");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=384.86,763.91");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=418.07,752.24");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=471.35,687.72");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=464.82,696.89");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=431.98,764.17");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=349.52,733.02");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=34.06,649.98");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=41.09,662.04");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=73.57,739.53");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=114.10,629.09");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=192.53,560.37");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=125.40,621.59");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=52.66,653.63");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=33.87,706.65");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=56.76,617.48");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=90.90,663.92");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=18.78,629.05");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=133.58,760.90");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=117.33,756.30");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=40.03,696.21");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=178.60,774.49");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=115.53,716.09");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=130.52,661.99");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=198.38,651.00");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=69.23,564.22");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=56.57,667.29");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=165.10,537.86");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=176.67,425.42");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=97.80,357.72");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=174.00,464.82");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=26.29,467.76");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=156.19,415.35");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=121.04,500.87");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=167.94,508.24");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=182.78,489.19");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=151.86,518.84");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=180.71,522.05");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=350.98,531.13");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=334.30,639.75");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=347.76,625.11");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=397.18,753.50");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=351.98,676.28");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=321.73,645.17");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=380.17,723.99");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=411.93,736.57");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=401.60,715.27");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=330.09,795.07");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=270.71,696.39");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=385.30,690.38");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=426.26,642.47");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=420.65,698.59");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=356.33,788.22");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=439.95,710.29");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=545.17,703.89");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=450.37,718.78");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=361.01,739.36");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=98.17,715.27");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=86.90,779.44");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=211.29,730.59");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=138.05,589.55");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=240.07,553.44");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=81.43,670.76");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=53.26,778.26");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=53.72,715.86");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=71.69,590.72");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=102.62,672.13");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=69.03,665.13");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=87.90,798.94");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=88.26,764.93");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=77.95,784.44");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=193.00,720.51");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=144.62,628.43");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=117.03,595.73");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=126.64,708.48");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=46.70,565.00");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=86.67,647.04");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=84.46,599.73");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=107.19,501.69");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=172.13,438.30");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=212.74,501.32");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=145.03,466.76");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=31.74,533.43");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=101.47,446.83");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=144.28,611.43");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=231.22,604.28");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=145.48,548.67");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=195.13,591.83");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=281.60,568.89");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=307.47,625.56");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=311.38,682.51");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=345.25,774.48");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=306.59,728.79");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=430.18,778.26");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=316.36,693.85");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=443.90,754.28");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=351.22,660.57");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=363.63,726.53");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=294.24,674.97");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=406.23,783.77");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=429.94,730.25");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=392.79,727.75");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=436.49,743.37");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=441.88,658.30");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=407.69,759.42");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=416.83,794.66");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=348.87,691.73");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=6.82,714.34");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=150.12,672.82");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=165.08,652.32");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=116.46,613.31");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=216.90,582.84");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=41.76,635.34");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=103.20,746.96");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=2.47,644.71");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=75.75,637.18");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=58.15,728.58");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=174.77,676.70");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=129.59,722.91");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=158.32,744.71");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=90.86,730.82");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=130.13,793.49");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=158.58,614.22");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=114.01,672.52");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=183.67,660.52");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=47.93,580.58");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=60.81,676.52");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=91.09,547.79");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=103.52,545.24");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=110.51,515.95");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=217.55,456.75");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=53.67,513.06");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=133.93,405.33");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=110.80,429.21");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=181.97,602.84");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=157.01,577.30");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=194.44,490.71");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=206.67,551.47");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=229.27,551.94");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=290.42,653.03");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=267.64,788.17");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=332.41,700.74");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=311.42,666.61");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=402.53,609.98");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=322.58,661.30");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=396.94,739.48");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=436.31,675.85");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=395.53,666.03");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=327.61,677.08");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=429.87,687.13");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=529.22,702.38");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=453.21,766.82");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=365.49,769.53");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=431.98,652.07");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=493.61,669.93");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=486.97,759.53");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=299.85,770.45");
    }

}

