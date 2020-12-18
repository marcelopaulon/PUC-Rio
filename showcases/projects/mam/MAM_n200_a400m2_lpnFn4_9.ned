
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn4_9
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
        @display("p=111.47,103.33");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=56.94,179.47");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=74.85,185.58");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=60.88,152.83");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=8.24,131.19");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=99.72,133.47");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=82.80,97.45");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=84.41,161.74");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=127.16,150.16");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=54.26,126.83");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=87.01,234.42");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=133.68,233.11");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=173.78,258.68");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=147.14,163.13");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=129.31,119.89");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=50.98,168.94");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=13.14,168.38");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=73.67,155.18");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=138.99,182.02");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=124.32,169.72");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=185.93,153.79");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=195.73,191.07");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=70.52,96.80");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=76.36,125.68");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=48.75,103.31");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=18.33,129.67");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=110.02,136.94");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=120.81,59.50");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=183.27,46.25");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=142.35,52.51");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=53.04,142.54");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=34.35,110.32");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=54.01,89.56");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=39.13,49.39");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=82.53,23.75");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=10.26,73.17");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=125.90,24.54");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=61.49,15.39");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=49.35,25.18");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=78.46,75.48");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=10.07,35.36");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=27.26,67.30");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=42.36,135.56");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=71.17,51.56");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=82.12,139.99");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=85.74,223.09");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=91.09,170.17");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=11.94,189.53");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=68.17,177.08");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=25.48,94.89");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=127.38,67.53");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=12.15,205.48");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=82.35,176.50");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=22.93,148.01");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=4.55,146.46");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=81.28,196.33");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=140.76,89.20");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=145.21,234.92");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=134.95,136.83");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=32.99,152.12");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=20.13,236.90");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=102.33,202.35");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=191.52,274.86");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=169.40,136.03");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=133.27,100.93");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=143.09,194.06");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=44.22,211.92");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=60.27,79.21");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=160.17,175.05");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=32.45,191.12");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=228.57,192.25");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=236.67,130.26");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=96.22,36.70");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=64.08,139.80");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=41.42,95.67");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=90.26,151.58");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=98.81,60.60");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=82.30,46.92");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=202.59,53.76");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=47.07,76.28");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=47.77,151.78");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=115.96,117.54");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=39.69,164.33");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=92.77,113.17");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=137.71,42.41");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=75.62,87.13");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=150.58,37.64");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=94.70,10.70");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=32.63,27.05");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=109.98,83.54");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=3.16,48.89");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=62.80,65.26");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=0.30,217.20");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=28.44,50.06");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=29.27,125.57");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=101.08,216.40");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=106.42,167.92");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=60.84,273.86");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=50.69,190.81");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=159.35,55.91");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=206.41,72.93");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=66.01,116.49");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=85.15,255.59");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=20.68,104.49");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=0.23,170.87");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=164.14,69.29");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=144.20,107.47");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=149.94,142.14");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=116.91,91.75");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=0.64,193.52");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=38.39,253.85");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=125.26,284.45");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=243.56,285.62");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=214.27,216.04");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=90.67,77.80");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=24.85,213.48");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=23.83,224.76");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=88.19,185.52");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=174.61,149.14");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=146.25,203.60");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=261.24,186.25");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=178.43,188.88");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=0.78,119.91");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=102.36,48.11");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=59.48,44.51");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=38.88,84.99");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=164.52,219.50");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=100.48,146.73");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=228.10,109.02");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=195.58,113.11");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=43.46,61.05");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=61.84,104.99");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=8.47,97.04");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=59.78,25.34");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=122.41,108.30");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=48.22,0.45");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=143.80,5.45");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=51.63,11.08");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=73.83,2.94");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=82.81,62.05");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=12.19,54.78");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=27.62,79.54");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=80.78,213.63");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=108.81,27.84");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=159.62,109.84");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=108.41,274.45");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=48.45,256.64");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=32.76,279.03");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=32.71,141.76");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=124.90,79.90");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=149.83,96.21");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=44.75,225.56");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=112.70,177.75");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=23.34,201.22");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=1.89,156.15");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=110.04,69.65");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=3.56,65.11");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=98.78,186.31");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=206.76,96.73");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=147.06,119.21");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=176.81,270.66");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=117.29,146.64");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=221.78,283.93");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=231.30,170.05");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=200.38,153.44");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=30.53,172.84");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=63.23,212.50");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=28.24,163.06");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=158.47,131.27");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=92.19,209.38");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=275.94,177.99");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=190.25,94.84");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=166.94,98.13");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=145.81,71.33");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=21.24,17.37");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=5.03,86.05");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=122.67,197.83");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=188.80,24.71");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=196.24,35.45");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=173.10,114.56");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=16.57,115.07");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=41.24,118.13");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=109.95,157.15");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=14.90,88.23");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=157.98,14.03");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=11.98,4.04");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=178.84,71.11");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=72.26,13.49");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=39.09,39.01");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=143.54,21.27");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=1.38,22.15");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=3.31,109.52");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=76.73,112.40");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=114.40,48.61");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=58.85,199.31");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=66.62,244.10");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=132.18,219.27");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=79.30,241.92");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=94.37,245.18");
    }

}

