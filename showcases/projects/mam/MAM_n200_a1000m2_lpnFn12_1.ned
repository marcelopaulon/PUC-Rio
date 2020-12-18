
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn12_1
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
            @display("p=100,100");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=61.61,54.44");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=29.71,74.50");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=66.73,118.19");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=110.01,87.90");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=123.26,78.35");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=60.18,155.11");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=109.59,194.07");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=152.94,144.77");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=207.49,195.05");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=169.82,209.99");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=229.41,179.30");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=180.66,133.59");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=167.02,115.87");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=172.86,90.79");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=252.96,141.80");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=225.55,161.41");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=147.68,61.23");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=21.45,61.42");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=75.17,63.71");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=15.61,194.07");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=155.29,31.24");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=140.62,52.68");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=41.42,115.37");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=119.38,176.07");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=164.43,149.99");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=156.58,131.33");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=178.23,216.11");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=210.15,181.79");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=156.86,175.11");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=204.65,127.86");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=199.53,103.05");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=270.45,96.00");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=246.05,178.24");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=174.45,46.56");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=73.81,135.47");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=46.75,71.00");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=120.69,198.67");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=90.91,53.23");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=100.67,138.24");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=92.06,115.41");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=94.64,171.29");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=194.88,181.95");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=231.98,224.01");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=76.89,214.56");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=213.03,90.25");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=169.73,224.35");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=172.29,63.55");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=132.94,170.32");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=284.26,177.25");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=236.34,148.40");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=61.16,90.01");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=78.62,109.36");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=38.91,79.15");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=111.07,100.66");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=199.06,71.05");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=105.30,57.66");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=113.02,217.65");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=159.49,190.31");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=147.42,163.51");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=159.56,217.12");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=144.66,201.78");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=242.31,278.43");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=211.32,156.06");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=170.65,130.63");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=204.65,61.84");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=271.53,191.99");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=211.55,145.12");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=15.61,113.24");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=18.81,76.59");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=93.71,83.02");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=117.63,54.41");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=184.20,72.46");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=91.18,68.36");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=84.94,204.30");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=67.65,245.83");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=184.18,99.33");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=192.82,208.36");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=195.81,271.90");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=298.07,239.25");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=238.34,69.81");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=163.79,48.87");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=269.69,66.74");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=239.18,122.64");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=255.06,195.62");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=144.32,75.90");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=14.30,85.64");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=3.05,63.40");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=68.02,45.17");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=132.84,124.93");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=109.55,115.17");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=97.14,184.08");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=81.69,256.45");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=65.32,170.44");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=128.21,151.27");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=150.16,211.83");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=183.08,156.33");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=178.76,192.04");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=215.72,135.07");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=80.02,83.90");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=244.26,134.45");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=227.06,134.83");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=10.94,135.15");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=2.68,110.36");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=52.88,130.27");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=86.98,140.98");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=102.43,71.41");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=192.43,143.80");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=103.25,152.41");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=54.35,172.52");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=127.60,187.10");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=213.57,204.38");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=185.37,238.34");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=246.57,250.76");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=200.28,52.36");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=140.92,107.46");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=171.31,23.65");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=257.67,157.04");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=238.59,171.37");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=159.32,70.13");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=40.08,62.33");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=26.41,97.55");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=38.27,90.27");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=137.74,95.52");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=151.11,102.62");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=57.44,144.97");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=116.50,265.36");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=199.04,166.11");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=118.02,235.14");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=180.84,285.12");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=273.33,145.91");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=246.10,151.50");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=190.52,124.29");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=132.77,135.44");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=249.40,121.17");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=271.13,248.37");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=120.91,66.68");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=17.11,35.95");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=23.36,162.80");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=40.60,132.90");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=57.87,105.28");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=126.54,32.03");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=115.43,135.47");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=76.60,159.06");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=154.29,120.52");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=217.80,111.88");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=127.13,278.21");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=219.24,175.52");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=177.63,144.36");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=179.06,108.79");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=229.84,89.15");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=264.86,175.97");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=215.08,122.52");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=80.16,171.60");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=59.27,66.00");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=44.61,45.83");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=10.88,53.31");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=148.87,90.49");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=123.45,10.92");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=23.11,151.23");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=143.82,123.74");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=76.63,198.22");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=272.27,167.25");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=136.04,216.49");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=229.13,99.40");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=115.55,161.85");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=236.89,59.16");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=140.44,144.23");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=292.90,87.14");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=281.87,139.62");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=123.71,42.80");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=119.37,125.84");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=73.15,11.67");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=62.42,75.92");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=53.16,36.45");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=158.11,4.87");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=54.75,213.53");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=20.96,176.07");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=207.59,216.55");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=248.35,106.81");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=241.85,210.35");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=205.69,232.50");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=218.24,74.71");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=130.37,60.65");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=228.12,64.71");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=224.68,199.55");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=177.22,164.64");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=139.34,36.30");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=82.18,26.56");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=62.86,132.44");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=87.16,125.21");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=55.65,14.86");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=201.44,39.22");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=46.56,251.94");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=73.63,280.28");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=131.07,225.69");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=235.76,193.32");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=190.87,292.51");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=276.97,118.79");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=159.76,161.49");
    }

}

