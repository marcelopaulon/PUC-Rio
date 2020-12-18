
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn12_4
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
        @display("p=121.63,128.05");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=138.52,133.10");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=129.33,148.45");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=202.35,145.86");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=224.76,133.90");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=198.27,113.55");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=269.20,85.39");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=299.54,124.76");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=216.18,167.90");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=243.91,203.65");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=257.19,170.84");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=324.09,161.37");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=281.55,161.87");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=308.52,100.22");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=399.56,81.95");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=338.42,134.49");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=17.49,100.19");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=151.77,64.09");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=85.24,102.65");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=115.12,138.82");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=211.50,155.19");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=211.20,129.40");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=200.28,128.30");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=227.02,158.21");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=245.71,184.09");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=201.46,167.78");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=296.38,219.38");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=241.90,161.64");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=365.55,178.31");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=337.98,203.26");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=287.83,80.75");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=366.93,53.24");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=304.30,166.59");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=50.05,37.88");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=126.54,101.83");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=140.92,155.87");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=91.63,192.13");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=179.10,182.64");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=244.53,123.21");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=146.94,145.42");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=261.19,78.59");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=354.67,99.69");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=124.61,185.46");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=273.55,281.38");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=281.07,182.52");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=300.29,140.67");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=309.47,136.25");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=278.42,136.57");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=399.47,69.50");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=369.86,96.56");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=113.07,100.72");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=49.26,167.70");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=128.32,160.23");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=128.93,137.53");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=166.10,152.37");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=173.76,91.18");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=187.42,86.46");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=217.92,80.03");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=321.86,123.57");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=254.97,188.39");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=213.59,212.38");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=328.24,208.29");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=288.89,175.30");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=214.09,222.59");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=255.44,151.65");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=379.56,129.10");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=322.60,197.27");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=59.97,82.68");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=194.92,176.56");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=143.77,116.54");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=68.05,151.15");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=252.47,116.27");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=239.43,229.44");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=182.47,157.81");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=336.67,24.83");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=291.27,135.94");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=202.06,204.57");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=180.53,167.79");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=232.11,78.61");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=284.99,224.79");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=270.75,220.60");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=272.60,102.83");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=385.72,51.09");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=364.46,139.98");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=29.74,59.15");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=90.49,140.15");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=186.01,105.15");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=154.77,200.61");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=229.13,179.76");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=179.46,75.57");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=270.69,171.52");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=185.42,61.62");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=386.74,87.79");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=231.29,125.79");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=232.74,193.35");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=304.76,187.98");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=341.64,160.08");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=270.27,159.89");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=286.45,3.10");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=309.09,46.61");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=350.49,168.26");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=56.49,63.18");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=97.99,77.48");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=63.04,110.27");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=92.08,216.42");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=216.53,193.01");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=246.49,93.16");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=220.46,101.58");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=339.40,108.55");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=330.72,49.06");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=176.06,140.61");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=224.48,243.21");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=285.55,195.14");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=343.66,143.32");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=275.62,197.53");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=234.53,141.12");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=375.52,65.02");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=356.34,151.23");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=149.32,135.59");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=129.98,203.60");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=125.97,72.90");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=130.66,119.67");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=191.02,243.34");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=217.91,111.71");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=200.44,38.84");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=207.08,82.08");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=281.65,65.65");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=211.95,181.82");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=235.41,211.52");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=279.94,92.25");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=375.81,111.86");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=288.92,99.15");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=279.10,113.48");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=361.38,112.54");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=396.99,187.14");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=141.68,95.49");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=208.18,98.34");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=165.11,51.20");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=138.85,185.29");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=167.86,105.05");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=263.14,138.46");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=178.78,122.66");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=345.93,93.66");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=321.42,90.19");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=167.64,172.17");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=205.58,272.18");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=220.01,147.95");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=349.93,131.64");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=284.06,208.70");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=359.59,36.44");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=355.42,13.70");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=380.02,143.19");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=129.90,48.41");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=59.39,123.12");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=109.25,64.85");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=127.71,223.12");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=251.92,69.39");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=261.26,110.83");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=187.29,34.32");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=304.38,73.66");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=330.63,61.53");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=231.68,100.40");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=213.20,248.69");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=164.43,184.15");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=365.99,155.43");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=244.43,137.07");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=239.54,41.07");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=388.54,70.37");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=327.20,146.83");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=169.10,30.33");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=38.52,83.40");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=78.78,58.79");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=190.58,142.56");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=157.03,147.79");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=148.51,174.30");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=239.25,59.60");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=276.12,30.47");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=327.67,176.65");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=200.16,232.66");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=177.11,217.89");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=229.02,203.27");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=290.80,252.53");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=278.65,148.21");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=294.80,111.70");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=343.10,66.45");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=298.29,63.83");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=84.96,41.05");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=137.85,169.30");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=160.02,124.70");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=109.11,123.94");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=108.01,178.97");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=243.52,104.96");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=194.03,74.46");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=269.24,6.05");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=293.27,49.65");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=191.41,190.37");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=149.64,220.72");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=329.20,130.60");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=360.64,206.95");
    }

}

