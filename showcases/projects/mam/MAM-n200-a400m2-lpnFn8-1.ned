
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn8-1
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
        @display("p=195.00,273.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=240.28,223.66");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=285.82,228.21");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=270.68,244.12");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=256.07,305.90");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=319.57,325.14");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=332.47,301.92");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=348.04,298.25");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=360.17,302.28");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=382.78,278.41");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=367.17,310.48");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=357.82,292.56");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=342.94,369.15");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=327.07,354.14");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=301.86,340.02");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=345.53,279.04");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=369.66,345.07");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=387.74,314.93");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=372.89,327.41");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=356.93,268.34");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=314.18,235.07");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=303.82,230.37");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=280.80,200.36");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=263.21,283.10");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=289.61,240.09");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=181.15,312.71");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=194.11,288.02");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=310.99,318.46");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=287.18,268.63");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=332.15,288.77");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=331.63,315.17");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=292.45,322.94");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=311.04,348.13");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=350.24,232.33");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=380.56,181.61");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=315.23,284.77");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=303.63,311.30");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=351.47,312.83");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=312.99,370.54");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=293.14,302.47");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=327.02,204.92");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=355.44,388.37");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=399.13,307.22");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=338.76,329.41");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=396.13,339.41");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=266.30,214.53");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=333.08,252.95");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=250.07,196.87");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=267.46,269.72");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=316.95,193.70");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=161.53,283.97");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=262.01,232.22");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=303.80,288.87");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=331.30,166.31");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=291.46,363.79");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=278.22,317.12");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=307.90,205.36");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=297.09,280.99");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=303.28,299.37");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=389.01,301.89");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=301.57,355.38");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=344.57,257.53");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=335.37,278.75");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=325.22,335.99");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=371.67,392.53");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=356.98,356.70");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=303.49,386.29");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=364.51,218.62");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=353.87,328.99");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=374.69,260.48");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=293.94,174.33");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=226.97,169.58");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=277.71,167.21");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=241.94,349.36");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=277.44,263.18");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=114.56,310.25");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=173.35,243.91");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=228.84,302.79");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=271.02,145.09");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=225.15,385.25");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=369.40,370.80");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=283.66,284.66");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=398.52,248.70");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=393.01,380.79");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=391.04,286.15");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=372.71,295.25");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=364.56,247.64");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=366.56,382.95");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=358.19,343.12");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=237.48,315.85");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=323.65,245.09");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=279.56,353.92");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=396.68,220.54");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=387.19,228.69");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=303.74,217.33");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=225.16,273.88");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=214.25,206.92");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=377.11,199.34");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=282.22,339.65");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=329.91,182.60");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=190.51,208.04");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=237.40,202.55");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=317.09,175.51");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=198.19,238.71");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=239.63,287.60");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=295.01,393.09");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=249.51,333.51");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=319.64,270.67");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=388.77,357.08");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=286.97,255.63");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=359.08,320.21");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=380.55,238.14");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=338.61,388.21");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=311.56,260.22");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=265.46,332.89");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=352.89,213.27");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=386.46,391.26");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=385.60,254.80");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=384.41,329.71");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=302.33,269.45");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=367.29,163.00");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=243.46,246.73");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=269.60,186.35");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=223.64,344.44");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=342.17,162.05");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=124.10,276.45");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=284.73,141.30");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=279.89,178.53");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=201.26,306.55");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=224.06,243.80");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=379.12,359.92");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=341.71,310.20");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=358.54,256.49");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=398.44,369.82");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=355.20,223.12");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=369.97,278.22");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=314.08,303.79");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=278.39,364.97");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=382.48,373.83");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=244.93,380.88");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=334.00,268.07");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=281.46,380.43");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=394.93,325.28");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=376.82,306.21");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=313.31,221.40");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=264.53,156.66");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=208.94,249.07");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=195.43,156.72");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=302.53,250.14");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=256.97,294.88");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=264.02,259.50");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=169.03,211.29");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=325.05,230.99");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=213.96,288.87");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=266.00,362.84");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=321.32,389.38");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=280.45,219.20");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=269.29,296.06");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=339.02,221.48");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=373.48,209.88");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=337.54,344.21");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=325.88,215.26");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=357.83,370.39");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=305.85,328.14");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=236.44,275.39");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=345.01,359.18");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=398.90,293.85");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=393.65,263.22");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=323.22,257.03");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=385.15,208.67");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=364.59,151.25");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=248.59,161.42");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=217.21,183.09");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=174.59,301.71");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=237.85,181.07");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=154.62,317.71");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=189.07,192.80");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=284.40,297.23");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=255.42,171.30");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=189.77,318.77");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=254.55,319.49");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=314.77,338.12");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=343.97,241.17");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=310.88,275.77");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=375.82,222.38");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=346.22,339.17");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=352.58,199.25");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=332.08,396.37");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=322.48,378.80");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=270.55,309.44");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=293.23,208.91");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=398.97,276.45");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=345.37,379.42");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=375.88,250.02");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=399.44,230.88");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=318.02,159.91");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=365.32,233.24");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=217.05,197.03");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=273.42,281.63");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=293.93,196.79");
    }

}

