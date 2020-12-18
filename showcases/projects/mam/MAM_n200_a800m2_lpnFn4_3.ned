
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn4_3
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
        @display("p=89.35,36.43");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=44.11,44.69");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=52.01,55.76");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=120.09,76.73");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=74.86,79.95");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=134.85,80.25");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=154.13,127.02");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=200.94,166.97");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=137.92,239.80");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=169.03,162.71");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=217.20,96.42");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=211.89,64.03");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=198.39,18.64");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=239.96,70.06");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=248.35,28.71");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=306.52,55.18");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=312.25,142.35");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=300.98,143.90");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=282.39,193.71");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=224.43,151.48");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=177.94,195.54");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=148.89,216.69");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=139.22,191.66");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=192.85,195.17");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=139.30,223.95");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=178.92,269.25");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=177.94,236.35");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=122.63,118.50");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=39.95,99.05");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=49.81,87.14");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=21.64,40.81");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=99.69,57.39");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=61.85,49.30");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=84.96,45.54");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=72.38,56.46");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=111.24,28.39");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=173.33,7.35");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=115.42,5.49");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=182.88,23.38");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=183.81,37.65");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=165.48,43.85");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=133.79,20.12");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=59.56,64.93");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=144.48,60.31");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=198.97,129.92");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=207.82,136.73");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=190.30,115.81");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=186.87,76.24");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=230.68,96.75");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=105.36,159.98");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=29.62,14.52");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=99.14,24.58");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=69.49,28.42");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=209.82,88.35");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=15.10,58.14");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=163.50,111.63");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=170.98,139.91");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=233.77,138.66");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=106.03,307.14");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=161.78,173.11");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=225.67,82.62");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=261.56,90.74");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=270.67,12.67");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=279.88,51.88");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=236.18,23.31");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=261.16,47.28");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=257.97,177.30");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=278.74,159.71");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=348.01,153.79");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=289.55,166.35");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=244.47,180.72");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=137.31,258.11");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=178.09,183.02");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=120.36,191.80");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=108.12,223.09");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=171.84,351.95");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=193.74,280.54");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=156.88,25.54");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=35.46,122.29");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=30.67,72.51");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=41.34,110.17");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=70.69,39.88");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=81.69,3.60");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=103.57,15.05");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=82.59,57.39");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=147.19,19.70");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=146.91,4.27");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=155.89,10.18");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=236.60,33.98");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=124.95,95.62");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=81.22,14.61");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=182.57,0.31");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=29.23,25.55");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=140.25,35.71");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=219.24,117.60");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=163.06,73.01");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=111.03,123.12");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=198.75,49.52");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=199.17,66.89");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=73.02,89.96");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=84.08,69.67");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=26.39,1.03");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=49.84,13.74");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=144.20,50.06");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=93.29,119.45");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=100.47,110.88");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=109.81,196.26");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=229.23,211.67");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=71.07,247.61");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=77.10,169.83");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=289.22,102.61");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=182.58,139.39");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=260.65,68.18");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=255.98,57.06");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=221.32,17.83");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=328.64,77.67");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=341.76,116.63");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=315.63,121.03");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=292.93,286.43");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=216.97,55.09");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=209.19,274.10");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=151.76,293.71");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=201.28,266.35");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=194.11,180.77");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=165.87,286.88");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=125.48,273.83");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=183.25,166.94");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=119.08,104.82");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=47.34,121.79");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=57.01,95.66");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=33.82,37.11");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=61.72,86.76");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=42.52,31.37");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=83.59,142.37");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=9.44,44.83");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=135.47,123.20");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=167.20,98.91");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=144.24,70.48");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=214.43,6.76");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=205.65,77.96");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=164.85,57.79");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=183.83,55.77");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=39.19,62.70");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=117.77,49.27");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=247.21,109.05");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=299.60,132.64");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=235.06,159.53");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=201.79,99.77");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=255.09,128.99");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=94.71,72.05");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=101.71,47.48");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=57.80,140.98");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=41.84,130.76");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=67.73,122.82");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=165.47,121.95");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=88.91,159.07");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=238.71,117.66");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=131.85,181.10");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=130.84,249.70");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=220.29,202.60");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=269.92,26.05");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=224.15,69.66");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=240.05,12.05");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=239.26,58.49");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=278.67,34.89");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=292.37,75.67");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=257.29,219.96");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=334.73,193.96");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=280.01,224.34");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=206.84,158.48");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=109.32,247.74");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=54.85,186.70");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=157.28,194.92");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=144.87,273.32");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=126.32,233.28");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=132.34,296.79");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=187.27,245.00");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=193.14,144.62");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=25.17,116.92");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=118.73,144.71");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=53.15,33.58");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=129.17,7.64");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=10.24,74.66");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=57.62,23.62");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=29.02,130.58");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=132.53,61.11");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=170.14,20.94");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=125.58,41.50");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=104.63,77.47");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=130.71,110.27");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=200.29,118.51");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=66.24,17.83");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=47.91,76.90");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=67.66,4.37");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=216.03,130.08");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=217.64,165.09");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=273.62,94.54");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=178.76,84.45");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=238.93,90.11");
    }

}

