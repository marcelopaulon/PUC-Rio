
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM200-7
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
        @display("p=321.00,264.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=377.54,192.86");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=389.70,187.60");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=365.49,181.63");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=377.32,172.41");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=355.49,161.34");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=362.14,217.51");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=306.54,156.56");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=337.61,192.53");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=323.83,241.97");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=372.58,294.40");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=330.81,306.75");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=347.75,233.86");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=342.16,255.80");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=377.25,249.07");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=361.22,294.19");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=301.93,353.19");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=271.61,304.05");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=281.33,322.88");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=341.71,306.95");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=325.62,279.89");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=372.03,279.22");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=381.08,307.69");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=356.12,324.03");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=371.46,226.09");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=391.19,342.90");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=389.05,360.05");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=385.89,260.30");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=389.55,241.77");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=332.62,292.43");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=266.31,226.31");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=321.94,190.97");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=378.31,362.90");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=364.13,375.33");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=284.38,241.20");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=289.23,149.83");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=271.19,115.59");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=314.73,54.80");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=306.71,137.01");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=356.57,187.99");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=353.24,202.67");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=371.00,208.98");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=398.22,209.66");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=305.96,177.99");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=326.83,180.25");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=264.49,212.27");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=262.69,254.28");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=230.92,180.53");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=146.10,220.36");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=201.11,219.13");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=143.07,272.15");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=121.14,311.55");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=96.19,373.65");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=63.69,389.30");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=147.20,360.61");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=199.31,366.82");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=161.39,300.71");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=156.81,332.27");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=229.38,351.54");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=220.35,346.75");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=242.19,333.32");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=190.85,264.38");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=254.48,244.01");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=217.65,294.04");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=216.66,203.03");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=284.84,230.20");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=233.76,233.18");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=234.40,251.58");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=270.51,268.54");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=299.75,313.88");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=341.32,332.43");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=330.71,387.89");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=379.68,388.03");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=340.75,379.79");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=295.18,378.75");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=237.26,361.66");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=254.01,322.55");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=293.90,305.37");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=370.85,348.17");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=338.74,399.94");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=271.77,393.86");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=260.47,378.94");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=259.69,357.52");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=177.14,321.39");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=194.81,351.46");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=263.14,340.85");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=299.58,341.68");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=288.89,315.20");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=293.92,294.11");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=266.14,202.01");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=186.89,198.84");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=205.60,289.72");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=219.64,273.76");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=206.89,344.38");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=201.13,270.25");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=181.29,277.95");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=150.84,259.43");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=138.32,258.86");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=75.87,188.74");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=83.05,137.64");
    }

    host_fn_rly_101: <default("SensorNode")> like INetworkNode {
        @display("p=63.30,184.46");
    }

    host_fn_rly_102: <default("SensorNode")> like INetworkNode {
        @display("p=119.84,230.12");
    }

    host_fn_rly_103: <default("SensorNode")> like INetworkNode {
        @display("p=32.55,259.38");
    }

    host_fn_rly_104: <default("SensorNode")> like INetworkNode {
        @display("p=20.32,259.91");
    }

    host_fn_rly_105: <default("SensorNode")> like INetworkNode {
        @display("p=56.27,339.82");
    }

    host_fn_rly_106: <default("SensorNode")> like INetworkNode {
        @display("p=66.33,378.27");
    }

    host_fn_rly_107: <default("SensorNode")> like INetworkNode {
        @display("p=91.18,349.80");
    }

    host_fn_rly_108: <default("SensorNode")> like INetworkNode {
        @display("p=75.82,311.82");
    }

    host_fn_rly_109: <default("SensorNode")> like INetworkNode {
        @display("p=134.61,318.09");
    }

    host_fn_rly_110: <default("SensorNode")> like INetworkNode {
        @display("p=74.93,243.76");
    }

    host_fn_rly_111: <default("SensorNode")> like INetworkNode {
        @display("p=155.92,188.39");
    }

    host_fn_rly_112: <default("SensorNode")> like INetworkNode {
        @display("p=312.36,230.18");
    }

    host_fn_rly_113: <default("SensorNode")> like INetworkNode {
        @display("p=394.05,178.00");
    }

    host_fn_rly_114: <default("SensorNode")> like INetworkNode {
        @display("p=324.51,145.54");
    }

    host_fn_rly_115: <default("SensorNode")> like INetworkNode {
        @display("p=384.16,124.70");
    }

    host_fn_rly_116: <default("SensorNode")> like INetworkNode {
        @display("p=277.27,169.58");
    }

    host_fn_rly_117: <default("SensorNode")> like INetworkNode {
        @display("p=216.32,96.28");
    }

    host_fn_rly_118: <default("SensorNode")> like INetworkNode {
        @display("p=199.09,91.31");
    }

    host_fn_rly_119: <default("SensorNode")> like INetworkNode {
        @display("p=126.23,65.94");
    }

    host_fn_rly_120: <default("SensorNode")> like INetworkNode {
        @display("p=147.87,114.23");
    }

    host_fn_rly_121: <default("SensorNode")> like INetworkNode {
        @display("p=167.32,51.53");
    }

    host_fn_rly_122: <default("SensorNode")> like INetworkNode {
        @display("p=156.10,12.69");
    }

    host_fn_rly_123: <default("SensorNode")> like INetworkNode {
        @display("p=189.28,29.30");
    }

    host_fn_rly_124: <default("SensorNode")> like INetworkNode {
        @display("p=103.57,64.46");
    }

    host_fn_rly_125: <default("SensorNode")> like INetworkNode {
        @display("p=22.05,36.08");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=293.09,259.03");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=349.75,137.63");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=387.43,201.02");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=361.15,252.44");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=393.67,152.65");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=341.47,158.31");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=382.64,213.29");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=390.94,109.77");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=337.07,177.02");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=246.18,287.75");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=372.12,315.88");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=380.44,376.93");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=337.10,228.47");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=337.62,238.68");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=381.82,224.64");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=343.91,213.06");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=244.41,391.77");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=319.33,342.87");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=310.17,336.95");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=317.27,300.13");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=244.60,247.60");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=394.16,284.43");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=385.27,289.47");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=312.00,398.48");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=372.13,134.16");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=391.78,321.25");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=359.86,365.53");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=399.79,199.07");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=308.36,217.05");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=266.13,290.69");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=328.24,218.85");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=274.87,208.94");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=345.58,354.03");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=393.17,387.73");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=247.43,259.72");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=227.77,206.20");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=264.63,129.45");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=334.77,134.81");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=342.69,111.64");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=359.57,147.15");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=296.66,201.41");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=355.95,227.01");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=358.70,280.63");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=227.30,135.13");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=232.71,170.16");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=315.56,280.36");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=224.40,246.51");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=272.63,189.12");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=182.04,246.35");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=195.60,187.42");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=128.16,212.24");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=27.56,338.96");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=16.57,314.12");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=126.87,335.17");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=156.68,346.82");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=117.69,390.13");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=106.27,364.72");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=190.55,389.12");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=186.74,312.54");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=165.44,341.29");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=254.39,335.33");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=201.09,312.73");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=195.29,283.34");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=146.89,342.43");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=222.06,185.88");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=333.48,204.75");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=203.93,234.42");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=203.98,169.09");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=319.68,206.92");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=281.23,263.80");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=332.45,269.87");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=301.73,326.89");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=370.59,392.68");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=326.06,370.27");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=280.73,373.56");
    }

    host_lpn_201: <default("SensorNode")> like INetworkNode {
        @display("p=233.13,267.83");
    }

    host_lpn_202: <default("SensorNode")> like INetworkNode {
        @display("p=229.09,304.14");
    }

    host_lpn_203: <default("SensorNode")> like INetworkNode {
        @display("p=348.18,296.77");
    }

    host_lpn_204: <default("SensorNode")> like INetworkNode {
        @display("p=397.13,372.72");
    }

    host_lpn_205: <default("SensorNode")> like INetworkNode {
        @display("p=349.18,394.02");
    }

    host_lpn_206: <default("SensorNode")> like INetworkNode {
        @display("p=318.87,353.19");
    }

    host_lpn_207: <default("SensorNode")> like INetworkNode {
        @display("p=212.95,395.82");
    }

    host_lpn_208: <default("SensorNode")> like INetworkNode {
        @display("p=219.04,386.27");
    }

    host_lpn_209: <default("SensorNode")> like INetworkNode {
        @display("p=210.32,372.20");
    }

    host_lpn_210: <default("SensorNode")> like INetworkNode {
        @display("p=113.99,330.35");
    }

    host_lpn_211: <default("SensorNode")> like INetworkNode {
        @display("p=193.39,337.93");
    }

    host_lpn_212: <default("SensorNode")> like INetworkNode {
        @display("p=309.86,319.34");
    }

    host_lpn_213: <default("SensorNode")> like INetworkNode {
        @display("p=271.66,381.86");
    }

    host_lpn_214: <default("SensorNode")> like INetworkNode {
        @display("p=288.00,336.45");
    }

    host_lpn_215: <default("SensorNode")> like INetworkNode {
        @display("p=245.59,173.55");
    }

    host_lpn_216: <default("SensorNode")> like INetworkNode {
        @display("p=227.48,157.09");
    }

    host_lpn_217: <default("SensorNode")> like INetworkNode {
        @display("p=180.84,260.84");
    }

    host_lpn_218: <default("SensorNode")> like INetworkNode {
        @display("p=160.90,273.00");
    }

    host_lpn_219: <default("SensorNode")> like INetworkNode {
        @display("p=242.48,300.66");
    }

    host_lpn_220: <default("SensorNode")> like INetworkNode {
        @display("p=208.04,247.97");
    }

    host_lpn_221: <default("SensorNode")> like INetworkNode {
        @display("p=192.68,252.78");
    }

    host_lpn_222: <default("SensorNode")> like INetworkNode {
        @display("p=127.16,264.03");
    }

    host_lpn_223: <default("SensorNode")> like INetworkNode {
        @display("p=95.36,238.55");
    }

    host_lpn_224: <default("SensorNode")> like INetworkNode {
        @display("p=138.63,132.06");
    }

    host_lpn_225: <default("SensorNode")> like INetworkNode {
        @display("p=61.12,172.75");
    }

    host_lpn_226: <default("SensorNode")> like INetworkNode {
        @display("p=53.13,213.27");
    }

    host_lpn_227: <default("SensorNode")> like INetworkNode {
        @display("p=102.86,225.10");
    }

    host_lpn_228: <default("SensorNode")> like INetworkNode {
        @display("p=70.75,340.05");
    }

    host_lpn_229: <default("SensorNode")> like INetworkNode {
        @display("p=40.98,310.14");
    }

    host_lpn_230: <default("SensorNode")> like INetworkNode {
        @display("p=66.33,270.90");
    }

    host_lpn_231: <default("SensorNode")> like INetworkNode {
        @display("p=57.87,355.95");
    }

    host_lpn_232: <default("SensorNode")> like INetworkNode {
        @display("p=73.12,354.67");
    }

    host_lpn_233: <default("SensorNode")> like INetworkNode {
        @display("p=113.70,249.98");
    }

    host_lpn_234: <default("SensorNode")> like INetworkNode {
        @display("p=162.53,256.36");
    }

    host_lpn_235: <default("SensorNode")> like INetworkNode {
        @display("p=88.42,267.77");
    }

    host_lpn_236: <default("SensorNode")> like INetworkNode {
        @display("p=188.40,179.72");
    }

    host_lpn_237: <default("SensorNode")> like INetworkNode {
        @display("p=354.01,175.57");
    }

    host_lpn_238: <default("SensorNode")> like INetworkNode {
        @display("p=366.47,90.45");
    }

    host_lpn_239: <default("SensorNode")> like INetworkNode {
        @display("p=360.26,128.17");
    }

    host_lpn_240: <default("SensorNode")> like INetworkNode {
        @display("p=392.50,130.56");
    }

    host_lpn_241: <default("SensorNode")> like INetworkNode {
        @display("p=246.54,183.65");
    }

    host_lpn_242: <default("SensorNode")> like INetworkNode {
        @display("p=171.66,104.21");
    }

    host_lpn_243: <default("SensorNode")> like INetworkNode {
        @display("p=235.74,49.57");
    }

    host_lpn_244: <default("SensorNode")> like INetworkNode {
        @display("p=185.00,6.28");
    }

    host_lpn_245: <default("SensorNode")> like INetworkNode {
        @display("p=142.36,50.19");
    }

    host_lpn_246: <default("SensorNode")> like INetworkNode {
        @display("p=128.16,103.76");
    }

    host_lpn_247: <default("SensorNode")> like INetworkNode {
        @display("p=131.87,15.99");
    }

    host_lpn_248: <default("SensorNode")> like INetworkNode {
        @display("p=242.85,1.17");
    }

    host_lpn_249: <default("SensorNode")> like INetworkNode {
        @display("p=121.89,37.37");
    }

    host_lpn_250: <default("SensorNode")> like INetworkNode {
        @display("p=17.39,46.69");
    }

    host_lpn_251: <default("SensorNode")> like INetworkNode {
        @display("p=246.05,213.80");
    }

    host_lpn_252: <default("SensorNode")> like INetworkNode {
        @display("p=354.25,102.29");
    }

    host_lpn_253: <default("SensorNode")> like INetworkNode {
        @display("p=398.95,236.78");
    }

    host_lpn_254: <default("SensorNode")> like INetworkNode {
        @display("p=367.53,192.37");
    }

    host_lpn_255: <default("SensorNode")> like INetworkNode {
        @display("p=284.30,190.89");
    }

    host_lpn_256: <default("SensorNode")> like INetworkNode {
        @display("p=330.13,109.26");
    }

    host_lpn_257: <default("SensorNode")> like INetworkNode {
        @display("p=368.48,243.37");
    }

    host_lpn_258: <default("SensorNode")> like INetworkNode {
        @display("p=317.81,95.75");
    }

    host_lpn_259: <default("SensorNode")> like INetworkNode {
        @display("p=301.66,277.57");
    }

    host_lpn_260: <default("SensorNode")> like INetworkNode {
        @display("p=345.77,276.55");
    }

    host_lpn_261: <default("SensorNode")> like INetworkNode {
        @display("p=380.25,236.01");
    }

    host_lpn_262: <default("SensorNode")> like INetworkNode {
        @display("p=350.97,379.97");
    }

    host_lpn_263: <default("SensorNode")> like INetworkNode {
        @display("p=304.84,266.42");
    }

    host_lpn_264: <default("SensorNode")> like INetworkNode {
        @display("p=300.80,238.39");
    }

    host_lpn_265: <default("SensorNode")> like INetworkNode {
        @display("p=384.19,328.21");
    }

    host_lpn_266: <default("SensorNode")> like INetworkNode {
        @display("p=327.46,330.21");
    }

    host_lpn_267: <default("SensorNode")> like INetworkNode {
        @display("p=278.84,348.63");
    }

    host_lpn_268: <default("SensorNode")> like INetworkNode {
        @display("p=267.17,317.83");
    }

    host_lpn_269: <default("SensorNode")> like INetworkNode {
        @display("p=278.52,251.12");
    }

    host_lpn_270: <default("SensorNode")> like INetworkNode {
        @display("p=289.58,366.13");
    }

    host_lpn_271: <default("SensorNode")> like INetworkNode {
        @display("p=329.96,347.09");
    }

    host_lpn_272: <default("SensorNode")> like INetworkNode {
        @display("p=398.98,313.23");
    }

    host_lpn_273: <default("SensorNode")> like INetworkNode {
        @display("p=354.58,263.58");
    }

    host_lpn_274: <default("SensorNode")> like INetworkNode {
        @display("p=296.36,397.08");
    }

    host_lpn_275: <default("SensorNode")> like INetworkNode {
        @display("p=358.45,240.71");
    }

    host_lpn_276: <default("SensorNode")> like INetworkNode {
        @display("p=348.50,364.41");
    }

    host_lpn_277: <default("SensorNode")> like INetworkNode {
        @display("p=399.32,335.07");
    }

    host_lpn_278: <default("SensorNode")> like INetworkNode {
        @display("p=312.83,246.20");
    }

    host_lpn_279: <default("SensorNode")> like INetworkNode {
        @display("p=344.87,323.01");
    }

    host_lpn_280: <default("SensorNode")> like INetworkNode {
        @display("p=303.72,300.39");
    }

    host_lpn_281: <default("SensorNode")> like INetworkNode {
        @display("p=298.44,225.13");
    }

    host_lpn_282: <default("SensorNode")> like INetworkNode {
        @display("p=327.24,126.13");
    }

    host_lpn_283: <default("SensorNode")> like INetworkNode {
        @display("p=367.04,337.47");
    }

    host_lpn_284: <default("SensorNode")> like INetworkNode {
        @display("p=359.70,312.48");
    }

    host_lpn_285: <default("SensorNode")> like INetworkNode {
        @display("p=249.19,277.59");
    }

    host_lpn_286: <default("SensorNode")> like INetworkNode {
        @display("p=274.03,70.80");
    }

    host_lpn_287: <default("SensorNode")> like INetworkNode {
        @display("p=301.21,46.34");
    }

    host_lpn_288: <default("SensorNode")> like INetworkNode {
        @display("p=349.35,76.34");
    }

    host_lpn_289: <default("SensorNode")> like INetworkNode {
        @display("p=247.63,100.55");
    }

    host_lpn_290: <default("SensorNode")> like INetworkNode {
        @display("p=257.97,183.76");
    }

    host_lpn_291: <default("SensorNode")> like INetworkNode {
        @display("p=309.40,167.61");
    }

    host_lpn_292: <default("SensorNode")> like INetworkNode {
        @display("p=394.80,302.24");
    }

    host_lpn_293: <default("SensorNode")> like INetworkNode {
        @display("p=393.70,220.90");
    }

    host_lpn_294: <default("SensorNode")> like INetworkNode {
        @display("p=310.13,190.81");
    }

    host_lpn_295: <default("SensorNode")> like INetworkNode {
        @display("p=381.50,147.70");
    }

    host_lpn_296: <default("SensorNode")> like INetworkNode {
        @display("p=178.67,232.87");
    }

    host_lpn_297: <default("SensorNode")> like INetworkNode {
        @display("p=254.82,294.35");
    }

    host_lpn_298: <default("SensorNode")> like INetworkNode {
        @display("p=241.31,151.62");
    }

    host_lpn_299: <default("SensorNode")> like INetworkNode {
        @display("p=124.76,147.24");
    }

    host_lpn_300: <default("SensorNode")> like INetworkNode {
        @display("p=149.63,294.90");
    }

    host_lpn_301: <default("SensorNode")> like INetworkNode {
        @display("p=111.63,279.29");
    }

    host_lpn_302: <default("SensorNode")> like INetworkNode {
        @display("p=121.77,277.49");
    }

    host_lpn_303: <default("SensorNode")> like INetworkNode {
        @display("p=172.56,362.69");
    }

    host_lpn_304: <default("SensorNode")> like INetworkNode {
        @display("p=38.04,332.65");
    }

    host_lpn_305: <default("SensorNode")> like INetworkNode {
        @display("p=126.39,365.89");
    }

    host_lpn_306: <default("SensorNode")> like INetworkNode {
        @display("p=237.63,376.85");
    }

    host_lpn_307: <default("SensorNode")> like INetworkNode {
        @display("p=95.62,255.12");
    }

    host_lpn_308: <default("SensorNode")> like INetworkNode {
        @display("p=133.39,349.61");
    }

    host_lpn_309: <default("SensorNode")> like INetworkNode {
        @display("p=212.46,323.49");
    }

    host_lpn_310: <default("SensorNode")> like INetworkNode {
        @display("p=172.29,387.00");
    }

    host_lpn_311: <default("SensorNode")> like INetworkNode {
        @display("p=252.04,308.68");
    }

    host_lpn_312: <default("SensorNode")> like INetworkNode {
        @display("p=193.20,210.11");
    }

    host_lpn_313: <default("SensorNode")> like INetworkNode {
        @display("p=222.55,234.77");
    }

    host_lpn_314: <default("SensorNode")> like INetworkNode {
        @display("p=129.65,284.79");
    }

    host_lpn_315: <default("SensorNode")> like INetworkNode {
        @display("p=188.12,155.70");
    }

    host_lpn_316: <default("SensorNode")> like INetworkNode {
        @display("p=312.48,256.74");
    }

    host_lpn_317: <default("SensorNode")> like INetworkNode {
        @display("p=193.36,295.56");
    }

    host_lpn_318: <default("SensorNode")> like INetworkNode {
        @display("p=220.14,172.55");
    }

    host_lpn_319: <default("SensorNode")> like INetworkNode {
        @display("p=228.52,216.74");
    }

    host_lpn_320: <default("SensorNode")> like INetworkNode {
        @display("p=249.20,348.31");
    }

    host_lpn_321: <default("SensorNode")> like INetworkNode {
        @display("p=355.06,339.80");
    }

    host_lpn_322: <default("SensorNode")> like INetworkNode {
        @display("p=315.54,381.84");
    }

    host_lpn_323: <default("SensorNode")> like INetworkNode {
        @display("p=304.33,374.61");
    }

    host_lpn_324: <default("SensorNode")> like INetworkNode {
        @display("p=336.71,366.24");
    }

    host_lpn_325: <default("SensorNode")> like INetworkNode {
        @display("p=288.34,388.59");
    }

    host_lpn_326: <default("SensorNode")> like INetworkNode {
        @display("p=229.32,335.11");
    }

    host_lpn_327: <default("SensorNode")> like INetworkNode {
        @display("p=224.24,360.74");
    }

    host_lpn_328: <default("SensorNode")> like INetworkNode {
        @display("p=261.24,277.51");
    }

    host_lpn_329: <default("SensorNode")> like INetworkNode {
        @display("p=388.98,397.51");
    }

    host_lpn_330: <default("SensorNode")> like INetworkNode {
        @display("p=308.68,364.13");
    }

    host_lpn_331: <default("SensorNode")> like INetworkNode {
        @display("p=303.63,388.37");
    }

    host_lpn_332: <default("SensorNode")> like INetworkNode {
        @display("p=265.84,370.06");
    }

    host_lpn_333: <default("SensorNode")> like INetworkNode {
        @display("p=340.48,344.31");
    }

    host_lpn_334: <default("SensorNode")> like INetworkNode {
        @display("p=154.67,383.10");
    }

    host_lpn_335: <default("SensorNode")> like INetworkNode {
        @display("p=135.19,392.52");
    }

    host_lpn_336: <default("SensorNode")> like INetworkNode {
        @display("p=216.73,312.09");
    }

    host_lpn_337: <default("SensorNode")> like INetworkNode {
        @display("p=288.53,352.06");
    }

    host_lpn_338: <default("SensorNode")> like INetworkNode {
        @display("p=281.79,219.08");
    }

    host_lpn_339: <default("SensorNode")> like INetworkNode {
        @display("p=324.26,315.45");
    }

    host_lpn_340: <default("SensorNode")> like INetworkNode {
        @display("p=168.25,215.44");
    }

    host_lpn_341: <default("SensorNode")> like INetworkNode {
        @display("p=273.09,150.41");
    }

    host_lpn_342: <default("SensorNode")> like INetworkNode {
        @display("p=166.32,309.44");
    }

    host_lpn_343: <default("SensorNode")> like INetworkNode {
        @display("p=213.95,264.77");
    }

    host_lpn_344: <default("SensorNode")> like INetworkNode {
        @display("p=206.81,354.77");
    }

    host_lpn_345: <default("SensorNode")> like INetworkNode {
        @display("p=233.46,281.31");
    }

    host_lpn_346: <default("SensorNode")> like INetworkNode {
        @display("p=170.86,275.02");
    }

    host_lpn_347: <default("SensorNode")> like INetworkNode {
        @display("p=137.77,294.15");
    }

    host_lpn_348: <default("SensorNode")> like INetworkNode {
        @display("p=108.70,176.69");
    }

    host_lpn_349: <default("SensorNode")> like INetworkNode {
        @display("p=56.60,198.25");
    }

    host_lpn_350: <default("SensorNode")> like INetworkNode {
        @display("p=69.53,204.39");
    }

    host_lpn_351: <default("SensorNode")> like INetworkNode {
        @display("p=74.33,178.73");
    }

    host_lpn_352: <default("SensorNode")> like INetworkNode {
        @display("p=81.75,251.68");
    }

    host_lpn_353: <default("SensorNode")> like INetworkNode {
        @display("p=12.83,247.84");
    }

    host_lpn_354: <default("SensorNode")> like INetworkNode {
        @display("p=45.36,227.16");
    }

    host_lpn_355: <default("SensorNode")> like INetworkNode {
        @display("p=67.96,305.58");
    }

    host_lpn_356: <default("SensorNode")> like INetworkNode {
        @display("p=77.06,386.33");
    }

    host_lpn_357: <default("SensorNode")> like INetworkNode {
        @display("p=33.59,362.13");
    }

    host_lpn_358: <default("SensorNode")> like INetworkNode {
        @display("p=80.23,301.07");
    }

    host_lpn_359: <default("SensorNode")> like INetworkNode {
        @display("p=153.12,309.96");
    }

    host_lpn_360: <default("SensorNode")> like INetworkNode {
        @display("p=107.15,207.27");
    }

    host_lpn_361: <default("SensorNode")> like INetworkNode {
        @display("p=168.80,200.36");
    }

    host_lpn_362: <default("SensorNode")> like INetworkNode {
        @display("p=305.05,289.48");
    }

    host_lpn_363: <default("SensorNode")> like INetworkNode {
        @display("p=299.45,186.98");
    }

    host_lpn_364: <default("SensorNode")> like INetworkNode {
        @display("p=339.12,79.37");
    }

    host_lpn_365: <default("SensorNode")> like INetworkNode {
        @display("p=317.79,106.87");
    }

    host_lpn_366: <default("SensorNode")> like INetworkNode {
        @display("p=337.28,147.89");
    }

    host_lpn_367: <default("SensorNode")> like INetworkNode {
        @display("p=171.77,67.83");
    }

    host_lpn_368: <default("SensorNode")> like INetworkNode {
        @display("p=284.61,82.01");
    }

    host_lpn_369: <default("SensorNode")> like INetworkNode {
        @display("p=193.39,115.59");
    }

    host_lpn_370: <default("SensorNode")> like INetworkNode {
        @display("p=134.82,119.71");
    }

    host_lpn_371: <default("SensorNode")> like INetworkNode {
        @display("p=256.08,28.78");
    }

    host_lpn_372: <default("SensorNode")> like INetworkNode {
        @display("p=155.85,25.92");
    }

    host_lpn_373: <default("SensorNode")> like INetworkNode {
        @display("p=147.33,78.65");
    }

    host_lpn_374: <default("SensorNode")> like INetworkNode {
        @display("p=134.99,142.24");
    }

    host_lpn_375: <default("SensorNode")> like INetworkNode {
        @display("p=19.32,58.98");
    }

    host_lpn_376: <default("SensorNode")> like INetworkNode {
        @display("p=291.94,270.04");
    }

    host_lpn_377: <default("SensorNode")> like INetworkNode {
        @display("p=381.11,161.18");
    }

    host_lpn_378: <default("SensorNode")> like INetworkNode {
        @display("p=366.95,266.20");
    }

    host_lpn_379: <default("SensorNode")> like INetworkNode {
        @display("p=297.05,166.58");
    }

    host_lpn_380: <default("SensorNode")> like INetworkNode {
        @display("p=290.04,128.90");
    }

    host_lpn_381: <default("SensorNode")> like INetworkNode {
        @display("p=399.21,95.49");
    }

    host_lpn_382: <default("SensorNode")> like INetworkNode {
        @display("p=366.87,155.67");
    }

    host_lpn_383: <default("SensorNode")> like INetworkNode {
        @display("p=338.36,124.45");
    }

    host_lpn_384: <default("SensorNode")> like INetworkNode {
        @display("p=264.45,238.69");
    }

    host_lpn_385: <default("SensorNode")> like INetworkNode {
        @display("p=288.50,207.76");
    }

    host_lpn_386: <default("SensorNode")> like INetworkNode {
        @display("p=277.77,295.06");
    }

    host_lpn_387: <default("SensorNode")> like INetworkNode {
        @display("p=393.86,272.84");
    }

    host_lpn_388: <default("SensorNode")> like INetworkNode {
        @display("p=290.29,280.34");
    }

    host_lpn_389: <default("SensorNode")> like INetworkNode {
        @display("p=256.18,226.86");
    }

    host_lpn_390: <default("SensorNode")> like INetworkNode {
        @display("p=390.21,230.46");
    }

    host_lpn_391: <default("SensorNode")> like INetworkNode {
        @display("p=397.25,252.21");
    }

    host_lpn_392: <default("SensorNode")> like INetworkNode {
        @display("p=255.37,387.54");
    }

    host_lpn_393: <default("SensorNode")> like INetworkNode {
        @display("p=244.81,236.27");
    }

    host_lpn_394: <default("SensorNode")> like INetworkNode {
        @display("p=207.58,332.41");
    }

    host_lpn_395: <default("SensorNode")> like INetworkNode {
        @display("p=278.11,280.93");
    }

    host_lpn_396: <default("SensorNode")> like INetworkNode {
        @display("p=234.76,312.77");
    }

    host_lpn_397: <default("SensorNode")> like INetworkNode {
        @display("p=368.39,326.19");
    }

    host_lpn_398: <default("SensorNode")> like INetworkNode {
        @display("p=379.13,270.06");
    }

    host_lpn_399: <default("SensorNode")> like INetworkNode {
        @display("p=343.57,266.49");
    }

    host_lpn_400: <default("SensorNode")> like INetworkNode {
        @display("p=398.35,142.22");
    }

    host_lpn_401: <default("SensorNode")> like INetworkNode {
        @display("p=398.61,351.72");
    }

    host_lpn_402: <default("SensorNode")> like INetworkNode {
        @display("p=323.83,396.11");
    }

    host_lpn_403: <default("SensorNode")> like INetworkNode {
        @display("p=379.85,339.36");
    }

    host_lpn_404: <default("SensorNode")> like INetworkNode {
        @display("p=297.86,249.06");
    }

    host_lpn_405: <default("SensorNode")> like INetworkNode {
        @display("p=333.99,319.57");
    }

    host_lpn_406: <default("SensorNode")> like INetworkNode {
        @display("p=209.37,185.20");
    }

    host_lpn_407: <default("SensorNode")> like INetworkNode {
        @display("p=263.77,155.24");
    }

    host_lpn_408: <default("SensorNode")> like INetworkNode {
        @display("p=356.88,352.69");
    }

    host_lpn_409: <default("SensorNode")> like INetworkNode {
        @display("p=270.98,358.47");
    }

    host_lpn_410: <default("SensorNode")> like INetworkNode {
        @display("p=191.08,222.12");
    }

    host_lpn_411: <default("SensorNode")> like INetworkNode {
        @display("p=244.44,132.89");
    }

    host_lpn_412: <default("SensorNode")> like INetworkNode {
        @display("p=351.59,121.42");
    }

    host_lpn_413: <default("SensorNode")> like INetworkNode {
        @display("p=229.60,102.81");
    }

    host_lpn_414: <default("SensorNode")> like INetworkNode {
        @display("p=330.03,62.07");
    }

    host_lpn_415: <default("SensorNode")> like INetworkNode {
        @display("p=368.16,108.63");
    }

    host_lpn_416: <default("SensorNode")> like INetworkNode {
        @display("p=326.47,168.61");
    }

    host_lpn_417: <default("SensorNode")> like INetworkNode {
        @display("p=289.99,181.61");
    }

    host_lpn_418: <default("SensorNode")> like INetworkNode {
        @display("p=349.24,247.69");
    }

    host_lpn_419: <default("SensorNode")> like INetworkNode {
        @display("p=294.04,90.37");
    }

    host_lpn_420: <default("SensorNode")> like INetworkNode {
        @display("p=343.57,96.13");
    }

    host_lpn_421: <default("SensorNode")> like INetworkNode {
        @display("p=206.28,209.61");
    }

    host_lpn_422: <default("SensorNode")> like INetworkNode {
        @display("p=240.35,162.74");
    }

    host_lpn_423: <default("SensorNode")> like INetworkNode {
        @display("p=173.75,131.04");
    }

    host_lpn_424: <default("SensorNode")> like INetworkNode {
        @display("p=138.49,197.43");
    }

    host_lpn_425: <default("SensorNode")> like INetworkNode {
        @display("p=190.92,238.98");
    }

    host_lpn_426: <default("SensorNode")> like INetworkNode {
        @display("p=81.85,229.23");
    }

    host_lpn_427: <default("SensorNode")> like INetworkNode {
        @display("p=145.01,328.61");
    }

    host_lpn_428: <default("SensorNode")> like INetworkNode {
        @display("p=86.09,378.91");
    }

    host_lpn_429: <default("SensorNode")> like INetworkNode {
        @display("p=115.11,345.77");
    }

    host_lpn_430: <default("SensorNode")> like INetworkNode {
        @display("p=100.97,310.56");
    }

    host_lpn_431: <default("SensorNode")> like INetworkNode {
        @display("p=157.20,394.55");
    }

    host_lpn_432: <default("SensorNode")> like INetworkNode {
        @display("p=165.75,287.83");
    }

    host_lpn_433: <default("SensorNode")> like INetworkNode {
        @display("p=156.94,369.00");
    }

    host_lpn_434: <default("SensorNode")> like INetworkNode {
        @display("p=259.84,265.81");
    }

    host_lpn_435: <default("SensorNode")> like INetworkNode {
        @display("p=197.30,325.74");
    }

    host_lpn_436: <default("SensorNode")> like INetworkNode {
        @display("p=247.71,358.78");
    }

    host_lpn_437: <default("SensorNode")> like INetworkNode {
        @display("p=99.84,298.46");
    }

    host_lpn_438: <default("SensorNode")> like INetworkNode {
        @display("p=181.45,188.83");
    }

    host_lpn_439: <default("SensorNode")> like INetworkNode {
        @display("p=211.56,222.43");
    }

    host_lpn_440: <default("SensorNode")> like INetworkNode {
        @display("p=152.09,202.99");
    }

    host_lpn_441: <default("SensorNode")> like INetworkNode {
        @display("p=210.65,280.27");
    }

    host_lpn_442: <default("SensorNode")> like INetworkNode {
        @display("p=166.64,247.15");
    }

    host_lpn_443: <default("SensorNode")> like INetworkNode {
        @display("p=178.04,204.81");
    }

    host_lpn_444: <default("SensorNode")> like INetworkNode {
        @display("p=251.46,199.17");
    }

    host_lpn_445: <default("SensorNode")> like INetworkNode {
        @display("p=322.57,289.44");
    }

    host_lpn_446: <default("SensorNode")> like INetworkNode {
        @display("p=250.54,374.16");
    }

    host_lpn_447: <default("SensorNode")> like INetworkNode {
        @display("p=254.18,398.34");
    }

    host_lpn_448: <default("SensorNode")> like INetworkNode {
        @display("p=380.45,352.99");
    }

    host_lpn_449: <default("SensorNode")> like INetworkNode {
        @display("p=272.19,332.83");
    }

    host_lpn_450: <default("SensorNode")> like INetworkNode {
        @display("p=202.39,397.09");
    }

    host_lpn_451: <default("SensorNode")> like INetworkNode {
        @display("p=222.18,373.06");
    }

    host_lpn_452: <default("SensorNode")> like INetworkNode {
        @display("p=219.01,332.50");
    }

    host_lpn_453: <default("SensorNode")> like INetworkNode {
        @display("p=236.61,323.32");
    }

    host_lpn_454: <default("SensorNode")> like INetworkNode {
        @display("p=368.37,359.28");
    }

    host_lpn_455: <default("SensorNode")> like INetworkNode {
        @display("p=359.54,386.41");
    }

    host_lpn_456: <default("SensorNode")> like INetworkNode {
        @display("p=186.05,375.07");
    }

    host_lpn_457: <default("SensorNode")> like INetworkNode {
        @display("p=284.01,398.27");
    }

    host_lpn_458: <default("SensorNode")> like INetworkNode {
        @display("p=200.23,380.91");
    }

    host_lpn_459: <default("SensorNode")> like INetworkNode {
        @display("p=112.96,373.31");
    }

    host_lpn_460: <default("SensorNode")> like INetworkNode {
        @display("p=139.74,368.74");
    }

    host_lpn_461: <default("SensorNode")> like INetworkNode {
        @display("p=183.16,351.13");
    }

    host_lpn_462: <default("SensorNode")> like INetworkNode {
        @display("p=349.55,285.84");
    }

    host_lpn_463: <default("SensorNode")> like INetworkNode {
        @display("p=333.46,249.00");
    }

    host_lpn_464: <default("SensorNode")> like INetworkNode {
        @display("p=204.13,260.05");
    }

    host_lpn_465: <default("SensorNode")> like INetworkNode {
        @display("p=260.31,118.27");
    }

    host_lpn_466: <default("SensorNode")> like INetworkNode {
        @display("p=175.95,143.88");
    }

    host_lpn_467: <default("SensorNode")> like INetworkNode {
        @display("p=110.85,265.75");
    }

    host_lpn_468: <default("SensorNode")> like INetworkNode {
        @display("p=206.23,302.86");
    }

    host_lpn_469: <default("SensorNode")> like INetworkNode {
        @display("p=179.86,338.08");
    }

    host_lpn_470: <default("SensorNode")> like INetworkNode {
        @display("p=168.18,237.20");
    }

    host_lpn_471: <default("SensorNode")> like INetworkNode {
        @display("p=184.69,288.62");
    }

    host_lpn_472: <default("SensorNode")> like INetworkNode {
        @display("p=138.00,247.55");
    }

    host_lpn_473: <default("SensorNode")> like INetworkNode {
        @display("p=117.47,218.19");
    }

    host_lpn_474: <default("SensorNode")> like INetworkNode {
        @display("p=19.34,180.01");
    }

    host_lpn_475: <default("SensorNode")> like INetworkNode {
        @display("p=53.81,63.22");
    }

    host_lpn_476: <default("SensorNode")> like INetworkNode {
        @display("p=74.76,112.09");
    }

    host_lpn_477: <default("SensorNode")> like INetworkNode {
        @display("p=102.12,155.03");
    }

    host_lpn_478: <default("SensorNode")> like INetworkNode {
        @display("p=42.74,239.69");
    }

    host_lpn_479: <default("SensorNode")> like INetworkNode {
        @display("p=45.39,271.56");
    }

    host_lpn_480: <default("SensorNode")> like INetworkNode {
        @display("p=90.17,338.69");
    }

    host_lpn_481: <default("SensorNode")> like INetworkNode {
        @display("p=61.03,369.67");
    }

    host_lpn_482: <default("SensorNode")> like INetworkNode {
        @display("p=144.78,398.13");
    }

    host_lpn_483: <default("SensorNode")> like INetworkNode {
        @display("p=148.74,246.69");
    }

    host_lpn_484: <default("SensorNode")> like INetworkNode {
        @display("p=82.72,326.25");
    }

    host_lpn_485: <default("SensorNode")> like INetworkNode {
        @display("p=49.18,317.85");
    }

    host_lpn_486: <default("SensorNode")> like INetworkNode {
        @display("p=118.41,193.01");
    }

    host_lpn_487: <default("SensorNode")> like INetworkNode {
        @display("p=235.42,198.30");
    }

    host_lpn_488: <default("SensorNode")> like INetworkNode {
        @display("p=367.47,166.73");
    }

    host_lpn_489: <default("SensorNode")> like INetworkNode {
        @display("p=344.30,167.97");
    }

    host_lpn_490: <default("SensorNode")> like INetworkNode {
        @display("p=399.95,117.71");
    }

    host_lpn_491: <default("SensorNode")> like INetworkNode {
        @display("p=276.82,126.23");
    }

    host_lpn_492: <default("SensorNode")> like INetworkNode {
        @display("p=264.07,84.84");
    }

    host_lpn_493: <default("SensorNode")> like INetworkNode {
        @display("p=201.25,130.56");
    }

    host_lpn_494: <default("SensorNode")> like INetworkNode {
        @display("p=113.15,148.47");
    }

    host_lpn_495: <default("SensorNode")> like INetworkNode {
        @display("p=93.21,77.34");
    }

    host_lpn_496: <default("SensorNode")> like INetworkNode {
        @display("p=188.47,58.40");
    }

    host_lpn_497: <default("SensorNode")> like INetworkNode {
        @display("p=205.74,69.51");
    }

    host_lpn_498: <default("SensorNode")> like INetworkNode {
        @display("p=172.81,94.19");
    }

    host_lpn_499: <default("SensorNode")> like INetworkNode {
        @display("p=108.62,25.55");
    }

    host_lpn_500: <default("SensorNode")> like INetworkNode {
        @display("p=7.22,39.49");
    }

}

