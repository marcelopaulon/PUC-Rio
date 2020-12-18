
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn12_5
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
        @display("p=72.55,156.83");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=154.97,210.36");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=124.70,183.27");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=97.13,161.87");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=105.23,184.50");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=175.70,138.19");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=168.59,130.95");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=185.76,85.25");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=209.92,175.75");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=238.05,185.64");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=210.30,150.72");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=160.81,151.36");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=173.58,119.26");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=196.77,233.61");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=108.43,229.64");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=118.80,240.12");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=63.28,80.23");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=4.60,123.60");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=235.50,220.39");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=55.46,200.44");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=89.93,222.83");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=90.58,273.39");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=196.59,180.07");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=86.81,139.70");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=193.28,58.92");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=277.61,164.51");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=236.21,139.11");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=131.16,157.81");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=140.23,197.74");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=203.97,107.74");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=169.53,221.53");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=129.77,262.64");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=72.42,236.44");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=64.68,133.71");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=55.00,155.85");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=144.63,127.77");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=85.75,153.38");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=69.77,209.91");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=35.15,212.54");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=186.99,135.29");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=173.00,154.24");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=171.92,98.41");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=266.77,189.25");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=239.90,156.13");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=145.63,75.16");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=123.80,196.37");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=167.68,110.54");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=254.07,312.89");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=28.78,280.95");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=125.98,315.76");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=129.61,114.77");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=78.08,200.66");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=122.43,173.09");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=102.99,245.11");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=158.58,164.96");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=128.54,147.58");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=122.93,92.84");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=217.25,87.84");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=120.76,121.79");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=261.57,158.85");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=269.77,175.56");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=223.08,237.92");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=182.47,227.24");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=106.60,118.46");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=185.59,314.32");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=78.44,292.15");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=170.10,236.45");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=167.36,84.24");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=76.84,178.93");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=182.40,208.55");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=95.83,174.88");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=142.21,184.20");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=112.36,254.48");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=128.73,206.22");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=228.46,121.58");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=249.41,120.79");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=232.49,201.20");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=334.95,195.30");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=299.00,170.34");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=84.28,108.76");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=189.37,109.69");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=276.50,248.68");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=165.53,191.42");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=113.56,207.39");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=94.55,3.21");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=42.91,146.62");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=156.65,198.49");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=79.52,216.35");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=179.52,179.34");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=87.18,181.86");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=272.86,145.69");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=215.58,138.59");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=244.66,110.19");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=307.91,177.78");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=202.89,197.24");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=230.82,161.79");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=210.10,122.14");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=180.53,56.83");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=126.74,275.83");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=139.59,231.12");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=41.13,292.16");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=150.84,178.59");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=52.99,97.27");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=166.68,201.78");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=102.27,147.58");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=48.06,208.91");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=143.09,167.75");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=221.13,155.49");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=241.36,170.52");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=121.54,67.23");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=213.58,203.55");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=317.71,213.69");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=187.92,150.49");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=173.96,164.80");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=212.44,27.19");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=255.16,205.93");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=17.11,196.79");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=142.85,255.01");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=111.23,158.77");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=19.65,116.70");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=99.44,206.07");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=134.88,174.74");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=119.79,108.75");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=65.65,115.64");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=211.38,219.50");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=222.09,174.69");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=255.42,92.15");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=227.35,248.02");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=244.95,200.80");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=213.41,100.54");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=163.19,176.88");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=226.63,135.06");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=236.06,267.18");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=94.09,254.63");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=172.10,267.10");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=110.52,137.34");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=11.76,158.81");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=129.79,295.84");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=59.45,247.17");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=147.27,112.65");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=62.67,273.97");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=148.22,149.30");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=227.29,58.97");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=204.60,67.59");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=289.29,158.58");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=320.14,231.93");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=237.73,71.84");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=134.37,247.49");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=207.62,52.88");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=202.39,286.76");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=122.45,217.72");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=89.67,209.89");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=63.17,12.79");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=76.41,125.98");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=201.31,266.52");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=185.48,119.77");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=155.55,86.58");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=156.86,120.38");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=252.61,188.00");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=150.69,60.53");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=94.00,116.39");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=269.95,219.59");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=227.52,99.72");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=193.47,125.80");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=97.62,131.42");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=193.10,190.09");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=188.87,281.14");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=150.33,244.45");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=65.53,198.42");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=47.02,174.90");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=50.47,123.70");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=176.50,199.43");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=65.32,227.47");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=85.83,194.00");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=15.38,214.13");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=255.14,175.26");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=142.18,50.79");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=248.45,63.48");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=224.94,222.70");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=295.81,191.44");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=287.22,181.13");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=127.69,129.22");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=202.41,211.88");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=245.45,227.11");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=140.50,290.65");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=190.93,267.24");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=108.08,65.59");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=6.54,174.18");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=84.02,263.10");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=105.64,108.44");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=103.99,215.96");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=110.25,170.32");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=198.92,79.50");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=89.83,88.51");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=239.18,31.76");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=262.65,248.37");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=270.75,126.80");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=269.71,70.59");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=145.38,96.69");
    }

}

