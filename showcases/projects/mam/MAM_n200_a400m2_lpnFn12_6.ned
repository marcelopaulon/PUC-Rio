
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn12_6
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
        @display("p=174.55,92.87");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=180.73,102.82");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=241.72,148.17");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=329.24,102.86");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=380.77,137.80");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=385.61,108.31");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=321.06,166.35");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=325.00,205.21");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=326.67,69.31");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=257.05,2.00");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=293.88,4.19");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=310.46,42.45");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=357.11,74.30");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=359.57,86.67");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=353.87,105.46");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=275.79,72.64");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=34.67,37.43");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=221.61,98.42");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=203.25,59.08");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=210.17,154.82");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=306.98,107.54");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=375.91,126.94");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=399.26,187.81");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=329.54,182.02");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=364.07,197.72");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=377.39,78.73");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=245.05,1.84");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=310.20,63.23");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=278.36,97.60");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=346.95,120.39");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=368.31,101.77");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=272.09,111.40");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=325.42,116.70");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=57.68,146.68");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=161.21,83.15");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=183.01,135.78");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=239.18,94.97");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=310.59,134.30");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=342.58,47.44");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=372.44,38.74");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=382.32,155.26");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=363.53,149.54");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=328.71,1.11");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=169.94,19.89");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=263.09,30.63");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=380.15,62.69");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=331.85,167.79");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=295.31,105.96");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=293.50,149.10");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=353.12,11.30");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=107.48,57.66");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=125.86,66.03");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=200.51,96.31");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=198.63,117.02");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=328.47,135.63");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=337.56,225.21");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=395.65,97.35");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=227.81,178.81");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=323.95,228.78");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=286.83,58.23");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=189.79,56.01");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=268.78,13.86");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=323.66,50.65");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=399.28,79.65");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=382.34,52.79");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=355.94,126.04");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=216.14,20.30");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=155.37,179.92");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=156.00,120.14");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=231.01,120.16");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=240.46,185.98");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=306.19,8.26");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=354.69,51.33");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=356.27,177.54");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=271.78,175.47");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=297.71,191.61");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=282.14,31.90");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=237.83,10.29");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=276.67,44.73");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=354.15,62.48");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=364.61,138.36");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=302.81,94.56");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=392.85,174.16");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=294.13,36.26");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=55.15,31.95");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=157.84,108.16");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=117.99,124.42");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=245.33,137.68");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=380.50,174.83");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=371.22,156.03");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=389.97,14.76");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=290.36,166.12");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=342.78,250.08");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=314.40,84.36");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=215.79,62.64");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=359.12,34.89");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=300.93,50.54");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=348.21,89.21");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=350.93,156.56");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=369.57,114.78");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=268.40,81.20");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=116.88,53.14");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=228.59,77.85");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=146.13,76.85");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=272.76,131.72");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=383.62,94.88");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=391.83,145.99");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=368.43,170.61");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=308.03,161.28");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=337.43,199.95");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=246.00,79.97");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=198.47,4.79");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=300.97,26.94");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=253.22,14.08");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=365.02,2.56");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=342.46,13.54");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=281.71,155.25");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=256.90,52.50");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=79.19,147.13");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=210.15,124.57");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=230.26,160.07");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=259.85,87.66");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=341.22,142.31");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=395.84,136.10");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=339.42,69.51");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=291.92,178.28");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=295.60,119.39");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=317.26,11.16");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=226.35,17.16");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=245.11,59.68");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=317.26,28.90");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=332.61,28.74");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=338.13,84.11");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=326.37,194.09");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=286.44,76.12");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=96.34,122.56");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=77.80,108.46");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=168.66,107.09");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=223.67,196.23");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=349.84,135.21");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=385.98,42.18");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=366.28,12.72");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=250.43,95.73");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=279.82,234.72");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=266.25,44.63");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=310.78,18.95");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=350.97,28.43");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=332.46,10.55");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=339.75,59.14");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=396.25,51.53");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=340.55,107.77");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=229.83,109.50");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=136.90,172.52");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=121.00,176.09");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=213.70,185.73");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=288.10,221.13");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=326.17,92.70");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=399.30,108.84");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=373.77,190.84");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=263.05,210.54");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=257.37,201.02");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=315.95,125.36");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=218.03,37.05");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=205.88,11.91");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=234.56,42.52");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=276.23,22.86");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=323.94,145.14");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=371.14,90.26");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=260.26,62.70");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=80.59,35.77");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=165.36,73.58");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=206.44,138.18");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=232.07,136.98");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=327.34,81.04");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=349.99,199.36");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=388.45,125.25");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=259.55,189.26");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=388.08,253.60");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=311.23,74.07");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=191.02,72.69");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=248.77,32.44");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=330.36,41.55");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=388.93,79.57");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=381.71,32.45");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=319.07,187.06");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=298.05,60.52");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=92.47,187.79");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=104.45,36.61");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=161.66,152.98");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=246.12,226.48");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=336.41,121.40");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=304.03,181.75");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=399.23,124.23");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=305.79,213.16");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=299.84,276.45");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=246.16,120.76");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=231.60,27.70");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=196.00,14.52");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=235.21,66.45");
    }

}

