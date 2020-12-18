
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn12-8
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
        @display("p=140.00,793.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=175.99,775.82");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=127.96,735.44");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=124.89,745.38");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=50.20,729.76");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=83.61,771.29");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=130.26,724.75");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=146.29,741.22");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=124.12,762.78");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=58.74,798.69");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=121.11,799.13");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=143.03,729.31");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=179.72,706.87");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=157.20,656.63");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=139.73,715.21");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=215.87,741.21");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=136.19,743.28");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=122.94,778.41");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=176.16,790.83");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=138.70,777.97");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=211.35,773.58");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=120.91,663.13");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=99.18,780.73");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=163.37,648.38");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=121.42,688.85");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=56.59,741.67");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=35.13,713.20");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=154.52,775.43");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=164.69,633.54");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=209.38,707.10");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=73.24,627.15");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=76.28,693.91");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=249.23,737.79");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=163.76,713.26");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=182.68,721.58");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=164.68,697.21");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=116.73,753.89");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=29.83,735.67");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=47.58,765.33");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=47.32,781.11");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=143.23,704.30");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=74.96,750.98");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=50.07,715.21");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=42.85,795.51");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=98.78,702.80");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=102.58,792.79");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=128.12,697.40");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=84.82,642.83");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=146.77,633.72");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=268.71,793.16");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=100.18,743.16");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=201.07,773.31");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=171.37,683.12");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=204.09,734.40");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=44.41,688.50");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=86.31,714.53");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=82.43,726.79");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=82.36,673.23");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=171.77,669.83");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=207.40,758.37");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=58.45,788.60");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=110.00,769.23");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=149.86,684.35");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=232.98,788.41");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=144.15,572.27");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=187.03,638.80");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=147.54,785.35");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=213.77,695.37");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=170.13,763.06");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=114.34,702.10");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=209.58,790.30");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=189.42,761.46");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=10.07,785.23");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=7.62,713.70");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=217.95,677.98");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=112.34,743.49");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=113.95,788.30");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=69.44,774.56");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=50.51,750.78");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=145.21,670.53");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=248.94,691.16");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=184.21,666.65");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=125.61,707.97");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=291.52,680.25");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=106.01,734.56");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=189.81,746.06");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=176.32,752.81");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=154.12,703.44");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=135.53,760.84");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=5.80,703.79");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=39.67,750.22");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=55.77,694.70");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=195.63,691.61");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=158.35,785.94");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=1.98,727.30");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=99.66,757.31");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=67.12,726.28");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=189.30,714.08");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=66.28,653.77");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=126.80,652.47");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=244.51,666.85");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=106.69,723.09");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=163.59,751.63");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=94.79,770.50");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=35.10,726.09");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=117.58,730.14");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=6.00,672.87");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=61.51,709.46");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=154.85,735.68");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=109.28,693.29");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=75.32,740.41");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=72.63,796.54");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=185.77,733.13");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=228.62,712.56");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=171.12,728.00");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=81.16,683.75");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=160.18,727.00");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=213.26,717.42");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=101.12,659.92");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=185.94,794.09");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=240.59,769.85");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=175.26,738.10");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=172.66,659.36");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=45.10,739.63");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=26.00,700.07");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=146.43,767.56");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=161.51,666.11");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=81.98,782.03");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=1.59,794.89");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=34.88,764.72");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=230.14,688.57");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=180.61,692.51");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=179.45,602.98");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=104.06,646.43");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=302.21,785.91");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=49.38,703.04");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=87.62,758.40");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=231.34,761.72");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=69.76,702.40");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=75.46,718.03");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=12.86,637.09");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=87.76,794.07");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=111.49,712.17");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=243.83,746.53");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=195.77,787.93");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=16.49,799.71");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=65.80,736.93");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=219.81,706.49");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=196.86,721.13");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=141.53,656.77");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=199.21,706.94");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=232.37,737.02");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=91.92,690.17");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=58.28,765.39");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=247.83,726.45");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=134.67,671.36");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=90.27,734.66");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=136.46,691.64");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=3.62,749.57");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=182.92,676.81");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=68.21,761.56");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=165.54,774.52");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=64.50,751.77");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=186.69,778.01");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=170.46,799.15");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=221.93,790.27");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=119.87,565.34");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=214.46,649.95");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=311.04,734.61");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=99.81,670.15");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=156.90,796.34");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=85.57,746.38");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=129.58,640.51");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=158.98,676.97");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=15.30,771.68");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=65.75,692.25");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=150.86,718.37");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=104.82,681.69");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=33.50,788.05");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=26.96,749.27");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=129.57,788.56");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=234.43,704.42");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=238.34,677.87");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=211.71,633.74");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=114.75,638.13");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=262.69,725.30");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=92.80,677.67");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=203.05,748.83");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=261.21,755.51");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=58.40,665.88");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=155.15,761.75");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=43.63,653.09");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=67.26,678.64");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=197.93,677.10");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=218.04,760.16");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=85.01,702.91");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=5.92,761.71");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=97.27,719.63");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=239.41,755.61");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=209.72,614.36");
    }

}

