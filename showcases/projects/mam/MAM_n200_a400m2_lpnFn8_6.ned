
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn8_6
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
        @display("p=116.47,11.78");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=76.34,76.47");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=62.93,75.79");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=138.00,45.41");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=157.59,14.97");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=161.13,3.91");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=180.12,8.59");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=156.38,52.41");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=166.21,61.36");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=168.99,78.46");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=115.01,42.47");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=134.63,19.90");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=83.65,105.49");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=99.95,135.31");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=143.65,157.45");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=81.78,143.11");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=135.04,87.89");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=147.40,116.12");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=128.28,79.37");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=147.23,29.20");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=174.66,37.60");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=208.04,16.90");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=247.84,10.58");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=186.91,53.96");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=106.78,91.21");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=130.61,62.87");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=72.05,24.49");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=66.81,65.27");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=134.00,118.13");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=219.65,17.36");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=84.10,18.84");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=207.32,33.42");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=243.33,40.74");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=198.07,127.91");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=176.84,145.41");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=79.04,90.35");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=99.87,43.92");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=50.35,141.36");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=62.35,105.11");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=122.68,115.78");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=153.20,107.54");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=159.40,29.07");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=181.35,119.64");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=69.67,5.05");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=196.17,78.03");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=151.78,79.40");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=290.38,6.05");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=301.98,25.04");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=197.31,59.85");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=69.39,158.91");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=213.13,4.36");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=150.42,42.85");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=53.35,60.06");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=134.86,98.41");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=193.00,10.80");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=177.46,62.38");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=255.01,32.85");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=185.21,87.62");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=217.61,52.56");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=147.06,58.18");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=136.31,7.75");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=156.29,97.78");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=26.45,94.52");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=152.69,167.43");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=167.06,152.47");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=37.41,163.51");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=151.19,132.98");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=151.25,179.86");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=100.41,69.88");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=237.27,51.69");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=78.68,48.76");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=211.11,68.25");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=275.05,27.07");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=173.33,52.90");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=41.12,81.79");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=86.72,7.69");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=91.04,164.38");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=18.14,8.58");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=108.78,112.70");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=100.42,22.57");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=101.83,80.30");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=115.06,70.21");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=155.74,143.20");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=259.30,46.50");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=224.74,159.91");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=121.21,95.63");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=79.34,0.19");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=35.47,136.30");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=131.46,186.74");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=166.65,188.11");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=93.35,142.95");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=155.06,122.87");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=209.42,43.43");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=80.08,123.22");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=230.91,2.42");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=180.60,72.90");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=239.28,25.50");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=284.87,75.04");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=224.66,114.86");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=126.37,138.57");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=61.73,16.02");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=35.39,38.14");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=62.39,119.81");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=121.83,26.64");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=126.11,6.85");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=170.75,22.40");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=184.67,18.43");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=206.78,90.82");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=180.80,158.02");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=233.12,92.24");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=86.78,61.40");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=195.83,23.55");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=36.72,99.75");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=88.31,229.54");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=130.01,151.53");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=78.13,168.34");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=193.78,36.13");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=197.33,111.78");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=119.21,84.96");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=166.88,110.05");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=181.31,45.46");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=265.99,98.32");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=196.48,1.11");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=247.17,123.42");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=177.96,131.30");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=131.93,36.36");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=8.47,15.30");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=34.52,4.43");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=148.98,8.81");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=236.81,74.15");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=76.45,37.26");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=102.32,57.27");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=156.72,65.39");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=93.60,32.02");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=254.46,114.20");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=129.88,107.44");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=123.93,48.08");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=45.05,176.68");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=19.46,172.41");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=171.80,236.31");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=17.00,197.70");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=113.78,184.73");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=167.50,96.87");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=52.15,71.31");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=159.73,88.06");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=115.48,0.55");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=271.64,82.56");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=228.84,30.21");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=222.17,130.91");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=86.57,82.37");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=115.03,58.75");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=19.41,78.93");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=51.64,159.29");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=172.84,1.31");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=145.79,92.58");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=231.75,40.31");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=259.65,21.84");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=215.84,101.81");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=207.76,113.40");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=241.17,108.72");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=98.51,8.10");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=58.39,42.62");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=43.94,26.00");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=14.32,146.81");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=207.54,151.87");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=145.55,196.05");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=140.49,129.53");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=215.56,164.24");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=36.72,61.60");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=182.19,29.67");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=174.15,87.16");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=271.41,47.58");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=277.67,3.94");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=161.51,38.94");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=49.55,108.64");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=104.26,34.30");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=35.80,126.26");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=102.66,156.49");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=175.60,103.56");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=222.94,85.16");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=144.50,68.02");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=226.46,70.99");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=221.07,39.83");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=255.60,74.83");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=174.17,177.21");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=167.47,12.78");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=65.92,54.64");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=69.81,138.77");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=97.60,210.36");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=141.23,179.01");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=83.78,196.99");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=166.89,168.06");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=175.25,194.85");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=137.20,166.77");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=111.69,24.81");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=199.17,48.19");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=283.88,41.08");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=272.74,62.64");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=254.68,98.82");
    }

}

