
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn12_8
{
    parameters:
        @display("bgb=1000,1000;bgg=100,1,grey95;bgu=m");
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
        @display("p=101.97,82.99");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=85.78,138.43");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=66.38,149.99");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=79.66,166.24");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=56.01,186.74");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=40.37,201.98");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=61.76,220.95");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=92.84,202.32");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=86.15,219.52");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=74.89,226.99");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=131.52,309.14");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=81.11,344.70");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=101.43,322.54");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=35.47,356.37");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=39.65,345.01");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=20.33,392.28");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=90.41,58.84");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=88.07,80.18");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=96.66,159.67");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=38.06,148.54");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=131.32,142.34");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=30.20,130.24");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=71.18,249.27");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=54.27,260.21");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=39.05,252.31");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=141.73,228.17");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=50.18,138.84");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=144.25,319.11");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=51.37,296.72");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=88.26,281.95");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=29.42,313.05");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=56.42,309.90");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=22.78,381.17");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=123.60,83.53");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=107.71,20.39");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=167.21,131.90");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=32.94,74.11");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=112.74,177.68");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=65.55,190.00");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=54.25,243.45");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=39.01,239.10");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=124.99,206.01");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=119.58,277.99");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=67.91,212.16");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=122.24,301.49");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=39.56,269.80");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=146.56,361.33");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=5.47,349.36");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=127.73,339.03");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=28.17,426.03");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=119.19,116.22");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=140.70,73.29");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=143.18,87.09");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=50.98,176.87");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=102.32,176.69");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=83.21,207.42");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=6.64,289.82");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=14.24,206.23");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=84.74,180.28");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=120.65,161.81");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=102.16,241.11");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=134.80,389.99");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=117.26,332.18");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=59.29,327.32");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=39.56,327.57");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=64.73,410.20");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=44.37,482.83");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=124.82,61.29");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=157.40,146.20");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=93.21,186.56");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=9.74,218.96");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=54.42,153.87");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=150.27,208.48");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=36.23,176.61");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=64.33,240.67");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=156.63,276.16");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=96.23,251.93");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=100.47,269.63");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=103.47,302.58");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=63.82,424.71");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=89.47,385.20");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=5.42,375.50");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=28.79,339.64");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=100.89,359.78");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=73.64,21.81");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=83.91,69.38");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=126.27,105.29");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=8.39,175.86");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=44.91,229.86");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=45.83,161.82");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=62.64,202.86");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=45.63,218.20");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=18.99,167.07");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=23.37,142.81");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=108.05,251.80");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=208.03,274.90");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=79.61,388.12");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=141.76,333.82");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=88.07,337.10");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=24.58,284.98");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=68.81,320.91");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=184.22,141.64");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=154.58,89.52");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=81.79,152.22");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=134.14,113.44");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=80.18,195.88");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=112.79,222.85");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=75.03,279.03");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=85.71,298.50");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=118.56,242.95");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=62.28,270.28");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=108.48,213.75");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=85.00,314.66");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=97.65,393.88");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=118.55,312.05");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=81.60,430.96");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=17.51,344.96");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=71.56,336.73");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=85.97,91.24");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=165.28,77.61");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=71.33,105.81");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=107.72,135.38");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=104.66,109.53");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=68.44,115.53");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=5.32,275.46");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=132.05,170.20");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=155.89,127.92");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=94.81,225.36");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=26.96,218.39");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=51.66,335.10");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=87.80,410.41");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=109.31,374.09");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=67.96,380.26");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=72.41,355.38");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=41.68,398.86");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=8.69,93.02");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=182.31,30.74");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=169.61,189.55");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=7.58,123.52");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=169.71,145.65");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=37.41,106.94");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=75.55,128.66");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=119.26,151.15");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=114.65,287.28");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=144.93,295.76");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=84.48,268.73");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=179.48,343.00");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=160.69,353.06");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=167.14,332.13");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=33.23,451.00");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=20.11,363.04");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=52.74,444.31");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=115.60,101.98");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=106.56,121.26");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=97.09,142.31");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=21.80,236.85");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=68.15,176.66");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=29.55,205.15");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=91.38,125.15");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=128.87,232.66");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=164.53,236.37");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=18.62,262.66");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=150.52,251.68");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=115.11,346.68");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=104.75,418.06");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=70.20,294.41");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=61.39,341.65");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=82.41,370.13");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=39.07,387.83");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=176.79,121.90");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=18.35,49.49");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=157.63,158.35");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=9.75,79.03");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=144.07,177.43");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=71.83,259.37");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=123.30,195.26");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=12.05,190.33");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=49.40,195.83");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=59.00,165.56");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=162.27,254.47");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=48.92,363.29");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=128.40,291.20");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=41.37,303.08");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=36.51,293.74");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=43.16,420.10");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=38.27,374.05");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=121.91,47.04");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=28.09,102.16");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=137.25,102.30");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=57.47,125.40");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=68.49,160.12");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=37.76,192.07");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=20.62,177.66");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=134.32,197.38");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=137.26,218.64");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=141.81,239.25");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=125.44,219.32");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=221.19,310.99");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=152.94,308.00");
    }

}

