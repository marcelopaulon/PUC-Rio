
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn8_8
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
        @display("p=66.72,152.46");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=76.51,98.57");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=54.46,137.33");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=45.32,202.47");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=25.73,166.11");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=10.32,103.14");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=98.63,57.37");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=81.10,54.33");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=118.34,92.81");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=147.83,114.60");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=104.56,122.36");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=197.13,150.41");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=226.45,93.73");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=270.18,101.70");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=261.71,29.82");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=196.53,13.84");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=231.93,106.72");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=241.02,113.50");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=215.89,68.51");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=190.45,134.21");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=229.01,211.39");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=278.81,126.09");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=307.16,36.54");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=327.28,23.50");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=92.45,89.34");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=137.76,205.74");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=50.09,88.55");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=45.36,123.72");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=88.94,191.79");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=35.75,214.74");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=21.69,107.30");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=33.14,97.64");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=113.30,146.90");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=142.38,153.38");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=145.08,87.70");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=22.50,136.77");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=279.56,166.82");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=264.61,168.98");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=304.16,80.47");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=249.80,80.23");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=190.54,80.97");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=174.41,43.24");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=322.36,130.27");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=186.23,115.44");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=258.83,129.43");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=246.54,182.84");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=307.64,136.53");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=279.48,8.17");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=390.68,46.38");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=89.67,114.33");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=44.48,98.53");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=73.23,125.52");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=30.62,176.83");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=110.86,205.47");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=69.23,201.52");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=48.61,192.20");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=180.82,55.88");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=113.26,49.12");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=101.62,81.89");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=132.68,87.04");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=115.03,127.14");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=200.51,131.17");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=230.01,15.65");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=244.48,134.30");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=353.50,0.64");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=227.30,47.81");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=247.54,30.74");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=332.15,76.93");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=180.25,142.92");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=211.37,207.20");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=162.59,192.54");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=326.41,98.03");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=287.02,19.98");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=361.87,26.25");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=36.65,139.14");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=38.32,169.69");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=86.63,135.24");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=70.93,137.64");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=109.53,278.54");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=81.69,223.46");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=16.15,25.42");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=102.45,27.50");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=80.16,74.65");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=156.88,174.50");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=148.40,166.22");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=87.53,208.37");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=208.80,157.90");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=207.04,103.70");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=239.75,88.41");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=353.63,33.69");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=185.52,66.10");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=301.05,147.13");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=227.94,160.30");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=269.34,37.77");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=200.51,118.83");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=211.77,183.80");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=292.49,79.61");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=297.44,95.54");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=329.46,33.83");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=154.77,107.13");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=102.17,144.92");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=106.72,92.48");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=21.16,56.68");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=34.08,194.95");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=20.48,240.78");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=16.72,174.42");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=34.00,54.80");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=119.64,78.83");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=87.73,179.94");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=171.71,94.84");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=182.74,168.16");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=164.89,125.76");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=219.88,168.80");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=315.19,26.21");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=244.66,46.40");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=146.99,36.06");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=210.03,138.80");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=246.66,171.85");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=199.01,44.90");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=228.52,143.65");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=145.18,238.53");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=352.50,132.94");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=347.42,51.73");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=281.36,44.96");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=145.00,136.22");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=115.28,186.92");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=68.22,114.08");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=57.08,103.54");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=64.91,177.08");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=72.73,84.38");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=57.74,19.09");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=3.96,41.46");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=73.07,29.27");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=129.92,140.52");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=208.26,90.97");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=132.39,41.51");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=144.36,182.93");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=191.67,104.47");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=280.12,104.88");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=199.67,24.95");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=197.99,1.97");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=196.53,172.85");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=203.18,63.82");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=176.06,124.67");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=163.14,52.45");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=198.41,218.46");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=305.18,51.73");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=337.44,96.64");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=376.16,80.44");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=67.84,54.54");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=41.61,181.47");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=18.13,87.73");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=4.68,222.48");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=61.25,188.07");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=60.85,219.58");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=89.33,46.06");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=182.44,100.17");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=46.87,51.86");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=119.90,17.92");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=134.18,110.05");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=153.75,205.00");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=247.90,208.62");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=209.66,45.51");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=320.40,178.06");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=348.40,13.81");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=175.84,28.10");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=319.74,73.11");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=243.39,99.23");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=162.79,66.83");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=159.95,134.78");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=222.21,286.08");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=357.49,74.44");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=371.62,7.75");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=293.61,42.14");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=112.54,104.30");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=53.24,153.85");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=75.42,157.74");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=48.85,66.32");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=10.06,209.73");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=1.84,243.46");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=64.52,68.18");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=98.25,40.77");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=85.57,35.87");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=141.35,100.83");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=132.15,121.66");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=55.69,203.45");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=175.50,160.30");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=226.08,178.76");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=216.28,122.11");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=247.15,56.14");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=248.11,69.80");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=229.29,196.25");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=234.74,64.64");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=254.79,92.95");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=278.61,152.06");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=253.58,289.32");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=283.92,57.16");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=301.27,26.98");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=271.76,19.90");
    }

}

