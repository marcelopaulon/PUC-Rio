
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn12_9
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=163.00,124.20");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=213.78,193.99");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=135.38,145.13");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=178.86,166.02");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=162.67,228.40");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=233.52,227.96");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=251.58,181.70");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=219.05,184.21");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=292.14,227.10");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=326.11,205.98");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=280.68,260.41");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=277.54,234.20");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=292.64,193.32");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=217.05,232.64");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=250.55,318.66");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=321.82,265.52");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=86.90,108.51");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=112.37,105.28");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=306.99,217.43");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=186.00,90.16");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=222.89,172.73");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=181.60,224.16");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=169.90,192.92");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=226.31,205.35");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=262.50,141.66");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=301.17,251.42");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=303.89,206.80");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=281.86,335.49");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=323.68,150.71");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=251.43,198.23");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=188.72,161.11");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=342.69,356.00");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=358.47,263.09");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=75.21,125.95");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=237.84,130.57");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=286.28,251.41");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=162.51,178.68");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=170.47,143.13");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=234.97,242.32");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=233.64,258.57");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=237.87,180.86");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=210.67,136.73");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=387.91,230.39");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=392.07,146.47");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=344.35,229.39");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=231.18,196.58");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=304.02,162.42");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=257.58,221.10");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=234.48,315.83");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=322.29,251.78");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=110.18,93.46");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=122.23,183.19");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=207.30,205.91");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=68.40,98.92");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=224.89,134.25");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=210.47,250.45");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=191.95,201.99");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=258.33,272.16");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=244.69,120.96");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=242.26,269.21");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=297.71,120.98");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=205.84,282.85");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=312.32,244.45");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=316.79,137.13");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=270.27,306.20");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=209.83,356.21");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=295.61,317.07");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=97.72,88.41");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=88.99,126.92");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=207.20,185.80");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=106.67,189.33");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=147.97,209.25");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=185.73,248.29");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=235.64,215.79");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=337.88,148.21");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=269.39,162.83");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=292.15,265.65");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=307.18,191.73");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=265.11,294.41");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=201.74,171.70");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=309.77,268.93");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=180.05,318.83");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=218.01,368.50");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=346.16,327.34");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=122.94,104.93");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=182.18,141.34");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=281.13,127.18");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=136.35,83.57");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=217.96,211.24");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=150.73,219.56");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=298.41,292.05");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=320.26,168.37");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=142.18,197.43");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=251.99,238.01");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=329.41,193.95");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=299.26,240.49");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=215.91,305.02");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=261.85,235.36");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=241.27,206.46");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=239.89,408.44");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=309.90,300.42");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=87.62,90.16");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=234.72,63.73");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=195.80,188.58");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=95.27,139.49");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=91.69,169.21");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=213.18,261.37");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=275.21,289.71");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=321.44,233.18");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=173.94,243.17");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=343.57,216.35");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=324.47,121.91");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=290.40,341.24");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=288.05,238.67");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=255.12,158.20");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=168.37,290.77");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=244.28,332.18");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=258.57,248.82");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=27.91,168.29");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=137.70,106.68");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=179.11,197.42");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=192.71,102.69");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=168.88,166.96");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=74.49,259.39");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=299.86,184.44");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=216.41,157.70");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=215.57,278.13");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=281.90,213.48");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=364.94,142.76");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=276.37,183.29");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=350.75,174.72");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=270.81,266.74");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=204.98,226.55");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=180.89,307.21");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=319.99,284.11");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=132.94,65.92");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=110.02,81.54");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=135.77,232.67");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=97.15,232.09");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=177.18,81.73");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=195.62,149.53");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=245.98,137.34");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=261.08,174.05");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=234.23,169.26");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=321.00,221.01");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=340.81,158.04");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=226.87,272.65");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=288.43,180.31");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=274.05,247.03");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=193.84,313.76");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=167.97,333.13");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=307.24,282.19");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=94.94,32.59");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=176.68,132.75");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=182.81,179.28");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=134.21,161.20");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=96.77,156.17");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=146.30,265.52");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=254.37,258.61");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=267.50,200.57");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=266.41,123.07");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=335.05,311.81");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=344.62,195.53");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=293.29,165.06");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=242.47,160.56");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=309.38,172.19");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=153.49,196.00");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=242.46,282.57");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=382.35,314.93");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=33.32,35.75");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=152.40,159.75");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=235.45,142.99");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=137.77,208.33");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=179.54,117.35");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=68.11,210.34");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=192.50,271.54");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=248.40,225.78");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=221.42,222.79");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=362.81,253.65");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=353.09,157.13");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=271.67,225.45");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=291.12,329.97");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=263.22,185.13");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=162.58,248.05");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=233.95,371.63");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=280.62,307.52");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=37.66,123.21");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=167.73,114.75");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=176.68,268.47");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=172.58,102.82");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=161.93,202.55");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=145.33,319.97");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=170.33,218.06");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=277.71,155.18");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=150.90,182.06");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=335.94,271.54");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=341.35,137.84");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=331.69,346.03");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=290.74,203.73");
    }

}

