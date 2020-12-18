
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn12-9
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
        @display("p=223.00,32.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=273.62,27.93");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=337.96,94.01");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=365.85,175.18");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=319.61,235.80");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=338.08,163.27");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=311.21,197.03");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=339.85,264.64");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=267.79,202.26");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=277.43,207.02");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=291.36,237.13");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=268.06,225.45");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=341.29,275.89");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=345.47,324.92");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=377.70,272.49");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=295.41,221.91");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=265.15,186.12");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=259.98,70.07");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=181.11,13.12");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=368.60,134.20");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=364.20,124.87");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=290.42,157.96");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=351.39,158.11");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=268.16,158.25");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=357.86,347.64");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=303.05,246.08");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=261.96,212.09");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=308.39,221.88");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=229.58,282.23");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=357.84,328.98");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=276.80,395.34");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=378.05,259.68");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=348.48,194.72");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=292.00,270.93");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=304.52,17.06");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=312.39,3.62");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=296.36,99.38");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=316.00,184.41");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=324.26,245.11");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=272.46,125.50");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=248.87,237.94");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=356.91,261.29");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=170.17,200.86");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=315.06,163.08");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=257.91,242.77");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=290.36,253.62");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=325.47,293.18");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=315.86,360.82");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=361.66,272.60");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=286.25,310.13");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=300.11,143.26");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=296.74,36.13");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=278.33,40.04");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=396.52,49.28");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=396.94,175.42");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=291.33,197.57");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=298.13,121.78");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=358.95,236.64");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=274.96,238.55");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=226.30,157.30");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=275.24,250.07");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=233.39,177.47");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=220.52,263.72");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=350.91,303.45");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=330.02,325.37");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=385.56,314.25");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=255.26,165.53");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=336.80,253.68");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=256.46,81.95");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=270.12,46.59");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=310.31,57.06");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=356.32,184.24");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=324.94,265.00");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=329.30,186.48");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=326.83,123.04");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=360.02,312.92");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=235.25,231.90");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=302.82,171.85");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=237.75,263.26");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=305.44,266.42");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=341.40,312.09");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=306.22,310.78");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=389.92,278.45");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=303.06,208.72");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=177.64,144.57");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=247.17,125.89");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=236.12,39.73");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=337.47,132.40");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=380.03,170.94");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=260.92,174.66");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=391.41,221.62");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=314.59,206.63");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=307.40,282.99");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=186.08,183.78");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=205.19,196.48");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=218.03,273.85");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=206.39,288.32");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=315.84,270.71");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=349.05,385.94");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=392.51,192.47");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=387.09,210.73");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=328.31,204.16");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=317.56,32.20");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=282.03,64.84");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=360.74,80.43");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=387.39,119.39");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=336.49,286.10");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=342.17,146.10");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=326.01,174.74");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=362.09,283.60");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=250.85,176.09");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=193.42,173.30");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=313.36,243.98");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=229.71,257.22");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=370.34,308.77");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=252.75,295.36");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=342.92,185.54");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=263.25,262.92");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=325.61,110.84");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=199.83,90.04");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=206.42,5.93");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=381.23,80.05");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=322.74,95.16");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=307.26,234.50");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=288.62,144.98");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=277.50,167.56");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=260.12,314.08");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=236.02,219.98");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=375.62,198.74");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=250.56,203.54");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=218.30,141.05");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=260.81,329.66");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=397.16,388.29");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=395.49,256.15");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=215.02,165.71");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=246.35,248.05");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=175.04,59.09");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=231.92,12.19");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=276.83,98.78");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=332.88,222.29");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=340.85,212.14");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=350.50,101.18");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=234.38,204.50");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=312.14,345.91");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=256.37,137.90");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=290.53,209.53");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=334.60,238.02");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=218.67,291.34");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=299.63,257.69");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=346.95,398.36");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=313.53,259.93");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=377.03,240.09");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=204.90,217.35");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=214.24,112.87");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=241.58,72.76");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=359.41,61.14");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=363.67,200.60");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=295.05,287.57");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=315.72,128.26");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=337.04,111.14");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=266.68,280.33");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=259.27,126.07");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=187.17,240.22");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=291.98,181.00");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=175.38,219.50");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=278.01,295.32");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=321.52,315.39");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=377.42,339.35");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=223.33,176.54");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=226.70,187.88");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=168.00,19.03");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=231.01,114.25");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=307.76,103.74");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=349.00,171.75");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=257.36,276.04");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=311.77,148.01");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=319.22,223.00");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=388.89,304.46");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=239.39,167.27");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=203.72,173.22");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=218.14,205.24");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=221.33,222.76");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=393.67,338.97");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=393.39,365.45");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=386.49,292.26");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=308.95,296.48");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=201.90,231.63");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=201.31,111.80");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=296.56,50.61");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=347.68,87.57");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=395.19,96.22");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=306.42,157.92");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=320.76,138.17");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=352.52,277.93");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=383.04,183.97");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=283.27,222.46");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=196.03,205.43");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=280.52,190.94");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=278.28,263.24");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=399.02,234.42");
    }

}

