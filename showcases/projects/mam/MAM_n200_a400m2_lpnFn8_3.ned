
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn8_3
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
        @display("p=166.36,96.80");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=219.07,114.27");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=168.41,60.59");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=159.36,42.29");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=109.64,31.20");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=101.18,48.13");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=129.12,62.37");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=67.46,123.48");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=83.11,131.75");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=171.38,140.92");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=158.01,129.10");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=150.15,100.57");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=175.52,185.39");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=204.34,184.35");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=217.31,189.82");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=267.51,172.43");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=313.31,155.60");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=348.30,82.67");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=341.06,129.04");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=271.35,90.86");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=293.98,144.19");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=308.57,212.50");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=369.95,160.63");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=312.88,107.47");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=104.12,82.31");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=182.74,91.31");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=259.52,125.96");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=147.17,69.88");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=251.04,74.02");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=73.19,30.98");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=76.57,58.75");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=145.27,52.80");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=61.93,135.91");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=54.91,113.17");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=122.02,155.77");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=173.48,37.02");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=136.39,148.53");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=189.26,175.76");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=215.19,179.38");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=187.87,207.24");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=310.06,142.26");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=277.44,136.36");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=283.07,116.03");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=335.61,120.28");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=265.80,101.52");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=349.25,103.43");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=341.08,156.87");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=373.04,194.01");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=322.67,130.76");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=124.79,72.91");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=131.76,135.03");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=208.56,96.14");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=77.19,80.61");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=188.09,122.88");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=138.05,39.22");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=26.18,27.64");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=214.68,19.11");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=116.08,185.81");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=98.85,112.94");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=265.02,139.45");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=177.38,149.28");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=120.20,54.45");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=179.26,243.82");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=155.54,197.04");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=307.74,187.87");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=214.76,224.85");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=327.44,182.13");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=346.32,69.13");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=353.71,126.31");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=266.30,25.38");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=275.98,160.90");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=388.96,260.85");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=338.71,209.14");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=299.98,134.59");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=84.33,69.30");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=202.57,110.19");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=224.95,170.36");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=199.23,85.24");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=157.74,59.10");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=127.69,88.98");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=130.33,113.64");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=216.09,61.58");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=6.62,152.74");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=112.77,173.46");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=159.26,218.45");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=147.08,80.34");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=87.06,96.45");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=216.86,161.57");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=216.92,240.84");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=278.06,224.19");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=287.49,213.88");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=386.88,142.84");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=304.49,120.74");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=335.68,44.63");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=324.40,81.12");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=361.09,71.00");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=322.81,306.75");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=366.59,222.09");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=224.63,92.28");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=110.67,58.65");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=149.47,9.25");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=229.13,127.15");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=239.27,7.66");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=160.36,29.47");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=202.47,23.57");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=114.00,124.93");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=60.89,42.00");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=112.76,112.81");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=21.36,97.45");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=106.80,211.42");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=175.58,118.94");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=59.64,84.02");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=172.41,206.59");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=232.04,223.01");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=213.74,253.70");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=256.61,182.31");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=300.15,91.30");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=342.68,111.87");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=345.04,191.78");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=310.29,170.10");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=246.50,156.07");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=321.69,208.85");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=372.66,206.38");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=314.79,95.60");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=102.44,22.59");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=206.92,152.34");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=249.15,125.30");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=178.04,102.58");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=211.02,1.53");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=29.00,16.03");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=82.35,42.53");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=137.27,76.44");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=7.36,116.70");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=91.02,193.96");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=149.25,136.80");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=141.18,116.16");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=236.15,139.23");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=127.29,185.26");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=234.55,179.58");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=232.27,270.32");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=269.77,198.59");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=274.01,70.11");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=325.80,91.70");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=345.25,221.99");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=320.29,50.16");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=347.01,171.99");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=303.06,254.68");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=389.81,207.73");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=240.99,169.41");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=48.12,88.45");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=154.17,169.91");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=238.25,97.01");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=196.97,69.41");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=73.86,7.65");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=115.77,15.15");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=105.87,0.30");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=73.15,46.57");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=93.74,176.38");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=7.65,184.83");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=192.01,96.93");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=222.46,150.31");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=128.47,100.51");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=162.22,109.99");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=189.22,163.76");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=161.27,270.58");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=261.63,154.33");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=326.59,150.41");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=304.10,49.19");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=385.61,58.79");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=254.02,87.38");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=290.82,82.39");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=356.37,201.76");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=374.53,177.30");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=233.41,57.80");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=106.86,139.69");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=219.68,80.14");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=232.58,154.43");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=71.37,72.06");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=184.89,44.54");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=184.99,73.68");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=95.21,31.71");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=94.23,72.37");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=159.89,157.73");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=62.47,222.95");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=252.68,113.52");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=152.10,225.54");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=235.88,78.24");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=201.95,169.64");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=198.92,131.49");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=264.67,220.87");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=169.68,166.95");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=325.92,197.69");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=360.48,42.75");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=351.01,49.65");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=284.96,16.77");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=361.49,84.70");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=290.03,170.57");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=379.29,114.56");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=288.90,92.84");
    }

}

