
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn12_3
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=95.96,110.35");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=72.28,30.99");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=145.49,23.72");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=120.69,27.18");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=123.90,6.56");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=73.64,20.96");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=127.17,62.97");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=53.06,94.57");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=85.71,56.00");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=74.57,81.12");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=79.40,90.60");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=150.66,99.07");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=111.22,56.95");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=179.43,31.91");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=208.20,29.16");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=168.93,111.76");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=68.72,54.88");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=45.31,171.00");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=17.55,64.44");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=193.57,13.73");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=168.20,62.98");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=138.77,50.01");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=159.37,23.11");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=127.32,81.22");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=127.10,114.98");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=99.66,47.67");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=15.63,100.97");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=1.81,139.23");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=111.84,136.50");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=198.24,76.91");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=180.20,43.09");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=172.98,18.53");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=172.67,79.50");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=143.98,80.59");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=157.03,187.44");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=45.91,74.49");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=92.13,6.49");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=115.35,84.50");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=139.41,11.10");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=61.03,101.37");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=67.57,93.07");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=63.01,69.42");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=14.83,84.24");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=98.34,140.73");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=115.60,111.77");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=130.70,141.60");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=169.23,89.89");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=220.46,6.56");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=202.53,20.40");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=190.08,122.16");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=61.93,118.90");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=64.04,162.44");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=16.50,15.68");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=157.06,57.39");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=72.27,64.84");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=78.29,44.57");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=25.45,79.88");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=125.37,51.76");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=43.18,84.57");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=113.21,73.10");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=103.59,175.76");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=92.34,78.19");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=83.72,149.47");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=77.03,100.89");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=271.80,39.48");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=234.48,26.46");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=124.77,178.20");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=96.29,164.51");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=156.27,124.68");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=58.83,32.56");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=158.37,5.35");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=109.67,18.39");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=111.38,3.24");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=59.70,85.02");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=45.74,49.60");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=37.37,124.10");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=49.39,28.95");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=0.61,84.76");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=159.73,145.25");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=222.12,132.26");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=134.18,72.72");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=196.83,37.17");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=214.85,58.59");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=77.20,124.12");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=107.93,156.01");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=89.49,94.72");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=128.92,17.98");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=89.06,24.81");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=213.37,41.61");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=107.38,28.67");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=145.99,60.54");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=115.77,38.54");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=72.84,180.44");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=57.20,21.03");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=68.14,147.48");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=95.71,125.35");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=193.76,106.25");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=102.85,62.93");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=244.72,81.23");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=197.25,50.73");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=230.76,59.17");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=56.57,174.83");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=50.43,122.67");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=31.44,12.33");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=164.54,32.57");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=159.73,76.45");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=31.80,22.86");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=56.26,7.52");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=152.62,40.55");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=7.56,168.07");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=136.49,32.72");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=42.27,160.74");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=149.62,160.92");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=168.09,161.67");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=140.63,109.80");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=235.26,89.72");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=278.05,48.46");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=221.82,172.05");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=6.56,107.84");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=55.05,157.54");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=67.07,11.64");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=56.63,44.57");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=116.74,126.04");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=198.68,61.44");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=7.19,34.79");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=75.80,111.66");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=40.73,63.41");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=85.05,70.17");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=119.28,101.99");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=51.93,186.00");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=120.96,168.82");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=89.24,46.52");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=259.43,65.14");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=263.10,31.24");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=260.24,86.95");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=46.98,107.41");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=57.64,60.51");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=28.75,54.94");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=125.11,92.49");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=79.74,3.56");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=185.85,59.70");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=3.06,7.78");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=177.46,8.02");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=68.42,192.05");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=35.64,96.20");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=13.97,134.82");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=35.01,141.61");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=84.22,164.65");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=66.45,137.27");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=210.48,100.14");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=288.91,74.66");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=179.48,113.61");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=129.11,41.97");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=132.70,184.30");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=18.95,30.24");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=218.07,25.08");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=148.51,1.55");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=167.46,48.90");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=38.85,40.29");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=175.50,99.01");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=35.05,72.89");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=94.62,38.03");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=43.96,0.78");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=138.86,169.51");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=151.97,69.12");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=14.13,43.20");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=229.70,117.97");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=181.88,70.03");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=170.71,147.64");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=85.30,176.63");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=27.34,120.86");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=67.09,0.28");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=242.12,12.63");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=151.45,15.29");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=136.47,1.29");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=15.59,53.35");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=105.72,81.41");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=97.98,14.80");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=88.12,134.24");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=48.00,149.88");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=131.71,159.03");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=145.41,129.05");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=109.18,92.68");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=185.20,1.55");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=297.95,50.17");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=156.61,177.20");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=134.23,101.50");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=116.75,192.82");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=84.03,12.83");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=212.58,76.07");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=160.44,104.36");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=46.90,17.93");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=34.08,112.50");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=195.15,131.79");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=2.58,57.77");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=6.47,23.85");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=24.88,42.44");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=126.77,131.64");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=208.95,118.41");
    }

}

