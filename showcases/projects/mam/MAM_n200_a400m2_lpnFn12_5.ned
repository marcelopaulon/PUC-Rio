
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn12_5
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
        @display("p=103.28,129.02");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=76.43,137.41");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=82.50,82.36");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=115.06,151.01");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=34.94,42.94");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=55.36,105.92");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=61.28,146.35");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=47.28,131.51");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=100.77,183.57");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=82.51,187.83");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=112.02,94.29");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=131.66,85.35");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=117.23,74.36");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=79.14,236.34");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=45.57,204.35");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=135.39,222.43");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=165.04,77.97");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=108.51,109.16");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=46.69,155.60");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=52.05,59.56");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=150.32,196.61");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=22.48,13.15");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=23.09,87.65");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=48.68,143.83");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=77.91,101.07");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=141.94,111.05");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=60.01,191.63");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=79.56,38.20");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=84.88,67.00");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=122.80,60.15");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=96.67,243.09");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=108.81,230.63");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=80.22,209.89");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=170.91,66.66");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=11.33,121.36");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=153.36,88.95");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=47.85,93.08");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=141.45,183.78");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=95.53,45.75");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=101.14,149.06");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=31.63,183.83");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=20.18,164.50");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=156.42,175.37");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=169.85,174.36");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=83.91,21.71");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=60.62,95.41");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=65.04,68.85");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=22.78,313.68");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=10.85,195.54");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=79.85,273.73");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=147.78,71.46");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=133.70,172.17");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=71.04,198.18");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=112.80,64.66");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=198.92,96.66");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=30.24,72.22");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=114.13,168.80");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=136.82,127.77");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=33.18,136.43");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=75.28,169.91");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=62.95,162.23");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=85.34,168.02");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=228.86,85.85");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=180.11,105.81");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=51.47,238.00");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=110.94,185.96");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=91.03,267.98");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=126.05,137.74");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=128.43,106.74");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=158.88,145.52");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=97.60,34.54");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=174.16,214.83");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=16.70,31.80");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=23.51,63.04");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=35.12,84.50");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=11.10,99.91");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=103.17,172.26");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=7.03,240.19");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=146.18,100.43");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=188.68,98.84");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=69.69,119.85");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=63.08,173.90");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=22.09,135.25");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=129.59,212.22");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=100.50,60.40");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=116.08,126.26");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=83.64,128.30");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=59.80,126.72");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=141.00,243.04");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=47.66,27.74");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=63.08,9.27");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=28.88,151.46");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=34.45,124.92");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=117.30,206.85");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=62.41,240.97");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=127.38,192.04");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=215.77,47.02");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=214.26,77.84");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=120.67,227.59");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=8.78,289.21");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=202.41,224.34");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=189.74,116.84");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=108.04,160.22");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=173.24,139.21");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=33.43,25.90");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=161.59,112.12");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=9.34,135.21");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=11.91,73.38");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=25.26,173.92");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=40.23,216.82");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=32.68,195.32");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=120.22,253.90");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=114.01,139.82");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=121.52,90.98");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=107.61,20.35");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=19.35,292.67");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=17.81,244.53");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=92.86,300.02");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=21.84,103.60");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=142.42,39.03");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=171.40,153.93");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=154.71,35.79");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=121.38,181.96");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=90.14,5.93");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=72.06,89.34");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=26.14,209.23");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=48.54,186.56");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=187.25,176.92");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=135.03,269.27");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=139.61,53.17");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=122.09,49.39");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=128.73,74.71");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=103.10,295.84");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=85.87,221.64");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=226.75,256.81");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=94.29,160.54");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=82.22,53.64");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=142.75,143.01");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=142.63,88.63");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=53.69,213.57");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=93.18,86.35");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=49.44,74.65");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=34.43,242.30");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=50.24,169.29");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=100.29,202.09");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=107.57,275.17");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=119.01,25.42");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=157.31,98.45");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=78.37,158.62");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=21.33,262.75");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=0.46,215.53");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=150.62,233.90");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=156.62,59.44");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=36.86,99.14");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=161.09,124.81");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=73.05,22.45");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=87.70,109.57");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=13.10,57.85");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=133.39,153.25");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=58.94,83.01");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=7.31,44.32");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=93.99,134.90");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=40.00,173.73");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=141.17,23.45");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=135.01,95.50");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=197.36,133.59");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=83.27,284.74");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=34.39,283.63");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=196.11,237.19");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=101.19,70.58");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=109.39,53.52");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=128.60,120.97");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=44.98,117.55");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=192.13,87.63");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=33.70,0.45");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=61.88,29.61");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=23.27,117.81");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=34.73,226.76");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=123.06,266.36");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=137.47,202.14");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=76.57,148.00");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=79.53,116.67");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=70.97,57.85");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=6.28,173.50");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=13.98,221.47");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=104.30,212.91");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=114.28,40.94");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=199.16,154.23");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=33.14,160.74");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=52.62,45.39");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=145.09,154.33");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=1.53,10.67");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=72.32,76.17");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=146.44,168.24");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=90.18,177.72");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=129.94,256.35");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=87.29,257.74");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=178.10,126.55");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=198.59,65.81");
    }

}

