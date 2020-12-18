
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
        @display("p=141.00,209.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=197.12,180.51");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=218.18,237.94");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=234.51,242.12");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=263.69,188.34");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=209.87,117.27");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=231.23,82.41");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=222.55,14.37");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=219.76,43.95");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=201.15,47.60");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=203.26,72.43");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=160.47,63.67");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=113.07,68.05");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=78.75,74.16");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=46.27,83.60");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=32.76,86.55");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=113.96,119.79");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=153.09,230.30");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=180.20,150.59");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=295.00,292.99");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=258.90,252.35");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=256.06,177.71");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=203.47,131.16");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=219.73,58.14");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=225.90,32.73");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=233.45,21.87");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=144.15,121.86");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=197.99,82.38");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=163.61,51.33");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=104.36,88.40");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=130.31,74.72");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=12.58,96.45");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=32.89,138.42");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=140.19,63.79");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=123.38,198.82");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=246.96,205.63");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=195.23,274.15");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=265.46,240.54");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=329.38,115.42");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=189.60,113.52");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=275.23,162.51");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=145.61,15.72");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=209.21,142.87");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=175.13,43.73");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=122.28,35.24");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=61.24,62.04");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=141.87,93.57");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=46.82,116.99");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=86.01,163.46");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=49.91,99.39");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=190.88,148.38");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=62.44,213.23");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=276.91,222.02");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=295.38,196.57");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=248.94,245.20");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=279.58,235.10");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=240.90,144.39");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=251.11,72.23");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=167.51,80.29");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=261.03,23.13");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=206.56,36.83");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=160.54,94.64");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=173.91,28.55");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=116.02,58.19");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=119.79,100.85");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=69.18,96.72");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=79.06,119.18");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=83.21,145.30");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=65.53,162.51");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=197.31,199.36");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=128.94,266.44");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=277.24,210.41");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=247.06,285.14");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=171.69,65.50");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=182.41,139.74");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=228.34,4.95");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=234.43,58.81");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=189.95,125.82");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=222.24,104.61");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=86.67,18.62");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=145.69,111.47");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=25.35,52.43");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=68.65,73.43");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=38.08,174.94");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=75.73,132.45");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=220.77,182.47");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=173.78,270.76");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=157.41,297.49");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=241.01,215.72");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=334.08,143.92");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=261.59,133.49");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=266.60,40.89");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=203.39,21.70");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=243.04,109.00");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=234.33,98.92");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=281.33,78.97");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=209.46,5.56");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=92.97,122.36");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=17.51,124.87");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=92.41,43.21");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=57.38,6.35");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=136.13,153.15");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=91.53,230.98");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=123.74,235.40");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=285.09,169.34");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=236.66,226.71");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=238.30,182.03");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=167.34,190.01");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=192.47,23.85");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=152.98,52.26");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=127.41,22.79");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=181.02,11.76");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=271.04,2.60");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=90.10,69.87");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=86.89,55.35");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=90.73,85.45");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=26.44,23.71");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=58.44,122.93");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=166.85,105.34");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=71.50,147.33");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=224.38,193.45");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=287.60,303.18");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=298.40,212.23");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=311.53,143.42");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=174.45,182.31");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=291.59,84.58");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=244.08,43.35");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=214.26,22.95");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=186.55,76.66");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=193.37,58.70");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=165.19,117.53");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=45.84,25.70");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=103.17,146.41");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=43.07,63.77");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=30.86,102.02");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=57.14,84.04");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=233.17,208.54");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=208.79,155.68");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=133.74,289.37");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=244.97,173.73");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=259.63,208.23");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=156.28,34.47");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=213.08,97.63");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=263.37,85.29");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=299.37,63.42");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=154.72,106.74");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=199.98,161.02");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=85.47,35.36");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=123.33,123.32");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=22.56,41.78");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=76.51,85.55");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=10.85,39.01");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=114.96,154.05");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=151.37,172.50");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=130.93,225.32");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=166.53,229.93");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=265.69,264.17");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=357.76,187.48");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=121.22,140.69");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=252.17,104.30");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=192.18,7.78");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=184.99,66.01");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=295.06,25.55");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=155.77,141.70");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=87.53,0.29");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=48.24,72.48");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=143.27,41.89");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=60.92,110.47");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=14.65,157.05");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=141.85,168.24");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=157.85,194.63");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=221.35,205.79");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=240.77,312.64");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=189.92,300.77");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=251.03,192.43");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=235.36,133.51");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=202.41,109.70");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=166.24,36.90");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=166.20,1.40");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=180.28,101.61");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=129.12,62.30");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=154.63,84.80");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=73.12,12.76");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=64.79,30.13");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=70.73,107.81");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=69.16,47.68");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=127.80,109.38");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=94.84,219.51");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=140.04,136.35");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=183.34,284.93");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=262.33,291.14");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=314.62,159.12");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=164.44,176.79");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=220.06,75.67");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=241.50,12.66");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=314.22,63.79");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=264.44,55.49");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=207.14,56.64");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=187.38,47.92");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=111.91,79.94");
    }

}

