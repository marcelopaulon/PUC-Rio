
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn8_8
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=88.32,110.34");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=17.44,143.31");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=37.44,143.68");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=85.32,148.04");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=42.82,197.15");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=53.77,266.12");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=152.80,253.93");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=108.10,293.94");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=94.67,257.97");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=34.56,309.02");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=53.72,393.60");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=5.13,466.66");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=16.07,540.10");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=72.14,495.20");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=73.09,506.78");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=130.80,480.42");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=159.57,560.83");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=89.16,530.76");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=98.58,516.89");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=181.43,541.29");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=145.85,557.28");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=121.95,572.94");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=139.86,570.63");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=55.11,525.55");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=112.78,8.29");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=111.56,63.18");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=3.35,135.29");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=24.35,121.61");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=112.44,101.96");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=45.43,135.87");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=40.09,264.24");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=210.97,309.64");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=95.22,285.64");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=98.68,347.05");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=22.24,403.55");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=11.42,384.67");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=21.15,464.21");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=40.87,518.27");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=109.30,416.36");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=64.60,469.28");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=126.11,499.04");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=96.45,492.21");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=66.23,616.40");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=67.98,540.73");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=211.77,475.65");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=176.68,521.01");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=84.52,609.09");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=119.87,550.82");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=36.65,598.58");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=105.93,137.08");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=95.07,69.75");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=15.15,170.47");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=37.84,102.60");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=153.10,218.68");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=52.65,191.78");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=13.35,280.88");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=150.45,205.93");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=146.00,280.26");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=69.69,255.41");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=47.36,251.24");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=102.49,457.14");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=17.82,448.49");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=16.81,590.48");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=40.33,506.33");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=34.47,420.70");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=133.75,459.41");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=222.63,574.04");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=115.26,492.88");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=42.84,588.91");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=263.14,532.99");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=118.60,645.26");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=113.23,633.51");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=131.08,545.90");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=13.46,486.40");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=175.05,134.05");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=80.43,47.99");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=49.04,57.82");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=79.53,192.15");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=103.21,165.39");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=70.66,231.38");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=58.56,280.50");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=125.93,258.25");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=141.64,320.61");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=111.40,228.21");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=0.08,228.94");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=138.02,436.20");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=42.65,473.25");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=59.16,601.91");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=41.72,574.13");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=53.85,488.29");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=102.27,437.03");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=190.78,526.22");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=80.61,539.85");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=68.85,527.15");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=205.02,536.28");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=166.56,483.53");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=182.21,603.75");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=144.88,668.84");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=36.93,490.42");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=177.06,150.63");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=90.69,206.73");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=13.68,154.75");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=93.66,176.96");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=54.63,102.52");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=23.94,242.25");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=73.00,276.85");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=202.98,278.85");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=165.02,323.95");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=127.43,304.60");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=85.19,378.31");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=114.41,439.27");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=41.01,443.88");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=40.74,550.97");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=62.79,480.69");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=70.67,574.26");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=92.49,469.40");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=149.91,581.38");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=171.75,530.45");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=106.06,541.50");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=105.97,589.14");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=207.20,634.78");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=155.96,546.56");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=131.11,511.69");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=2.44,445.01");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=149.73,174.75");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=122.44,66.16");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=42.21,233.59");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=69.05,212.14");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=85.47,160.37");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=17.17,110.15");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=22.45,349.09");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=125.09,172.04");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=137.96,267.51");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=161.33,195.97");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=16.28,229.40");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=90.50,361.06");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=64.92,433.86");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=7.12,531.63");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=83.81,506.65");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=157.14,459.12");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=201.50,413.17");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=172.87,587.92");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=61.20,506.10");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=25.66,525.08");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=231.54,535.42");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=106.77,648.69");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=95.94,479.63");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=193.63,553.69");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=101.04,576.07");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=190.63,97.82");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=112.10,36.26");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=27.82,163.92");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=66.21,47.97");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=64.54,161.52");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=44.22,112.57");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=88.31,238.83");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=103.75,266.14");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=58.60,237.05");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=88.14,341.69");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=47.08,289.61");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=36.84,351.35");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=76.76,419.77");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=5.98,510.53");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=95.03,502.69");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=86.59,485.26");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=219.02,466.54");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=199.34,564.32");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=151.27,534.53");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=112.26,598.74");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=277.71,551.99");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=160.52,472.53");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=55.83,572.47");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=232.56,594.43");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=54.80,446.59");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=166.84,38.69");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=107.74,47.31");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=76.96,106.37");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=33.73,173.84");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=73.44,124.89");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=25.55,206.62");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=113.75,332.52");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=174.55,198.18");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=127.70,246.31");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=112.44,240.93");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=21.14,331.36");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=85.27,447.56");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=20.64,474.54");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=46.35,457.68");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=51.27,556.70");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=32.35,578.14");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=179.57,504.40");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=158.70,502.20");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=87.50,516.62");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=108.32,521.77");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=216.19,547.56");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=157.66,616.87");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=105.96,553.81");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=119.48,619.03");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=90.68,576.17");
    }

}

