
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn8-6
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
        @display("p=243.00,247.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=321.04,275.89");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=321.78,236.08");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=255.99,308.67");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=232.03,299.74");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=213.00,266.96");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=265.63,215.40");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=289.59,246.91");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=314.17,180.71");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=377.97,184.82");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=357.36,156.28");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=367.40,158.81");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=366.64,66.34");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=296.12,102.48");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=281.18,132.63");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=221.00,56.42");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=183.40,57.89");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=233.59,39.99");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=276.56,112.33");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=325.69,152.80");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=302.41,140.78");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=364.07,194.36");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=371.00,201.81");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=376.31,218.10");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=456.50,192.91");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=293.74,181.81");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=344.09,282.62");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=283.47,169.27");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=192.45,327.16");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=159.76,242.71");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=198.06,212.04");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=219.13,281.81");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=361.48,288.74");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=260.15,131.66");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=452.35,181.71");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=423.47,152.16");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=339.76,170.90");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=335.58,91.60");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=319.76,91.66");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=263.21,148.66");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=262.59,110.76");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=260.70,8.85");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=169.42,35.86");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=300.97,206.89");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=397.28,184.18");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=312.38,149.51");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=362.49,97.20");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=368.79,179.70");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=443.45,285.03");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=485.67,138.14");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=280.76,333.49");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=274.12,349.62");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=329.02,323.58");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=278.84,294.65");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=158.17,343.71");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=264.78,303.03");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=205.73,138.74");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=282.88,275.93");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=354.68,207.51");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=329.35,130.02");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=342.73,196.50");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=391.96,143.10");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=296.40,87.89");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=303.74,78.09");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=270.75,80.18");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=206.14,33.25");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=112.77,122.45");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=232.99,28.44");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=222.36,121.83");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=366.05,125.51");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=284.02,100.67");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=443.76,174.34");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=408.78,169.85");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=387.85,206.27");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=454.75,212.09");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=257.92,287.38");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=316.11,287.46");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=241.61,215.21");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=291.68,264.69");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=176.36,376.66");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=229.26,316.72");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=233.84,233.24");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=339.54,294.83");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=297.39,121.62");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=398.63,106.63");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=326.49,141.29");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=379.11,126.67");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=295.78,21.79");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=323.69,104.69");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=257.51,167.28");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=296.86,9.75");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=210.32,65.07");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=221.50,69.66");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=254.16,123.10");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=288.64,151.92");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=271.49,162.60");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=352.84,104.86");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=393.56,156.17");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=342.89,138.18");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=477.49,214.14");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=168.31,277.52");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=242.37,327.37");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=389.94,291.44");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=265.39,397.06");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=151.79,357.25");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=209.56,199.57");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=277.33,208.86");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=270.92,270.75");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=322.99,195.33");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=302.08,223.86");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=352.43,94.42");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=442.88,114.01");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=400.21,132.59");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=286.17,85.14");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=274.02,95.38");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=251.41,61.73");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=245.89,50.08");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=140.71,41.86");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=262.19,85.41");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=338.13,244.49");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=294.83,193.84");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=445.34,156.33");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=405.72,268.42");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=326.22,265.65");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=473.39,184.02");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=156.29,199.35");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=349.49,244.91");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=376.55,245.74");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=298.75,301.91");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=146.25,306.72");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=220.17,237.74");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=316.94,134.95");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=330.14,226.64");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=320.15,117.75");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=356.04,186.28");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=371.24,168.43");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=401.94,204.93");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=417.74,103.43");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=303.38,67.73");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=341.45,124.70");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=149.89,77.37");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=163.10,78.91");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=332.61,36.47");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=275.99,42.91");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=346.20,158.01");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=239.91,138.76");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=340.91,184.15");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=388.82,225.87");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=366.81,243.07");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=454.66,129.86");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=296.60,232.58");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=311.23,268.60");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=259.88,198.83");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=224.46,307.50");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=184.50,335.29");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=166.55,199.34");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=252.87,207.28");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=229.13,283.12");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=301.69,172.27");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=312.82,205.16");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=346.95,59.55");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=392.86,68.03");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=444.39,53.77");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=373.23,54.14");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=186.91,143.41");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=212.60,48.53");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=190.46,42.73");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=256.43,37.75");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=200.77,51.40");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=268.86,125.63");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=373.42,90.40");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=315.67,226.18");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=381.96,270.94");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=440.61,185.76");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=425.94,268.77");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=221.81,161.36");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=322.60,252.00");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=303.88,246.53");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=180.07,305.33");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=167.75,260.42");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=259.66,269.11");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=248.23,148.55");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=294.50,216.23");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=304.35,182.92");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=408.58,223.10");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=306.47,126.51");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=360.84,143.88");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=327.59,72.92");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=244.03,71.37");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=250.18,188.65");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=202.82,93.87");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=241.50,85.20");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=157.16,33.28");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=232.03,149.23");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=330.16,182.40");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=373.53,77.55");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=380.25,138.55");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=381.74,197.22");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=440.42,205.12");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=504.97,180.12");
    }

}

