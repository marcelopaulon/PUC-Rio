
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn12_1
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=65.00,182.46");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=63.69,163.10");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=74.60,149.28");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=107.36,129.04");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=34.17,161.34");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=47.67,184.51");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=128.96,168.12");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=75.11,124.67");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=59.72,40.31");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=113.63,29.55");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=68.69,79.95");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=36.87,82.98");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=58.95,121.89");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=4.45,71.43");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=49.95,138.76");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=68.68,195.81");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=81.79,109.75");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=122.99,242.74");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=50.90,260.83");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=136.35,223.95");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=145.47,134.73");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=38.55,230.34");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=66.82,259.05");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=109.49,242.07");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=41.65,105.06");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=75.16,65.08");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=130.11,5.47");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=25.30,83.33");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=15.44,0.22");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=13.65,124.96");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=36.55,95.98");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=21.11,114.55");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=146.88,190.91");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=133.18,109.07");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=79.53,242.99");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=54.21,206.96");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=118.67,74.07");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=101.83,219.43");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=33.06,192.30");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=15.64,204.89");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=143.90,152.09");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=98.57,143.16");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=69.31,8.90");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=127.74,38.83");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=65.66,139.66");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=22.81,46.95");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=72.94,100.09");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=38.38,39.43");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=15.00,138.09");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=87.66,208.58");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=63.26,88.97");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=30.17,247.25");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=33.44,174.57");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=16.50,157.64");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=172.50,173.03");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=10.15,180.52");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=43.99,252.27");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=117.77,183.61");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=79.52,197.96");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=78.13,20.64");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=157.15,31.12");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=4.33,104.96");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=118.83,90.70");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=132.67,79.55");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=9.54,147.64");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=111.10,202.10");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=71.54,270.96");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=92.58,72.90");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=85.67,234.83");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=41.10,123.30");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=138.77,98.11");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=176.53,110.51");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=94.25,155.62");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=114.17,141.34");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=163.09,86.20");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=94.81,109.53");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=61.02,64.41");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=100.51,55.78");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=17.26,21.06");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=85.07,147.56");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=91.82,127.50");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=18.84,35.10");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=71.30,173.32");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=73.48,226.55");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=81.08,77.50");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=131.45,182.33");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=25.81,226.67");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=85.75,136.62");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=168.77,98.68");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=22.35,185.76");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=53.52,283.89");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=224.19,144.42");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=117.18,48.77");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=104.07,18.97");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=92.67,0.76");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=89.89,87.00");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=38.06,72.05");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=96.49,170.93");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=70.33,52.01");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=54.12,103.82");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=53.56,164.62");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=39.45,27.87");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=143.49,235.29");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=27.81,147.26");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=155.45,154.46");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=118.54,107.67");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=54.37,77.99");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=93.76,252.92");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=207.79,139.62");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=33.86,138.99");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=40.58,60.24");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=123.54,23.40");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=2.11,124.67");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=31.89,53.54");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=142.95,121.53");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=27.42,105.84");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=116.78,156.16");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=107.77,271.62");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=167.76,153.59");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=125.57,230.08");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=109.61,226.64");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=149.64,94.18");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=66.02,217.87");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=2.84,205.29");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=99.55,121.11");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=199.89,105.69");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=57.30,175.67");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=9.81,83.45");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=201.53,18.79");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=110.80,97.76");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=26.53,95.71");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=51.61,91.08");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=6.20,48.32");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=51.30,152.24");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=127.51,197.10");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=125.47,145.74");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=118.76,213.74");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=97.89,190.88");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=33.24,209.10");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=135.00,65.25");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=17.97,71.03");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=0.50,216.68");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=184.00,226.43");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=162.10,117.34");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=44.84,5.84");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=135.87,30.85");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=83.15,99.72");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=69.32,110.26");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=124.54,133.56");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=3.28,6.93");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=82.55,217.45");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=51.92,195.40");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=159.45,129.87");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=77.47,159.78");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=106.39,73.47");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=33.62,115.50");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=161.42,68.68");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=86.70,176.43");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=40.21,280.05");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=201.12,122.75");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=104.87,46.06");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=81.29,38.53");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=112.49,11.30");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=80.87,49.96");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=17.14,103.32");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=142.48,175.21");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=5.77,34.24");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=47.90,115.62");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=131.03,125.00");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=163.82,166.47");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=152.24,201.48");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=64.25,150.21");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=134.50,206.11");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=117.33,171.18");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=23.90,132.75");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=25.93,257.56");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=210.68,174.54");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=146.44,83.26");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=84.86,62.09");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=143.36,15.53");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=138.56,54.49");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=58.50,52.83");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=127.26,56.46");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=4.83,94.52");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=50.18,235.19");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=165.28,207.39");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=191.09,93.66");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=8.44,248.99");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=24.15,213.46");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=96.56,201.96");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=92.15,45.48");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=64.57,206.36");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=41.36,146.11");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=176.86,184.14");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=158.93,102.41");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=95.38,25.14");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=166.00,58.93");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=76.37,86.99");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=20.55,60.21");
    }

}

