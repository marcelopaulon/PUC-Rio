
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn12_1
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
        @display("p=100.00,300.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=94.69,268.89");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=78.70,243.44");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=63.84,257.44");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=93.13,206.36");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=44.79,197.98");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=121.57,169.97");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=62.09,203.51");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=106.20,195.80");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=136.90,251.95");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=60.36,311.15");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=77.37,312.55");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=84.83,253.63");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=101.72,237.13");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=146.50,176.63");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=140.46,107.36");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=155.21,91.03");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=45.30,316.86");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=31.42,293.95");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=149.18,195.61");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=55.27,262.61");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=120.78,226.17");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=76.85,154.63");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=79.78,233.42");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=46.28,223.92");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=152.51,275.03");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=189.79,233.99");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=52.20,294.55");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=130.40,395.28");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=102.43,156.09");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=106.88,246.15");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=77.32,164.76");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=51.02,63.43");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=144.34,94.72");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=90.08,281.09");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=4.44,233.09");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=23.64,182.54");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=24.81,202.22");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=4.09,250.89");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=106.00,271.48");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=101.45,175.94");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=30.74,142.63");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=45.30,163.19");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=160.31,261.18");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=137.89,318.79");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=76.78,332.81");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=110.83,296.81");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=166.30,233.90");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=125.76,159.90");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=169.89,42.25");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=121.95,132.99");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=9.80,322.63");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=11.86,301.86");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=114.11,312.34");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=83.29,325.12");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=82.59,205.71");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=36.87,208.07");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=112.17,184.05");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=53.02,187.28");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=143.51,166.58");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=94.04,194.00");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=96.22,310.24");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=66.91,339.66");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=126.81,190.64");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=62.64,172.69");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=163.67,193.57");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=70.00,108.58");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=157.71,101.55");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=138.95,221.91");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=137.72,181.68");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=114.53,261.59");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=83.46,221.50");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=123.96,121.28");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=44.03,243.81");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=190.12,205.06");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=88.54,145.79");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=16.64,222.61");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=168.37,184.51");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=78.59,380.56");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=17.52,346.80");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=22.30,265.17");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=177.03,241.94");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=177.64,199.95");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=57.15,125.30");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=129.63,94.27");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=122.79,386.50");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=126.16,270.67");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=73.43,290.07");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=56.04,249.54");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=108.54,209.35");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=113.67,152.92");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=111.54,136.51");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=107.50,285.76");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=192.12,148.09");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=125.68,309.56");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=13.44,256.19");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=52.21,278.71");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=135.09,303.04");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=68.28,229.27");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=152.38,233.29");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=239.74,114.89");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=101.63,97.61");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=100.25,352.39");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=126.06,290.86");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=6.20,222.55");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=33.30,272.99");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=121.17,211.75");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=33.19,177.88");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=215.74,192.41");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=53.65,138.05");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=103.76,114.25");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=138.90,240.22");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=41.80,329.17");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=151.44,249.55");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=139.08,332.63");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=110.97,229.93");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=65.63,192.24");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=149.74,113.94");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=132.43,8.27");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=127.28,322.59");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=134.86,285.67");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=88.56,340.26");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=138.91,274.20");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=73.71,183.99");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=22.82,251.89");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=162.02,142.11");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=62.01,144.68");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=170.07,148.66");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=198.68,264.29");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=93.99,364.83");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=22.65,360.74");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=167.38,214.32");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=119.69,248.84");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=195.97,92.42");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=117.46,67.14");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=230.91,31.57");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=131.16,350.40");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=87.40,292.88");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=117.38,327.37");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=83.79,176.31");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=180.27,186.48");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=20.77,212.29");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=171.26,107.65");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=74.00,199.80");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=148.24,156.16");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=164.72,334.07");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=34.30,389.15");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=16.48,336.01");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=169.13,269.88");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=131.52,211.65");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=240.80,180.03");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=204.46,84.67");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=159.56,169.89");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=61.56,288.34");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=9.63,284.75");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=26.38,304.63");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=65.28,239.20");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=8.53,201.08");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=66.62,218.72");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=37.57,134.97");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=71.49,301.13");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=117.61,198.44");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=188.30,175.29");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=30.30,329.42");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=99.16,321.16");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=65.63,157.34");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=161.71,282.43");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=225.98,128.09");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=152.64,133.72");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=182.23,95.78");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=182.68,257.72");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=95.43,253.69");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=61.73,326.22");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=54.23,211.06");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=131.55,172.95");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=42.79,290.41");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=87.60,166.00");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=127.73,235.34");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=133.68,116.43");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=193.65,274.79");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=44.33,396.04");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=105.06,342.72");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=89.39,237.81");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=193.27,253.61");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=111.45,125.95");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=135.28,133.08");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=227.69,41.58");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=79.99,396.32");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=150.21,344.06");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=14.14,275.66");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=77.24,273.72");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=80.47,139.23");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=59.42,108.98");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=58.43,98.41");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=20.53,233.49");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=195.11,217.73");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=150.08,328.24");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=8.62,375.44");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=97.83,377.84");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=145.23,306.12");
    }

}

