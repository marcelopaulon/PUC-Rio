
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn4_5
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
        @display("p=76.56,17.63");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=117.74,63.57");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=90.35,60.87");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=59.90,26.77");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=43.22,10.57");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=23.39,28.05");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=23.77,50.87");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=38.91,28.81");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=34.03,116.98");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=62.58,102.81");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=28.04,160.72");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=20.05,126.70");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=48.97,163.54");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=15.79,148.22");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=7.21,158.14");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=12.22,103.83");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=5.92,57.24");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=65.69,113.62");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=88.07,50.42");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=71.63,3.65");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=105.19,21.54");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=131.84,61.91");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=97.83,6.92");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=78.37,58.86");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=175.10,79.89");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=196.69,112.30");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=206.83,102.93");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=161.53,132.59");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=205.85,90.57");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=208.01,78.55");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=245.17,88.88");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=293.02,78.30");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=281.40,82.74");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=224.55,96.72");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=217.25,48.69");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=259.17,17.35");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=264.31,5.50");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=325.70,71.42");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=336.77,69.07");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=362.44,85.58");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=372.36,34.58");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=332.53,18.57");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=302.06,6.18");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=298.76,19.17");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=313.87,26.01");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=328.62,54.31");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=351.26,16.52");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=346.37,0.81");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=326.85,3.51");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=141.60,114.59");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=77.24,117.35");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=109.17,37.41");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=187.63,60.95");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=66.98,14.69");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=3.72,0.61");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=18.19,113.19");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=88.14,85.28");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=113.81,90.21");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=85.29,138.48");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=47.61,147.09");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=90.46,121.86");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=34.25,82.59");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=105.06,218.36");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=43.27,185.44");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=7.92,129.30");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=62.40,36.81");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=35.97,106.05");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=132.08,140.49");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=84.26,70.31");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=53.32,76.71");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=161.96,17.89");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=138.58,49.82");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=151.18,36.33");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=98.37,45.68");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=180.81,107.89");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=253.56,103.49");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=170.75,117.16");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=236.28,135.93");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=220.86,107.27");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=220.78,69.34");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=167.27,50.37");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=309.14,115.90");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=269.45,54.96");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=250.41,127.06");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=168.15,5.45");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=260.72,76.12");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=288.04,35.64");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=344.62,34.01");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=292.05,106.77");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=324.64,141.41");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=279.60,55.57");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=311.81,73.59");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=337.10,80.21");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=321.62,39.39");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=263.93,36.62");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=340.46,56.76");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=354.82,76.62");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=308.84,86.83");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=387.66,46.46");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=120.33,115.78");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=104.86,74.20");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=49.08,129.18");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=115.13,137.01");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=64.19,65.24");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=55.45,13.05");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=29.79,40.85");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=72.98,81.67");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=14.28,10.97");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=57.86,148.59");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=75.01,102.68");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=16.28,177.33");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=44.84,59.04");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=30.13,172.70");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=5.44,143.12");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=38.76,137.67");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=78.00,32.70");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=67.40,52.01");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=61.17,127.17");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=151.37,12.86");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=30.11,70.19");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=195.22,45.39");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=52.19,48.60");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=137.74,16.62");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=108.05,117.35");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=142.48,79.09");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=277.96,157.62");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=220.30,122.86");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=120.16,210.25");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=164.51,76.96");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=122.44,105.17");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=232.09,61.54");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=316.31,97.58");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=257.86,55.63");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=181.37,149.64");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=199.12,58.29");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=302.24,54.02");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=241.66,4.20");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=323.17,89.94");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=315.22,134.35");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=377.81,127.45");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=363.60,51.50");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=403.14,29.42");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=287.29,5.96");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=203.78,29.33");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=369.36,77.52");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=386.17,73.57");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=362.67,66.02");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=359.99,2.32");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=316.42,7.41");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=107.92,195.92");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=127.61,43.45");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=73.33,149.31");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=126.86,88.59");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=5.80,40.87");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=32.05,16.34");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=27.51,1.36");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=45.59,117.39");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=105.14,55.63");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=32.23,96.74");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=44.65,82.61");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=90.44,182.28");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=67.89,167.10");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=38.18,221.26");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=83.29,171.53");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=7.33,205.22");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=2.66,109.31");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=10.30,69.63");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=59.44,183.66");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=128.79,121.24");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=87.10,10.18");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=125.04,5.97");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=148.00,70.41");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=180.99,25.47");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=50.31,94.61");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=208.86,143.83");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=216.88,22.95");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=274.44,115.15");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=151.24,231.48");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=212.04,181.86");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=144.67,149.48");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=165.02,101.29");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=344.28,99.78");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=270.88,85.50");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=231.10,146.60");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=237.25,33.94");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=254.48,28.23");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=247.32,58.28");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=397.94,10.41");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=381.68,108.37");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=385.24,57.50");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=301.97,67.51");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=237.08,20.29");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=353.41,39.70");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=382.95,18.32");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=280.46,43.20");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=299.96,38.66");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=388.14,1.72");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=274.49,19.86");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=334.69,36.44");
    }

}

