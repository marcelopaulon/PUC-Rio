
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn4-2
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
        @display("p=74.00,225.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=126.32,261.30");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=151.73,327.22");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=70.02,302.37");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=81.59,209.65");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=82.07,270.29");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=105.38,298.34");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=142.84,245.95");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=201.08,247.00");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=211.43,249.91");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=231.15,304.56");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=229.83,277.42");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=218.58,216.07");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=160.32,200.49");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=198.37,215.71");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=216.76,225.93");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=199.05,137.36");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=236.10,153.62");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=250.27,125.06");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=186.27,62.44");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=191.22,49.80");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=245.13,44.41");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=293.93,77.83");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=273.96,12.38");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=207.45,39.34");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=156.54,98.87");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=102.37,110.02");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=115.68,85.06");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=118.03,58.13");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=142.17,40.09");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=214.94,59.00");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=141.82,54.37");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=176.53,13.21");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=165.97,77.14");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=158.30,121.74");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=175.71,122.81");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=191.08,107.83");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=222.31,175.58");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=170.98,179.01");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=242.20,233.22");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=231.89,227.87");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=227.57,261.67");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=173.35,193.30");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=142.39,155.35");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=137.27,109.86");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=94.73,188.65");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=49.36,154.37");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=83.89,243.64");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=2.47,287.55");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=34.28,282.45");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=119.08,235.74");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=75.54,253.77");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=216.42,353.99");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=62.14,269.14");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=105.29,190.55");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=93.97,261.25");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=109.02,285.86");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=136.13,182.04");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=270.17,279.61");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=149.20,204.31");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=278.86,307.75");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=238.11,320.57");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=194.78,202.75");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=106.98,267.58");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=242.30,209.04");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=284.94,241.89");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=216.41,118.42");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=256.79,148.92");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=202.92,69.55");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=217.21,45.32");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=180.43,97.92");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=261.28,46.94");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=240.51,60.11");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=207.29,27.03");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=195.53,36.04");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=77.72,110.25");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=66.57,127.66");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=195.07,92.25");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=115.48,103.82");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=127.76,74.60");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=239.45,77.13");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=161.57,21.37");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=217.69,27.81");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=179.96,76.23");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=191.11,127.68");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=128.49,127.56");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=277.28,79.10");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=231.74,201.07");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=96.96,175.07");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=246.30,195.79");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=226.76,246.86");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=241.63,290.96");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=186.42,217.83");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=153.61,148.87");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=64.68,46.01");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=152.17,258.98");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=113.66,201.25");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=11.65,239.33");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=34.11,313.04");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=85.68,360.71");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=145.52,186.25");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=121.79,314.15");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=136.61,332.11");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=80.28,292.52");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=66.50,212.33");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=95.04,276.76");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=61.08,333.41");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=50.33,252.14");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=164.17,239.60");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=157.37,213.26");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=217.78,289.17");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=200.55,317.25");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=265.66,233.45");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=180.98,111.28");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=185.95,295.21");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=197.89,186.91");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=253.22,88.74");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=232.98,186.58");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=242.99,108.91");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=172.26,136.54");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=212.60,1.06");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=232.53,10.99");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=280.31,58.31");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=283.79,14.59");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=137.67,88.90");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=126.88,176.50");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=98.72,160.41");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=59.16,70.55");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=152.43,78.71");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=129.90,46.07");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=179.48,45.59");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=115.30,36.62");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=154.86,34.23");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=161.24,55.68");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=140.86,75.16");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=266.83,100.08");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=251.03,182.89");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=235.82,175.40");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=202.56,176.95");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=278.76,216.54");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=311.16,288.30");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=189.43,264.60");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=143.28,215.63");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=153.61,170.47");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=86.18,135.34");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=25.43,180.89");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=62.24,157.69");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=24.33,220.86");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=20.81,322.72");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=89.23,330.42");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=48.98,221.53");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=150.20,340.14");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=134.67,379.60");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=107.92,235.69");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=57.43,146.72");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=143.37,308.46");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=117.47,271.18");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=117.25,224.28");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=165.27,291.91");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=297.42,264.75");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=177.59,232.56");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=245.87,252.22");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=218.07,239.13");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=132.93,215.92");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=138.72,259.77");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=168.08,168.19");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=152.55,159.80");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=222.21,191.76");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=270.07,88.89");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=234.84,94.98");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=188.42,6.85");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=296.46,36.78");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=368.80,95.14");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=287.53,105.36");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=206.58,89.21");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=151.46,63.33");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=83.32,185.42");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=41.15,35.07");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=56.08,120.42");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=127.20,7.76");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=296.86,101.26");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=226.37,75.99");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=254.16,5.21");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=192.49,78.84");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=125.72,114.01");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=95.53,92.50");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=268.38,134.78");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=209.78,108.38");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=96.72,142.00");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=179.53,208.69");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=197.07,229.75");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=244.46,275.10");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=139.72,194.99");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=224.40,133.84");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=144.65,133.04");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=77.29,168.66");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=39.65,151.12");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=155.77,271.12");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=18.00,302.09");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=26.01,247.68");
    }

}

