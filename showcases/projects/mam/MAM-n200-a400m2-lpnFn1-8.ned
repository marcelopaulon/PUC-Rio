
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn1-8
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
        @display("p=173.00,13.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=215.04,67.66");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=258.54,27.44");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=192.40,92.05");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=193.44,117.38");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=161.08,85.81");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=193.68,134.50");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=243.37,53.94");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=211.73,93.24");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=173.91,93.39");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=155.90,104.99");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=179.90,77.94");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=170.59,53.46");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=184.09,29.76");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=126.69,65.57");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=135.72,81.13");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=269.11,85.83");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=210.35,47.00");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=189.68,17.25");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=203.77,101.07");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=206.65,179.29");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=201.49,194.27");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=279.12,186.14");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=298.47,182.86");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=256.59,172.78");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=276.88,137.29");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=338.82,164.15");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=284.93,243.54");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=235.07,287.30");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=221.22,231.64");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=195.82,299.89");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=187.48,306.35");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=254.45,283.45");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=286.88,306.69");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=378.51,345.20");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=345.09,307.55");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=343.32,396.16");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=355.48,377.27");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=302.98,364.02");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=322.24,355.63");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=296.98,320.00");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=355.79,306.05");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=334.41,339.05");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=333.41,359.12");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=337.72,229.63");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=274.15,173.84");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=227.43,158.29");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=192.20,166.70");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=107.48,130.03");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=139.69,130.25");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=96.61,136.57");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=84.23,135.40");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=69.37,210.53");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=87.83,189.30");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=94.80,199.54");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=108.93,179.54");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=266.67,235.99");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=303.05,132.35");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=317.88,211.62");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=344.37,246.64");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=347.18,257.26");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=262.42,193.28");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=219.65,142.46");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=260.25,145.68");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=264.70,112.41");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=207.90,56.95");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=197.03,71.71");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=153.35,141.28");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=41.97,102.24");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=47.45,156.85");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=92.42,166.81");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=44.65,121.60");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=22.81,87.47");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=50.19,75.90");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=124.66,55.47");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=144.69,33.10");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=156.78,40.11");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=227.85,78.38");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=244.41,94.26");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=342.34,108.67");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=343.24,82.60");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=327.22,70.20");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=387.01,92.91");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=360.02,97.33");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=366.52,52.37");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=371.36,22.71");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=320.33,2.07");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=361.33,8.21");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=386.39,61.89");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=343.53,46.09");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=393.95,26.95");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=384.17,51.01");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=377.74,101.55");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=302.84,117.82");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=243.43,121.57");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=213.60,160.33");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=245.38,216.01");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=230.74,215.24");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=256.93,215.21");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=314.06,253.24");
    }

    host_fn_rly_101: <default("SensorNode")> like INetworkNode {
        @display("p=367.78,188.31");
    }

    host_fn_rly_102: <default("SensorNode")> like INetworkNode {
        @display("p=354.98,158.35");
    }

    host_fn_rly_103: <default("SensorNode")> like INetworkNode {
        @display("p=387.37,184.10");
    }

    host_fn_rly_104: <default("SensorNode")> like INetworkNode {
        @display("p=397.06,238.44");
    }

    host_fn_rly_105: <default("SensorNode")> like INetworkNode {
        @display("p=397.13,193.17");
    }

    host_fn_rly_106: <default("SensorNode")> like INetworkNode {
        @display("p=373.17,152.44");
    }

    host_fn_rly_107: <default("SensorNode")> like INetworkNode {
        @display("p=360.40,110.97");
    }

    host_fn_rly_108: <default("SensorNode")> like INetworkNode {
        @display("p=337.27,131.67");
    }

    host_fn_rly_109: <default("SensorNode")> like INetworkNode {
        @display("p=370.27,129.07");
    }

    host_fn_rly_110: <default("SensorNode")> like INetworkNode {
        @display("p=309.23,105.53");
    }

    host_fn_rly_111: <default("SensorNode")> like INetworkNode {
        @display("p=232.88,141.56");
    }

    host_fn_rly_112: <default("SensorNode")> like INetworkNode {
        @display("p=234.14,116.48");
    }

    host_fn_rly_113: <default("SensorNode")> like INetworkNode {
        @display("p=305.63,87.90");
    }

    host_fn_rly_114: <default("SensorNode")> like INetworkNode {
        @display("p=234.69,66.21");
    }

    host_fn_rly_115: <default("SensorNode")> like INetworkNode {
        @display("p=245.15,5.30");
    }

    host_fn_rly_116: <default("SensorNode")> like INetworkNode {
        @display("p=287.65,23.00");
    }

    host_fn_rly_117: <default("SensorNode")> like INetworkNode {
        @display("p=209.94,34.65");
    }

    host_fn_rly_118: <default("SensorNode")> like INetworkNode {
        @display("p=219.97,8.28");
    }

    host_fn_rly_119: <default("SensorNode")> like INetworkNode {
        @display("p=282.43,49.42");
    }

    host_fn_rly_120: <default("SensorNode")> like INetworkNode {
        @display("p=280.92,61.79");
    }

    host_fn_rly_121: <default("SensorNode")> like INetworkNode {
        @display("p=333.77,119.55");
    }

    host_fn_rly_122: <default("SensorNode")> like INetworkNode {
        @display("p=280.52,86.49");
    }

    host_fn_rly_123: <default("SensorNode")> like INetworkNode {
        @display("p=279.62,104.22");
    }

    host_fn_rly_124: <default("SensorNode")> like INetworkNode {
        @display("p=353.77,21.72");
    }

    host_fn_rly_125: <default("SensorNode")> like INetworkNode {
        @display("p=303.12,32.48");
    }

    host_fn_rly_126: <default("SensorNode")> like INetworkNode {
        @display("p=310.56,56.60");
    }

    host_fn_rly_127: <default("SensorNode")> like INetworkNode {
        @display("p=306.11,11.64");
    }

    host_fn_rly_128: <default("SensorNode")> like INetworkNode {
        @display("p=289.20,93.96");
    }

    host_fn_rly_129: <default("SensorNode")> like INetworkNode {
        @display("p=342.49,27.18");
    }

    host_fn_rly_130: <default("SensorNode")> like INetworkNode {
        @display("p=333.88,8.79");
    }

    host_fn_rly_131: <default("SensorNode")> like INetworkNode {
        @display("p=326.16,35.63");
    }

    host_fn_rly_132: <default("SensorNode")> like INetworkNode {
        @display("p=385.28,38.15");
    }

    host_fn_rly_133: <default("SensorNode")> like INetworkNode {
        @display("p=294.98,215.16");
    }

    host_fn_rly_134: <default("SensorNode")> like INetworkNode {
        @display("p=336.83,198.92");
    }

    host_fn_rly_135: <default("SensorNode")> like INetworkNode {
        @display("p=331.14,265.12");
    }

    host_fn_rly_136: <default("SensorNode")> like INetworkNode {
        @display("p=281.61,228.91");
    }

    host_fn_rly_137: <default("SensorNode")> like INetworkNode {
        @display("p=217.63,301.61");
    }

    host_fn_rly_138: <default("SensorNode")> like INetworkNode {
        @display("p=226.32,322.34");
    }

    host_fn_rly_139: <default("SensorNode")> like INetworkNode {
        @display("p=188.29,253.38");
    }

    host_fn_rly_140: <default("SensorNode")> like INetworkNode {
        @display("p=146.37,305.39");
    }

    host_fn_rly_141: <default("SensorNode")> like INetworkNode {
        @display("p=161.88,362.54");
    }

    host_fn_rly_142: <default("SensorNode")> like INetworkNode {
        @display("p=159.10,396.59");
    }

    host_fn_rly_143: <default("SensorNode")> like INetworkNode {
        @display("p=150.04,379.73");
    }

    host_fn_rly_144: <default("SensorNode")> like INetworkNode {
        @display("p=118.41,291.00");
    }

    host_fn_rly_145: <default("SensorNode")> like INetworkNode {
        @display("p=94.44,300.07");
    }

    host_fn_rly_146: <default("SensorNode")> like INetworkNode {
        @display("p=150.14,240.90");
    }

    host_fn_rly_147: <default("SensorNode")> like INetworkNode {
        @display("p=224.85,199.65");
    }

    host_fn_rly_148: <default("SensorNode")> like INetworkNode {
        @display("p=196.31,245.64");
    }

    host_fn_rly_149: <default("SensorNode")> like INetworkNode {
        @display("p=256.56,269.15");
    }

    host_fn_rly_150: <default("SensorNode")> like INetworkNode {
        @display("p=261.15,258.19");
    }

    host_fn_rly_151: <default("SensorNode")> like INetworkNode {
        @display("p=188.73,322.12");
    }

    host_fn_rly_152: <default("SensorNode")> like INetworkNode {
        @display("p=207.06,335.27");
    }

    host_fn_rly_153: <default("SensorNode")> like INetworkNode {
        @display("p=214.65,254.45");
    }

    host_fn_rly_154: <default("SensorNode")> like INetworkNode {
        @display("p=244.32,337.99");
    }

    host_fn_rly_155: <default("SensorNode")> like INetworkNode {
        @display("p=324.65,280.48");
    }

    host_fn_rly_156: <default("SensorNode")> like INetworkNode {
        @display("p=316.53,295.79");
    }

    host_fn_rly_157: <default("SensorNode")> like INetworkNode {
        @display("p=321.81,309.89");
    }

    host_fn_rly_158: <default("SensorNode")> like INetworkNode {
        @display("p=235.59,301.80");
    }

    host_fn_rly_159: <default("SensorNode")> like INetworkNode {
        @display("p=267.09,218.71");
    }

    host_fn_rly_160: <default("SensorNode")> like INetworkNode {
        @display("p=215.24,208.55");
    }

    host_fn_rly_161: <default("SensorNode")> like INetworkNode {
        @display("p=223.83,95.28");
    }

    host_fn_rly_162: <default("SensorNode")> like INetworkNode {
        @display("p=184.82,155.83");
    }

    host_fn_rly_163: <default("SensorNode")> like INetworkNode {
        @display("p=134.63,104.28");
    }

    host_fn_rly_164: <default("SensorNode")> like INetworkNode {
        @display("p=208.76,78.59");
    }

    host_fn_rly_165: <default("SensorNode")> like INetworkNode {
        @display("p=302.09,62.89");
    }

    host_fn_rly_166: <default("SensorNode")> like INetworkNode {
        @display("p=281.36,118.90");
    }

    host_fn_rly_167: <default("SensorNode")> like INetworkNode {
        @display("p=251.92,134.84");
    }

    host_fn_rly_168: <default("SensorNode")> like INetworkNode {
        @display("p=224.19,172.67");
    }

    host_fn_rly_169: <default("SensorNode")> like INetworkNode {
        @display("p=289.84,109.43");
    }

    host_fn_rly_170: <default("SensorNode")> like INetworkNode {
        @display("p=289.32,139.07");
    }

    host_fn_rly_171: <default("SensorNode")> like INetworkNode {
        @display("p=257.48,160.75");
    }

    host_fn_rly_172: <default("SensorNode")> like INetworkNode {
        @display("p=325.84,146.71");
    }

    host_fn_rly_173: <default("SensorNode")> like INetworkNode {
        @display("p=347.77,141.37");
    }

    host_fn_rly_174: <default("SensorNode")> like INetworkNode {
        @display("p=301.04,169.21");
    }

    host_fn_rly_175: <default("SensorNode")> like INetworkNode {
        @display("p=211.98,122.26");
    }

    host_fn_rly_176: <default("SensorNode")> like INetworkNode {
        @display("p=139.24,165.65");
    }

    host_fn_rly_177: <default("SensorNode")> like INetworkNode {
        @display("p=124.29,181.22");
    }

    host_fn_rly_178: <default("SensorNode")> like INetworkNode {
        @display("p=174.20,127.88");
    }

    host_fn_rly_179: <default("SensorNode")> like INetworkNode {
        @display("p=205.65,153.90");
    }

    host_fn_rly_180: <default("SensorNode")> like INetworkNode {
        @display("p=173.86,185.59");
    }

    host_fn_rly_181: <default("SensorNode")> like INetworkNode {
        @display("p=153.13,208.42");
    }

    host_fn_rly_182: <default("SensorNode")> like INetworkNode {
        @display("p=194.32,227.67");
    }

    host_fn_rly_183: <default("SensorNode")> like INetworkNode {
        @display("p=164.72,235.67");
    }

    host_fn_rly_184: <default("SensorNode")> like INetworkNode {
        @display("p=119.05,259.24");
    }

    host_fn_rly_185: <default("SensorNode")> like INetworkNode {
        @display("p=55.78,280.89");
    }

    host_fn_rly_186: <default("SensorNode")> like INetworkNode {
        @display("p=98.41,287.76");
    }

    host_fn_rly_187: <default("SensorNode")> like INetworkNode {
        @display("p=133.49,263.73");
    }

    host_fn_rly_188: <default("SensorNode")> like INetworkNode {
        @display("p=133.28,218.01");
    }

    host_fn_rly_189: <default("SensorNode")> like INetworkNode {
        @display("p=122.21,195.69");
    }

    host_fn_rly_190: <default("SensorNode")> like INetworkNode {
        @display("p=165.85,212.38");
    }

    host_fn_rly_191: <default("SensorNode")> like INetworkNode {
        @display("p=183.11,179.51");
    }

    host_fn_rly_192: <default("SensorNode")> like INetworkNode {
        @display("p=159.39,225.21");
    }

    host_fn_rly_193: <default("SensorNode")> like INetworkNode {
        @display("p=248.99,193.21");
    }

    host_fn_rly_194: <default("SensorNode")> like INetworkNode {
        @display("p=180.80,140.29");
    }

    host_fn_rly_195: <default("SensorNode")> like INetworkNode {
        @display("p=286.28,175.25");
    }

    host_fn_rly_196: <default("SensorNode")> like INetworkNode {
        @display("p=314.13,186.71");
    }

    host_fn_rly_197: <default("SensorNode")> like INetworkNode {
        @display("p=320.36,175.22");
    }

    host_fn_rly_198: <default("SensorNode")> like INetworkNode {
        @display("p=340.96,57.47");
    }

    host_fn_rly_199: <default("SensorNode")> like INetworkNode {
        @display("p=286.87,150.63");
    }

    host_fn_rly_200: <default("SensorNode")> like INetworkNode {
        @display("p=387.56,105.34");
    }

}

