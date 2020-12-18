
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn12_0
{
    parameters:
        @display("bgb=1000,1000;bgg=100,1,grey95;bgu=m");
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
        @display("p=117.28,54.85");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=186.89,81.60");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=201.83,167.97");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=220.17,182.89");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=269.11,106.26");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=248.44,97.70");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=240.79,49.20");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=271.79,128.85");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=312.87,173.04");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=286.57,88.42");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=287.57,152.43");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=327.42,93.86");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=361.08,103.68");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=339.56,112.65");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=322.21,118.75");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=349.74,43.96");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=167.21,141.70");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=109.37,146.48");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=269.35,56.08");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=214.30,147.21");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=192.76,244.67");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=240.86,128.82");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=247.01,68.83");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=206.25,50.31");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=301.07,114.86");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=343.29,146.87");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=270.63,95.13");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=283.61,172.21");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=344.30,163.92");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=330.88,155.68");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=280.14,185.11");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=232.18,79.11");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=331.83,37.10");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=99.61,119.40");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=122.29,138.92");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=178.88,123.85");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=203.58,265.41");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=245.25,179.56");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=316.61,51.95");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=221.88,63.07");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=229.90,103.89");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=307.44,130.02");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=227.19,126.80");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=305.47,147.48");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=328.90,105.74");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=322.03,77.11");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=306.20,75.18");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=367.09,138.33");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=242.05,118.12");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=295.45,75.72");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=98.78,69.10");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=101.21,18.38");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=179.78,141.18");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=272.33,143.64");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=187.62,101.68");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=223.99,87.28");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=235.02,146.36");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=243.89,22.03");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=252.57,167.53");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=262.14,200.17");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=286.54,56.67");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=331.11,184.58");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=299.84,86.87");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=379.82,66.52");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=306.44,94.52");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=290.47,30.22");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=419.07,3.97");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=112.02,29.84");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=155.37,69.07");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=157.15,132.68");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=217.53,117.24");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=182.40,156.41");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=227.05,39.75");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=270.63,84.24");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=269.26,28.17");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=209.03,110.06");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=279.67,109.02");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=352.30,135.74");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=257.71,150.30");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=317.40,88.62");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=295.07,96.48");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=343.39,125.09");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=328.68,127.97");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=339.77,88.26");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=46.64,23.45");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=88.00,92.35");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=204.24,154.10");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=199.00,144.03");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=149.39,141.78");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=193.12,45.59");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=249.73,191.18");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=331.21,18.83");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=333.39,204.99");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=336.33,232.49");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=300.31,184.36");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=272.45,211.16");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=316.94,99.93");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=388.51,180.14");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=277.20,119.91");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=291.05,133.82");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=360.26,20.15");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=50.37,136.17");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=66.17,61.30");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=169.14,92.08");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=125.61,196.87");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=226.52,213.93");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=223.90,141.98");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=319.73,154.71");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=198.00,133.85");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=324.27,175.79");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=361.00,191.59");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=363.29,114.04");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=349.42,76.39");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=337.43,51.41");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=349.01,54.92");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=310.14,40.98");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=294.21,64.05");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=360.81,65.47");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=88.09,143.51");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=83.60,113.28");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=193.68,69.92");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=140.20,190.56");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=255.75,109.53");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=289.64,109.79");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=262.05,5.02");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=263.93,69.69");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=189.03,113.51");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=236.50,188.20");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=207.14,119.99");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=357.25,146.74");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=328.69,138.73");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=443.05,88.63");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=350.10,91.71");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=386.65,101.57");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=254.93,22.64");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=160.57,150.72");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=168.99,61.52");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=263.33,136.45");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=207.88,182.72");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=206.91,205.47");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=283.07,99.55");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=230.95,156.64");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=331.86,79.59");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=256.28,178.79");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=392.98,204.91");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=258.77,38.91");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=312.13,224.69");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=299.70,54.11");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=397.44,126.89");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=410.07,135.92");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=311.17,194.10");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=320.32,33.19");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=23.82,112.85");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=78.56,83.88");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=133.09,61.47");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=263.05,120.88");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=297.83,172.25");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=295.59,123.51");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=312.53,66.46");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=226.15,53.22");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=299.49,219.73");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=315.77,135.90");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=198.11,92.35");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=245.75,152.92");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=378.21,153.12");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=406.14,41.09");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=390.81,161.32");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=292.86,161.53");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=279.15,17.81");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=85.71,103.10");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=66.06,37.20");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=158.12,11.84");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=256.24,244.73");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=208.91,256.37");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=268.82,175.81");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=243.60,36.11");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=235.74,29.34");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=268.24,160.51");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=289.08,218.85");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=375.29,94.15");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=367.49,202.49");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=378.32,14.10");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=397.36,111.15");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=347.48,13.20");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=364.67,173.58");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=298.20,21.50");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=61.14,179.13");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=213.04,73.75");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=140.50,25.38");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=226.81,196.21");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=221.88,167.64");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=171.46,103.50");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=224.86,22.91");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=238.72,5.98");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=257.64,217.81");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=252.28,127.54");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=334.29,166.09");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=281.65,161.71");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=363.40,36.24");
    }

}

