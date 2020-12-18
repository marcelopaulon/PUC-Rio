
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn8-3
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
        @display("p=224.00,605.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=201.35,597.31");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=155.11,584.22");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=141.35,584.03");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=52.40,548.19");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=12.92,572.86");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=103.51,584.20");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=148.34,667.34");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=147.55,764.52");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=168.32,690.75");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=106.60,729.31");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=148.66,710.79");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=137.65,781.24");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=159.97,775.76");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=165.63,745.73");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=144.88,791.74");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=128.32,774.60");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=187.05,775.10");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=179.71,767.08");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=169.36,779.86");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=90.35,790.28");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=66.86,756.01");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=72.10,764.59");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=88.56,753.14");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=79.56,780.88");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=214.17,687.66");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=289.23,623.08");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=187.77,629.95");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=108.48,558.22");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=97.33,525.01");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=38.51,569.33");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=4.66,592.92");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=231.30,695.02");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=139.74,746.79");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=191.70,756.91");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=123.78,711.13");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=125.55,687.99");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=121.60,745.45");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=171.94,712.50");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=169.82,761.16");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=146.48,692.56");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=113.98,796.31");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=113.24,715.43");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=214.35,714.18");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=176.06,795.17");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=47.20,765.53");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=55.81,739.11");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=38.72,746.46");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=112.16,770.79");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=83.34,740.13");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=187.45,569.52");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=167.61,575.55");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=62.06,553.08");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=102.68,541.04");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=73.50,523.68");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=22.10,627.80");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=79.34,579.28");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=64.87,634.05");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=224.49,764.51");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=185.35,673.32");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=95.92,688.61");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=189.90,731.89");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=131.10,734.67");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=208.67,703.18");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=185.34,740.97");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=150.78,727.66");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=111.05,677.52");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=280.58,758.99");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=195.22,795.06");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=227.83,723.89");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=50.44,778.70");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=8.16,766.73");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=79.31,728.22");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=77.26,711.74");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=69.94,796.25");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=148.98,599.99");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=254.05,598.00");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=129.86,593.73");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=221.66,586.23");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=24.49,526.49");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=27.51,547.29");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=30.41,611.94");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=154.71,655.09");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=137.43,757.78");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=145.41,682.34");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=126.50,761.95");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=73.82,663.55");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=113.64,702.33");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=161.40,727.62");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=180.73,649.99");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=82.34,765.35");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=137.50,770.01");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=112.23,782.80");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=208.01,765.53");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=136.25,692.21");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=37.51,799.15");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=43.59,688.05");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=99.67,768.29");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=107.64,743.50");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=18.35,767.84");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=185.71,545.97");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=176.27,592.05");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=198.71,618.63");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=133.96,573.84");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=53.31,598.41");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=30.89,559.17");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=117.18,533.35");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=161.58,706.86");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=125.22,798.49");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=101.89,699.92");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=50.77,715.23");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=185.79,709.87");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=134.40,709.90");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=199.48,738.37");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=173.96,751.79");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=157.97,795.61");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=49.52,794.89");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=240.14,766.51");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=231.34,778.64");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=174.16,733.38");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=96.11,735.85");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=49.86,696.44");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=20.97,781.39");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=58.09,785.72");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=25.54,715.83");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=254.29,615.76");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=130.87,534.86");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=200.20,533.98");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=133.51,652.04");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=53.30,536.06");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=14.01,556.08");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=115.28,589.44");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=66.40,620.88");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=244.42,787.41");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=181.49,694.96");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=65.13,730.07");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=157.17,716.50");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=103.74,790.00");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=211.74,785.69");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=197.68,691.94");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=224.60,796.15");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=133.20,791.59");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=270.26,765.87");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=185.42,785.22");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=247.49,775.46");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=2.13,748.50");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=54.77,661.60");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=67.80,781.75");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=57.03,767.96");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=99.92,755.00");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=188.24,606.40");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=165.00,676.18");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=167.62,609.58");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=121.10,618.46");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=53.16,587.78");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=89.48,618.85");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=137.39,558.67");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=66.29,694.73");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=200.73,721.83");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=243.67,697.93");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=94.20,712.71");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=115.82,635.33");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=107.20,688.43");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=226.85,709.34");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=154.33,753.17");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=128.71,722.38");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=91.35,724.70");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=197.72,780.96");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=271.20,781.22");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=243.49,753.22");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=118.18,728.59");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=15.53,727.58");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=150.93,780.04");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=52.70,672.40");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=26.05,794.78");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=201.73,650.10");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=297.80,602.29");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=146.56,537.66");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=105.89,654.03");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=107.31,518.63");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=37.03,646.03");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=96.27,556.57");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=130.37,675.63");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=188.61,685.53");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=169.28,661.19");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=79.98,792.28");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=150.28,738.81");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=217.46,729.37");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=230.70,749.12");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=253.07,741.34");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=71.02,746.51");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=216.51,746.25");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=242.59,709.81");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=242.16,742.37");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=95.11,780.31");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=77.62,755.86");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=52.37,727.00");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=7.96,719.08");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=67.31,683.86");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=0.67,728.52");
    }

}

