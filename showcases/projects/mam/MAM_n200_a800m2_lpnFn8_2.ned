
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn8_2
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
        @display("p=193.52,724.91");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=144.81,777.85");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=96.36,788.37");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=120.62,793.93");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=107.87,793.05");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=140.16,748.67");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=172.36,730.11");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=184.28,696.24");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=191.63,675.50");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=180.39,673.21");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=166.88,648.82");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=199.96,624.22");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=238.85,612.30");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=292.16,655.26");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=330.84,631.72");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=375.02,624.40");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=380.89,527.96");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=363.61,437.01");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=410.75,412.89");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=421.69,420.78");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=472.17,499.07");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=497.61,486.79");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=478.56,438.21");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=468.75,432.01");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=140.58,689.21");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=249.00,659.80");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=115.25,776.38");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=36.54,737.64");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=155.64,735.51");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=146.44,710.53");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=162.45,777.67");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=174.03,700.35");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=256.53,677.45");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=248.54,751.42");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=220.12,688.72");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=185.52,650.99");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=216.44,641.12");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=204.13,568.71");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=211.18,614.77");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=279.06,711.13");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=444.46,678.58");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=385.25,485.68");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=387.45,468.42");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=417.94,354.76");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=427.12,359.05");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=502.65,506.97");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=471.55,545.01");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=441.84,522.09");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=493.13,356.37");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=15.14,669.66");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=268.18,735.06");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=159.68,702.93");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=35.13,725.58");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=76.05,735.72");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=132.54,704.26");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=237.44,738.41");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=196.28,790.72");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=174.06,713.98");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=199.28,585.51");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=181.22,621.09");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=152.72,679.11");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=219.16,557.54");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=293.64,623.01");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=211.61,670.28");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=352.31,612.70");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=425.47,635.98");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=339.39,461.56");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=359.74,503.36");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=401.00,376.08");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=455.89,353.57");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=464.16,534.70");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=524.61,503.31");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=482.61,473.84");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=453.59,447.59");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=61.23,719.00");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=195.45,705.64");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=181.53,735.98");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=157.61,720.75");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=53.55,781.77");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=79.38,706.40");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=79.31,691.68");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=183.38,772.62");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=233.30,676.69");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=205.64,705.82");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=118.68,708.15");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=158.98,562.72");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=281.82,660.11");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=252.06,602.84");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=320.32,717.35");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=371.81,593.62");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=321.65,639.47");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=439.42,575.31");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=443.05,485.80");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=350.31,414.06");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=401.03,461.36");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=454.40,461.53");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=538.87,440.41");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=568.18,411.49");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=452.18,404.33");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=101.90,677.87");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=157.55,759.13");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=53.09,761.94");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=133.82,765.97");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=85.72,797.90");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=59.02,798.03");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=164.72,797.48");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=93.32,728.81");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=180.18,795.99");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=185.04,685.61");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=222.10,739.21");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=191.46,561.32");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=152.77,613.78");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=241.68,638.54");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=356.94,714.60");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=352.41,669.50");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=316.45,586.99");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=424.26,553.62");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=372.99,488.26");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=434.94,414.69");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=408.29,442.12");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=555.80,477.20");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=503.33,478.05");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=542.11,391.73");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=474.32,394.31");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=167.72,751.27");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=230.86,712.71");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=91.56,740.15");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=77.47,788.60");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=126.95,716.18");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=106.16,723.00");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=122.24,747.43");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=111.07,656.29");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=257.09,689.56");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=237.70,696.47");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=129.50,736.50");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=224.71,614.66");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=241.39,584.69");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=221.05,605.10");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=283.38,594.69");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=343.08,545.20");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=347.18,649.04");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=358.16,555.43");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=427.86,444.70");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=368.19,333.89");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=353.34,371.38");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=453.57,559.56");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=437.58,543.22");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=498.29,452.21");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=554.05,410.37");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=126.21,678.25");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=284.20,742.05");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=133.58,780.56");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=106.57,761.42");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=114.09,697.47");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=120.29,767.37");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=111.91,736.01");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=123.46,646.97");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=203.62,746.44");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=189.11,627.90");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=179.68,599.38");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=153.87,651.49");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=130.06,633.22");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=204.20,524.85");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=306.08,650.97");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=361.73,589.13");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=356.75,632.99");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=301.21,514.70");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=292.69,429.01");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=360.41,477.22");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=426.33,321.16");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=377.00,468.63");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=578.19,538.36");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=490.79,467.03");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=397.01,484.84");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=30.30,671.47");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=275.83,685.35");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=172.85,776.33");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=86.96,772.37");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=199.04,758.56");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=80.54,751.84");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=121.22,728.83");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=89.01,718.45");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=225.85,759.04");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=229.83,583.63");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=256.32,624.20");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=138.57,617.62");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=200.65,635.69");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=167.25,609.46");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=320.78,684.14");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=263.18,653.61");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=373.25,637.70");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=284.03,530.45");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=426.36,465.80");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=338.34,413.12");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=439.92,457.89");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=506.56,557.90");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=562.66,524.88");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=458.27,370.54");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=518.77,401.59");
    }

}

