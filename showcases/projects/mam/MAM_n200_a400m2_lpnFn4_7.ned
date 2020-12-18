
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn4_7
{
    parameters:
        @display("bgb=400,400;bgg=100,1,grey95;bgu=m");
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
        @display("p=155.20,139.64");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=156.57,112.66");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=140.67,142.58");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=58.43,102.93");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=33.33,100.76");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=26.72,167.22");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=55.96,120.58");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=95.57,164.35");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=107.58,148.43");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=81.82,68.28");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=81.81,31.70");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=47.03,57.37");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=25.92,15.79");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=85.08,3.09");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=30.22,26.44");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=65.04,21.17");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=89.19,55.04");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=122.18,24.95");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=184.26,18.86");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=121.51,36.27");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=97.85,81.27");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=53.51,47.79");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=23.64,92.65");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=18.76,54.98");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=106.29,60.62");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=143.86,90.81");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=129.95,71.29");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=173.22,42.42");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=154.52,84.49");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=96.85,128.56");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=174.29,119.12");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=224.23,98.93");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=136.92,116.07");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=168.83,168.86");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=235.79,117.07");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=304.70,122.18");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=393.41,146.57");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=373.24,104.43");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=384.56,65.24");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=357.04,25.29");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=375.31,3.91");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=388.39,16.06");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=351.27,0.81");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=387.32,2.11");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=265.27,12.36");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=279.97,0.88");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=296.48,16.71");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=312.51,69.86");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=386.77,35.23");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=121.15,112.43");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=89.11,182.76");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=189.30,75.21");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=133.16,160.44");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=110.26,94.15");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=62.12,34.15");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=35.01,178.50");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=91.41,150.47");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=10.68,156.71");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=108.05,159.45");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=82.49,113.27");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=67.52,7.38");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=135.80,32.86");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=66.32,58.07");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=97.92,34.03");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=96.25,13.02");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=48.84,112.43");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=71.56,150.59");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=188.22,54.07");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=167.57,29.82");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=186.92,0.98");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=43.68,68.33");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=37.62,83.57");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=51.96,78.88");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=8.60,0.60");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=103.11,21.87");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=141.76,166.40");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=206.33,32.10");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=200.93,52.47");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=228.99,53.19");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=95.56,117.29");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=162.99,212.37");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=190.41,158.94");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=219.82,60.73");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=179.29,95.42");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=202.26,120.73");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=368.06,171.64");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=342.91,89.22");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=324.90,190.38");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=396.99,79.42");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=347.12,40.10");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=360.63,53.10");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=345.65,73.95");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=310.00,28.13");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=371.11,58.76");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=267.75,1.22");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=274.29,53.80");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=216.64,40.87");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=383.63,127.99");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=378.41,40.73");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=75.36,105.11");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=114.22,130.87");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=147.06,44.31");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=164.59,126.22");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=125.45,132.19");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=79.04,172.85");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=9.88,239.94");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=38.61,208.70");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=106.85,183.11");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=120.31,65.97");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=73.79,87.95");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=105.14,46.90");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=47.79,96.70");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=107.92,71.63");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=42.43,18.04");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=44.69,40.53");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=51.11,26.96");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=127.21,1.25");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=117.56,51.06");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=207.96,11.22");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=110.19,38.08");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=164.58,77.57");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=0.79,87.21");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=85.31,138.32");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=67.88,127.28");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=107.43,4.46");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=95.99,68.22");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=229.77,73.19");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=148.10,67.24");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=150.20,99.51");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=62.40,143.20");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=204.56,133.08");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=231.41,147.06");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=115.03,167.80");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=199.56,187.66");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=176.22,139.92");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=283.78,188.99");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=331.62,216.28");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=362.17,89.06");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=344.57,30.00");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=280.87,40.95");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=329.24,3.53");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=398.55,42.17");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=355.49,13.76");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=364.83,3.00");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=340.31,11.25");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=278.79,19.94");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=388.77,45.69");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=302.74,106.77");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=356.92,103.52");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=129.04,122.46");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=188.08,140.60");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=163.76,103.82");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=184.53,206.53");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=86.46,77.20");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=0.05,136.14");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=41.14,148.65");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=9.53,97.47");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=47.90,198.74");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=140.93,184.57");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=143.91,24.01");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=16.54,84.37");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=8.93,57.10");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=9.53,29.15");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=85.63,17.18");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=58.06,89.44");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=1.71,46.43");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=74.30,77.55");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=198.53,65.35");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=152.07,12.22");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=136.68,49.38");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=140.56,77.04");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=115.94,84.88");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=64.32,114.58");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=14.04,19.90");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=125.15,145.97");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=208.72,61.12");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=183.24,36.53");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=240.28,58.34");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=249.20,90.30");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=145.83,133.88");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=200.79,174.19");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=276.51,104.08");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=200.96,78.03");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=203.71,247.62");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=223.41,127.05");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=393.61,108.83");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=363.28,112.21");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=298.12,59.04");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=339.95,106.29");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=292.99,44.95");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=318.38,79.21");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=398.73,53.32");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=310.61,15.75");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=398.47,1.32");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=245.25,15.02");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=298.72,5.19");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=292.05,27.73");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=308.11,49.43");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=372.49,75.67");
    }

}

