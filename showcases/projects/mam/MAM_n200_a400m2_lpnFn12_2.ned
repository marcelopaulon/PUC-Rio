
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn12_2
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
        @display("p=163.67,159.19");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=229.48,129.50");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=166.36,196.34");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=146.00,177.46");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=136.00,131.36");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=178.95,113.44");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=164.73,138.15");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=173.81,131.82");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=184.88,136.78");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=165.47,56.18");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=247.07,44.87");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=219.77,108.14");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=205.66,84.39");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=146.84,130.70");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=174.34,189.54");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=188.13,198.26");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=124.40,29.87");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=236.62,206.17");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=241.92,215.76");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=198.50,269.10");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=75.20,175.04");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=111.33,133.87");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=200.82,108.97");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=250.39,133.36");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=80.33,125.83");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=110.59,80.75");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=189.10,78.74");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=188.96,117.29");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=208.86,137.42");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=232.21,75.34");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=140.40,63.91");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=214.77,236.77");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=166.89,234.63");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=108.86,173.53");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=71.33,155.35");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=189.23,62.79");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=248.68,169.24");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=50.78,178.57");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=225.44,147.00");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=120.51,44.13");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=166.14,125.22");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=96.54,87.43");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=200.56,232.95");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=169.18,14.29");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=263.71,60.66");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=250.92,150.86");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=172.43,154.21");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=193.12,217.54");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=91.00,163.03");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=281.68,211.46");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=179.48,42.80");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=206.10,198.77");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=312.40,153.78");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=223.69,227.53");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=90.36,252.26");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=116.99,154.08");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=157.90,87.98");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=230.51,180.51");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=206.38,182.89");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=213.90,169.96");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=145.60,31.74");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=173.68,74.13");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=318.77,119.35");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=206.19,70.23");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=145.79,42.06");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=127.41,209.10");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=142.33,155.04");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=152.74,106.94");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=172.41,225.20");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=199.99,127.31");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=240.99,155.28");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=135.71,275.06");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=154.48,213.33");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=251.51,106.02");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=119.75,164.27");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=194.82,89.25");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=200.06,161.01");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=180.26,32.35");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=256.45,50.46");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=253.43,27.57");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=256.63,87.79");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=90.29,124.70");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=248.64,239.55");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=112.47,197.26");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=180.56,98.28");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=147.11,166.08");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=163.18,101.86");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=158.02,288.82");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=221.03,123.22");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=71.16,141.00");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=260.59,131.14");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=194.76,140.77");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=261.93,145.25");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=255.99,73.62");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=151.40,142.66");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=291.06,53.23");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=257.40,185.03");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=207.05,47.16");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=167.21,178.71");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=234.53,239.58");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=194.52,177.35");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=111.66,93.31");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=232.51,160.83");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=259.00,113.36");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=108.86,244.54");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=79.08,244.12");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=112.04,110.34");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=169.38,109.70");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=232.22,99.91");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=267.57,106.02");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=241.12,196.74");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=147.89,70.76");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=236.52,51.92");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=233.87,117.93");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=187.05,50.48");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=67.78,121.11");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=157.75,242.03");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=93.43,214.27");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=101.83,26.63");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=241.83,111.45");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=217.04,83.40");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=128.25,239.02");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=153.51,157.40");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=137.75,119.89");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=167.75,32.35");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=94.10,141.59");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=103.14,183.56");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=142.73,212.44");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=241.12,32.00");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=314.39,17.61");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=222.15,97.87");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=136.49,23.69");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=127.17,119.69");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=233.72,222.28");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=130.25,156.93");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=60.25,111.80");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=215.81,150.96");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=282.80,98.28");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=157.56,184.36");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=113.65,215.17");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=81.36,159.76");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=105.49,146.60");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=112.22,67.01");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=184.40,181.91");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=184.55,227.35");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=127.02,60.81");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=325.22,26.77");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=131.97,76.07");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=190.97,27.02");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=70.81,89.46");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=86.94,150.61");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=261.60,212.14");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=65.70,99.47");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=195.27,246.75");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=190.35,152.98");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=176.45,208.69");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=100.10,112.63");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=75.77,75.93");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=236.95,85.81");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=182.23,159.33");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=122.94,99.89");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=203.62,148.60");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=215.21,28.96");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=246.45,7.46");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=221.14,52.13");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=182.84,17.43");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=92.89,181.54");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=130.55,261.92");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=242.61,261.52");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=13.30,140.32");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=121.57,229.44");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=301.36,145.44");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=75.36,189.74");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=180.90,124.58");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=56.56,157.49");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=131.69,89.99");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=148.21,188.57");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=135.72,192.49");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=196.79,192.86");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=198.91,59.21");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=341.84,61.34");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=288.32,162.96");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=124.12,83.02");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=104.30,158.65");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=237.10,171.85");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=212.05,222.78");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=51.62,35.52");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=160.42,71.18");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=267.52,165.64");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=175.31,166.61");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=220.05,161.22");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=46.93,152.58");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=205.95,36.79");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=208.92,116.93");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=190.00,104.40");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=156.11,224.45");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=237.80,65.65");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=302.20,10.02");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=275.99,150.67");
    }

}

