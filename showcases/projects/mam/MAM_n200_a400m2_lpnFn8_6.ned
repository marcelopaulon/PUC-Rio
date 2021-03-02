
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn8_6
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
        @display("p=43.73,103.11");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=45.73,87.16");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=136.02,78.37");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=141.61,60.90");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=191.51,136.63");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=216.71,211.99");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=305.13,254.64");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=397.15,220.87");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=396.73,277.41");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=348.37,314.94");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=355.86,247.27");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=326.48,274.48");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=306.96,369.16");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=323.27,295.26");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=351.99,354.10");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=347.83,295.94");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=366.50,309.29");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=393.09,388.07");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=371.92,355.03");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=332.41,373.09");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=342.02,334.53");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=279.59,360.62");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=268.17,318.74");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=276.47,266.08");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=87.48,111.48");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=117.13,149.73");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=57.79,130.39");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=56.33,29.06");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=145.35,151.58");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=191.93,123.12");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=184.10,244.51");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=321.86,348.01");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=381.98,216.49");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=313.12,319.62");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=323.96,308.42");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=287.42,288.12");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=292.23,214.16");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=335.46,349.80");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=293.92,200.92");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=381.79,344.89");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=299.86,292.91");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=375.48,318.59");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=378.43,398.97");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=332.01,329.07");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=288.32,380.10");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=313.09,360.19");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=240.79,371.05");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=191.93,291.70");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=272.64,254.04");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=149.06,178.10");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=11.63,181.71");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=22.51,117.24");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=205.71,53.80");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=102.99,45.91");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=118.57,111.19");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=229.97,166.58");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=305.76,271.21");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=360.70,185.62");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=341.50,252.65");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=295.96,357.99");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=358.52,233.70");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=242.33,274.35");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=261.52,352.47");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=318.01,389.05");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=357.22,369.63");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=399.26,369.20");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=394.36,316.39");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=390.07,363.56");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=383.86,376.41");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=350.44,342.85");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=357.64,328.77");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=305.64,344.00");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=276.53,349.80");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=222.19,314.30");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=157.42,163.12");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=128.90,135.81");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=66.69,18.18");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=142.99,50.15");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=197.48,62.32");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=202.39,146.89");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=230.38,281.21");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=353.43,267.74");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=388.84,204.56");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=317.35,254.00");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=293.29,333.84");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=389.94,304.84");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=370.93,248.58");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=393.10,332.19");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=311.29,291.57");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=376.46,306.32");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=363.85,338.97");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=317.34,228.80");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=358.07,300.03");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=344.16,360.46");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=300.69,383.93");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=317.45,266.93");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=250.33,296.94");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=210.85,352.51");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=293.57,321.38");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=105.13,135.00");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=32.07,93.25");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=16.66,136.43");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=145.88,92.52");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=132.20,52.04");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=257.87,206.27");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=227.65,184.42");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=220.93,260.69");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=338.15,187.36");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=392.97,287.89");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=281.94,300.85");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=388.23,263.53");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=257.12,254.08");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=254.10,314.94");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=333.20,302.28");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=378.20,331.63");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=363.21,318.78");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=293.66,247.87");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=336.40,318.95");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=287.09,312.86");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=315.83,377.62");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=327.19,359.62");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=245.76,338.56");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=214.14,386.70");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=289.02,266.09");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=159.30,89.21");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=86.05,38.95");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=49.87,2.42");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=102.02,80.36");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=71.95,105.46");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=244.43,165.10");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=227.10,152.59");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=276.22,235.45");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=389.31,230.58");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=381.88,278.00");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=270.89,294.31");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=341.91,275.84");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=347.21,215.29");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=265.44,377.96");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=337.86,233.43");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=378.40,290.08");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=351.72,278.06");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=337.17,216.00");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=393.47,348.78");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=320.65,330.10");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=242.02,382.72");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=297.48,310.64");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=212.50,365.86");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=330.08,385.98");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=212.17,268.00");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=122.10,74.19");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=101.49,164.10");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=125.03,90.33");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=214.38,76.59");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=201.41,38.21");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=173.96,138.39");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=161.68,141.69");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=245.54,201.14");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=301.82,221.29");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=369.23,270.29");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=267.48,307.55");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=275.53,224.87");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=350.11,202.84");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=231.45,379.43");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=376.80,258.38");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=295.52,394.01");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=358.44,217.10");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=396.89,255.26");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=374.02,370.66");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=362.14,280.93");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=264.92,332.17");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=280.52,399.57");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=228.94,348.89");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=239.80,233.53");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=265.00,267.35");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=92.71,185.23");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=72.55,48.52");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=37.79,75.60");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=144.86,19.09");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=122.96,19.18");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=225.84,81.96");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=286.56,230.54");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=312.05,212.91");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=375.62,233.27");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=361.16,202.20");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=327.58,259.38");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=363.40,158.47");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=335.01,202.22");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=238.60,346.24");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=233.04,309.01");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=297.61,283.04");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=339.65,288.34");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=345.87,377.41");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=363.55,398.69");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=399.77,300.28");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=252.11,380.15");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=278.09,370.54");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=227.21,367.65");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=248.79,264.33");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=213.31,252.57");
    }

}

