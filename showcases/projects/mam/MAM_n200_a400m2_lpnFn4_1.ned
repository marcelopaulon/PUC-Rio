
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn4_1
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
        @display("p=144.95,95.28");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=92.96,129.40");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=115.03,108.92");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=97.27,36.20");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=109.04,31.47");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=94.21,91.19");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=59.10,20.35");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=91.45,16.37");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=186.41,46.56");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=150.27,109.87");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=129.78,203.46");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=49.79,225.08");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=53.98,208.25");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=96.10,217.21");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=55.41,276.05");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=131.01,302.77");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=188.77,266.79");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=256.19,212.33");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=215.35,204.11");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=241.97,191.97");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=290.99,119.75");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=299.10,61.82");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=303.01,49.69");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=322.80,55.73");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=396.64,114.44");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=368.98,23.15");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=353.54,13.55");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=245.04,46.35");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=168.81,31.94");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=180.00,115.03");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=176.07,81.40");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=151.60,74.88");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=150.51,55.86");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=208.15,133.37");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=137.56,78.58");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=60.50,98.04");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=57.71,75.59");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=30.28,20.61");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=115.91,13.58");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=77.04,50.65");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=43.65,61.82");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=24.59,47.33");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=3.60,49.26");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=44.81,38.51");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=19.82,104.62");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=82.61,122.54");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=64.89,122.62");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=161.67,102.90");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=173.60,107.10");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=78.75,64.97");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=125.33,159.66");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=104.51,110.43");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=147.55,186.81");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=139.71,19.35");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=38.65,9.04");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=56.93,1.29");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=19.29,81.35");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=127.12,30.50");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=152.57,35.80");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=122.02,101.15");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=72.76,194.58");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=70.18,136.70");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=73.91,165.26");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=134.69,165.75");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=84.32,293.37");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=115.91,328.66");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=144.10,329.80");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=242.69,118.57");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=198.06,123.71");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=262.39,183.71");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=218.55,69.09");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=304.31,75.17");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=277.12,62.43");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=316.92,9.14");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=376.44,109.38");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=323.57,65.98");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=320.46,32.61");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=259.24,25.33");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=166.08,58.76");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=142.89,43.93");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=139.64,110.81");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=104.04,151.80");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=95.06,70.55");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=209.86,157.69");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=115.04,130.08");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=77.34,36.58");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=65.69,81.80");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=46.51,20.67");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=196.08,24.10");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=138.87,6.96");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=85.07,77.45");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=95.46,54.25");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=14.76,40.96");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=36.11,29.02");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=2.45,114.85");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=112.99,199.94");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=99.30,164.99");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=215.29,87.69");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=254.56,129.32");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=85.42,102.64");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=205.60,84.14");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=177.42,161.20");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=39.63,91.43");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=162.02,6.78");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=159.55,47.47");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=187.43,83.05");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=0.86,8.82");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=46.81,98.54");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=247.73,29.95");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=115.64,181.50");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=146.31,203.29");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=39.76,184.37");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=32.63,151.24");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=124.59,277.52");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=97.17,260.12");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=42.70,307.45");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=161.25,243.22");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=303.65,182.90");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=295.13,172.16");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=254.65,154.04");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=305.38,196.19");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=280.25,39.48");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=321.85,85.08");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=371.67,78.71");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=338.19,102.03");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=364.25,61.42");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=388.66,63.77");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=181.71,13.66");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=104.39,82.97");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=214.66,104.29");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=118.23,81.36");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=131.65,94.62");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=178.26,66.97");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=229.25,167.18");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=207.61,45.53");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=36.68,130.04");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=151.66,86.35");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=63.60,36.47");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=62.78,60.86");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=98.47,1.87");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=27.19,4.76");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=18.93,27.81");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=7.62,29.53");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=33.42,118.47");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=31.61,105.88");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=104.86,122.06");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=19.25,165.46");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=197.04,14.04");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=190.05,117.29");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=64.54,185.32");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=106.89,56.94");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=30.50,62.44");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=82.50,199.50");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=180.06,28.05");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=71.55,93.51");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=60.53,170.44");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=54.59,30.60");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=82.36,25.56");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=221.75,21.45");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=132.33,135.35");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=166.76,226.04");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=76.83,240.45");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=37.92,231.95");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=82.01,213.14");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=119.38,315.03");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=113.16,258.74");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=165.63,261.51");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=243.44,238.82");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=245.99,218.49");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=229.16,211.78");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=301.58,132.14");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=326.63,43.53");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=338.51,18.64");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=311.28,151.02");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=344.00,71.59");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=367.85,35.16");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=296.16,8.97");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=255.44,93.12");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=156.32,21.39");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=202.11,97.01");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=139.96,121.90");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=198.41,109.22");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=74.25,115.13");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=253.51,140.16");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=195.01,57.88");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=81.25,138.08");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=7.71,60.59");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=25.73,35.76");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=176.28,48.55");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=65.97,48.55");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=43.37,78.47");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=15.27,115.93");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=7.08,75.47");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=87.31,34.31");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=7.08,96.19");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=56.57,132.91");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=30.62,171.52");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=231.22,60.84");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=164.39,116.59");
    }

}

