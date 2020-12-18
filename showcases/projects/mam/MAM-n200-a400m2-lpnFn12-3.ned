
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn12-3
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
        @display("p=38.00,83.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=11.02,91.33");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=0.03,25.38");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=45.40,57.83");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=56.99,26.83");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=117.30,19.60");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=80.00,35.69");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=116.65,33.87");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=159.95,92.17");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=146.10,84.99");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=147.58,64.42");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=172.09,58.27");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=260.68,96.56");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=326.12,87.69");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=347.42,75.48");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=269.03,44.79");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=316.12,24.12");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=27.33,132.93");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=67.58,88.60");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=0.70,68.53");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=7.73,15.79");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=44.85,24.05");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=123.81,6.35");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=8.60,31.32");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=66.68,68.40");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=193.77,47.45");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=94.28,69.74");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=194.40,1.57");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=228.36,37.09");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=258.57,30.54");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=289.72,145.71");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=369.00,45.65");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=253.09,18.53");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=283.89,63.79");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=78.91,135.04");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=17.25,113.44");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=81.24,3.13");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=22.49,7.95");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=141.04,73.23");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=143.02,41.16");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=141.80,106.44");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=128.36,27.59");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=166.41,150.62");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=196.19,60.76");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=200.79,70.40");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=155.04,8.73");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=276.96,152.33");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=330.32,17.86");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=396.21,31.51");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=270.07,2.49");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=258.89,54.61");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=53.75,104.39");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=22.23,79.64");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=21.75,36.06");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=9.99,135.29");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=26.10,54.14");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=97.92,97.89");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=130.74,58.25");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=64.88,44.98");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=166.36,128.88");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=128.36,81.36");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=159.97,56.91");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=247.43,58.37");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=311.22,119.98");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=336.53,41.13");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=376.93,124.30");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=270.03,27.18");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=315.99,49.33");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=30.40,92.11");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=37.84,174.51");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=42.84,70.36");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=37.84,4.94");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=49.44,33.44");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=131.15,41.59");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=98.56,34.93");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=110.25,0.03");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=156.14,114.74");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=177.46,131.18");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=217.71,87.25");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=140.47,148.28");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=345.70,117.32");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=367.59,173.59");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=367.30,83.29");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=295.65,36.07");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=351.08,31.53");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=31.27,120.83");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=18.19,184.19");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=37.52,32.96");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=31.82,74.99");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=53.80,65.02");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=108.67,48.54");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=169.39,10.22");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=116.05,55.40");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=162.01,167.95");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=64.15,123.80");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=102.03,88.28");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=180.95,32.17");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=298.40,119.72");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=303.64,71.96");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=373.07,71.84");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=274.74,73.19");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=356.90,4.21");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=12.23,122.53");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=56.14,172.67");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=85.98,52.96");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=55.13,51.61");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=83.32,100.52");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=52.82,3.61");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=82.94,24.83");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=151.68,28.29");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=164.22,140.69");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=182.82,86.13");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=213.68,57.22");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=185.44,122.73");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=305.17,153.58");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=327.02,53.66");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=304.39,45.24");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=259.78,3.78");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=374.68,93.98");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=48.71,124.72");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=33.17,164.32");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=12.68,5.57");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=101.06,136.90");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=6.17,44.63");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=116.13,108.17");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=74.87,16.90");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=144.12,16.65");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=183.94,179.60");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=144.98,120.76");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=225.34,103.27");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=182.71,65.16");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=299.53,143.60");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=353.26,87.26");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=345.67,138.63");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=279.85,50.04");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=290.89,27.27");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=3.02,104.32");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=1.86,183.10");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=69.43,6.06");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=99.51,116.57");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=42.81,42.81");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=207.17,42.94");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=94.91,25.59");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=70.78,29.33");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=149.00,172.42");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=160.27,79.38");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=162.35,44.56");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=232.51,77.61");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=292.13,50.78");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=321.96,141.35");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=318.97,62.28");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=334.40,107.64");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=302.01,12.44");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=45.11,112.76");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=109.86,98.50");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=34.86,18.19");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=77.72,78.90");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=90.53,41.37");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=159.48,21.77");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=24.90,21.13");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=72.76,58.12");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=200.39,173.74");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=170.14,100.95");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=145.54,52.26");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=217.27,25.11");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=215.32,76.81");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=336.64,170.15");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=339.74,12.24");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=363.07,63.60");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=234.08,11.13");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=4.98,57.36");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=27.07,110.02");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=64.25,99.12");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=78.45,113.33");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=87.92,80.63");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=110.46,81.77");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=120.35,125.23");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=135.12,7.80");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=228.42,113.60");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=202.32,102.27");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=120.12,90.96");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=175.66,73.66");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=242.33,113.80");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=383.90,43.29");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=386.51,165.83");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=306.39,104.76");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=246.10,29.49");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=60.84,154.56");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=18.54,65.14");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=50.47,78.81");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=11.80,74.37");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=54.99,16.25");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=34.55,62.61");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=76.90,48.37");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=193.52,23.94");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=172.71,167.39");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=189.28,111.08");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=199.15,137.03");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=94.48,14.65");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=271.24,163.17");
    }

}

