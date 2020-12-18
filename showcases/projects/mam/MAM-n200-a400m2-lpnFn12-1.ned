
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn12-1
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
        @display("p=224.00,293.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=259.98,250.32");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=263.32,304.25");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=269.27,317.12");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=313.64,273.48");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=314.43,365.32");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=275.74,386.81");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=256.11,295.25");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=272.12,277.22");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=269.39,372.76");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=268.91,337.54");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=260.59,263.77");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=308.55,251.70");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=348.26,193.99");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=378.68,141.28");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=367.35,125.00");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=355.39,102.42");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=204.33,218.84");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=292.62,339.01");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=249.04,264.18");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=327.67,262.74");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=348.40,355.22");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=236.26,316.01");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=311.96,385.71");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=254.37,384.81");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=311.89,351.10");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=279.45,303.50");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=253.78,332.78");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=241.90,244.75");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=311.23,205.82");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=359.77,249.41");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=346.91,121.42");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=358.73,118.14");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=330.59,81.43");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=215.54,317.12");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=263.42,180.59");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=288.54,214.56");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=331.35,391.17");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=242.98,306.09");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=295.91,313.04");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=293.87,381.00");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=277.61,347.78");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=257.48,276.92");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=335.67,321.52");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=245.16,291.03");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=323.19,315.53");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=301.16,214.25");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=267.40,229.52");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=358.65,176.05");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=302.84,124.50");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=387.78,93.27");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=172.31,216.33");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=263.60,159.90");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=258.84,369.12");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=361.49,298.54");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=345.19,313.17");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=312.36,329.09");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=356.81,389.21");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=290.84,286.84");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=180.09,277.95");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=237.16,383.31");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=207.49,345.48");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=233.86,258.53");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=277.83,324.18");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=339.14,161.90");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=380.11,177.45");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=389.98,121.31");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=372.48,102.46");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=235.44,225.45");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=198.81,234.38");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=334.63,373.91");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=346.69,339.91");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=311.37,299.35");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=357.38,337.74");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=275.63,358.01");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=295.65,359.33");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=197.46,281.47");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=266.55,362.50");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=188.28,303.32");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=283.51,241.32");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=306.97,173.67");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=333.21,186.01");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=341.61,108.86");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=331.92,128.26");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=397.23,155.12");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=253.40,225.90");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=287.44,201.26");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=226.15,384.63");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=255.66,316.57");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=289.46,258.01");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=380.90,380.19");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=277.07,399.76");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=215.72,337.48");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=211.46,268.51");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=308.89,375.20");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=301.80,290.44");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=340.19,241.94");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=350.92,230.70");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=349.57,213.79");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=366.06,53.73");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=378.20,124.74");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=387.54,167.00");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=193.69,221.87");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=318.56,183.52");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=346.85,250.04");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=262.15,239.65");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=325.97,273.35");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=372.50,394.23");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=206.64,384.16");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=320.07,304.34");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=303.41,277.00");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=236.58,361.23");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=359.83,350.81");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=290.25,322.10");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=215.48,251.32");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=340.96,204.53");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=378.63,112.94");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=309.20,93.42");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=354.83,86.56");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=133.95,273.64");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=242.09,200.57");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=283.34,272.10");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=350.72,326.00");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=369.17,271.86");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=225.08,324.77");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=234.89,297.59");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=172.01,329.86");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=235.69,335.81");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=235.50,397.03");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=273.41,289.08");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=235.02,274.28");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=314.98,155.08");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=335.49,253.01");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=325.91,141.19");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=395.76,196.08");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=385.27,28.84");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=191.33,325.92");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=251.79,211.39");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=222.30,280.80");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=218.10,355.79");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=322.96,229.71");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=390.70,327.19");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=334.10,337.33");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=196.06,247.76");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=263.37,287.74");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=245.49,367.45");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=259.04,343.03");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=272.13,212.25");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=321.47,250.65");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=287.19,138.18");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=399.63,137.31");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=345.84,140.73");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=375.27,77.33");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=223.33,308.93");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=303.80,237.83");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=209.13,295.69");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=272.01,248.55");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=373.00,257.44");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=371.97,342.44");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=289.53,390.89");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=188.82,270.51");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=324.74,295.06");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=233.56,372.82");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=281.41,336.15");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=209.33,202.11");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=298.18,250.34");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=395.95,226.55");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=379.33,213.87");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=387.46,82.37");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=368.26,113.72");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=173.11,342.05");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=295.54,184.90");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=309.58,312.79");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=331.57,353.09");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=351.87,302.89");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=384.45,393.35");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=341.19,396.34");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=205.24,334.11");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=312.45,216.00");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=262.34,392.53");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=248.37,343.74");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=231.04,201.82");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=372.30,184.75");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=287.13,228.79");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=386.63,189.01");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=297.00,66.41");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=326.56,155.34");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=175.10,261.59");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=281.65,282.16");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=170.64,296.78");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=297.83,268.35");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=351.69,260.09");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=338.71,360.57");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=219.72,395.14");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=276.75,259.26");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=195.12,310.64");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=191.31,349.94");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=185.63,341.43");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=244.04,174.39");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=260.20,203.31");
    }

}

