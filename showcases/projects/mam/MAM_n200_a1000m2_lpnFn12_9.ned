
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn12_9
{
    parameters:
        @display("bgb=1000,1000;bgg=100,1,grey95;bgu=m");
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
        @display("p=92.97,84.57");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=148.68,27.57");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=116.32,42.60");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=159.76,52.44");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=133.19,37.79");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=115.11,0.67");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=75.95,48.89");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=82.19,21.18");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=81.13,7.60");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=138.55,28.72");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=42.67,52.17");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=31.55,72.70");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=6.92,64.78");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=3.64,99.52");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=40.80,99.74");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=16.69,115.24");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=66.82,78.53");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=46.68,126.40");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=119.04,121.56");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=137.42,120.70");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=239.58,16.83");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=169.26,75.93");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=71.68,12.67");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=103.11,10.68");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=74.09,110.38");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=111.97,75.99");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=42.92,29.88");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=47.43,87.85");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=53.11,96.11");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=9.48,49.89");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=60.16,170.58");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=72.85,30.13");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=28.55,214.09");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=60.45,137.34");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=158.21,135.62");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=135.83,94.34");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=128.14,23.43");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=171.59,133.12");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=125.00,50.01");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=106.40,23.66");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=94.50,69.63");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=35.83,20.35");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=56.33,22.91");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=205.83,66.77");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=103.06,52.31");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=22.22,4.92");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=69.35,1.72");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=18.33,68.30");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=103.81,121.31");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=45.14,113.95");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=29.05,88.46");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=181.13,48.12");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=167.66,18.05");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=176.45,1.78");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=130.12,111.62");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=200.80,52.05");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=36.25,7.50");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=155.05,14.45");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=145.92,50.86");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=56.46,60.34");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=129.00,12.48");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=84.78,94.43");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=91.59,13.13");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=28.01,106.73");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=57.21,125.54");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=31.72,45.59");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=49.14,71.53");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=149.70,60.78");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=130.80,139.84");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=234.57,76.27");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=192.63,21.03");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=221.69,121.44");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=192.84,64.27");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=151.55,88.13");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=63.46,67.69");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=170.10,64.57");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=139.95,73.82");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=177.98,12.50");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=2.55,27.65");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=56.06,160.98");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=15.98,163.94");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=13.53,152.51");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=41.53,174.73");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=11.13,196.91");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=62.61,112.72");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=85.89,173.85");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=177.71,99.72");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=147.89,101.19");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=150.53,73.18");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=158.87,125.54");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=173.03,27.15");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=89.50,38.52");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=23.86,55.93");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=2.97,5.50");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=158.98,34.02");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=60.59,49.50");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=22.78,24.53");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=23.84,150.61");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=34.14,158.39");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=74.82,122.78");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=76.23,72.30");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=171.54,113.98");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=83.97,115.93");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=205.74,37.06");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=116.60,61.24");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=204.28,107.45");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=131.09,80.05");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=79.88,82.13");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=62.32,38.51");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=0.81,44.63");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=15.76,41.76");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=210.68,16.45");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=49.57,43.74");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=76.50,141.04");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=88.43,58.56");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=37.69,145.49");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=67.04,96.66");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=8.93,108.42");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=190.72,92.52");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=32.60,117.28");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=239.17,35.29");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=120.42,32.11");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=218.07,25.12");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=171.85,52.37");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=212.77,3.78");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=110.70,108.25");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=115.64,15.53");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=94.20,25.54");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=148.39,2.18");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=54.11,11.74");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=99.54,110.74");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=8.21,83.29");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=11.88,126.74");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=84.13,126.67");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=96.61,161.13");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=78.62,61.82");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=183.54,111.59");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=143.97,16.07");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=212.22,53.38");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=247.62,26.84");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=145.75,132.14");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=131.66,1.54");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=128.67,61.65");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=102.34,40.05");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=120.65,85.67");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=221.83,13.55");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=92.63,133.29");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=88.28,143.31");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=46.14,3.81");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=20.98,135.26");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=72.62,166.44");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=72.34,189.49");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=85.90,193.37");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=130.62,153.14");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=139.11,60.31");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=162.63,92.21");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=171.40,41.68");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=136.43,47.65");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=112.97,96.30");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=89.09,0.35");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=20.92,79.16");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=12.53,19.00");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=192.70,7.18");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=32.67,131.52");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=31.83,31.59");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=15.48,92.74");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=56.03,81.41");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=116.15,149.39");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=27.39,197.71");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=118.13,137.97");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=115.80,170.61");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=221.57,42.72");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=201.58,90.50");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=257.93,71.10");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=150.01,39.53");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=161.82,6.74");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=156.32,107.82");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=159.89,67.10");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=102.94,63.47");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=193.92,108.23");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=67.91,57.78");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=5.01,160.67");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=1.08,75.58");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=4.52,118.04");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=37.58,61.77");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=48.47,189.82");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=105.45,147.82");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=71.61,151.19");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=214.71,71.45");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=175.99,84.32");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=221.06,109.29");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=150.39,118.90");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=187.03,37.69");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=125.43,97.36");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=66.49,21.34");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=57.36,0.70");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=226.19,57.90");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=59.45,149.49");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=40.51,79.74");
    }

}

