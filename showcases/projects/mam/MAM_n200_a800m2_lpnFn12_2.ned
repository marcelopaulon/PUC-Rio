
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn12_2
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
        @display("p=167.30,91.11");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=129.38,65.42");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=181.48,81.45");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=243.57,97.43");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=289.52,175.63");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=279.98,143.93");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=267.41,127.46");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=289.60,164.82");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=253.35,173.59");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=211.30,202.60");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=219.02,177.98");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=222.92,138.69");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=138.78,165.26");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=157.14,101.16");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=198.53,134.92");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=266.41,107.13");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=119.45,15.68");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=203.60,57.75");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=195.74,93.88");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=211.22,143.33");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=306.29,85.30");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=295.23,266.35");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=330.60,111.31");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=321.17,171.03");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=345.80,177.35");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=267.94,231.86");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=252.05,237.35");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=224.24,159.09");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=223.52,210.46");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=73.05,151.89");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=156.77,111.69");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=196.47,75.42");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=243.97,73.27");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=82.35,24.41");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=127.76,104.78");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=127.12,38.20");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=118.61,68.87");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=201.26,46.33");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=314.13,132.95");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=328.30,86.16");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=171.02,104.37");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=352.26,142.68");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=317.50,107.14");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=215.87,166.74");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=152.12,244.08");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=299.87,148.00");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=151.92,186.28");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=165.13,65.29");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=150.49,125.39");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=236.64,112.11");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=109.63,140.04");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=158.21,75.08");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=84.45,85.22");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=256.33,48.11");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=148.69,68.28");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=326.67,100.09");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=351.37,130.80");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=247.71,127.60");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=359.95,210.41");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=339.29,129.52");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=197.55,205.21");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=178.23,137.71");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=272.28,57.15");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=162.40,166.58");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=155.23,91.24");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=268.34,187.50");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=263.91,81.40");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=53.67,158.73");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=173.90,46.85");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=115.97,88.30");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=178.59,126.94");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=304.04,24.89");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=344.96,244.88");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=367.74,132.20");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=256.61,196.20");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=238.73,166.54");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=295.87,122.17");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=206.16,246.19");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=234.45,223.86");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=243.87,142.57");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=168.20,199.11");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=144.80,33.25");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=229.84,100.74");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=258.48,118.82");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=41.85,120.12");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=150.38,136.69");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=137.83,101.13");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=202.59,172.25");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=254.29,19.62");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=279.53,190.49");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=294.04,56.16");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=323.99,157.00");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=314.40,145.50");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=248.24,84.44");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=206.10,226.89");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=280.91,118.28");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=216.31,97.83");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=109.32,155.71");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=198.89,121.97");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=138.12,79.80");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=235.73,135.04");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=65.00,111.91");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=213.17,76.97");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=98.78,10.45");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=232.30,41.62");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=190.84,178.90");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=341.09,93.19");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=251.49,154.23");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=231.98,203.72");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=283.81,200.44");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=180.37,205.04");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=287.45,240.98");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=276.63,155.08");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=237.22,153.44");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=114.50,260.45");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=170.45,118.00");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=212.82,63.92");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=324.73,62.34");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=129.26,179.61");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=194.13,31.70");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=179.33,97.19");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=258.36,93.24");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=216.45,109.39");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=299.74,169.80");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=317.21,209.66");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=259.27,31.89");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=276.11,174.86");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=291.65,188.00");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=263.54,177.09");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=162.90,232.79");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=165.57,154.52");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=102.49,245.42");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=159.73,143.39");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=140.31,197.71");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=309.12,157.99");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=181.34,59.77");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=115.65,169.90");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=65.18,54.79");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=237.25,50.99");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=181.03,22.49");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=243.33,262.71");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=341.01,222.06");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=309.83,52.52");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=331.43,179.96");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=220.59,239.17");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=185.54,192.28");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=164.57,188.17");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=296.24,111.78");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=64.29,140.76");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=218.05,127.17");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=178.32,161.29");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=344.31,62.25");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=54.49,121.76");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=135.55,0.91");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=222.12,54.42");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=176.17,180.73");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=189.32,41.03");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=356.95,227.06");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=326.65,138.51");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=281.32,129.58");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=320.03,122.49");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=159.44,178.93");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=232.73,286.81");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=263.75,203.48");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=275.13,216.94");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=144.23,219.79");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=232.88,65.39");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=267.55,146.25");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=294.36,17.20");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=78.58,38.54");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=92.22,117.69");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=204.77,32.23");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=105.87,110.56");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=256.21,72.17");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=303.24,184.08");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=312.39,191.96");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=318.32,73.23");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=308.17,250.96");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=250.31,208.28");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=125.35,201.32");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=229.12,169.98");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=201.44,148.64");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=114.02,249.47");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=140.92,182.02");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=130.05,148.75");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=248.86,39.27");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=14.76,70.73");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=255.10,135.11");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=79.19,138.44");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=152.22,57.73");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=203.69,13.07");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=280.31,259.21");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=315.04,230.40");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=246.26,57.79");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=386.33,183.71");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=302.52,235.99");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=185.49,252.15");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=223.95,189.13");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=135.69,133.22");
    }

}

