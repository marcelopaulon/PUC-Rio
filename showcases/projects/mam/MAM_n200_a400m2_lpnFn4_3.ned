
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn4_3
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
        @display("p=78.19,283.12");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=60.76,207.87");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=4.78,129.53");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=15.39,61.83");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=92.94,20.43");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=100.78,27.44");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=93.33,10.41");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=31.85,3.06");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=4.40,23.12");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=17.14,34.63");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=25.65,20.91");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=88.78,39.77");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=139.13,42.39");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=101.40,41.30");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=188.65,33.49");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=112.17,63.90");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=150.53,132.42");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=234.79,184.15");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=201.08,179.99");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=117.29,221.47");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=41.02,242.15");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=50.92,268.22");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=78.54,297.80");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=53.73,340.50");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=114.45,320.65");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=41.79,308.03");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=66.49,271.96");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=83.26,221.16");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=125.65,243.78");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=133.18,232.44");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=125.84,254.69");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=84.00,258.88");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=32.23,187.64");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=11.47,271.87");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=22.80,265.21");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=67.64,313.83");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=15.11,350.23");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=46.81,367.55");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=6.26,299.86");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=6.42,198.02");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=83.31,163.36");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=62.62,159.28");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=65.39,244.12");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=69.90,167.96");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=91.57,139.94");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=125.42,143.67");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=136.79,118.83");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=79.23,142.71");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=101.74,70.97");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=98.44,287.69");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=95.31,247.20");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=46.76,199.64");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=60.20,171.11");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=68.90,51.81");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=132.91,69.70");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=89.87,49.80");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=63.90,5.20");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=60.93,31.67");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=20.21,7.66");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=41.65,106.46");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=16.12,97.34");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=128.87,60.32");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=82.31,85.82");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=63.78,64.12");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=236.18,2.34");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=49.10,78.61");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=173.18,72.35");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=206.62,209.89");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=240.13,173.40");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=178.25,291.54");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=33.84,233.86");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=96.69,258.23");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=59.05,351.64");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=110.20,306.83");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=56.52,362.09");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=31.46,307.00");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=17.67,235.96");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=79.73,209.02");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=155.75,241.46");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=73.98,185.27");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=195.62,310.01");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=39.40,206.72");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=4.51,212.16");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=30.55,325.82");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=36.81,290.86");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=140.51,268.79");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=1.19,263.14");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=107.54,372.25");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=20.77,330.02");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=19.02,202.37");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=91.16,113.70");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=64.14,115.46");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=52.42,248.25");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=120.19,166.56");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=32.14,142.80");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=135.38,218.82");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=111.18,156.97");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=80.35,153.33");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=181.18,51.71");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=137.20,301.39");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=163.90,291.19");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=60.07,284.75");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=15.34,166.39");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=59.51,137.20");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=101.58,82.89");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=113.83,34.04");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=138.30,25.77");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=120.42,10.57");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=48.95,9.63");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=27.20,39.15");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=4.68,60.30");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=59.50,91.55");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=166.16,34.48");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=44.64,123.51");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=236.31,77.25");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=191.64,119.65");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=97.55,198.00");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=238.47,232.45");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=183.75,191.43");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=84.01,180.60");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=59.46,303.39");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=112.81,262.77");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=142.71,321.20");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=71.73,353.04");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=154.02,326.88");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=9.52,220.94");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=105.88,186.97");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=157.32,262.14");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=129.27,270.73");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=126.15,205.60");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=167.00,249.65");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=140.84,200.33");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=38.79,163.95");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=10.80,259.65");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=50.89,209.98");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=93.44,358.59");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=97.71,323.78");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=64.56,337.08");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=20.69,245.81");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=1.29,290.86");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=110.94,88.00");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=30.77,85.50");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=143.27,187.11");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=91.28,153.80");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=28.95,170.12");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=125.74,105.31");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=233.29,113.50");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=51.61,110.82");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=105.15,133.61");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=128.89,360.07");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=106.56,241.43");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=0.02,160.01");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=74.71,105.93");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=27.81,75.59");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=6.93,46.27");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=115.18,119.08");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=148.49,5.71");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=39.26,69.66");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=6.04,9.98");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=41.05,94.86");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=59.75,76.79");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=101.43,115.82");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=147.97,58.66");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=192.28,22.72");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=172.62,22.74");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=116.47,23.27");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=97.15,171.37");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=190.30,143.86");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=164.44,196.63");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=162.62,153.17");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=19.01,217.63");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=41.94,279.01");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=67.49,221.35");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=122.06,398.06");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=177.82,397.22");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=44.68,353.66");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=88.54,283.12");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=101.70,220.09");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=164.53,225.09");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=147.61,285.46");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=190.55,233.54");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=115.77,249.43");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=48.00,175.32");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=3.44,184.07");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=82.41,342.96");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=32.56,364.89");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=24.29,355.61");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=42.91,343.19");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=39.08,381.26");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=14.14,154.19");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=166.25,163.24");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=64.95,148.01");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=34.40,259.62");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=58.82,235.54");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=35.45,128.30");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=113.90,144.35");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=142.56,143.26");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=49.46,67.56");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=137.39,54.44");
    }

}

