
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn12_8
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
        @display("p=100.98,124.01");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=104.73,134.34");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=146.88,168.56");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=71.45,108.02");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=95.12,114.01");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=114.34,140.49");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=212.94,125.58");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=224.78,96.08");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=179.63,138.49");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=97.07,171.82");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=27.58,203.91");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=94.08,270.64");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=113.42,216.98");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=56.42,250.12");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=51.71,198.97");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=114.24,239.79");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=178.10,103.59");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=66.56,95.96");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=53.67,219.55");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=136.11,102.35");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=93.94,156.03");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=123.60,124.41");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=113.78,127.07");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=156.47,135.29");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=222.24,158.20");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=144.75,122.73");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=59.48,151.84");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=16.14,218.30");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=116.23,228.23");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=101.31,210.31");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=33.70,236.56");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=71.02,209.76");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=119.84,262.36");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=184.55,94.98");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=55.18,75.09");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=91.56,204.87");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=126.76,81.44");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=143.33,43.12");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=112.37,187.14");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=108.39,154.91");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=231.36,81.82");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=202.50,130.72");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=163.68,172.04");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=87.91,167.33");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=62.18,228.46");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=69.14,282.73");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=151.13,194.45");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=32.37,311.11");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=22.72,167.10");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=157.98,272.73");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=174.62,153.43");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=71.13,71.84");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=191.70,177.19");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=167.54,145.15");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=7.35,130.73");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=79.97,28.88");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=101.32,184.81");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=263.25,138.84");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=232.12,70.09");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=189.83,162.72");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=11.61,183.89");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=12.24,146.93");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=124.58,301.76");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=131.88,231.13");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=78.93,260.08");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=11.15,204.99");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=96.60,255.52");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=88.87,88.04");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=98.33,145.33");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=72.83,189.11");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=146.60,248.15");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=71.16,45.77");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=102.78,87.80");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=66.26,159.71");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=254.28,172.91");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=137.67,74.20");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=211.99,210.01");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=31.77,96.90");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=6.39,289.59");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=185.36,242.82");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=124.52,249.67");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=43.28,276.74");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=82.76,187.18");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=199.97,220.17");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=28.37,69.88");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=125.31,111.92");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=167.01,207.63");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=165.14,96.03");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=58.97,140.17");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=32.74,115.80");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=148.72,93.52");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=200.12,148.02");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=280.63,84.33");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=162.30,160.58");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=32.39,174.42");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=55.33,292.27");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=98.34,318.47");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=127.09,162.12");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=46.35,258.22");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=4.13,245.56");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=131.59,264.89");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=86.19,53.40");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=71.98,145.89");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=59.40,121.93");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=140.34,153.16");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=91.71,20.65");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=79.45,125.48");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=171.09,67.23");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=211.53,105.35");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=222.99,132.52");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=234.18,55.95");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=74.24,135.00");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=38.31,214.60");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=51.39,332.96");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=97.03,221.86");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=95.14,307.51");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=8.53,167.56");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=106.66,280.59");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=52.36,32.42");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=31.37,54.94");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=149.54,211.83");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=226.33,200.30");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=64.09,59.85");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=47.48,112.29");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=161.83,198.10");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=261.97,122.26");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=309.71,77.57");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=214.86,172.30");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=115.06,78.40");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=40.06,196.13");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=103.32,292.72");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=168.94,265.48");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=14.36,276.79");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=55.73,180.38");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=88.40,296.11");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=115.22,43.19");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=48.81,57.17");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=87.57,144.11");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=129.89,207.15");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=85.97,104.51");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=117.98,102.45");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=122.70,199.48");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=139.23,113.57");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=245.23,81.26");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=143.81,182.20");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=0.72,197.07");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=19.70,123.61");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=83.33,226.82");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=122.51,313.39");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=98.46,239.32");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=53.93,167.18");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=144.34,330.86");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=100.12,61.18");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=77.20,169.21");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=128.70,147.24");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=132.92,188.44");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=23.30,79.92");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=24.38,156.33");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=193.00,115.78");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=137.60,88.01");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=269.74,100.75");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=164.20,119.60");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=86.28,247.27");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=25.68,224.73");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=75.65,308.22");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=179.32,285.91");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=48.19,241.35");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=10.79,259.34");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=175.40,194.11");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=46.63,87.81");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=87.84,217.50");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=124.75,92.19");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=233.46,171.26");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=8.01,58.55");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=45.60,43.39");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=149.10,158.58");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=179.62,212.05");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=273.27,46.95");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=239.56,105.07");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=82.63,158.26");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=0.64,138.66");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=72.83,293.95");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=108.91,262.02");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=75.66,242.97");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=41.13,134.47");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=160.47,290.44");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=123.82,68.63");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=101.12,41.18");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=15.03,99.85");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=243.26,181.44");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=3.84,71.28");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=170.04,81.90");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=117.53,175.14");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=200.47,99.45");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=157.25,64.51");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=139.42,213.24");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=48.88,149.90");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=6.67,232.20");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=139.71,274.12");
    }

}

