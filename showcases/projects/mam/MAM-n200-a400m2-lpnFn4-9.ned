
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn4-9
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
        @display("p=160.00,254.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=157.98,300.98");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=193.09,288.84");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=235.80,369.14");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=262.55,390.09");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=286.10,385.71");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=274.77,341.54");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=211.10,305.62");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=174.09,294.01");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=215.98,337.40");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=221.54,365.26");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=248.85,292.74");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=187.33,228.92");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=169.01,238.11");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=241.49,212.85");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=304.89,157.60");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=274.37,242.81");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=330.02,193.02");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=318.46,217.01");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=306.53,248.94");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=270.14,317.74");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=328.56,252.28");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=377.74,284.47");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=396.87,270.53");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=397.95,313.69");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=358.83,211.21");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=381.35,214.70");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=393.48,217.95");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=391.11,282.30");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=393.54,303.66");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=339.10,233.17");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=303.69,139.70");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=343.11,167.94");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=281.14,161.50");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=235.32,231.63");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=196.09,143.55");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=253.69,178.80");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=289.45,150.48");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=358.73,153.14");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=334.37,206.31");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=256.82,228.57");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=286.85,295.49");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=350.49,336.18");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=329.65,240.33");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=365.96,247.28");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=394.49,200.87");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=330.49,150.77");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=359.20,75.03");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=315.07,36.89");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=301.48,38.09");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=184.66,280.24");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=169.25,322.90");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=184.45,189.93");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=200.61,322.82");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=288.67,367.94");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=303.24,308.54");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=181.23,365.84");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=246.46,267.60");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=168.35,284.06");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=267.85,301.27");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=152.49,330.76");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=260.83,339.06");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=246.76,158.85");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=171.61,259.97");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=198.88,244.21");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=305.87,181.13");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=288.60,251.97");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=355.56,232.22");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=314.08,236.19");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=385.74,236.48");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=304.71,360.64");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=273.51,292.38");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=391.68,350.99");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=391.04,253.39");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=384.21,343.84");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=287.67,224.30");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=378.89,264.75");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=358.42,194.40");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=313.68,256.72");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=397.77,290.79");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=341.04,259.83");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=319.11,135.44");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=338.94,99.87");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=204.21,207.30");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=226.77,242.30");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=208.81,170.24");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=216.65,192.95");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=312.92,169.14");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=355.36,165.32");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=382.48,160.45");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=236.95,162.44");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=279.99,281.06");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=312.43,341.21");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=265.09,167.93");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=395.41,160.15");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=397.51,189.58");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=297.19,238.14");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=368.05,79.84");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=328.21,9.37");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=372.00,46.23");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=190.14,319.81");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=227.72,323.28");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=187.88,254.85");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=181.35,391.72");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=244.31,318.06");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=323.42,328.01");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=273.32,359.61");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=271.77,261.51");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=144.59,287.77");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=140.14,378.37");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=217.54,348.77");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=214.64,276.43");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=232.79,280.52");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=242.73,202.51");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=249.59,128.85");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=324.93,174.39");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=261.60,217.04");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=367.64,124.10");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=285.67,184.28");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=308.10,210.28");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=254.70,350.09");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=370.57,335.41");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=377.44,352.53");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=386.30,313.64");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=372.68,316.90");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=355.12,119.89");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=371.07,221.29");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=329.22,290.82");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=335.97,347.78");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=355.61,264.98");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=272.32,273.13");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=218.63,101.44");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=339.19,177.60");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=266.45,98.23");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=290.16,280.71");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=264.86,83.19");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=175.16,145.89");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=240.73,184.07");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=381.08,146.22");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=345.00,207.38");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=207.95,262.29");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=344.56,301.79");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=330.05,362.66");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=304.30,228.25");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=375.00,196.33");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=366.62,201.98");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=370.88,105.92");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=358.10,56.88");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=316.92,3.76");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=318.45,50.87");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=102.06,187.19");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=212.77,327.43");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=219.35,265.53");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=286.46,354.99");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=268.87,379.96");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=280.50,375.10");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=309.68,279.68");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=176.34,212.56");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=112.21,325.16");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=124.99,364.94");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=191.38,387.25");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=226.69,215.06");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=272.00,217.12");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=124.18,251.33");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=158.86,221.47");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=292.98,62.00");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=286.53,336.55");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=385.77,190.95");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=293.48,199.22");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=351.55,285.15");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=268.36,331.12");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=383.97,225.45");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=347.44,348.61");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=386.60,292.34");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=397.09,329.25");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=356.38,221.72");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=332.77,223.23");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=363.01,141.56");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=385.83,272.80");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=334.58,382.89");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=362.84,180.58");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=236.81,139.98");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=376.11,173.30");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=347.27,155.65");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=195.83,234.31");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=195.74,186.85");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=180.77,202.07");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=237.34,93.15");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=317.58,89.56");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=372.40,236.93");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=264.27,191.83");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=340.65,357.66");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=332.16,316.67");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=319.28,289.10");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=359.42,276.95");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=332.64,160.75");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=256.60,95.24");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=389.81,112.27");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=316.95,26.42");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=376.72,33.95");
    }

}

