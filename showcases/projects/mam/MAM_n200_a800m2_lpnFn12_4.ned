
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn12_4
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
        @display("p=121.24,123.52");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=114.02,41.60");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=50.15,9.34");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=115.06,19.97");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=88.92,68.59");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=54.94,21.55");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=34.26,33.12");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=18.27,39.63");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=11.70,48.16");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=33.73,138.70");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=24.21,203.64");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=77.41,284.95");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=91.84,280.20");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=65.32,263.48");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=54.91,182.91");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=76.83,116.59");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=149.17,127.94");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=103.21,187.19");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=201.47,79.19");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=60.61,8.79");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=37.03,55.15");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=65.05,42.33");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=33.26,44.08");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=102.46,18.85");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=19.31,67.51");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=19.91,15.18");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=43.92,148.11");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=4.88,166.75");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=60.97,303.20");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=77.48,307.10");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=157.79,269.54");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=58.87,274.47");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=50.43,157.15");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=63.53,98.11");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=133.28,129.95");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=123.82,48.19");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=36.46,2.61");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=144.25,45.71");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=100.36,79.30");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=63.66,64.49");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=68.70,124.25");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=111.07,76.87");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=47.42,34.53");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=76.19,195.70");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=59.52,217.82");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=131.21,343.22");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=57.46,329.51");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=26.75,190.21");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=40.74,172.24");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=70.40,137.65");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=141.49,59.99");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=49.31,100.67");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=114.67,94.87");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=138.23,3.85");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=75.26,76.74");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=136.60,146.99");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=54.73,43.01");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=65.70,83.89");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=5.02,87.63");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=42.98,72.83");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=19.12,125.37");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=8.45,186.44");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=3.24,320.74");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=108.72,272.02");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=73.19,273.97");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=103.19,154.13");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=66.02,200.90");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=83.62,44.05");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=135.49,70.28");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=170.54,112.60");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=77.65,0.68");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=76.17,22.20");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=177.50,25.06");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=37.59,94.06");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=4.80,31.91");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=1.75,51.57");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=52.60,59.15");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=95.02,216.82");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=49.95,205.44");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=149.18,303.38");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=55.37,312.32");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=125.95,310.31");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=66.92,164.74");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=19.79,106.43");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=122.89,69.74");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=72.40,56.23");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=157.02,72.18");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=14.64,23.96");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=102.05,67.29");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=21.77,49.82");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=42.70,20.45");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=10.88,100.29");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=62.61,113.77");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=3.32,11.23");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=121.83,134.21");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=50.78,264.62");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=43.21,325.64");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=124.50,278.25");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=62.95,346.93");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=116.96,172.33");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=102.31,140.91");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=75.63,66.70");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=175.76,121.86");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=150.87,94.60");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=90.25,6.87");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=163.60,18.25");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=31.29,64.30");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=58.92,32.65");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=59.89,74.41");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=3.35,64.06");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=0.11,121.31");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=18.41,230.77");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=31.20,267.18");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=99.94,246.15");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=120.21,294.24");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=31.63,318.48");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=132.53,174.85");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=59.65,146.15");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=172.19,102.43");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=122.85,220.11");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=113.05,61.49");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=86.68,20.25");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=135.61,15.56");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=135.60,28.42");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=72.13,92.43");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=17.67,84.54");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=84.82,92.72");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=28.20,80.05");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=88.82,187.50");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=7.52,265.11");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=149.99,279.28");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=110.91,285.23");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=54.98,255.25");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=130.84,164.13");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=52.28,138.77");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=90.42,115.93");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=198.33,145.59");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=104.72,54.54");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=4.06,74.40");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=206.34,43.19");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=71.76,104.36");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=124.68,37.70");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=118.30,84.09");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=37.30,110.57");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=27.65,96.27");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=105.08,197.96");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=15.63,198.51");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=23.66,297.17");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=64.21,292.77");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=19.23,267.43");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=44.57,235.87");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=87.41,177.28");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=97.85,46.89");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=167.76,139.04");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=160.41,31.22");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=84.40,30.57");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=193.44,58.98");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=131.55,107.29");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=92.84,57.09");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=45.16,48.77");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=95.36,34.71");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=4.06,131.43");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=32.74,156.30");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=2.66,293.40");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=119.39,249.81");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=153.04,317.32");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=80.93,251.85");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=133.94,220.20");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=160.11,108.25");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=51.26,110.67");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=111.97,119.65");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=113.23,8.59");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=34.31,13.53");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=71.89,12.97");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=81.79,140.76");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=12.01,58.58");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=57.19,129.85");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=24.46,5.74");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=59.70,52.06");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=88.09,200.78");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=39.95,281.92");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=30.81,332.36");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=87.75,292.89");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=62.38,357.33");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=145.95,205.44");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=86.71,152.37");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=73.17,184.32");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=171.00,38.97");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=173.74,2.82");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=47.20,86.90");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=151.74,23.77");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=148.05,83.46");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=152.35,4.80");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=107.25,29.06");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=40.30,121.17");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=23.73,115.95");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=12.72,139.57");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=85.61,222.02");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=68.46,324.75");
    }

}

