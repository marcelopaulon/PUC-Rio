
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn8_5
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
        @display("p=67.96,121.05");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=109.11,47.28");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=88.45,121.58");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=22.75,88.44");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=36.11,80.29");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=54.17,122.85");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=106.03,3.04");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=157.81,2.60");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=80.26,31.25");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=37.38,39.76");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=48.05,65.56");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=11.21,31.98");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=12.51,44.21");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=42.49,122.76");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=65.31,143.42");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=105.89,146.99");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=101.16,168.95");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=75.45,227.37");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=78.60,131.58");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=136.27,75.42");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=83.55,63.38");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=23.96,68.02");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=39.07,142.37");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=62.96,96.89");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=113.14,84.42");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=103.67,90.64");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=141.63,125.23");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=38.84,192.79");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=5.66,84.46");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=12.40,123.76");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=112.14,167.33");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=139.88,34.34");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=162.29,39.60");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=59.21,18.56");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=92.17,32.35");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=74.24,78.85");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=43.92,95.44");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=0.62,2.76");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=63.39,54.98");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=49.06,176.57");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=101.84,227.45");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=57.90,257.20");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=74.00,238.48");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=76.96,148.73");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=71.18,104.09");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=120.86,128.10");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=31.61,104.61");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=32.90,170.84");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=1.58,168.88");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=73.93,181.71");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=79.87,95.63");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=140.13,90.81");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=111.72,181.58");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=87.81,155.48");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=103.30,122.47");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=20.68,141.81");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=161.11,54.19");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=213.30,30.79");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=58.36,6.96");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=21.63,33.78");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=136.65,58.93");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=11.92,19.69");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=41.84,11.74");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=112.92,136.58");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=73.46,168.82");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=98.44,200.20");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=171.45,125.68");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=4.53,223.74");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=43.13,211.48");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=198.68,86.23");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=87.57,52.35");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=28.78,45.49");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=18.33,166.01");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=80.97,109.89");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=103.58,34.36");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=53.34,85.95");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=155.99,102.07");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=46.87,132.75");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=46.40,45.95");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=46.71,105.56");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=101.13,70.14");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=91.58,86.67");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=134.57,23.53");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=125.42,11.80");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=75.96,53.94");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=50.63,150.38");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=64.12,28.91");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=2.40,46.79");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=122.35,156.55");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=4.54,199.12");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=161.80,121.95");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=49.30,250.19");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=44.66,270.05");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=60.24,186.71");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=161.94,110.22");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=67.06,160.48");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=70.23,89.62");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=83.60,174.63");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=137.46,102.98");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=172.97,67.91");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=27.68,209.15");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=151.84,68.45");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=115.96,114.21");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=20.38,183.49");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=62.89,81.88");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=128.85,89.06");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=107.44,15.76");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=205.07,12.08");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=80.42,17.65");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=68.11,42.37");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=113.19,95.44");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=3.56,72.08");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=94.11,13.66");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=31.89,128.60");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=126.40,103.92");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=141.95,157.49");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=35.19,222.59");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=76.87,255.28");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=167.63,151.81");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=198.32,108.83");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=123.43,58.36");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=21.52,57.73");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=33.59,90.62");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=97.09,42.84");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=143.72,135.76");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=57.34,106.30");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=171.51,8.30");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=108.81,197.91");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=9.49,95.66");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=53.98,74.25");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=31.50,159.79");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=194.06,17.40");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=117.63,74.30");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=89.77,102.99");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=47.44,34.13");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=37.88,65.63");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=21.73,6.38");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=29.98,115.24");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=53.27,213.44");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=121.76,145.55");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=151.00,146.56");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=191.52,132.12");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=143.72,173.78");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=99.89,80.37");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=151.72,111.95");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=180.71,48.60");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=35.13,53.73");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=6.18,143.83");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=2.04,104.08");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=122.56,31.25");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=129.38,133.64");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=132.78,45.82");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=86.59,139.16");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=6.18,60.31");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=59.17,65.44");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=124.94,174.37");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=169.64,18.48");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=250.11,17.41");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=150.68,25.64");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=79.25,2.62");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=118.39,42.05");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=70.12,18.62");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=38.10,27.96");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=132.37,144.45");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=134.74,167.05");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=76.00,199.70");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=130.19,186.73");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=130.16,252.52");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=142.49,202.83");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=171.92,34.75");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=110.00,57.26");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=3.47,154.33");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=109.77,209.51");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=0.62,134.62");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=185.24,144.28");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=81.97,42.97");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=144.06,1.11");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=164.48,172.30");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=5.78,114.72");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=2.91,12.72");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=61.96,129.31");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=132.83,3.25");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=243.54,51.71");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=50.39,0.66");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=12.08,2.40");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=100.51,135.09");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=31.09,20.79");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=99.23,59.83");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=46.11,159.45");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=87.51,208.28");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=89.93,192.70");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=99.36,186.45");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=133.70,287.51");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=174.61,139.11");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=215.43,121.61");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=52.89,53.72");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=104.84,110.47");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=56.63,233.45");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=145.77,79.17");
    }

}

