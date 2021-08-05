
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn8_7
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=91.75,124.23");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=90.33,75.69");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=117.17,85.55");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=171.03,162.65");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=249.02,177.07");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=295.52,97.21");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=221.50,65.90");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=197.83,25.87");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=181.59,21.82");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=93.08,38.92");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=177.08,58.07");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=209.10,95.61");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=176.95,84.29");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=139.77,64.88");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=206.37,132.93");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=138.52,94.29");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=131.07,73.32");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=70.96,60.11");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=85.65,47.92");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=68.74,15.55");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=15.14,65.77");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=33.17,126.05");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=24.82,141.17");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=21.25,192.60");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=119.07,20.72");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=144.87,175.10");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=75.50,84.32");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=125.10,31.83");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=157.92,187.40");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=312.33,234.01");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=246.36,22.87");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=214.44,51.54");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=205.18,76.50");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=161.90,24.98");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=99.85,8.50");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=182.20,44.29");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=183.04,115.15");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=196.31,107.96");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=183.72,96.76");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=136.15,156.15");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=105.46,72.96");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=113.79,166.06");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=55.82,69.27");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=38.96,25.33");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=74.16,39.79");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=47.82,81.82");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=11.97,200.71");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=9.38,112.12");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=50.23,267.44");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=71.55,134.61");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=77.34,219.56");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=29.84,34.57");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=82.76,143.63");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=145.41,114.33");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=262.59,266.03");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=307.62,138.00");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=161.66,90.21");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=196.51,68.62");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=191.39,34.49");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=34.22,7.78");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=112.18,114.23");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=223.69,85.31");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=96.30,50.04");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=61.45,8.15");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=233.90,156.24");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=150.28,86.67");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=61.79,98.12");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=9.77,83.40");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=2.73,99.30");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=129.16,3.10");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=88.13,27.60");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=75.08,150.29");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=19.22,165.93");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=11.53,237.15");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=100.80,115.66");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=77.74,112.81");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=82.87,161.14");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=157.97,140.93");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=154.03,198.28");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=288.78,259.14");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=341.33,58.72");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=232.54,117.31");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=241.26,104.06");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=210.47,60.91");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=129.66,101.38");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=162.88,120.99");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=175.16,4.08");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=176.30,31.31");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=113.91,60.18");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=270.27,149.17");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=112.28,4.28");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=114.49,44.68");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=30.05,71.03");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=176.75,70.56");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=9.94,39.75");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=48.87,44.45");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=52.63,105.97");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=57.73,127.42");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=47.02,244.23");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=116.51,125.13");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=95.97,151.53");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=103.47,38.72");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=86.69,101.59");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=234.69,91.43");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=218.41,212.21");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=328.92,36.08");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=237.64,65.11");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=209.52,40.28");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=191.06,80.20");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=187.50,11.84");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=259.99,63.08");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=254.53,141.30");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=183.11,133.81");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=156.97,102.42");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=181.75,151.24");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=178.04,175.46");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=210.80,25.07");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=44.51,13.48");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=168.80,39.62");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=40.13,35.63");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=24.99,89.38");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=17.73,120.45");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=63.26,154.39");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=103.40,194.32");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=128.33,166.44");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=133.71,141.26");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=89.00,86.22");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=144.61,29.69");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=223.51,178.71");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=244.75,165.31");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=338.78,158.40");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=218.67,118.12");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=291.24,16.45");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=196.36,119.10");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=38.35,93.28");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=167.54,130.46");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=145.94,147.16");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=200.87,47.97");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=139.66,44.45");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=253.02,44.76");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=135.24,82.69");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=62.05,36.17");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=26.62,55.68");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=127.74,55.47");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=82.72,16.20");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=4.52,142.38");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=59.19,58.73");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=45.58,198.29");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=32.73,168.30");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=116.77,146.75");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=64.98,86.88");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=79.57,66.81");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=127.83,178.33");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=186.10,167.66");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=303.10,118.61");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=294.20,138.11");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=292.66,76.16");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=293.77,33.71");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=99.98,27.80");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=162.62,78.54");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=241.81,126.27");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=222.73,127.76");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=189.40,58.44");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=70.19,123.94");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=209.13,155.23");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=166.55,150.27");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=150.25,159.24");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=42.08,53.85");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=163.84,4.27");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=65.26,47.64");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=35.74,106.69");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=16.48,154.41");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=4.28,155.64");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=12.86,183.17");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=77.04,177.67");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=144.55,132.90");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=134.65,17.25");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=106.71,84.08");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=143.79,211.67");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=313.00,215.04");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=324.15,135.02");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=272.78,1.90");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=215.18,10.86");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=223.90,17.90");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=43.64,67.12");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=213.79,105.30");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=267.31,129.92");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=112.29,100.24");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=142.00,6.43");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=266.71,81.77");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=128.69,132.30");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=166.51,66.26");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=65.91,70.64");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=53.61,25.17");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=73.30,1.77");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=50.42,150.21");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=1.28,212.70");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=0.83,166.63");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=41.00,161.95");
    }

}

