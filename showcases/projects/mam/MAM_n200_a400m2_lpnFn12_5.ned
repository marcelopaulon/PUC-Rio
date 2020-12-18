
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn12_5
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
        @display("p=100.00,300.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=94.71,267.59");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=46.35,190.25");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=93.01,199.84");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=122.12,238.69");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=119.40,150.19");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=189.56,202.20");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=126.21,142.26");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=122.22,196.19");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=113.50,213.50");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=100.11,237.59");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=73.68,180.05");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=87.04,172.16");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=27.89,209.20");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=36.32,134.27");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=38.40,105.65");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=75.78,154.71");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=99.06,249.68");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=14.25,319.99");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=79.34,144.92");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=95.99,184.35");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=104.56,330.99");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=26.23,131.08");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=174.67,180.74");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=115.06,184.48");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=123.40,265.62");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=168.80,225.52");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=110.23,255.55");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=11.86,170.99");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=94.16,82.38");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=48.33,163.74");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=59.38,153.06");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=32.75,94.51");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=67.24,215.08");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=127.28,282.44");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=49.09,350.99");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=33.28,188.41");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=144.94,161.61");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=133.58,255.14");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=203.44,164.69");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=250.00,203.16");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=118.00,121.72");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=127.28,115.54");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=181.77,195.16");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=133.56,242.10");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=156.95,167.41");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=83.26,99.10");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=84.13,242.24");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=29.88,116.96");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=70.82,95.19");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=59.25,186.23");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=103.78,288.90");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=149.27,245.87");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=27.39,161.26");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=127.69,205.70");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=64.90,288.86");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=157.47,134.77");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=191.69,184.40");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=182.54,155.82");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=141.37,143.92");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=93.83,210.14");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=141.62,172.22");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=24.19,222.34");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=63.62,143.66");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=51.20,142.16");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=40.99,82.03");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=30.48,24.87");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=4.94,104.94");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=188.63,289.85");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=82.94,209.26");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=38.01,203.59");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=162.43,189.49");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=59.31,224.34");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=187.74,105.14");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=155.76,205.44");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=73.51,79.82");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=37.27,247.55");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=87.92,155.19");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=93.08,288.52");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=34.82,176.53");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=11.82,221.58");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=41.50,146.52");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=52.67,36.90");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=77.20,66.51");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=60.63,126.23");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=107.40,277.75");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=51.06,323.17");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=16.24,250.45");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=113.66,159.22");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=136.62,227.06");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=153.01,97.16");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=201.29,229.91");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=168.66,72.83");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=147.82,264.09");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=115.18,171.84");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=182.77,254.84");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=71.22,195.03");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=67.38,161.49");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=7.55,234.22");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=21.79,183.09");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=100.71,104.36");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=92.85,62.61");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=29.20,317.20");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=98.49,174.52");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=62.31,272.06");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=38.45,281.19");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=130.39,302.28");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=75.33,170.10");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=211.77,106.51");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=93.93,142.59");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=180.31,116.63");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=59.22,261.95");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=38.20,229.02");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=50.54,239.81");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=125.69,164.70");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=78.45,130.91");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=9.54,119.02");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=99.36,47.17");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=84.32,77.14");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=157.60,226.63");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=13.45,264.33");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=43.76,257.39");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=121.58,290.95");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=110.44,242.19");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=179.73,87.68");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=172.81,210.76");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=177.46,168.16");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=98.38,127.38");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=109.75,202.14");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=86.27,188.31");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=29.61,145.26");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=60.93,111.32");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=74.76,263.01");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=17.73,148.55");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=16.62,93.02");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=97.12,115.03");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=74.07,293.83");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=116.37,336.73");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=23.09,278.57");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=148.93,187.98");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=156.68,313.44");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=83.02,221.11");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=217.58,216.52");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=61.71,171.60");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=104.56,191.46");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=51.02,199.41");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=161.17,261.85");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=43.32,219.25");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=14.54,139.06");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=5.90,247.89");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=15.97,41.50");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=57.12,94.72");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=41.14,62.18");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=122.25,321.71");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=87.09,274.72");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=47.53,286.19");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=98.47,226.05");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=57.19,212.48");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=195.82,86.09");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=193.36,236.02");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=109.05,61.34");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=148.83,275.96");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=111.27,224.95");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=68.10,254.28");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=1.13,181.97");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=159.51,115.11");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=72.52,272.84");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=124.57,176.10");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=54.31,61.96");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=25.84,73.77");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=83.92,362.24");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=88.32,302.76");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=136.58,182.97");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=75.68,114.03");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=162.77,249.07");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=136.28,78.81");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=236.98,195.14");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=174.90,99.14");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=122.80,217.36");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=21.55,198.94");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=137.43,313.25");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=141.86,130.80");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=137.25,153.61");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=16.60,306.47");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=49.86,112.17");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=127.30,67.56");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=168.10,124.11");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=19.89,338.98");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=114.07,310.89");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=85.73,255.31");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=141.93,204.21");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=210.88,267.13");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=102.86,161.04");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=229.05,171.55");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=149.67,152.18");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=189.07,143.51");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=172.50,245.49");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=139.05,214.35");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=118.17,104.51");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=149.23,220.04");
    }

}

