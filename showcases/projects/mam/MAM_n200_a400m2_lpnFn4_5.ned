
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn4_5
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
        @display("p=65.22,145.97");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=30.59,223.00");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=86.41,140.19");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=117.84,134.06");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=160.41,118.27");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=134.86,134.44");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=218.37,135.73");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=255.82,144.32");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=247.24,72.22");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=326.24,57.02");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=335.21,31.84");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=295.71,67.33");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=251.08,177.94");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=251.57,198.09");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=237.23,203.26");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=267.73,272.59");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=284.65,307.14");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=289.44,362.08");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=234.92,372.64");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=253.08,355.03");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=303.89,382.15");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=252.96,318.73");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=313.80,392.53");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=358.17,396.37");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=346.28,310.64");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=309.94,276.78");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=318.01,269.55");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=358.47,217.35");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=327.17,178.71");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=276.83,103.85");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=261.89,118.74");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=332.92,141.83");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=384.18,114.30");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=299.03,99.88");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=219.33,149.61");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=263.89,132.90");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=269.36,144.21");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=259.55,232.62");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=236.29,224.83");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=311.51,288.13");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=380.67,294.63");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=370.19,300.07");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=363.18,312.56");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=303.66,321.89");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=327.43,293.70");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=321.17,227.52");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=341.08,270.63");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=323.04,211.02");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=305.82,182.54");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=92.67,156.15");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=76.47,171.93");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=29.28,235.28");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=162.02,156.05");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=51.82,79.60");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=99.39,179.36");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=145.81,138.14");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=291.13,192.45");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=205.78,154.91");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=334.95,73.92");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=300.78,33.86");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=326.01,14.66");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=301.36,75.79");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=257.09,276.81");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=215.99,207.69");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=291.52,281.99");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=278.42,332.74");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=304.08,335.52");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=331.50,283.97");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=241.42,315.27");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=263.00,388.02");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=353.26,353.38");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=312.08,251.91");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=247.14,377.02");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=369.35,385.43");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=355.24,327.23");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=349.27,187.80");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=330.58,259.40");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=359.59,176.30");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=339.20,173.11");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=346.77,103.30");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=234.29,149.76");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=295.41,208.07");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=305.45,118.06");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=349.42,155.53");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=269.96,219.65");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=243.05,115.34");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=234.88,102.89");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=251.73,208.43");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=298.58,235.41");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=324.17,359.71");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=388.43,302.01");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=352.23,271.19");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=318.71,320.64");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=374.68,344.95");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=327.99,309.13");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=324.32,193.44");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=397.04,270.09");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=337.23,161.69");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=392.92,152.44");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=120.84,68.97");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=19.85,180.55");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=94.94,286.27");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=131.97,145.43");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=120.32,152.13");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=166.18,107.92");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=198.55,76.14");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=240.19,128.43");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=317.93,163.98");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=264.65,58.96");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=320.77,91.06");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=397.01,56.78");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=220.08,33.71");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=208.23,197.11");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=311.19,212.39");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=239.85,213.15");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=249.23,294.24");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=282.73,346.09");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=304.74,399.18");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=206.65,361.77");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=159.67,339.25");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=271.39,382.17");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=304.63,308.11");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=375.14,368.38");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=342.89,392.24");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=386.94,328.89");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=366.18,228.32");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=365.90,187.64");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=399.91,140.85");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=394.73,218.92");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=246.88,150.88");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=258.82,102.66");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=343.25,117.85");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=359.29,108.87");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=368.42,56.23");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=146.43,187.19");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=257.13,161.91");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=294.86,126.86");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=284.64,247.79");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=272.24,254.77");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=373.66,213.01");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=369.24,281.14");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=365.78,372.23");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=332.09,332.88");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=291.97,268.23");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=320.78,377.99");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=292.54,222.93");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=381.95,206.07");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=382.19,187.42");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=246.07,231.37");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=95.39,83.07");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=44.78,111.18");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=54.90,316.05");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=12.54,91.02");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=130.44,112.37");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=127.95,194.33");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=143.41,169.54");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=186.72,165.31");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=235.94,240.31");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=195.40,85.82");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=333.63,105.66");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=363.53,95.23");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=216.38,51.05");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=184.00,243.88");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=209.43,256.57");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=275.96,289.01");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=279.97,199.52");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=200.09,302.98");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=259.02,346.81");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=269.12,347.22");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=181.54,320.75");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=385.87,339.77");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=294.13,311.61");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=316.93,368.10");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=397.59,345.42");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=302.13,351.08");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=230.04,303.01");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=393.13,208.87");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=337.80,201.71");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=287.66,163.31");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=351.15,49.27");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=202.93,124.51");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=342.40,91.47");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=378.00,81.58");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=264.60,17.10");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=199.20,183.58");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=278.30,168.73");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=315.49,105.56");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=189.90,195.05");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=234.13,138.48");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=293.87,300.65");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=393.33,283.05");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=399.79,374.51");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=380.52,320.10");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=366.90,247.93");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=332.12,221.79");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=378.97,252.24");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=364.78,259.40");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=344.42,223.21");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=262.89,153.73");
    }

}

