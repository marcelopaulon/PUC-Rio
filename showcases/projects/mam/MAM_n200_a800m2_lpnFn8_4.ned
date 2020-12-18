
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn8_4
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
        @display("p=56.09,673.44");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=65.61,654.64");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=42.08,740.55");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=105.78,673.66");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=134.61,753.56");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=40.89,756.58");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=32.63,797.03");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=73.01,745.29");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=30.01,724.35");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=19.46,747.21");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=103.36,764.32");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=151.83,760.79");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=92.32,715.90");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=65.44,612.24");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=60.68,603.37");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=107.54,572.74");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=115.35,611.23");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=142.80,595.55");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=103.38,602.59");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=117.17,649.78");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=79.61,610.20");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=135.97,667.15");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=209.70,606.74");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=265.92,538.47");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=109.33,692.10");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=2.14,749.80");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=88.71,698.51");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=125.43,768.06");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=150.40,648.37");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=150.30,789.75");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=72.25,670.09");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=58.03,754.12");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=101.78,787.51");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=4.88,703.95");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=70.95,768.42");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=120.67,732.94");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=137.50,770.11");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=145.39,632.03");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=69.55,633.97");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=13.59,558.55");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=121.81,523.95");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=60.25,621.06");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=105.12,615.13");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=6.26,586.22");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=154.78,579.27");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=70.01,562.91");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=164.77,742.79");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=204.84,619.50");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=297.24,496.38");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=124.41,714.56");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=77.72,658.12");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=74.97,690.09");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=4.49,734.18");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=35.63,649.44");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=175.26,693.35");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=14.10,756.20");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=32.25,766.62");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=1.92,764.58");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=20.47,720.09");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=40.36,684.66");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=13.16,778.44");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=138.56,715.72");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=52.31,630.09");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=53.69,545.90");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=36.79,591.49");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=73.42,525.14");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=80.85,600.14");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=227.52,543.64");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=181.06,657.41");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=146.60,687.53");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=96.63,592.99");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=50.42,651.09");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=205.26,652.48");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=292.74,633.63");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=139.35,696.56");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=51.84,662.13");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=41.51,640.10");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=54.01,711.86");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=115.21,703.34");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=109.85,750.16");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=85.01,729.58");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=20.78,765.44");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=104.47,736.29");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=77.83,754.91");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=17.40,654.69");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=150.30,771.69");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=250.35,777.82");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=162.08,682.34");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=66.57,593.12");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=131.72,632.20");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=116.12,592.61");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=158.86,617.67");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=205.91,586.32");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=68.59,538.90");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=50.21,721.74");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=47.46,599.95");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=190.24,615.13");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=208.85,563.11");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=196.34,526.56");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=149.44,701.92");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=37.45,660.25");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=57.01,684.31");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=71.24,712.27");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=21.60,674.59");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=137.57,794.70");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=35.77,732.55");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=20.60,732.89");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=92.45,764.74");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=24.13,686.11");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=59.45,696.37");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=178.83,718.23");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=175.56,785.47");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=168.04,764.68");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=60.40,554.01");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=147.42,609.13");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=41.75,551.39");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=25.94,613.63");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=140.53,583.71");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=85.10,624.41");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=170.76,656.02");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=93.70,684.66");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=177.97,645.76");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=217.92,618.78");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=255.63,594.01");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=146.80,735.74");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=43.27,674.50");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=87.59,559.18");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=60.85,740.47");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=88.44,752.50");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=163.08,704.08");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=7.46,724.09");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=33.09,711.41");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=87.81,739.55");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=44.01,710.46");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=89.26,780.40");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=79.30,777.68");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=107.00,774.52");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=108.90,713.65");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=130.77,606.15");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=114.53,548.63");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=190.23,544.05");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=90.61,642.36");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=223.18,578.30");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=154.10,520.19");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=120.89,635.86");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=62.15,569.90");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=125.87,684.73");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=224.38,689.85");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=230.32,510.18");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=138.83,727.09");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=45.87,766.90");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=98.56,624.39");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=78.24,720.54");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=130.06,702.75");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=159.20,719.15");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=66.84,782.18");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=45.57,794.31");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=27.54,756.66");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=59.54,726.40");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=25.25,784.28");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=24.15,706.36");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=180.48,760.96");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=84.97,707.90");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=5.39,548.34");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=39.24,622.41");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=54.30,641.26");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=155.36,590.15");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=158.92,661.72");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=139.53,623.49");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=126.96,652.36");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=34.67,608.10");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=190.30,663.21");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=261.11,548.79");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=329.48,573.67");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=178.36,708.04");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=77.81,583.96");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=98.10,567.42");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=32.76,696.38");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=184.87,635.19");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=143.07,779.55");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=7.92,795.76");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=121.36,758.74");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=98.33,750.17");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=0.35,662.95");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=59.57,768.30");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=156.50,691.89");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=246.34,754.49");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=137.64,643.36");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=88.98,583.81");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=86.56,513.69");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=169.46,545.16");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=84.02,667.62");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=147.14,568.93");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=137.23,509.03");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=93.91,655.87");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=107.07,558.59");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=125.00,670.95");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=192.45,589.71");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=287.90,511.35");
    }

}

