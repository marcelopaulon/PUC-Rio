
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn8_9
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=109.58,160.90");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=119.39,72.97");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=103.36,58.38");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=102.88,36.50");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=141.46,81.92");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=216.95,50.68");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=199.83,44.04");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=143.42,113.79");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=135.20,123.00");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=172.80,152.89");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=180.54,90.30");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=202.09,29.91");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=185.77,104.92");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=239.90,152.37");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=284.78,150.76");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=296.20,137.17");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=260.27,125.82");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=311.21,108.92");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=393.59,136.09");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=476.13,109.85");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=455.77,61.99");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=495.59,134.95");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=430.57,78.05");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=520.80,42.01");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=158.56,98.16");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=171.51,165.38");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=184.49,72.68");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=75.88,141.37");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=123.12,29.28");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=175.98,81.12");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=126.58,85.25");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=168.49,64.77");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=123.47,131.64");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=141.10,93.73");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=158.23,177.65");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=94.83,81.85");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=191.09,21.55");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=169.99,114.25");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=235.89,132.02");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=215.64,200.32");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=251.19,205.12");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=277.30,127.27");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=339.60,22.62");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=391.22,178.60");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=512.89,180.53");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=442.85,71.94");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=429.29,197.77");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=399.76,159.61");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=572.71,104.85");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=80.60,72.82");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=203.61,144.75");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=100.86,25.90");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=104.23,114.81");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=126.08,51.59");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=104.97,87.34");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=204.70,78.04");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=276.69,16.56");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=158.03,75.40");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=136.39,139.53");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=124.88,204.01");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=243.90,123.38");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=294.57,63.51");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=182.03,171.69");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=234.41,93.74");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=217.25,129.67");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=374.54,89.63");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=265.62,165.33");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=293.03,37.28");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=389.87,211.60");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=527.23,129.73");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=449.63,23.26");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=489.88,163.81");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=443.05,103.26");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=533.96,102.83");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=53.42,119.33");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=100.21,247.11");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=142.24,54.75");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=46.69,83.06");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=144.06,42.00");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=105.65,173.32");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=131.10,16.54");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=200.63,11.96");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=148.79,123.48");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=64.99,111.69");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=259.24,109.53");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=183.12,158.22");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=238.36,26.24");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=173.25,103.81");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=220.76,186.28");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=340.83,187.78");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=287.38,177.11");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=260.68,95.96");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=320.38,100.74");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=313.61,161.25");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=516.75,79.03");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=449.23,41.10");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=479.42,148.01");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=502.99,74.19");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=602.47,58.57");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=82.26,39.67");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=167.62,211.46");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=118.64,145.28");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=70.88,42.53");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=96.61,69.58");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=140.97,152.56");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=215.54,74.02");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=176.55,32.34");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=133.09,110.31");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=203.01,128.69");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=151.77,59.14");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=220.92,90.30");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=152.47,28.71");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=219.31,160.11");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=314.10,143.96");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=273.85,146.75");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=308.22,135.14");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=232.15,170.68");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=248.79,144.05");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=417.50,215.92");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=447.93,123.55");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=491.67,51.35");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=416.47,106.36");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=375.77,30.22");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=603.67,88.82");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=152.84,88.18");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=123.70,253.15");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=162.55,139.64");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=45.70,27.15");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=115.00,22.50");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=127.64,97.46");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=233.08,112.16");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=217.01,8.72");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=106.12,130.91");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=43.52,132.13");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=168.64,180.31");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=254.14,50.67");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=147.91,70.94");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=194.43,197.55");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=161.82,152.15");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=244.40,77.99");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=297.47,52.11");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=288.94,84.09");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=273.94,183.53");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=401.71,199.75");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=456.42,116.84");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=550.66,36.00");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=523.10,148.89");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=522.71,105.65");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=595.65,34.71");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=69.06,94.79");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=51.03,184.95");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=173.75,124.94");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=124.77,5.96");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=39.40,8.42");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=112.48,94.46");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=276.53,37.50");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=193.07,94.30");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=63.47,124.47");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=142.42,170.61");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=193.06,180.23");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=235.91,45.48");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=271.64,52.10");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=202.18,104.94");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=283.52,188.60");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=268.17,248.56");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=242.80,62.59");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=261.15,136.73");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=320.79,76.54");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=361.46,95.27");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=502.91,188.96");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=470.13,65.76");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=452.39,200.94");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=428.75,38.20");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=438.33,6.57");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=158.13,47.61");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=87.74,90.64");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=83.23,131.47");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=115.20,50.94");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=112.54,40.23");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=168.07,2.85");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=301.17,29.71");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=155.16,11.00");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=161.15,119.11");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=105.39,190.91");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=247.50,168.61");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=164.70,38.03");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=229.59,37.72");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=145.21,21.29");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=230.05,149.55");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=355.95,179.22");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=334.95,102.55");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=209.00,156.12");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=276.79,93.61");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=403.83,83.18");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=417.76,138.60");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=479.49,87.27");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=420.34,118.14");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=481.48,2.16");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=572.91,67.63");
    }

}

