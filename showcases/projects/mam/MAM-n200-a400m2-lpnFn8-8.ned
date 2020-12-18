
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn8-8
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
        @display("p=390.00,207.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=329.61,219.87");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=270.50,277.32");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=295.56,330.33");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=308.74,340.17");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=306.35,282.39");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=372.76,212.15");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=351.57,181.91");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=381.33,189.39");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=396.32,103.78");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=357.99,166.99");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=388.80,255.62");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=398.01,246.18");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=396.10,178.77");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=343.04,173.13");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=254.07,144.59");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=276.58,192.32");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=236.39,147.88");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=243.92,154.54");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=286.56,119.41");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=308.91,50.44");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=269.07,97.52");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=354.56,99.42");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=323.70,130.00");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=309.16,192.12");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=331.51,187.12");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=265.79,228.72");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=299.54,314.25");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=287.68,339.93");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=341.82,348.38");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=291.26,276.07");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=293.16,195.48");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=373.68,99.66");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=399.45,224.23");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=334.66,91.20");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=315.86,85.28");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=396.74,300.00");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=381.75,237.09");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=364.90,116.55");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=285.13,169.38");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=280.98,139.23");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=228.72,270.03");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=285.92,104.04");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=222.73,128.67");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=277.25,180.52");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=383.45,105.39");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=257.79,174.79");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=317.10,155.53");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=247.06,191.71");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=219.08,155.91");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=386.62,274.26");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=301.40,250.65");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=281.20,365.86");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=354.60,378.43");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=379.40,308.33");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=354.32,302.52");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=335.88,163.38");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=296.11,143.23");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=322.59,232.45");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=372.19,88.14");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=308.23,214.57");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=357.14,256.28");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=388.03,284.53");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=376.00,198.63");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=384.21,124.51");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=176.19,187.21");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=319.94,264.20");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=304.30,115.09");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=282.13,87.10");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=327.16,69.21");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=290.11,41.75");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=308.73,72.63");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=396.99,92.89");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=267.88,134.53");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=336.21,242.07");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=377.95,252.25");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=348.44,221.08");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=190.28,252.93");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=347.13,339.86");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=367.15,371.18");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=208.48,296.34");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=364.87,183.70");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=295.62,235.72");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=350.38,129.87");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=395.80,144.37");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=357.87,136.67");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=363.18,290.08");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=368.82,267.80");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=367.95,226.75");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=331.79,111.78");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=189.42,139.82");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=228.69,213.85");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=240.30,122.56");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=164.51,186.25");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=286.59,29.48");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=252.33,74.12");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=256.35,88.79");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=367.24,148.78");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=353.72,117.32");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=320.83,106.09");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=388.19,217.49");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=320.80,189.65");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=231.99,251.89");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=242.41,339.04");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=306.43,386.05");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=381.56,336.92");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=299.15,165.76");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=334.13,133.15");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=324.98,254.90");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=392.95,156.02");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=343.72,194.87");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=375.86,288.87");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=316.14,221.21");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=314.11,203.88");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=377.12,176.52");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=203.56,151.05");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=370.48,168.63");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=195.26,129.27");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=275.07,246.10");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=218.89,190.29");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=251.01,41.92");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=288.88,72.37");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=360.84,87.86");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=339.04,51.41");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=274.10,222.52");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=342.61,253.78");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=309.27,141.91");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=276.57,302.63");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=317.08,380.52");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=258.26,380.26");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=260.40,340.70");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=362.10,237.22");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=295.78,219.36");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=325.08,163.53");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=399.05,55.68");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=381.24,141.14");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=363.34,313.13");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=339.87,208.91");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=397.23,193.56");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=257.82,205.35");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=251.47,113.48");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=220.23,237.51");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=168.88,128.20");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=252.82,214.78");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=279.32,209.62");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=398.19,43.74");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=201.25,70.45");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=286.46,150.14");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=333.55,143.78");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=340.81,150.72");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=316.62,179.62");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=274.55,159.58");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=312.39,328.94");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=338.56,276.29");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=249.47,272.96");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=303.51,272.01");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=297.15,208.45");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=399.58,128.72");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=357.29,192.77");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=354.01,38.56");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=312.42,165.17");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=335.46,330.32");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=351.79,267.52");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=348.60,245.25");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=304.71,88.39");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=262.61,150.97");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=205.34,184.80");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=298.34,124.34");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=175.69,90.20");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=223.56,94.30");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=316.90,60.29");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=265.89,61.82");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=305.65,22.02");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=312.30,37.19");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=301.48,134.45");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=355.98,208.41");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=244.94,230.36");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=292.60,361.13");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=226.17,314.22");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=342.24,390.15");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=293.61,290.70");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=313.03,253.35");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=378.62,150.93");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=382.51,163.41");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=377.65,37.24");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=336.11,122.63");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=365.72,351.95");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=356.26,281.66");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=296.35,182.61");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=285.32,225.03");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=212.74,165.33");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=290.01,260.64");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=237.97,175.86");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=255.23,228.32");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=268.68,85.08");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=308.53,105.83");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=297.40,54.33");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=358.50,58.11");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=385.00,64.15");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=280.63,127.52");
    }

}

