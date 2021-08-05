
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn12_7
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=167.28,163.77");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=210.73,181.49");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=225.09,163.51");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=246.79,159.22");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=245.30,138.86");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=274.24,95.48");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=307.22,90.67");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=319.57,101.66");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=326.30,90.32");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=339.03,74.55");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=337.00,95.20");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=303.28,141.38");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=344.77,156.59");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=374.87,145.08");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=374.04,228.78");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=354.64,200.02");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=35.22,81.16");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=166.40,153.64");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=206.38,89.59");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=267.90,172.30");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=196.27,122.09");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=323.23,171.81");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=334.37,60.69");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=253.69,28.27");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=358.10,130.85");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=264.34,80.87");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=325.72,23.58");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=347.49,106.82");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=335.25,162.27");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=334.93,108.06");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=378.01,88.53");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=346.52,268.82");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=336.62,240.24");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=101.28,132.70");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=165.24,181.46");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=179.58,187.90");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=222.35,191.98");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=221.49,205.70");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=219.44,44.24");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=240.04,188.33");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=293.08,84.68");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=316.15,69.49");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=393.08,42.28");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=339.41,8.12");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=362.58,23.82");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=307.72,152.64");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=352.48,70.86");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=371.57,72.54");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=396.85,250.28");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=340.62,197.55");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=66.40,114.50");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=215.83,104.07");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=277.93,176.61");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=302.98,121.00");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=263.43,101.72");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=241.84,70.56");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=291.81,176.92");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=386.19,143.77");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=381.13,102.87");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=246.47,59.72");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=302.70,29.68");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=313.53,20.84");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=314.50,48.06");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=336.34,143.09");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=364.20,243.46");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=393.87,306.57");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=265.76,197.76");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=112.38,120.20");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=189.79,194.48");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=258.91,218.37");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=176.83,177.32");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=177.87,156.83");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=247.43,114.79");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=348.79,87.19");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=309.48,103.81");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=280.47,69.17");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=315.82,129.29");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=326.38,79.28");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=354.39,13.53");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=293.35,139.76");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=364.90,183.89");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=322.16,215.70");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=366.74,219.18");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=272.27,241.46");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=25.60,93.98");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=182.51,204.15");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=251.17,242.64");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=259.32,181.53");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=282.69,234.39");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=237.28,171.23");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=260.69,117.56");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=296.58,95.00");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=247.68,102.87");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=363.10,94.95");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=320.56,8.28");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=324.88,114.98");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=230.61,80.29");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=377.22,131.08");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=356.08,47.38");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=345.82,291.02");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=301.33,232.23");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=41.68,136.11");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=203.44,172.84");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=165.04,246.19");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=197.98,152.35");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=282.51,133.02");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=256.75,147.18");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=286.59,122.74");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=299.07,44.64");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=289.67,193.48");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=393.82,126.16");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=341.30,45.68");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=367.16,5.33");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=326.53,194.19");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=398.33,110.76");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=363.39,83.19");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=357.93,265.03");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=389.54,213.59");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=72.40,26.97");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=143.12,184.86");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=250.18,170.59");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=200.62,138.30");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=236.56,157.17");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=251.84,200.95");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=273.49,46.05");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=342.53,32.98");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=234.43,121.98");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=293.80,111.95");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=305.12,168.21");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=384.94,31.36");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=309.24,186.56");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=356.17,156.16");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=357.10,117.32");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=279.68,200.43");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=318.63,244.32");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=65.32,172.00");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=153.73,173.16");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=239.42,199.44");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=222.96,88.48");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=339.12,173.76");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=243.51,40.87");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=210.62,50.96");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=293.25,57.78");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=326.16,134.44");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=378.58,12.40");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=365.30,58.40");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=394.79,62.54");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=294.68,67.93");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=286.94,220.04");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=374.00,175.04");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=380.15,206.12");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=265.99,207.77");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=67.72,45.05");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=90.71,123.09");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=123.21,226.05");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=206.98,128.05");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=313.54,222.54");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=255.39,86.92");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=192.88,97.73");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=274.18,149.80");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=293.54,164.36");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=395.13,29.47");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=277.84,32.61");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=279.09,82.28");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=226.89,141.49");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=346.57,143.08");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=386.01,177.58");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=383.06,167.41");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=325.12,265.61");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=100.66,46.99");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=174.66,215.18");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=231.36,95.08");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=137.96,149.70");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=213.71,78.19");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=262.21,133.07");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=286.55,48.09");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=307.25,80.57");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=387.45,51.36");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=322.29,158.14");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=345.01,58.33");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=331.31,35.33");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=378.24,117.20");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=364.47,142.49");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=394.14,160.03");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=386.59,314.62");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=348.27,181.41");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=127.20,61.21");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=127.80,141.79");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=139.40,212.16");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=208.20,147.02");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=273.13,162.36");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=185.24,168.84");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=181.51,104.42");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=337.42,120.01");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=296.21,10.15");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=349.27,4.13");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=286.07,153.15");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=367.98,40.13");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=258.34,69.04");
    }

}

