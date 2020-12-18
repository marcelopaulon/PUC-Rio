
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn8_9
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
        @display("p=103.87,312.92");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=168.03,316.28");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=166.45,230.52");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=190.95,141.13");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=216.56,118.54");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=200.43,92.61");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=245.56,132.67");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=270.29,186.98");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=201.90,81.46");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=182.79,72.32");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=186.33,59.75");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=188.26,127.15");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=243.48,115.36");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=285.57,127.46");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=295.03,112.77");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=235.71,69.16");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=264.86,72.87");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=285.25,57.13");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=314.20,98.76");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=373.90,92.74");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=291.62,70.48");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=327.61,113.40");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=346.88,91.70");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=298.69,82.56");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=110.46,304.84");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=119.73,225.64");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=102.96,365.05");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=151.29,248.84");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=224.37,52.25");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=204.03,159.57");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=167.05,76.94");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=344.01,125.84");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=234.68,137.78");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=201.96,102.90");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=204.15,124.99");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=266.59,15.53");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=219.20,165.65");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=270.38,146.09");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=230.74,164.54");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=313.80,33.30");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=221.21,18.29");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=262.29,32.62");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=325.07,4.50");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=350.63,75.37");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=301.38,33.59");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=241.98,46.65");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=255.47,150.32");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=322.36,87.41");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=290.84,92.04");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=65.02,294.71");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=166.39,335.17");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=187.64,306.49");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=203.55,207.69");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=251.87,198.08");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=215.02,58.87");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=192.23,28.68");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=249.59,177.58");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=316.56,129.84");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=232.40,102.68");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=215.76,71.28");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=163.64,136.44");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=130.36,207.46");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=254.23,105.97");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=277.58,135.67");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=273.68,177.45");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=308.61,110.42");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=223.94,151.87");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=272.08,47.39");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=286.32,154.58");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=393.13,161.90");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=350.08,61.80");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=278.32,107.77");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=348.78,116.79");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=265.36,126.36");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=65.15,238.86");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=67.34,281.71");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=164.13,251.00");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=252.74,251.67");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=176.77,141.03");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=261.88,179.53");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=188.30,92.59");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=290.51,186.11");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=286.20,196.14");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=139.09,81.25");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=211.91,0.09");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=111.68,125.25");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=220.46,220.13");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=263.79,203.66");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=295.29,160.18");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=228.84,78.06");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=324.89,63.77");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=314.56,63.03");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=301.32,94.46");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=339.95,80.55");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=355.35,187.39");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=234.72,34.15");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=376.67,40.09");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=387.91,135.56");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=367.19,14.64");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=86.51,269.75");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=132.90,296.75");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=167.31,303.85");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=223.55,184.70");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=181.28,152.66");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=131.43,140.85");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=138.38,131.45");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=254.08,161.69");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=325.97,165.27");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=144.79,142.48");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=167.39,30.98");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=96.61,56.98");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=151.75,97.63");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=176.55,93.65");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=300.95,194.47");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=361.19,152.37");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=275.53,37.61");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=318.52,148.29");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=235.17,18.67");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=338.54,115.67");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=366.51,165.14");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=211.88,100.55");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=300.99,206.45");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=388.21,146.72");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=330.71,101.74");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=84.98,305.08");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=130.30,387.95");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=192.11,371.16");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=146.70,233.84");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=100.94,130.04");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=220.63,209.78");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=134.10,35.18");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=261.26,222.73");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=243.42,152.83");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=170.23,170.31");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=195.48,66.69");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=124.44,56.04");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=190.20,167.15");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=218.82,134.07");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=300.30,53.15");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=385.33,73.65");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=204.32,31.64");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=188.97,106.53");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=287.43,26.21");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=344.11,14.26");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=326.60,139.75");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=256.38,18.56");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=353.47,200.49");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=273.83,79.15");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=376.20,141.05");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=110.69,357.85");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=122.80,286.72");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=124.87,303.98");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=200.74,245.10");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=219.72,231.92");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=118.74,112.64");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=159.99,164.95");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=259.52,92.37");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=299.92,147.75");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=217.28,81.55");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=179.49,47.83");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=168.79,112.28");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=153.52,52.36");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=244.38,56.54");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=302.28,130.90");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=282.37,16.86");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=242.40,101.75");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=274.11,60.71");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=308.94,42.13");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=341.43,190.77");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=385.26,115.14");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=325.40,40.97");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=265.85,109.35");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=387.17,29.68");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=233.45,6.97");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=43.17,327.67");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=81.43,292.96");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=190.63,347.81");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=230.12,297.66");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=128.94,168.55");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=262.02,59.42");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=213.53,45.95");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=234.35,222.11");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=283.81,225.78");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=253.48,1.62");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=154.16,37.62");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=252.64,74.56");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=144.23,47.43");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=287.40,144.33");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=325.22,123.45");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=231.36,117.81");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=158.62,83.63");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=303.95,66.22");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=307.59,18.25");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=379.02,82.63");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=397.32,75.18");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=377.07,50.32");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=311.88,157.34");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=384.34,105.00");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=306.19,177.83");
    }

}

