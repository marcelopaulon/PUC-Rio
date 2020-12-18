
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn12_2
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
        @display("p=111.41,639.38");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=88.58,617.73");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=81.49,607.82");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=164.75,627.19");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=142.37,530.64");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=194.97,510.64");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=265.40,454.70");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=235.21,504.11");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=86.31,517.32");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=103.00,436.04");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=20.40,386.92");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=31.66,331.96");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=1.40,319.35");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=81.04,323.05");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=112.10,264.11");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=98.56,252.97");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=41.44,750.07");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=123.64,592.69");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=170.07,653.11");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=18.13,581.84");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=107.07,650.91");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=145.99,553.36");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=197.85,526.94");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=247.56,407.10");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=172.56,430.44");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=75.80,506.10");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=179.13,408.08");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=46.02,365.63");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=85.10,300.24");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=7.68,307.05");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=142.76,393.28");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=147.98,257.25");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=93.35,277.15");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=126.25,618.55");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=96.78,632.32");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=100.77,611.66");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=44.01,523.37");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=154.82,629.45");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=172.44,586.39");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=165.46,578.16");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=356.57,448.93");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=190.51,430.13");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=156.14,558.11");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=110.19,446.91");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=67.41,304.59");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=10.22,381.66");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=44.54,300.16");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=23.34,241.55");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=187.86,299.79");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=64.28,282.27");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=146.89,742.54");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=134.53,668.71");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=37.87,553.77");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=76.39,547.66");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=114.28,545.85");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=132.03,528.83");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=200.96,497.85");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=212.74,453.87");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=221.96,518.18");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=65.98,594.32");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=142.58,375.30");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=24.33,429.11");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=28.98,407.78");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=24.76,299.34");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=121.10,334.96");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=149.61,188.66");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=131.44,316.63");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=194.21,694.09");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=64.98,682.03");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=120.14,671.55");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=39.57,622.85");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=180.85,609.45");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=158.01,514.52");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=183.98,518.11");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=233.30,453.84");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=277.53,460.21");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=95.93,542.11");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=57.98,384.30");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=40.36,354.08");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=102.86,326.62");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=25.74,362.04");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=67.54,335.53");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=156.30,208.77");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=54.60,324.85");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=55.57,660.52");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=159.13,641.09");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=14.12,563.73");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=89.85,602.04");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=149.33,708.24");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=101.65,505.85");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=128.78,448.56");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=277.21,442.23");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=288.72,506.97");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=82.77,468.54");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=101.95,380.92");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=77.64,404.70");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=59.78,371.57");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=15.67,344.15");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=31.95,312.20");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=125.07,175.54");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=126.45,245.45");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=89.99,705.62");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=86.88,648.76");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=62.41,580.42");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=140.56,630.40");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=90.71,567.46");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=104.28,535.89");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=194.80,542.09");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=253.29,466.12");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=219.50,469.53");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=92.25,556.68");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=106.05,356.18");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=82.33,395.25");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=52.18,282.12");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=13.12,324.55");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=109.10,284.13");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=62.57,220.74");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=58.30,245.09");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=101.34,742.40");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=138.21,727.05");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=74.08,677.81");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=70.16,609.63");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=173.60,620.76");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=127.14,548.42");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=272.23,518.50");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=244.05,536.86");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=218.86,505.52");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=87.48,507.14");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=94.30,372.17");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=49.68,407.28");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=0.58,249.18");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=4.15,356.95");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=170.67,285.19");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=121.72,307.19");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=28.19,184.65");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=148.89,720.74");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=122.38,634.62");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=78.98,593.76");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=59.58,618.20");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=187.81,709.50");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=231.04,536.92");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=113.54,496.65");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=233.72,376.34");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=266.51,533.36");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=53.15,599.03");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=124.03,473.15");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=26.69,321.13");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=44.57,395.11");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=44.06,271.52");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=75.98,267.90");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=92.53,223.16");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=129.27,266.52");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=36.57,707.96");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=117.37,683.46");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=9.98,612.20");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=74.48,521.95");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=141.03,613.39");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=176.95,495.49");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=212.37,514.50");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=281.68,413.79");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=284.73,524.72");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=97.07,527.04");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=94.44,345.33");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=99.68,405.70");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=44.43,341.94");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=58.72,394.34");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=65.51,315.34");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=62.93,346.48");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=67.16,199.13");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=82.03,696.20");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=143.68,642.32");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=3.85,640.43");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=97.88,666.97");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=114.73,705.06");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=103.14,599.21");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=274.04,489.74");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=182.49,485.31");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=171.55,510.11");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=12.80,508.18");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=125.09,432.01");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=52.68,351.76");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=24.36,274.54");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=20.92,401.47");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=160.71,342.66");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=131.09,186.91");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=118.51,318.53");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=100.96,688.42");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=134.13,713.95");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=175.39,575.70");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=133.88,559.87");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=206.21,611.64");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=123.27,566.11");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=166.56,558.22");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=243.93,516.17");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=219.43,538.19");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=82.18,497.81");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=83.35,417.21");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=35.30,387.68");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=88.06,335.94");
    }

}

