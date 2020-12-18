
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn4-6
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
        @display("p=344.00,157.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=322.54,92.60");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=332.33,109.83");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=253.50,96.36");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=218.61,81.57");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=275.20,25.46");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=193.94,65.32");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=193.60,127.11");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=225.43,212.66");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=272.51,226.00");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=175.61,234.97");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=142.62,174.28");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=128.47,190.43");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=154.30,206.31");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=183.49,116.40");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=115.40,54.02");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=125.10,90.31");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=152.15,99.13");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=125.73,48.14");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=157.74,60.57");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=185.96,100.81");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=136.42,107.03");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=81.64,106.28");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=198.71,110.58");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=152.84,113.06");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=102.43,42.77");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=85.64,24.28");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=68.18,49.18");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=123.38,61.52");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=206.04,92.31");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=146.75,125.31");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=208.87,60.46");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=164.63,84.24");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=176.76,15.80");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=181.18,43.80");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=98.67,66.14");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=143.55,71.24");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=222.44,56.46");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=201.16,38.74");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=194.40,15.47");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=168.93,65.57");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=181.75,146.19");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=84.31,139.49");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=34.15,184.02");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=36.95,211.92");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=106.65,272.39");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=63.87,215.28");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=2.90,178.89");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=72.26,170.67");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=81.92,178.10");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=366.42,109.57");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=362.48,156.83");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=375.30,22.01");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=265.47,114.32");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=194.35,29.27");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=293.15,16.42");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=199.32,3.09");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=268.18,66.81");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=235.09,276.44");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=357.46,191.58");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=209.61,295.58");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=198.88,153.35");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=146.51,184.46");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=171.78,253.30");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=166.12,188.79");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=59.21,134.02");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=34.12,112.49");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=107.43,89.27");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=154.72,47.72");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=166.16,42.66");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=230.29,119.94");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=47.01,109.91");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=66.79,142.95");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=137.26,58.49");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=216.50,189.59");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=66.40,85.02");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=147.71,18.64");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=106.32,131.61");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=115.92,13.21");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=269.63,34.86");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=54.57,155.05");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=131.88,31.33");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=106.87,78.47");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=161.38,29.92");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=246.95,73.80");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=78.11,77.98");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=217.70,71.50");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=169.99,117.28");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=219.20,21.58");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=193.81,49.06");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=86.99,87.45");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=212.90,206.33");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=35.81,134.72");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=17.68,198.39");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=20.11,131.69");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=78.50,269.78");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=58.40,181.84");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=14.34,186.89");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=43.03,195.14");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=27.31,239.15");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=306.03,189.32");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=307.23,99.15");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=396.02,62.69");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=275.72,166.82");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=247.34,132.33");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=292.89,40.38");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=236.78,34.28");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=163.08,149.60");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=244.55,238.83");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=352.29,226.62");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=185.20,239.45");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=181.88,219.83");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=199.72,208.85");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=162.18,269.12");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=127.61,164.70");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=176.35,131.09");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=30.49,99.08");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=199.05,75.01");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=60.54,27.83");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=215.48,31.43");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=224.26,150.35");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=52.38,125.30");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=67.74,100.73");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=141.00,139.58");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=113.17,105.75");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=84.23,49.47");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=124.14,24.14");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=36.47,8.28");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=175.35,55.97");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=213.64,102.20");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=62.74,71.28");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=255.95,51.84");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=93.16,104.36");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=185.00,75.78");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=162.82,102.50");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=74.30,127.92");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=84.24,64.44");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=312.64,55.86");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=247.08,104.93");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=238.37,11.39");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=225.28,103.01");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=172.57,165.89");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=111.71,209.06");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=53.11,265.98");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=44.74,251.68");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=142.37,312.98");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=12.59,212.49");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=24.58,161.19");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=77.52,248.04");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=52.23,204.46");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=343.50,100.35");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=285.02,128.84");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=348.85,23.68");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=227.03,166.01");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=214.97,117.42");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=312.00,37.36");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=109.91,26.98");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=291.11,147.68");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=170.16,216.22");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=306.96,245.24");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=154.51,228.98");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=152.60,159.32");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=117.73,268.53");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=156.52,301.42");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=132.96,201.40");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=33.42,64.01");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=99.50,185.06");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=114.03,178.69");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=104.76,99.78");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=72.15,34.35");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=233.91,74.79");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=189.77,174.49");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=174.92,103.18");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=230.03,141.48");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=236.42,96.74");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=5.34,59.77");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=75.69,12.75");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=63.08,15.12");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=93.23,38.15");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=116.87,74.96");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=99.10,116.97");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=293.05,57.97");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=165.97,131.85");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=191.21,83.65");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=212.51,3.65");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=47.54,82.52");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=147.90,56.15");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=138.42,13.90");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=239.54,0.57");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=260.97,85.89");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=181.10,5.82");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=182.69,185.95");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=122.80,141.12");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=44.15,175.80");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=1.95,266.17");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=69.81,200.62");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=48.38,219.44");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=20.13,274.79");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=136.44,123.42");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=92.20,231.34");
    }

}

