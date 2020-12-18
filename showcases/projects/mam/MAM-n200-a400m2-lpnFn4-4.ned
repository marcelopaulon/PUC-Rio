
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn4-4
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
        @display("p=385.00,80.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=379.37,56.13");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=313.51,3.97");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=321.04,23.71");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=368.77,44.83");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=303.25,87.81");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=314.47,85.96");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=304.32,61.58");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=274.47,58.91");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=201.77,107.78");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=184.16,102.41");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=274.78,103.50");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=189.47,58.07");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=188.48,12.70");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=278.07,44.04");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=296.36,149.73");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=277.69,150.95");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=371.33,176.86");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=324.46,199.27");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=356.35,163.94");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=323.51,236.00");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=246.07,204.36");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=253.35,227.87");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=235.28,220.30");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=218.40,190.16");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=266.61,124.69");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=298.20,98.29");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=291.26,132.07");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=234.42,88.30");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=170.18,72.08");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=216.55,22.29");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=237.90,22.87");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=161.59,129.62");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=177.16,138.64");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=237.29,133.87");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=220.70,121.12");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=209.53,124.25");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=195.78,129.61");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=243.86,188.15");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=205.68,140.34");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=244.09,146.83");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=226.51,142.50");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=242.56,271.94");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=221.63,255.32");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=291.84,303.85");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=244.29,384.23");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=262.72,385.71");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=346.57,399.63");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=380.09,368.50");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=358.33,297.23");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=351.15,89.44");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=388.88,153.75");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=272.18,84.47");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=296.98,112.97");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=373.20,34.94");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=208.54,69.82");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=343.23,109.22");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=282.42,8.30");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=267.59,67.48");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=234.52,162.98");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=201.87,196.07");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=336.86,64.88");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=147.83,46.72");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=193.55,2.18");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=234.02,54.86");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=331.21,77.59");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=315.19,98.14");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=385.05,163.76");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=303.20,180.56");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=398.75,237.73");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=341.32,231.62");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=249.89,216.58");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=229.31,243.74");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=255.13,250.97");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=144.77,198.84");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=258.54,164.55");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=288.20,89.49");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=345.59,134.28");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=166.18,147.36");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=105.57,113.66");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=180.80,42.54");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=221.91,4.83");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=212.00,168.23");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=201.93,179.44");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=289.08,76.98");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=249.35,102.58");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=157.95,195.38");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=188.41,138.49");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=281.20,166.78");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=273.73,201.04");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=241.65,170.40");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=222.59,111.07");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=231.29,285.85");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=267.02,235.12");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=312.24,306.70");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=250.55,369.37");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=219.45,324.43");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=325.00,304.89");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=344.87,323.42");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=323.77,317.25");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=341.98,123.99");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=359.86,56.64");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=255.51,79.06");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=311.31,19.17");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=339.84,15.01");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=271.15,133.71");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=320.41,72.01");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=257.83,143.46");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=307.59,145.51");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=195.05,85.93");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=205.28,84.64");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=265.53,183.91");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=228.29,67.10");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=136.86,11.66");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=291.66,43.05");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=303.07,157.18");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=276.51,117.35");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=329.47,157.95");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=312.29,201.61");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=339.20,84.46");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=299.22,192.51");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=318.78,147.83");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=289.40,175.54");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=142.06,248.35");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=155.75,218.42");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=235.68,122.46");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=219.84,43.05");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=213.05,101.56");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=226.68,169.50");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=127.70,56.71");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=137.04,41.45");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=266.31,3.55");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=143.81,105.42");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=175.29,87.59");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=307.48,77.98");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=193.12,188.86");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=163.70,177.16");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=253.03,155.52");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=292.55,267.00");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=153.38,89.55");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=169.64,204.18");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=263.49,197.18");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=162.05,241.43");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=186.04,203.65");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=311.66,366.91");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=220.92,393.79");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=289.40,349.37");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=333.15,352.06");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=342.72,345.81");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=349.38,335.69");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=354.23,74.49");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=374.78,66.82");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=302.82,6.74");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=319.71,45.92");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=371.91,80.96");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=332.32,134.81");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=345.82,163.12");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=358.52,111.91");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=259.22,38.03");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=189.11,36.64");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=94.59,105.04");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=330.01,39.32");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=147.63,29.12");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=189.86,111.81");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=266.86,45.69");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=289.75,202.07");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=221.14,133.82");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=355.90,143.70");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=335.44,194.28");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=355.84,191.56");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=370.15,252.13");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=210.63,288.50");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=200.03,218.91");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=309.59,231.26");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=183.89,242.42");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=286.55,27.60");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=319.23,122.81");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=361.13,131.42");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=259.85,57.49");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=164.33,115.49");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=233.65,77.81");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=244.67,54.68");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=194.50,73.45");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=178.62,157.17");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=263.78,103.31");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=220.12,160.01");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=127.99,121.97");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=157.95,49.91");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=207.48,154.50");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=188.36,169.46");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=180.40,121.68");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=311.02,170.26");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=283.13,192.06");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=139.38,289.94");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=301.29,292.38");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=163.60,345.72");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=336.50,399.05");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=335.67,365.80");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=304.22,344.16");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=356.33,284.52");
    }

}

