
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn8_3
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
        @display("p=181.11,332.79");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=220.53,340.61");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=140.80,317.87");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=118.99,350.08");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=108.00,385.94");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=151.75,322.31");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=123.27,226.97");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=42.47,233.08");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=107.04,218.48");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=116.44,152.98");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=124.38,112.02");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=119.58,75.78");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=99.08,111.20");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=164.14,121.71");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=205.99,167.12");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=211.10,176.10");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=152.98,123.80");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=138.08,108.69");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=141.49,202.18");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=207.13,214.28");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=220.85,137.08");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=284.52,107.40");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=238.28,80.05");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=293.92,67.36");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=131.21,257.21");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=144.87,294.35");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=227.86,316.69");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=81.71,360.75");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=87.46,321.63");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=124.77,398.21");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=103.71,279.22");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=196.32,215.98");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=94.67,174.64");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=126.76,203.43");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=104.85,198.88");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=121.39,23.34");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=74.62,32.82");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=23.40,89.64");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=113.32,186.27");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=241.33,253.40");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=156.58,230.71");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=151.61,112.58");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=61.27,104.11");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=177.86,214.77");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=246.78,232.25");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=199.22,156.61");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=236.69,144.89");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=324.82,82.25");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=315.05,155.45");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=22.66,314.17");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=198.77,382.57");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=202.39,325.13");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=48.61,314.16");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=139.42,335.17");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=166.13,387.10");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=214.04,304.34");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=130.80,143.79");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=27.79,289.48");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=50.24,190.59");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=75.12,174.01");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=129.23,67.35");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=105.34,82.85");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=41.70,62.16");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=203.96,92.52");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=181.98,138.33");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=209.45,200.57");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=241.02,161.72");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=151.39,154.64");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=178.02,155.49");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=281.45,165.17");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=217.57,125.68");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=317.04,103.31");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=217.48,80.62");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=239.82,121.51");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=79.96,234.52");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=110.00,358.38");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=299.21,389.46");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=193.42,294.33");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=167.15,305.24");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=94.01,389.26");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=228.37,286.90");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=103.03,232.83");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=41.47,245.33");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=106.35,291.43");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=47.90,217.52");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=45.02,155.59");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=107.30,27.27");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=110.07,108.30");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=127.32,172.37");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=166.35,160.99");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=263.51,191.81");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=191.80,60.49");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=174.28,121.84");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=144.93,266.84");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=256.42,246.76");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=249.34,99.50");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=213.99,100.60");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=267.85,117.93");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=357.84,12.23");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=54.91,327.71");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=151.27,373.65");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=263.39,285.99");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=89.96,332.42");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=93.02,289.44");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=82.58,394.01");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=117.03,289.82");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=97.26,144.11");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=10.19,296.98");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=154.17,215.04");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=144.60,229.69");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=138.38,127.79");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=175.72,83.15");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=158.03,63.82");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=195.93,108.95");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=192.00,145.75");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=184.45,186.11");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=172.45,101.70");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=138.57,97.67");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=190.30,161.19");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=285.76,272.52");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=242.89,131.63");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=267.71,136.77");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=193.14,47.02");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=278.85,60.41");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=46.91,269.94");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=204.77,339.07");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=218.78,330.67");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=185.09,305.65");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=77.27,332.52");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=37.03,353.04");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=131.59,295.31");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=181.98,295.07");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=79.73,292.84");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=51.44,174.92");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=69.65,219.18");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=68.37,69.74");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=151.80,32.35");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=168.95,132.89");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=119.06,127.91");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=224.66,222.27");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=281.92,140.13");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=149.97,190.58");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=160.65,49.52");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=138.34,173.42");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=246.62,171.75");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=214.33,115.39");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=298.83,190.82");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=258.23,40.76");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=314.96,3.42");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=94.83,308.57");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=137.66,244.36");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=274.53,374.12");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=138.15,304.54");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=128.32,322.83");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=128.71,356.62");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=197.61,255.79");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=172.59,233.76");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=74.89,204.42");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=63.28,249.98");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=143.45,145.95");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=82.31,131.61");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=110.03,135.54");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=84.48,63.41");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=164.35,143.06");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=211.77,146.30");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=224.15,171.27");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=181.86,113.19");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=143.83,82.56");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=219.39,196.28");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=178.32,255.22");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=230.35,180.47");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=261.93,156.45");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=258.54,67.03");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=286.34,84.92");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=71.36,281.00");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=242.13,294.42");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=208.32,274.21");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=103.67,327.23");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=147.08,362.84");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=109.77,307.18");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=232.77,378.92");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=109.44,164.77");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=36.03,259.47");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=91.86,246.24");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=127.98,236.28");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=107.45,43.87");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=169.93,112.33");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=143.16,48.91");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=103.36,123.06");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=178.10,176.78");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=215.86,260.94");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=235.46,67.53");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=163.04,75.48");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=131.22,187.68");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=289.56,176.36");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=196.42,171.01");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=322.96,125.83");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=207.93,14.59");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=237.53,100.16");
    }

}

