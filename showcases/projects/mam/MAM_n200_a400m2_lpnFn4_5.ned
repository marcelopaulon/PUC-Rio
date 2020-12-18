
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn4_5
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
        @display("p=127.59,148.16");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=106.09,61.77");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=95.40,118.28");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=53.45,87.66");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=94.61,167.78");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=113.01,130.31");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=149.67,104.69");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=179.58,135.99");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=125.13,162.17");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=204.22,200.48");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=174.42,113.84");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=223.15,82.92");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=220.06,127.07");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=210.87,66.20");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=198.86,73.08");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=190.55,84.54");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=186.89,173.55");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=233.38,252.18");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=254.37,280.65");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=186.27,330.53");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=235.10,294.58");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=206.97,342.30");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=274.89,304.37");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=354.99,358.27");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=381.95,394.10");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=376.11,374.57");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=387.02,369.86");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=325.51,376.39");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=396.08,355.23");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=373.58,306.53");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=356.44,326.47");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=281.83,338.53");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=337.60,326.78");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=306.54,274.31");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=388.18,225.98");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=353.28,175.45");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=368.33,108.41");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=313.66,173.73");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=335.10,184.84");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=357.03,90.21");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=379.58,85.34");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=360.06,70.80");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=334.46,17.78");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=320.39,104.67");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=311.41,94.84");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=310.26,17.23");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=392.47,68.87");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=380.72,73.02");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=341.14,129.91");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=68.93,81.03");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=112.25,148.56");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=117.44,100.55");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=40.05,89.50");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=56.95,69.55");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=46.61,226.51");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=42.25,70.11");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=207.30,148.02");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=134.08,121.07");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=180.35,87.72");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=213.79,193.31");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=154.78,122.93");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=224.59,110.36");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=259.68,177.39");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=202.58,45.26");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=167.93,98.70");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=174.65,13.63");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=227.94,150.28");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=233.60,236.20");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=306.07,355.20");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=94.94,347.73");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=183.35,281.96");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=243.95,386.72");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=316.53,321.55");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=352.80,396.41");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=305.54,379.88");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=341.76,300.08");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=360.71,276.03");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=395.92,306.08");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=397.21,366.57");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=351.83,335.43");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=348.17,310.32");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=191.44,303.54");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=366.27,351.49");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=367.17,268.13");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=374.58,137.31");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=384.78,96.54");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=303.39,176.29");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=358.04,241.89");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=355.15,200.28");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=326.80,50.97");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=332.08,147.78");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=283.70,28.97");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=272.32,31.01");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=307.90,106.21");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=235.43,115.14");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=305.24,79.04");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=383.49,116.47");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=382.08,33.96");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=376.14,210.94");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=114.00,161.32");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=73.06,130.55");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=130.06,51.81");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=48.44,53.42");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=48.85,110.56");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=135.44,200.38");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=170.13,197.95");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=164.48,30.79");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=207.20,120.66");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=199.92,182.64");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=243.00,245.67");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=101.15,156.94");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=250.09,70.64");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=312.91,134.92");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=197.74,139.64");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=170.59,41.69");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=141.21,67.16");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=129.96,254.58");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=220.52,239.89");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=289.80,274.32");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=178.08,336.54");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=243.18,221.25");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=228.68,273.08");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=299.91,368.35");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=324.96,365.41");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=385.94,309.21");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=341.71,398.70");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=366.92,333.01");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=350.99,376.99");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=376.18,260.97");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=374.66,236.93");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=266.60,350.77");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=334.52,292.68");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=330.75,317.36");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=388.41,263.04");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=323.21,189.39");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=370.02,175.16");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=339.00,81.90");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=323.41,271.63");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=284.88,130.68");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=349.80,103.21");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=302.59,49.94");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=344.74,70.00");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=315.01,41.75");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=348.36,122.11");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=283.15,106.01");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=322.97,33.05");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=322.76,91.04");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=367.52,54.80");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=287.31,195.83");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=80.09,103.09");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=50.85,100.22");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=83.30,55.02");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=151.10,81.32");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=46.16,120.88");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=64.39,200.48");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=87.51,126.69");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=154.33,13.79");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=228.51,133.01");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=114.56,181.01");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=250.36,269.95");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=165.82,139.25");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=247.60,90.46");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=251.92,53.69");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=241.68,100.19");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=272.16,88.53");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=176.90,68.48");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=125.82,196.03");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=257.83,241.94");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=286.21,255.43");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=272.43,366.58");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=200.78,227.27");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=264.86,376.91");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=359.85,343.71");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=343.72,366.51");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=342.09,351.83");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=376.79,358.26");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=387.60,288.54");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=302.97,339.73");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=363.22,298.73");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=375.68,279.16");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=289.26,322.02");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=319.41,281.86");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=300.83,328.87");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=367.29,286.72");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=351.91,230.90");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=360.57,142.70");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=317.33,54.83");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=301.92,157.95");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=295.10,136.91");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=370.20,78.85");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=299.00,38.95");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=368.63,4.02");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=276.54,52.17");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=334.82,35.04");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=312.20,70.44");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=345.20,58.02");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=358.21,18.11");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=367.14,91.14");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=376.97,125.20");
    }

}

