
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn8-7
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
        @display("p=154.00,566.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=171.32,595.75");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=170.66,561.41");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=160.75,575.17");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=215.60,511.58");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=208.80,499.73");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=160.95,450.29");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=170.24,402.06");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=165.31,375.06");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=149.81,382.06");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=88.49,406.18");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=72.44,398.78");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=133.87,412.83");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=120.87,363.95");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=168.86,413.78");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=181.48,445.82");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=199.04,446.45");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=133.16,502.74");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=111.55,587.32");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=127.56,556.26");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=91.70,630.31");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=103.76,633.80");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=152.56,617.01");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=182.83,556.69");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=118.36,616.53");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=232.40,581.56");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=197.84,625.78");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=149.58,486.25");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=147.27,602.44");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=308.67,527.21");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=149.00,555.64");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=116.95,495.85");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=181.91,354.77");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=244.28,390.96");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=195.19,417.65");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=42.54,353.04");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=76.26,359.17");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=145.56,438.62");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=127.80,351.14");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=135.26,362.26");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=185.98,436.46");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=274.64,402.08");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=186.39,497.99");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=134.10,564.74");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=69.32,625.66");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=31.69,691.70");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=135.65,634.84");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=199.78,637.46");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=132.40,491.74");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=107.04,562.51");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=137.32,539.40");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=242.48,618.81");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=202.86,655.93");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=171.80,623.28");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=134.50,523.01");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=182.40,515.03");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=170.68,452.97");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=99.21,404.01");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=92.56,342.03");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=112.33,373.66");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=29.10,382.99");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=105.26,466.41");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=180.99,325.33");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=67.53,389.31");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=141.48,395.19");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=196.45,362.73");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=202.73,428.36");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=118.70,540.47");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=161.47,612.36");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=44.70,594.21");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=76.19,598.08");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=10.00,652.92");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=163.93,646.17");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=150.06,576.82");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=105.37,597.24");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=134.32,590.66");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=143.87,509.89");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=186.69,527.69");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=95.62,566.31");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=234.49,506.07");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=270.26,559.04");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=163.01,548.52");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=260.07,416.98");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=202.85,340.53");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=183.38,385.08");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=115.74,392.14");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=76.89,409.17");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=123.05,476.10");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=84.74,323.62");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=266.80,427.15");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=96.03,494.65");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=227.19,376.83");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=64.82,460.64");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=126.65,580.13");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=153.43,530.45");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=92.72,648.83");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=43.15,616.50");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=218.37,578.81");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=166.85,468.48");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=133.94,650.14");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=101.82,574.67");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=215.10,604.19");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=104.17,507.61");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=175.75,503.39");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=190.28,470.87");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=216.03,414.62");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=144.50,409.38");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=153.46,429.18");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=143.28,291.06");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=77.44,428.61");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=124.13,444.29");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=108.83,407.77");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=107.44,417.80");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=131.13,395.72");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=214.02,451.65");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=224.67,448.52");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=178.24,474.43");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=97.25,418.50");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=120.62,569.03");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=71.38,557.63");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=38.75,674.04");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=144.96,649.18");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=207.22,546.01");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=217.49,544.99");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=56.07,597.55");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=121.17,594.75");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=180.27,613.31");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=172.37,541.12");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=182.18,623.54");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=275.45,467.89");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=203.46,527.50");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=223.63,392.40");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=129.53,373.52");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=218.09,349.71");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=109.34,441.68");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=41.89,418.84");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=83.03,393.36");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=114.45,461.91");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=64.23,442.28");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=133.95,329.48");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=192.03,509.98");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=265.01,507.09");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=118.36,527.59");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=98.94,661.94");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=169.60,527.62");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=21.76,651.11");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=106.73,619.28");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=114.35,683.70");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=224.67,566.80");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=180.47,693.16");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=172.03,579.08");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=148.80,665.27");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=265.83,568.35");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=231.39,516.65");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=164.97,586.75");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=128.06,512.17");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=169.46,359.11");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=212.59,369.93");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=124.24,458.96");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=192.03,353.57");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=31.15,353.25");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=24.14,415.86");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=173.92,348.16");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=105.50,303.21");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=148.69,370.32");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=225.13,403.92");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=281.11,456.69");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=88.54,510.19");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=195.95,535.34");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=137.12,622.88");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=68.87,648.01");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=112.90,701.82");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=198.01,672.04");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=197.34,573.14");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=130.01,604.72");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=238.10,564.34");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=181.68,574.35");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=142.73,529.25");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=219.34,495.72");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=249.56,523.88");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=282.89,491.53");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=159.03,501.22");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=107.96,453.00");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=169.61,329.43");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=165.72,316.67");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=93.93,389.27");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=33.62,371.10");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=189.22,397.45");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=191.40,298.37");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=249.93,417.51");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=186.77,454.71");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=156.55,514.85");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=82.02,560.42");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=63.07,539.07");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=80.32,584.29");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=45.02,686.42");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=70.17,606.70");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=89.87,680.40");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=184.42,544.29");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=81.70,637.06");
    }

}

