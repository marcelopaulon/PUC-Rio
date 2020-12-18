
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn8-5
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
        @display("p=338.00,11.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=383.37,5.49");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=368.44,27.87");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=357.68,64.35");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=348.27,86.35");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=351.16,140.65");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=363.53,123.93");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=373.51,105.00");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=359.10,9.59");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=331.11,29.44");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=349.08,10.81");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=309.00,52.02");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=368.24,94.80");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=344.86,31.80");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=369.03,62.18");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=391.67,11.66");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=376.58,53.97");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=300.79,68.54");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=217.61,14.56");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=203.18,10.06");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=204.64,53.26");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=206.21,78.09");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=160.42,62.94");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=157.27,153.89");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=155.12,165.05");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=346.58,71.78");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=389.73,71.83");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=395.20,40.73");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=388.57,109.73");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=326.42,99.07");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=319.79,198.35");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=337.49,150.43");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=374.69,131.79");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=319.07,15.70");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=399.15,26.74");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=288.21,60.96");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=275.13,47.19");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=390.61,85.36");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=258.76,36.86");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=302.71,113.16");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=387.26,23.78");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=344.42,61.34");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=396.36,59.20");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=173.57,30.01");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=138.91,81.76");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=282.81,26.08");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=186.19,153.66");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=116.88,63.16");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=121.15,110.43");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=111.96,127.79");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=355.75,19.12");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=368.05,16.32");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=293.51,10.70");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=294.53,91.21");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=325.85,75.01");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=334.62,119.99");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=272.92,85.76");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=318.29,187.65");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=308.78,11.60");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=244.55,71.67");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=275.60,3.21");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=312.17,74.77");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=365.25,111.94");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=259.40,53.72");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=353.92,53.75");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=325.45,45.85");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=312.50,30.44");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=238.51,31.70");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=231.58,1.41");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=183.39,32.45");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=203.85,35.74");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=270.51,120.81");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=122.26,146.95");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=220.31,129.68");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=145.82,161.16");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=289.85,72.12");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=303.62,25.50");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=352.05,119.94");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=330.91,109.92");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=287.32,156.24");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=324.23,137.98");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=345.00,107.48");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=390.87,96.78");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=355.91,35.53");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=309.29,90.14");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=343.00,45.06");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=240.26,7.06");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=320.01,115.68");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=295.12,36.22");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=336.46,70.24");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=328.77,0.40");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=376.02,34.42");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=259.23,68.48");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=231.45,15.71");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=241.72,43.90");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=174.49,19.61");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=193.61,143.80");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=91.28,40.52");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=160.85,143.68");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=66.23,197.04");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=399.75,72.27");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=315.11,41.66");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=321.53,65.31");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=284.83,37.28");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=259.62,79.01");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=323.14,216.75");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=290.32,166.91");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=378.91,151.23");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=352.14,0.38");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=280.29,114.94");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=367.29,75.59");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=255.41,8.56");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=357.20,163.76");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=335.81,91.00");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=378.57,82.47");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=379.08,64.78");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=302.16,1.75");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=220.02,40.76");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=186.95,13.13");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=141.79,3.24");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=155.81,74.85");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=148.04,141.29");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=229.03,56.67");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=78.98,154.04");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=172.06,161.33");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=368.92,1.16");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=358.79,82.24");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=269.69,16.13");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=307.46,104.01");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=307.55,122.90");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=342.03,194.19");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=356.26,191.90");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=287.05,125.15");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=318.76,4.90");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=357.87,97.27");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=365.77,40.21");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=241.37,56.54");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=298.33,56.43");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=257.11,21.83");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=398.97,108.10");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=329.38,58.11");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=286.12,81.41");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=232.85,84.90");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=189.00,100.19");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=159.01,17.51");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=156.48,118.92");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=243.16,101.62");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=124.71,17.10");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=152.01,85.53");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=186.13,132.88");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=273.66,68.59");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=396.35,1.80");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=342.05,20.61");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=362.86,136.07");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=355.82,151.10");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=366.75,178.57");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=332.66,169.72");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=377.90,172.10");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=286.71,1.55");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=319.42,91.87");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=268.64,27.10");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=260.54,93.95");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=389.32,191.96");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=291.80,101.48");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=371.89,161.91");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=304.93,39.56");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=384.14,43.58");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=232.52,139.78");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=213.64,87.42");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=250.46,85.16");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=144.47,58.30");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=154.62,35.50");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=132.41,132.59");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=126.60,201.34");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=109.03,185.90");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=288.47,49.12");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=378.16,17.29");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=380.31,96.83");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=302.36,146.71");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=254.10,103.26");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=311.36,172.04");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=380.51,118.11");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=389.00,136.00");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=366.57,51.16");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=276.67,58.47");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=329.91,17.77");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=318.70,55.51");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=395.64,119.00");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=271.87,37.13");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=312.68,133.19");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=334.27,40.14");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=346.54,97.55");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=262.38,133.32");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=221.56,109.31");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=111.97,17.99");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=216.08,63.29");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=221.46,5.28");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=195.31,49.06");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=173.37,141.41");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=141.13,150.70");
    }

}

