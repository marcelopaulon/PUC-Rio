
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM200-0
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
        @display("p=53.00,1.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=63.01,44.23");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=29.54,110.11");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=11.32,74.64");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=40.68,95.33");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=61.72,99.91");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=7.21,152.41");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=17.72,121.28");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=89.61,183.23");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=126.07,192.28");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=88.70,245.22");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=105.04,225.70");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=144.02,214.84");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=201.60,185.96");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=140.77,115.48");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=149.71,148.35");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=203.27,121.53");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=127.23,164.69");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=178.17,80.85");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=164.03,29.36");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=175.37,70.16");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=227.77,8.00");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=141.19,26.84");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=44.27,21.79");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=41.70,7.49");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=27.57,44.82");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=82.57,2.03");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=64.49,15.34");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=113.40,7.62");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=52.77,54.82");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=87.30,110.25");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=101.25,101.82");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=120.94,47.05");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=72.68,76.49");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=6.10,17.11");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=24.18,62.84");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=54.02,82.40");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=18.92,36.67");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=18.41,90.57");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=154.10,98.35");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=181.15,109.88");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=185.44,27.15");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=234.53,24.49");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=215.35,26.24");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=116.80,33.28");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=238.87,39.53");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=250.47,32.21");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=320.09,26.46");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=341.17,24.96");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=347.84,5.98");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=359.57,2.98");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=345.55,87.95");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=335.93,162.31");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=322.00,151.90");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=375.34,161.18");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=355.84,96.44");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=383.83,102.65");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=364.45,134.36");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=347.23,201.73");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=358.58,247.51");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=373.08,246.55");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=373.24,310.75");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=344.58,348.18");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=363.33,330.46");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=300.76,288.15");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=259.32,359.52");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=305.23,388.16");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=294.11,358.90");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=230.53,390.71");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=238.47,322.24");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=239.41,398.54");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=204.94,357.74");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=283.49,323.18");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=227.79,322.50");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=215.00,336.68");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=290.43,282.91");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=226.26,256.48");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=203.43,264.36");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=149.94,252.25");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=202.48,234.45");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=147.42,194.67");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=185.16,228.94");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=190.47,249.69");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=212.51,255.71");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=239.98,337.69");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=308.86,301.17");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=324.93,250.34");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=336.68,266.81");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=372.48,274.60");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=370.87,263.43");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=293.14,329.22");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=331.20,293.53");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=260.98,338.72");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=225.61,312.46");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=229.90,347.06");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=182.05,282.61");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=163.88,287.90");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=126.74,240.79");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=108.94,264.12");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=174.44,259.23");
    }

    host_fn_rly_101: <default("SensorNode")> like INetworkNode {
        @display("p=57.15,187.03");
    }

    host_fn_rly_102: <default("SensorNode")> like INetworkNode {
        @display("p=64.73,172.60");
    }

    host_fn_rly_103: <default("SensorNode")> like INetworkNode {
        @display("p=48.94,113.33");
    }

    host_fn_rly_104: <default("SensorNode")> like INetworkNode {
        @display("p=85.07,86.60");
    }

    host_fn_rly_105: <default("SensorNode")> like INetworkNode {
        @display("p=91.72,21.08");
    }

    host_fn_rly_106: <default("SensorNode")> like INetworkNode {
        @display("p=93.20,69.31");
    }

    host_fn_rly_107: <default("SensorNode")> like INetworkNode {
        @display("p=30.13,8.98");
    }

    host_fn_rly_108: <default("SensorNode")> like INetworkNode {
        @display("p=1.64,29.38");
    }

    host_fn_rly_109: <default("SensorNode")> like INetworkNode {
        @display("p=80.14,38.82");
    }

    host_fn_rly_110: <default("SensorNode")> like INetworkNode {
        @display("p=99.28,33.99");
    }

    host_fn_rly_111: <default("SensorNode")> like INetworkNode {
        @display("p=108.45,20.65");
    }

    host_fn_rly_112: <default("SensorNode")> like INetworkNode {
        @display("p=136.83,48.57");
    }

    host_fn_rly_113: <default("SensorNode")> like INetworkNode {
        @display("p=147.07,43.61");
    }

    host_fn_rly_114: <default("SensorNode")> like INetworkNode {
        @display("p=145.41,59.30");
    }

    host_fn_rly_115: <default("SensorNode")> like INetworkNode {
        @display("p=86.03,120.61");
    }

    host_fn_rly_116: <default("SensorNode")> like INetworkNode {
        @display("p=73.07,218.91");
    }

    host_fn_rly_117: <default("SensorNode")> like INetworkNode {
        @display("p=80.61,151.03");
    }

    host_fn_rly_118: <default("SensorNode")> like INetworkNode {
        @display("p=92.89,169.95");
    }

    host_fn_rly_119: <default("SensorNode")> like INetworkNode {
        @display("p=63.04,229.68");
    }

    host_fn_rly_120: <default("SensorNode")> like INetworkNode {
        @display("p=4.50,235.04");
    }

    host_fn_rly_121: <default("SensorNode")> like INetworkNode {
        @display("p=43.47,255.85");
    }

    host_fn_rly_122: <default("SensorNode")> like INetworkNode {
        @display("p=37.32,237.13");
    }

    host_fn_rly_123: <default("SensorNode")> like INetworkNode {
        @display("p=49.58,239.04");
    }

    host_fn_rly_124: <default("SensorNode")> like INetworkNode {
        @display("p=104.99,154.60");
    }

    host_fn_rly_125: <default("SensorNode")> like INetworkNode {
        @display("p=133.29,153.43");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=27.50,27.81");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=131.70,3.15");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=71.87,162.33");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=17.51,21.51");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=37.76,69.73");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=69.61,56.31");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=12.77,134.93");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=54.96,168.23");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=167.23,193.26");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=159.28,163.99");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=64.31,246.11");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=39.62,226.43");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=136.38,203.68");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=255.71,252.42");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=229.15,82.75");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=129.50,214.88");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=206.15,99.72");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=153.25,183.27");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=203.98,51.78");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=167.51,62.47");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=159.18,79.93");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=264.69,67.03");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=219.13,47.43");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=108.83,47.84");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=2.30,44.10");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=37.14,49.81");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=81.65,55.42");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=56.34,26.92");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=132.15,86.15");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=123.70,68.94");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=37.90,33.76");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=39.21,118.81");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=103.50,71.19");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=122.92,126.11");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=14.32,1.06");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=47.55,124.59");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=10.22,109.92");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=16.52,48.45");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=46.01,155.07");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=138.54,76.65");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=167.43,98.58");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=195.67,36.96");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=191.79,46.51");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=215.42,3.57");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=199.54,22.88");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=252.96,45.08");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=311.36,84.68");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=274.31,31.21");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=337.20,38.52");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=274.39,42.45");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=383.05,4.72");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=256.80,85.50");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=340.89,139.95");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=241.53,203.29");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=395.06,126.62");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=365.42,25.62");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=371.73,60.59");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=348.91,132.90");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=300.12,245.80");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=384.91,164.85");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=367.10,177.88");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=374.78,291.02");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=383.45,316.90");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=316.97,362.63");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=312.27,264.24");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=205.38,380.32");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=258.64,398.82");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=357.18,347.57");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=300.41,340.54");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=191.82,326.97");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=274.75,378.67");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=164.40,322.33");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=311.14,285.88");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=185.25,335.62");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=182.91,380.87");
    }

    host_lpn_201: <default("SensorNode")> like INetworkNode {
        @display("p=318.37,335.29");
    }

    host_lpn_202: <default("SensorNode")> like INetworkNode {
        @display("p=220.34,287.58");
    }

    host_lpn_203: <default("SensorNode")> like INetworkNode {
        @display("p=189.62,275.06");
    }

    host_lpn_204: <default("SensorNode")> like INetworkNode {
        @display("p=127.19,278.64");
    }

    host_lpn_205: <default("SensorNode")> like INetworkNode {
        @display("p=171.46,237.11");
    }

    host_lpn_206: <default("SensorNode")> like INetworkNode {
        @display("p=193.45,205.78");
    }

    host_lpn_207: <default("SensorNode")> like INetworkNode {
        @display("p=256.46,237.94");
    }

    host_lpn_208: <default("SensorNode")> like INetworkNode {
        @display("p=267.86,307.35");
    }

    host_lpn_209: <default("SensorNode")> like INetworkNode {
        @display("p=259.12,186.92");
    }

    host_lpn_210: <default("SensorNode")> like INetworkNode {
        @display("p=158.43,352.95");
    }

    host_lpn_211: <default("SensorNode")> like INetworkNode {
        @display("p=289.26,368.41");
    }

    host_lpn_212: <default("SensorNode")> like INetworkNode {
        @display("p=263.36,266.29");
    }

    host_lpn_213: <default("SensorNode")> like INetworkNode {
        @display("p=297.52,312.67");
    }

    host_lpn_214: <default("SensorNode")> like INetworkNode {
        @display("p=377.20,208.45");
    }

    host_lpn_215: <default("SensorNode")> like INetworkNode {
        @display("p=297.02,212.70");
    }

    host_lpn_216: <default("SensorNode")> like INetworkNode {
        @display("p=313.78,346.33");
    }

    host_lpn_217: <default("SensorNode")> like INetworkNode {
        @display("p=332.48,316.55");
    }

    host_lpn_218: <default("SensorNode")> like INetworkNode {
        @display("p=260.98,376.34");
    }

    host_lpn_219: <default("SensorNode")> like INetworkNode {
        @display("p=255.12,386.51");
    }

    host_lpn_220: <default("SensorNode")> like INetworkNode {
        @display("p=169.70,348.88");
    }

    host_lpn_221: <default("SensorNode")> like INetworkNode {
        @display("p=133.36,315.05");
    }

    host_lpn_222: <default("SensorNode")> like INetworkNode {
        @display("p=155.69,269.04");
    }

    host_lpn_223: <default("SensorNode")> like INetworkNode {
        @display("p=168.28,249.62");
    }

    host_lpn_224: <default("SensorNode")> like INetworkNode {
        @display("p=117.11,236.99");
    }

    host_lpn_225: <default("SensorNode")> like INetworkNode {
        @display("p=145.08,299.01");
    }

    host_lpn_226: <default("SensorNode")> like INetworkNode {
        @display("p=70.68,112.24");
    }

    host_lpn_227: <default("SensorNode")> like INetworkNode {
        @display("p=40.89,203.91");
    }

    host_lpn_228: <default("SensorNode")> like INetworkNode {
        @display("p=116.48,182.30");
    }

    host_lpn_229: <default("SensorNode")> like INetworkNode {
        @display("p=40.78,143.14");
    }

    host_lpn_230: <default("SensorNode")> like INetworkNode {
        @display("p=167.81,17.33");
    }

    host_lpn_231: <default("SensorNode")> like INetworkNode {
        @display("p=113.24,114.67");
    }

    host_lpn_232: <default("SensorNode")> like INetworkNode {
        @display("p=126.91,29.86");
    }

    host_lpn_233: <default("SensorNode")> like INetworkNode {
        @display("p=27.83,83.48");
    }

    host_lpn_234: <default("SensorNode")> like INetworkNode {
        @display("p=114.49,73.54");
    }

    host_lpn_235: <default("SensorNode")> like INetworkNode {
        @display("p=113.34,91.63");
    }

    host_lpn_236: <default("SensorNode")> like INetworkNode {
        @display("p=93.83,93.63");
    }

    host_lpn_237: <default("SensorNode")> like INetworkNode {
        @display("p=169.00,130.47");
    }

    host_lpn_238: <default("SensorNode")> like INetworkNode {
        @display("p=139.64,97.15");
    }

    host_lpn_239: <default("SensorNode")> like INetworkNode {
        @display("p=105.70,81.31");
    }

    host_lpn_240: <default("SensorNode")> like INetworkNode {
        @display("p=113.87,102.23");
    }

    host_lpn_241: <default("SensorNode")> like INetworkNode {
        @display("p=9.43,219.07");
    }

    host_lpn_242: <default("SensorNode")> like INetworkNode {
        @display("p=19.73,155.87");
    }

    host_lpn_243: <default("SensorNode")> like INetworkNode {
        @display("p=68.41,195.76");
    }

    host_lpn_244: <default("SensorNode")> like INetworkNode {
        @display("p=68.27,258.33");
    }

    host_lpn_245: <default("SensorNode")> like INetworkNode {
        @display("p=19.79,249.42");
    }

    host_lpn_246: <default("SensorNode")> like INetworkNode {
        @display("p=30.56,267.75");
    }

    host_lpn_247: <default("SensorNode")> like INetworkNode {
        @display("p=29.05,283.79");
    }

    host_lpn_248: <default("SensorNode")> like INetworkNode {
        @display("p=100.40,216.65");
    }

    host_lpn_249: <default("SensorNode")> like INetworkNode {
        @display("p=117.23,208.50");
    }

    host_lpn_250: <default("SensorNode")> like INetworkNode {
        @display("p=223.53,173.70");
    }

    host_lpn_251: <default("SensorNode")> like INetworkNode {
        @display("p=122.09,56.99");
    }

    host_lpn_252: <default("SensorNode")> like INetworkNode {
        @display("p=66.47,84.84");
    }

    host_lpn_253: <default("SensorNode")> like INetworkNode {
        @display("p=65.24,120.65");
    }

    host_lpn_254: <default("SensorNode")> like INetworkNode {
        @display("p=15.02,174.24");
    }

    host_lpn_255: <default("SensorNode")> like INetworkNode {
        @display("p=75.75,122.58");
    }

    host_lpn_256: <default("SensorNode")> like INetworkNode {
        @display("p=23.68,190.31");
    }

    host_lpn_257: <default("SensorNode")> like INetworkNode {
        @display("p=0.52,100.89");
    }

    host_lpn_258: <default("SensorNode")> like INetworkNode {
        @display("p=59.82,136.27");
    }

    host_lpn_259: <default("SensorNode")> like INetworkNode {
        @display("p=106.88,188.18");
    }

    host_lpn_260: <default("SensorNode")> like INetworkNode {
        @display("p=143.76,287.52");
    }

    host_lpn_261: <default("SensorNode")> like INetworkNode {
        @display("p=91.40,232.57");
    }

    host_lpn_262: <default("SensorNode")> like INetworkNode {
        @display("p=28.91,175.66");
    }

    host_lpn_263: <default("SensorNode")> like INetworkNode {
        @display("p=194.94,299.68");
    }

    host_lpn_264: <default("SensorNode")> like INetworkNode {
        @display("p=141.64,240.34");
    }

    host_lpn_265: <default("SensorNode")> like INetworkNode {
        @display("p=117.62,153.95");
    }

    host_lpn_266: <default("SensorNode")> like INetworkNode {
        @display("p=116.22,223.65");
    }

    host_lpn_267: <default("SensorNode")> like INetworkNode {
        @display("p=260.34,123.19");
    }

    host_lpn_268: <default("SensorNode")> like INetworkNode {
        @display("p=216.01,210.55");
    }

    host_lpn_269: <default("SensorNode")> like INetworkNode {
        @display("p=221.25,90.60");
    }

    host_lpn_270: <default("SensorNode")> like INetworkNode {
        @display("p=235.74,64.09");
    }

    host_lpn_271: <default("SensorNode")> like INetworkNode {
        @display("p=200.76,82.20");
    }

    host_lpn_272: <default("SensorNode")> like INetworkNode {
        @display("p=310.49,49.45");
    }

    host_lpn_273: <default("SensorNode")> like INetworkNode {
        @display("p=187.90,68.92");
    }

    host_lpn_274: <default("SensorNode")> like INetworkNode {
        @display("p=48.32,34.32");
    }

    host_lpn_275: <default("SensorNode")> like INetworkNode {
        @display("p=65.57,3.30");
    }

    host_lpn_276: <default("SensorNode")> like INetworkNode {
        @display("p=54.00,66.99");
    }

    host_lpn_277: <default("SensorNode")> like INetworkNode {
        @display("p=146.52,15.15");
    }

    host_lpn_278: <default("SensorNode")> like INetworkNode {
        @display("p=72.58,29.12");
    }

    host_lpn_279: <default("SensorNode")> like INetworkNode {
        @display("p=134.54,14.15");
    }

    host_lpn_280: <default("SensorNode")> like INetworkNode {
        @display("p=60.14,148.96");
    }

    host_lpn_281: <default("SensorNode")> like INetworkNode {
        @display("p=122.86,96.68");
    }

    host_lpn_282: <default("SensorNode")> like INetworkNode {
        @display("p=64.62,70.53");
    }

    host_lpn_283: <default("SensorNode")> like INetworkNode {
        @display("p=162.08,4.34");
    }

    host_lpn_284: <default("SensorNode")> like INetworkNode {
        @display("p=95.70,50.61");
    }

    host_lpn_285: <default("SensorNode")> like INetworkNode {
        @display("p=90.13,41.67");
    }

    host_lpn_286: <default("SensorNode")> like INetworkNode {
        @display("p=83.15,66.05");
    }

    host_lpn_287: <default("SensorNode")> like INetworkNode {
        @display("p=73.31,134.42");
    }

    host_lpn_288: <default("SensorNode")> like INetworkNode {
        @display("p=10.55,60.21");
    }

    host_lpn_289: <default("SensorNode")> like INetworkNode {
        @display("p=3.69,84.12");
    }

    host_lpn_290: <default("SensorNode")> like INetworkNode {
        @display("p=128.60,117.82");
    }

    host_lpn_291: <default("SensorNode")> like INetworkNode {
        @display("p=225.29,142.03");
    }

    host_lpn_292: <default("SensorNode")> like INetworkNode {
        @display("p=184.73,11.72");
    }

    host_lpn_293: <default("SensorNode")> like INetworkNode {
        @display("p=207.91,65.53");
    }

    host_lpn_294: <default("SensorNode")> like INetworkNode {
        @display("p=287.80,43.60");
    }

    host_lpn_295: <default("SensorNode")> like INetworkNode {
        @display("p=155.35,66.02");
    }

    host_lpn_296: <default("SensorNode")> like INetworkNode {
        @display("p=268.98,108.37");
    }

    host_lpn_297: <default("SensorNode")> like INetworkNode {
        @display("p=249.35,7.01");
    }

    host_lpn_298: <default("SensorNode")> like INetworkNode {
        @display("p=334.37,9.34");
    }

    host_lpn_299: <default("SensorNode")> like INetworkNode {
        @display("p=387.19,70.03");
    }

    host_lpn_300: <default("SensorNode")> like INetworkNode {
        @display("p=283.46,53.28");
    }

    host_lpn_301: <default("SensorNode")> like INetworkNode {
        @display("p=300.42,61.63");
    }

    host_lpn_302: <default("SensorNode")> like INetworkNode {
        @display("p=351.10,176.26");
    }

    host_lpn_303: <default("SensorNode")> like INetworkNode {
        @display("p=293.78,148.27");
    }

    host_lpn_304: <default("SensorNode")> like INetworkNode {
        @display("p=268.24,172.99");
    }

    host_lpn_305: <default("SensorNode")> like INetworkNode {
        @display("p=327.46,231.84");
    }

    host_lpn_306: <default("SensorNode")> like INetworkNode {
        @display("p=363.92,156.34");
    }

    host_lpn_307: <default("SensorNode")> like INetworkNode {
        @display("p=383.14,116.37");
    }

    host_lpn_308: <default("SensorNode")> like INetworkNode {
        @display("p=380.74,132.51");
    }

    host_lpn_309: <default("SensorNode")> like INetworkNode {
        @display("p=312.71,160.26");
    }

    host_lpn_310: <default("SensorNode")> like INetworkNode {
        @display("p=355.35,285.34");
    }

    host_lpn_311: <default("SensorNode")> like INetworkNode {
        @display("p=389.99,344.17");
    }

    host_lpn_312: <default("SensorNode")> like INetworkNode {
        @display("p=340.36,299.56");
    }

    host_lpn_313: <default("SensorNode")> like INetworkNode {
        @display("p=397.33,357.79");
    }

    host_lpn_314: <default("SensorNode")> like INetworkNode {
        @display("p=285.61,308.95");
    }

    host_lpn_315: <default("SensorNode")> like INetworkNode {
        @display("p=337.66,333.74");
    }

    host_lpn_316: <default("SensorNode")> like INetworkNode {
        @display("p=293.98,383.40");
    }

    host_lpn_317: <default("SensorNode")> like INetworkNode {
        @display("p=364.93,398.68");
    }

    host_lpn_318: <default("SensorNode")> like INetworkNode {
        @display("p=335.78,378.07");
    }

    host_lpn_319: <default("SensorNode")> like INetworkNode {
        @display("p=210.86,346.87");
    }

    host_lpn_320: <default("SensorNode")> like INetworkNode {
        @display("p=241.13,279.23");
    }

    host_lpn_321: <default("SensorNode")> like INetworkNode {
        @display("p=211.73,305.14");
    }

    host_lpn_322: <default("SensorNode")> like INetworkNode {
        @display("p=176.09,391.32");
    }

    host_lpn_323: <default("SensorNode")> like INetworkNode {
        @display("p=283.02,333.77");
    }

    host_lpn_324: <default("SensorNode")> like INetworkNode {
        @display("p=270.76,293.82");
    }

    host_lpn_325: <default("SensorNode")> like INetworkNode {
        @display("p=204.46,328.92");
    }

    host_lpn_326: <default("SensorNode")> like INetworkNode {
        @display("p=244.32,300.74");
    }

    host_lpn_327: <default("SensorNode")> like INetworkNode {
        @display("p=247.83,268.18");
    }

    host_lpn_328: <default("SensorNode")> like INetworkNode {
        @display("p=166.22,214.83");
    }

    host_lpn_329: <default("SensorNode")> like INetworkNode {
        @display("p=172.20,271.27");
    }

    host_lpn_330: <default("SensorNode")> like INetworkNode {
        @display("p=190.09,261.76");
    }

    host_lpn_331: <default("SensorNode")> like INetworkNode {
        @display("p=236.20,189.01");
    }

    host_lpn_332: <default("SensorNode")> like INetworkNode {
        @display("p=158.67,205.82");
    }

    host_lpn_333: <default("SensorNode")> like INetworkNode {
        @display("p=245.83,244.95");
    }

    host_lpn_334: <default("SensorNode")> like INetworkNode {
        @display("p=120.46,256.92");
    }

    host_lpn_335: <default("SensorNode")> like INetworkNode {
        @display("p=248.54,331.35");
    }

    host_lpn_336: <default("SensorNode")> like INetworkNode {
        @display("p=228.67,358.44");
    }

    host_lpn_337: <default("SensorNode")> like INetworkNode {
        @display("p=382.90,259.70");
    }

    host_lpn_338: <default("SensorNode")> like INetworkNode {
        @display("p=324.13,191.93");
    }

    host_lpn_339: <default("SensorNode")> like INetworkNode {
        @display("p=346.47,324.39");
    }

    host_lpn_340: <default("SensorNode")> like INetworkNode {
        @display("p=342.78,184.52");
    }

    host_lpn_341: <default("SensorNode")> like INetworkNode {
        @display("p=334.79,398.78");
    }

    host_lpn_342: <default("SensorNode")> like INetworkNode {
        @display("p=325.19,303.15");
    }

    host_lpn_343: <default("SensorNode")> like INetworkNode {
        @display("p=348.75,384.51");
    }

    host_lpn_344: <default("SensorNode")> like INetworkNode {
        @display("p=137.58,268.68");
    }

    host_lpn_345: <default("SensorNode")> like INetworkNode {
        @display("p=318.38,317.48");
    }

    host_lpn_346: <default("SensorNode")> like INetworkNode {
        @display("p=191.67,287.28");
    }

    host_lpn_347: <default("SensorNode")> like INetworkNode {
        @display("p=94.10,315.70");
    }

    host_lpn_348: <default("SensorNode")> like INetworkNode {
        @display("p=135.30,258.78");
    }

    host_lpn_349: <default("SensorNode")> like INetworkNode {
        @display("p=125.67,227.23");
    }

    host_lpn_350: <default("SensorNode")> like INetworkNode {
        @display("p=137.21,193.36");
    }

    host_lpn_351: <default("SensorNode")> like INetworkNode {
        @display("p=88.14,257.46");
    }

    host_lpn_352: <default("SensorNode")> like INetworkNode {
        @display("p=35.73,133.32");
    }

    host_lpn_353: <default("SensorNode")> like INetworkNode {
        @display("p=76.46,103.69");
    }

    host_lpn_354: <default("SensorNode")> like INetworkNode {
        @display("p=112.74,127.43");
    }

    host_lpn_355: <default("SensorNode")> like INetworkNode {
        @display("p=26.47,72.93");
    }

    host_lpn_356: <default("SensorNode")> like INetworkNode {
        @display("p=104.88,57.81");
    }

    host_lpn_357: <default("SensorNode")> like INetworkNode {
        @display("p=80.01,20.87");
    }

    host_lpn_358: <default("SensorNode")> like INetworkNode {
        @display("p=92.87,4.34");
    }

    host_lpn_359: <default("SensorNode")> like INetworkNode {
        @display("p=52.03,12.35");
    }

    host_lpn_360: <default("SensorNode")> like INetworkNode {
        @display("p=41.18,105.36");
    }

    host_lpn_361: <default("SensorNode")> like INetworkNode {
        @display("p=147.09,105.87");
    }

    host_lpn_362: <default("SensorNode")> like INetworkNode {
        @display("p=180.76,57.49");
    }

    host_lpn_363: <default("SensorNode")> like INetworkNode {
        @display("p=158.00,38.73");
    }

    host_lpn_364: <default("SensorNode")> like INetworkNode {
        @display("p=149.49,4.49");
    }

    host_lpn_365: <default("SensorNode")> like INetworkNode {
        @display("p=74.99,93.29");
    }

    host_lpn_366: <default("SensorNode")> like INetworkNode {
        @display("p=32.01,147.97");
    }

    host_lpn_367: <default("SensorNode")> like INetworkNode {
        @display("p=88.36,209.77");
    }

    host_lpn_368: <default("SensorNode")> like INetworkNode {
        @display("p=83.68,161.80");
    }

    host_lpn_369: <default("SensorNode")> like INetworkNode {
        @display("p=53.83,217.54");
    }

    host_lpn_370: <default("SensorNode")> like INetworkNode {
        @display("p=1.38,191.46");
    }

    host_lpn_371: <default("SensorNode")> like INetworkNode {
        @display("p=22.51,311.74");
    }

    host_lpn_372: <default("SensorNode")> like INetworkNode {
        @display("p=107.53,205.65");
    }

    host_lpn_373: <default("SensorNode")> like INetworkNode {
        @display("p=29.48,229.49");
    }

    host_lpn_374: <default("SensorNode")> like INetworkNode {
        @display("p=122.35,139.35");
    }

    host_lpn_375: <default("SensorNode")> like INetworkNode {
        @display("p=137.82,144.48");
    }

    host_lpn_376: <default("SensorNode")> like INetworkNode {
        @display("p=41.87,79.36");
    }

    host_lpn_377: <default("SensorNode")> like INetworkNode {
        @display("p=20.83,102.32");
    }

    host_lpn_378: <default("SensorNode")> like INetworkNode {
        @display("p=94.82,132.76");
    }

    host_lpn_379: <default("SensorNode")> like INetworkNode {
        @display("p=10.19,97.62");
    }

    host_lpn_380: <default("SensorNode")> like INetworkNode {
        @display("p=50.77,96.27");
    }

    host_lpn_381: <default("SensorNode")> like INetworkNode {
        @display("p=18.92,143.69");
    }

    host_lpn_382: <default("SensorNode")> like INetworkNode {
        @display("p=12.16,190.77");
    }

    host_lpn_383: <default("SensorNode")> like INetworkNode {
        @display("p=35.16,159.75");
    }

    host_lpn_384: <default("SensorNode")> like INetworkNode {
        @display("p=105.30,169.06");
    }

    host_lpn_385: <default("SensorNode")> like INetworkNode {
        @display("p=190.47,144.03");
    }

    host_lpn_386: <default("SensorNode")> like INetworkNode {
        @display("p=72.36,284.50");
    }

    host_lpn_387: <default("SensorNode")> like INetworkNode {
        @display("p=75.91,246.66");
    }

    host_lpn_388: <default("SensorNode")> like INetworkNode {
        @display("p=178.65,205.56");
    }

    host_lpn_389: <default("SensorNode")> like INetworkNode {
        @display("p=202.84,196.88");
    }

    host_lpn_390: <default("SensorNode")> like INetworkNode {
        @display("p=131.78,131.45");
    }

    host_lpn_391: <default("SensorNode")> like INetworkNode {
        @display("p=192.94,117.92");
    }

    host_lpn_392: <default("SensorNode")> like INetworkNode {
        @display("p=233.93,152.51");
    }

    host_lpn_393: <default("SensorNode")> like INetworkNode {
        @display("p=179.35,133.58");
    }

    host_lpn_394: <default("SensorNode")> like INetworkNode {
        @display("p=245.36,81.86");
    }

    host_lpn_395: <default("SensorNode")> like INetworkNode {
        @display("p=102.57,7.42");
    }

    host_lpn_396: <default("SensorNode")> like INetworkNode {
        @display("p=156.04,53.70");
    }

    host_lpn_397: <default("SensorNode")> like INetworkNode {
        @display("p=301.79,39.39");
    }

    host_lpn_398: <default("SensorNode")> like INetworkNode {
        @display("p=173.30,36.20");
    }

    host_lpn_399: <default("SensorNode")> like INetworkNode {
        @display("p=59.66,110.65");
    }

    host_lpn_400: <default("SensorNode")> like INetworkNode {
        @display("p=0.50,61.88");
    }

    host_lpn_401: <default("SensorNode")> like INetworkNode {
        @display("p=1.15,1.31");
    }

    host_lpn_402: <default("SensorNode")> like INetworkNode {
        @display("p=174.87,1.98");
    }

    host_lpn_403: <default("SensorNode")> like INetworkNode {
        @display("p=133.77,39.03");
    }

    host_lpn_404: <default("SensorNode")> like INetworkNode {
        @display("p=201.46,2.96");
    }

    host_lpn_405: <default("SensorNode")> like INetworkNode {
        @display("p=76.44,11.42");
    }

    host_lpn_406: <default("SensorNode")> like INetworkNode {
        @display("p=92.23,146.29");
    }

    host_lpn_407: <default("SensorNode")> like INetworkNode {
        @display("p=88.63,197.21");
    }

    host_lpn_408: <default("SensorNode")> like INetworkNode {
        @display("p=153.77,123.76");
    }

    host_lpn_409: <default("SensorNode")> like INetworkNode {
        @display("p=7.08,119.76");
    }

    host_lpn_410: <default("SensorNode")> like INetworkNode {
        @display("p=19.81,11.12");
    }

    host_lpn_411: <default("SensorNode")> like INetworkNode {
        @display("p=31.28,99.66");
    }

    host_lpn_412: <default("SensorNode")> like INetworkNode {
        @display("p=84.06,132.31");
    }

    host_lpn_413: <default("SensorNode")> like INetworkNode {
        @display("p=47.67,44.49");
    }

    host_lpn_414: <default("SensorNode")> like INetworkNode {
        @display("p=46.09,183.19");
    }

    host_lpn_415: <default("SensorNode")> like INetworkNode {
        @display("p=141.80,127.12");
    }

    host_lpn_416: <default("SensorNode")> like INetworkNode {
        @display("p=183.05,164.18");
    }

    host_lpn_417: <default("SensorNode")> like INetworkNode {
        @display("p=123.92,13.04");
    }

    host_lpn_418: <default("SensorNode")> like INetworkNode {
        @display("p=296.71,30.56");
    }

    host_lpn_419: <default("SensorNode")> like INetworkNode {
        @display("p=289.04,12.25");
    }

    host_lpn_420: <default("SensorNode")> like INetworkNode {
        @display("p=163.62,119.47");
    }

    host_lpn_421: <default("SensorNode")> like INetworkNode {
        @display("p=247.49,124.85");
    }

    host_lpn_422: <default("SensorNode")> like INetworkNode {
        @display("p=240.91,15.45");
    }

    host_lpn_423: <default("SensorNode")> like INetworkNode {
        @display("p=363.32,47.38");
    }

    host_lpn_424: <default("SensorNode")> like INetworkNode {
        @display("p=342.51,55.14");
    }

    host_lpn_425: <default("SensorNode")> like INetworkNode {
        @display("p=354.78,54.38");
    }

    host_lpn_426: <default("SensorNode")> like INetworkNode {
        @display("p=397.62,49.06");
    }

    host_lpn_427: <default("SensorNode")> like INetworkNode {
        @display("p=387.48,87.80");
    }

    host_lpn_428: <default("SensorNode")> like INetworkNode {
        @display("p=332.14,90.91");
    }

    host_lpn_429: <default("SensorNode")> like INetworkNode {
        @display("p=329.50,117.17");
    }

    host_lpn_430: <default("SensorNode")> like INetworkNode {
        @display("p=345.13,223.42");
    }

    host_lpn_431: <default("SensorNode")> like INetworkNode {
        @display("p=281.99,102.18");
    }

    host_lpn_432: <default("SensorNode")> like INetworkNode {
        @display("p=301.06,113.04");
    }

    host_lpn_433: <default("SensorNode")> like INetworkNode {
        @display("p=326.80,141.44");
    }

    host_lpn_434: <default("SensorNode")> like INetworkNode {
        @display("p=397.36,206.93");
    }

    host_lpn_435: <default("SensorNode")> like INetworkNode {
        @display("p=352.96,269.28");
    }

    host_lpn_436: <default("SensorNode")> like INetworkNode {
        @display("p=340.49,283.94");
    }

    host_lpn_437: <default("SensorNode")> like INetworkNode {
        @display("p=362.81,314.38");
    }

    host_lpn_438: <default("SensorNode")> like INetworkNode {
        @display("p=329.53,342.55");
    }

    host_lpn_439: <default("SensorNode")> like INetworkNode {
        @display("p=372.66,380.78");
    }

    host_lpn_440: <default("SensorNode")> like INetworkNode {
        @display("p=306.01,275.90");
    }

    host_lpn_441: <default("SensorNode")> like INetworkNode {
        @display("p=260.97,326.80");
    }

    host_lpn_442: <default("SensorNode")> like INetworkNode {
        @display("p=323.99,373.96");
    }

    host_lpn_443: <default("SensorNode")> like INetworkNode {
        @display("p=385.08,385.16");
    }

    host_lpn_444: <default("SensorNode")> like INetworkNode {
        @display("p=185.42,366.66");
    }

    host_lpn_445: <default("SensorNode")> like INetworkNode {
        @display("p=232.28,372.21");
    }

    host_lpn_446: <default("SensorNode")> like INetworkNode {
        @display("p=198.71,365.81");
    }

    host_lpn_447: <default("SensorNode")> like INetworkNode {
        @display("p=162.28,367.42");
    }

    host_lpn_448: <default("SensorNode")> like INetworkNode {
        @display("p=295.41,257.06");
    }

    host_lpn_449: <default("SensorNode")> like INetworkNode {
        @display("p=216.26,241.41");
    }

    host_lpn_450: <default("SensorNode")> like INetworkNode {
        @display("p=275.11,316.16");
    }

    host_lpn_451: <default("SensorNode")> like INetworkNode {
        @display("p=281.02,188.31");
    }

    host_lpn_452: <default("SensorNode")> like INetworkNode {
        @display("p=284.70,258.40");
    }

    host_lpn_453: <default("SensorNode")> like INetworkNode {
        @display("p=223.79,274.06");
    }

    host_lpn_454: <default("SensorNode")> like INetworkNode {
        @display("p=232.79,291.56");
    }

    host_lpn_455: <default("SensorNode")> like INetworkNode {
        @display("p=226.49,207.51");
    }

    host_lpn_456: <default("SensorNode")> like INetworkNode {
        @display("p=172.59,182.12");
    }

    host_lpn_457: <default("SensorNode")> like INetworkNode {
        @display("p=262.78,196.24");
    }

    host_lpn_458: <default("SensorNode")> like INetworkNode {
        @display("p=207.33,292.81");
    }

    host_lpn_459: <default("SensorNode")> like INetworkNode {
        @display("p=275.38,210.54");
    }

    host_lpn_460: <default("SensorNode")> like INetworkNode {
        @display("p=263.62,349.55");
    }

    host_lpn_461: <default("SensorNode")> like INetworkNode {
        @display("p=365.22,365.75");
    }

    host_lpn_462: <default("SensorNode")> like INetworkNode {
        @display("p=307.36,191.61");
    }

    host_lpn_463: <default("SensorNode")> like INetworkNode {
        @display("p=323.66,273.36");
    }

    host_lpn_464: <default("SensorNode")> like INetworkNode {
        @display("p=355.75,361.54");
    }

    host_lpn_465: <default("SensorNode")> like INetworkNode {
        @display("p=381.70,232.12");
    }

    host_lpn_466: <default("SensorNode")> like INetworkNode {
        @display("p=287.80,342.90");
    }

    host_lpn_467: <default("SensorNode")> like INetworkNode {
        @display("p=367.25,210.92");
    }

    host_lpn_468: <default("SensorNode")> like INetworkNode {
        @display("p=270.40,364.08");
    }

    host_lpn_469: <default("SensorNode")> like INetworkNode {
        @display("p=234.67,305.94");
    }

    host_lpn_470: <default("SensorNode")> like INetworkNode {
        @display("p=148.38,370.75");
    }

    host_lpn_471: <default("SensorNode")> like INetworkNode {
        @display("p=85.48,268.71");
    }

    host_lpn_472: <default("SensorNode")> like INetworkNode {
        @display("p=77.36,317.15");
    }

    host_lpn_473: <default("SensorNode")> like INetworkNode {
        @display("p=87.32,286.33");
    }

    host_lpn_474: <default("SensorNode")> like INetworkNode {
        @display("p=157.72,224.99");
    }

    host_lpn_475: <default("SensorNode")> like INetworkNode {
        @display("p=126.51,300.38");
    }

    host_lpn_476: <default("SensorNode")> like INetworkNode {
        @display("p=105.34,242.24");
    }

    host_lpn_477: <default("SensorNode")> like INetworkNode {
        @display("p=43.68,169.02");
    }

    host_lpn_478: <default("SensorNode")> like INetworkNode {
        @display("p=120.52,82.97");
    }

    host_lpn_479: <default("SensorNode")> like INetworkNode {
        @display("p=140.81,166.79");
    }

    host_lpn_480: <default("SensorNode")> like INetworkNode {
        @display("p=161.03,90.31");
    }

    host_lpn_481: <default("SensorNode")> like INetworkNode {
        @display("p=133.85,107.66");
    }

    host_lpn_482: <default("SensorNode")> like INetworkNode {
        @display("p=34.56,17.99");
    }

    host_lpn_483: <default("SensorNode")> like INetworkNode {
        @display("p=45.02,61.59");
    }

    host_lpn_484: <default("SensorNode")> like INetworkNode {
        @display("p=88.32,31.36");
    }

    host_lpn_485: <default("SensorNode")> like INetworkNode {
        @display("p=101.83,119.27");
    }

    host_lpn_486: <default("SensorNode")> like INetworkNode {
        @display("p=150.43,88.57");
    }

    host_lpn_487: <default("SensorNode")> like INetworkNode {
        @display("p=169.28,49.17");
    }

    host_lpn_488: <default("SensorNode")> like INetworkNode {
        @display("p=237.53,51.26");
    }

    host_lpn_489: <default("SensorNode")> like INetworkNode {
        @display("p=137.36,65.65");
    }

    host_lpn_490: <default("SensorNode")> like INetworkNode {
        @display("p=118.88,170.86");
    }

    host_lpn_491: <default("SensorNode")> like INetworkNode {
        @display("p=63.74,212.45");
    }

    host_lpn_492: <default("SensorNode")> like INetworkNode {
        @display("p=30.55,201.62");
    }

    host_lpn_493: <default("SensorNode")> like INetworkNode {
        @display("p=17.64,210.64");
    }

    host_lpn_494: <default("SensorNode")> like INetworkNode {
        @display("p=47.16,278.33");
    }

    host_lpn_495: <default("SensorNode")> like INetworkNode {
        @display("p=6.38,246.59");
    }

    host_lpn_496: <default("SensorNode")> like INetworkNode {
        @display("p=4.76,304.78");
    }

    host_lpn_497: <default("SensorNode")> like INetworkNode {
        @display("p=27.49,298.64");
    }

    host_lpn_498: <default("SensorNode")> like INetworkNode {
        @display("p=52.86,251.61");
    }

    host_lpn_499: <default("SensorNode")> like INetworkNode {
        @display("p=52.23,201.42");
    }

    host_lpn_500: <default("SensorNode")> like INetworkNode {
        @display("p=225.16,161.87");
    }

}

