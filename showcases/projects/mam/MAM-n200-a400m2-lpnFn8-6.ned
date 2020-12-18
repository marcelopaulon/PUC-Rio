
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn8-6
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
        @display("p=300.00,145.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=261.52,223.76");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=342.04,281.33");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=376.08,287.61");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=338.31,215.47");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=323.29,236.71");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=333.61,236.50");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=388.56,208.36");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=361.59,113.81");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=322.52,106.17");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=375.65,147.73");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=397.40,130.87");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=372.61,136.45");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=389.71,143.97");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=354.03,126.62");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=389.54,69.92");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=381.54,93.28");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=363.84,86.55");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=372.71,29.09");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=354.88,99.91");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=344.73,103.12");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=392.75,169.06");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=383.40,175.22");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=323.98,123.26");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=355.57,165.71");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=295.81,52.30");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=237.79,230.26");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=281.62,297.34");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=335.36,301.18");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=302.64,199.88");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=374.30,265.67");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=364.96,270.51");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=394.64,183.46");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=293.84,101.70");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=380.51,111.61");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=360.48,141.12");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=378.43,122.96");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=289.52,139.48");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=342.84,178.62");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=325.01,142.69");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=293.87,65.57");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=373.95,162.39");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=365.18,98.16");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=328.91,5.89");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=394.49,112.36");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=306.90,60.32");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=370.14,235.54");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=370.54,190.07");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=256.91,102.73");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=308.36,188.83");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=321.89,205.18");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=289.59,239.94");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=328.99,324.22");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=332.71,251.95");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=270.69,178.97");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=320.71,253.87");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=251.43,263.02");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=354.27,272.53");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=378.73,67.71");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=296.12,182.45");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=351.92,155.49");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=386.45,134.33");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=379.12,57.60");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=294.57,114.69");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=270.02,152.28");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=294.67,39.02");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=392.85,94.67");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=361.81,56.95");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=358.70,75.32");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=378.94,41.88");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=319.35,171.34");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=378.42,207.28");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=371.10,219.14");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=308.76,139.38");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=354.72,231.75");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=273.88,166.44");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=251.74,147.43");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=273.48,260.39");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=290.65,269.68");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=392.97,280.16");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=321.38,226.06");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=312.43,155.69");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=358.94,219.33");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=393.18,58.65");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=253.97,68.03");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=305.92,217.24");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=321.58,94.36");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=333.64,132.21");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=396.35,154.15");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=349.53,144.72");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=316.47,37.45");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=363.07,153.52");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=345.42,120.66");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=282.30,48.54");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=318.61,50.46");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=347.42,40.06");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=384.55,163.22");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=302.15,127.65");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=245.05,136.41");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=388.41,223.42");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=276.21,133.42");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=181.20,225.71");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=391.42,315.87");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=351.77,246.82");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=337.63,202.71");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=362.57,300.86");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=334.23,225.59");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=354.59,203.39");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=395.30,197.29");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=328.26,84.70");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=385.61,245.78");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=347.04,55.16");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=316.85,78.96");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=343.75,164.03");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=334.51,97.33");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=389.75,18.62");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=395.58,79.94");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=376.88,79.37");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=334.23,14.47");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=396.05,46.19");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=334.52,115.46");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=398.43,237.61");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=368.19,177.16");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=337.87,79.99");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=271.70,112.41");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=252.07,204.83");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=290.33,214.41");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=319.04,214.90");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=396.24,266.13");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=307.63,165.69");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=312.97,245.28");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=285.68,197.31");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=351.41,284.94");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=273.21,95.08");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=305.68,106.31");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=326.57,164.00");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=346.03,194.08");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=360.43,191.19");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=345.81,133.36");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=328.72,195.93");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=316.87,133.24");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=398.92,0.64");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=324.62,67.08");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=301.73,13.04");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=286.25,124.94");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=353.19,88.30");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=364.40,210.50");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=332.36,155.00");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=366.59,37.57");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=389.52,121.84");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=258.61,194.79");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=332.69,263.79");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=291.29,226.55");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=314.49,358.18");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=317.85,302.94");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=311.19,231.94");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=276.84,221.78");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=310.00,255.82");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=359.76,21.48");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=264.26,64.33");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=323.60,187.16");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=347.90,71.35");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=364.63,123.71");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=371.57,106.03");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=264.88,121.69");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=378.53,12.16");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=330.21,177.74");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=348.27,26.28");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=328.54,42.29");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=303.16,94.27");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=306.05,39.03");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=393.65,252.84");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=369.48,200.51");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=294.70,87.70");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=355.29,176.04");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=333.82,53.63");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=226.44,148.80");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=345.25,307.76");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=317.92,348.76");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=276.20,245.20");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=239.92,279.35");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=385.97,271.52");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=381.18,186.26");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=383.42,197.92");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=309.05,115.76");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=281.60,180.37");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=399.57,34.42");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=283.07,97.21");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=368.86,64.32");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=282.64,147.97");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=354.77,8.46");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=304.49,70.76");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=287.24,28.62");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=322.81,22.09");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=270.46,82.40");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=337.74,34.43");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=293.70,169.00");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=345.77,236.62");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=284.87,111.19");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=266.80,207.11");
    }

}

