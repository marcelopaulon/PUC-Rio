
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn12_9
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
        @display("p=107.18,719.96");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=13.32,740.05");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=44.32,681.23");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=9.79,786.38");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=34.94,724.92");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=30.88,681.84");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=89.19,624.29");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=54.71,648.19");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=10.23,581.84");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=85.14,601.50");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=68.10,579.24");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=31.34,611.15");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=67.36,651.42");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=76.68,668.09");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=116.12,668.62");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=136.55,648.39");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=72.38,704.64");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=130.00,756.71");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=62.62,672.48");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=80.94,721.90");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=50.34,708.40");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=74.41,764.65");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=51.42,629.12");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=64.41,557.96");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=94.94,680.16");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=45.55,619.75");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=56.70,609.97");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=25.28,637.55");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=49.44,660.67");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=125.78,603.82");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=22.90,748.81");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=149.09,650.33");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=110.56,654.72");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=158.27,683.62");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=155.01,762.93");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=10.86,664.58");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=32.62,764.07");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=86.97,746.27");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=29.82,783.92");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=13.75,684.78");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=93.32,587.55");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=81.77,635.43");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=17.42,599.91");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=24.66,577.14");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=162.71,604.42");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=121.65,569.80");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=96.66,645.63");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=18.67,628.27");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=125.74,649.25");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=144.27,672.12");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=49.78,695.97");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=190.00,704.02");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=20.75,732.10");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=36.17,670.01");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=103.53,758.25");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=32.60,739.19");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=21.44,696.53");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=117.32,588.42");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=105.51,621.08");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=82.26,613.09");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=115.10,545.69");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=7.44,632.56");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=44.83,588.79");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=36.64,713.24");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=92.93,611.16");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=163.08,638.16");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=220.71,689.00");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=78.20,692.51");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=96.49,710.07");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=45.24,752.47");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=122.26,676.94");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=99.52,795.93");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=53.92,722.50");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=72.96,608.67");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=52.61,567.72");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=40.00,629.50");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=30.10,561.09");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=60.08,590.38");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=59.51,502.96");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=51.77,596.39");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=80.39,650.74");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=115.45,611.25");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=193.65,655.12");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=182.86,580.65");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=82.46,682.28");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=99.56,729.49");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=2.36,760.09");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=51.35,743.58");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=14.11,798.22");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=16.09,757.29");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=36.20,642.72");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=45.33,559.71");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=112.79,708.54");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=21.44,550.21");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=21.65,534.23");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=146.61,640.27");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=9.65,618.20");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=90.74,691.71");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=11.05,706.22");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=82.09,733.57");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=111.45,631.89");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=124.49,776.13");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=147.84,705.38");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=57.21,765.04");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=54.81,686.23");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=56.26,784.53");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=26.34,707.76");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=113.58,642.25");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=67.64,634.08");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=144.64,619.34");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=15.78,560.71");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=65.30,600.63");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=134.31,504.83");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=7.12,650.77");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=159.53,654.61");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=65.39,661.35");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=177.92,599.31");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=121.25,556.62");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=113.41,749.31");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=126.21,699.72");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=78.61,791.17");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=3.45,683.52");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=2.22,737.06");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=37.13,696.55");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=23.05,675.50");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=67.21,567.94");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=143.81,687.72");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=0.28,517.36");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=88.27,543.09");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=66.70,546.26");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=74.38,624.45");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=140.46,718.22");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=17.09,648.79");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=152.56,594.95");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=136.89,609.60");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=128.68,744.01");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=138.98,731.17");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=8.44,774.98");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=92.32,659.61");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=94.14,766.11");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=70.59,718.64");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=66.05,774.12");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=185.06,648.81");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=125.26,630.62");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=77.22,532.46");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=79.23,553.07");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=68.12,521.62");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=5.00,590.89");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=90.90,567.00");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=119.53,718.68");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=161.05,695.68");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=218.71,653.17");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=40.21,651.92");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=60.40,752.56");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=21.61,721.65");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=55.62,732.63");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=2.19,795.73");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=27.26,649.20");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=109.33,696.38");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=164.16,586.92");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=71.82,683.16");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=89.44,553.36");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=95.21,524.38");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=84.26,509.38");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=49.80,515.67");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=60.76,708.37");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=166.65,667.44");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=179.87,726.34");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=208.53,626.25");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=189.82,684.63");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=113.46,728.71");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=20.90,664.22");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=136.09,706.03");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=76.59,752.84");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=69.71,744.69");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=29.42,591.95");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=102.49,538.88");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=130.32,658.71");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=6.83,603.51");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=134.48,563.40");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=19.04,517.45");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=36.74,579.79");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=101.50,564.59");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=50.54,671.20");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=112.14,681.85");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=168.34,723.81");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=86.48,703.21");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=180.73,744.25");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=61.61,697.73");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=101.63,606.18");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=8.42,718.80");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=1.13,697.25");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=44.97,605.10");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=125.08,546.78");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=21.45,614.70");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=1.77,539.73");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=143.03,551.28");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=32.83,533.04");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=47.91,576.56");
    }

}

