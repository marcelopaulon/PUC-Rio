
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn8_5
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
        @display("p=71.53,604.49");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=111.59,516.14");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=89.98,541.36");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=110.54,583.62");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=41.30,568.15");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=34.41,512.57");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=61.84,521.11");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=19.02,485.82");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=40.49,417.04");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=32.70,399.92");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=25.01,381.38");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=11.21,350.58");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=51.85,437.39");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=121.00,384.67");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=194.68,430.08");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=156.42,438.34");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=138.36,476.61");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=123.26,566.14");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=122.17,618.97");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=147.35,618.86");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=191.47,679.33");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=182.94,672.79");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=231.87,669.51");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=252.66,663.11");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=82.97,693.43");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=3.97,657.78");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=104.38,524.71");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=143.86,569.68");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=61.81,619.07");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=19.88,579.87");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=0.39,498.91");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=12.57,532.10");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=18.91,519.66");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=46.05,385.75");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=15.03,428.38");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=76.15,374.28");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=54.33,358.25");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=50.22,507.08");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=109.74,355.86");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=218.70,422.30");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=148.36,340.89");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=137.73,466.04");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=79.80,589.82");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=147.83,660.65");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=80.85,681.26");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=202.76,611.38");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=198.24,691.07");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=158.31,649.81");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=185.82,648.95");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=96.42,743.26");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=57.48,589.95");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=70.57,557.15");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=44.81,616.51");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=109.77,544.29");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=24.13,546.19");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=39.94,525.64");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=36.30,496.78");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=28.26,436.47");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=6.25,439.09");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=89.36,346.90");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=5.80,395.10");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=65.43,310.52");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=72.15,443.59");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=80.09,459.87");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=144.20,504.81");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=147.37,453.45");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=203.80,490.47");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=206.08,558.87");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=131.78,605.32");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=90.37,583.92");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=287.11,656.41");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=224.06,651.70");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=249.22,725.95");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=236.87,649.60");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=68.72,700.99");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=114.05,690.60");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=154.45,509.07");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=8.38,516.30");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=164.29,623.73");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=49.61,578.35");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=51.43,538.65");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=14.54,506.10");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=36.64,581.34");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=134.22,427.65");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=100.95,452.08");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=14.30,328.57");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=26.49,370.74");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=65.30,374.26");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=111.82,447.65");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=277.71,401.39");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=153.74,382.51");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=101.43,429.24");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=146.52,556.40");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=93.41,686.67");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=114.28,594.72");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=170.45,641.20");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=223.97,682.76");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=263.03,698.71");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=307.70,606.38");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=127.86,739.31");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=89.44,569.53");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=163.42,486.18");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=110.10,566.47");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=110.07,623.48");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=50.65,644.54");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=80.47,535.13");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=19.10,599.75");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=56.28,417.20");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=29.12,450.08");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=90.49,384.94");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=86.04,362.75");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=7.19,338.17");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=125.27,445.15");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=136.10,373.32");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=173.12,422.92");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=185.88,398.78");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=80.66,431.72");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=102.46,551.32");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=124.59,581.73");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=148.63,605.31");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=233.63,754.92");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=257.20,678.84");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=225.67,575.67");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=281.50,608.70");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=134.70,708.73");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=92.86,665.12");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=124.62,515.28");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=69.44,503.03");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=154.22,548.36");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=12.36,559.71");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=25.65,503.63");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=124.64,555.80");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=28.57,477.44");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=64.30,462.78");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=27.72,302.06");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=6.62,288.16");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=21.89,279.00");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=68.66,488.50");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=133.02,386.12");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=200.65,357.28");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=228.13,442.21");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=159.20,394.93");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=176.08,522.85");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=65.03,669.17");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=149.62,634.87");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=175.99,664.77");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=196.15,590.96");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=199.21,636.68");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=238.97,731.58");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=110.20,708.77");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=33.56,591.20");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=34.38,467.21");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=94.45,557.85");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=77.67,615.42");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=122.45,534.97");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=9.42,588.50");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=28.55,522.87");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=55.06,468.53");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=36.13,358.95");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=75.09,413.82");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=78.52,297.15");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=8.25,362.69");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=70.32,387.48");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=118.79,479.57");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=169.22,351.45");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=166.05,535.17");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=221.55,488.73");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=70.47,571.02");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=101.88,608.61");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=140.31,592.98");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=156.55,692.10");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=249.23,713.66");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=293.24,625.30");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=284.38,637.23");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=129.52,696.25");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=70.25,544.09");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=87.17,485.38");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=184.89,554.25");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=162.05,603.65");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=11.20,546.02");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=90.78,431.72");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=49.99,599.50");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=96.57,491.07");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=108.84,389.09");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=63.17,429.49");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=118.07,368.41");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=96.38,336.43");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=81.85,399.66");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=153.14,465.31");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=205.85,342.65");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=170.74,377.93");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=205.62,453.04");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=171.67,591.63");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=89.30,706.12");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=234.38,587.51");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=200.14,737.37");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=150.87,589.13");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=319.66,627.20");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=311.72,642.34");
    }

}

