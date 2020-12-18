
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
        @display("p=305.00,352.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=214.32,322.89");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=221.07,365.68");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=207.24,385.33");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=273.66,388.75");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=329.77,322.28");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=370.66,358.80");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=381.30,340.72");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=377.65,324.22");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=360.88,392.95");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=323.32,396.99");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=331.68,378.51");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=396.97,338.89");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=395.55,362.98");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=357.78,379.17");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=340.06,398.64");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=296.36,328.53");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=251.26,327.58");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=225.86,317.06");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=213.31,349.84");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=300.45,369.58");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=328.48,336.02");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=328.12,309.08");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=328.08,346.61");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=338.41,368.72");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=306.33,313.78");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=167.48,308.47");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=224.57,329.49");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=246.51,339.09");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=274.66,359.92");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=365.58,349.08");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=286.38,361.04");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=338.69,302.15");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=329.77,361.79");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=372.88,389.97");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=262.64,363.12");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=338.58,337.93");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=384.16,366.16");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=395.11,385.14");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=343.39,327.86");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=316.42,377.89");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=306.45,334.35");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=259.85,299.16");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=192.24,327.95");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=287.45,295.40");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=287.15,371.67");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=345.69,274.25");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=382.46,291.03");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=350.28,256.58");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=345.35,349.43");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=307.97,269.05");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=198.85,319.00");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=224.55,346.35");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=236.70,365.88");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=252.12,385.90");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=357.33,243.71");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=354.63,332.91");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=282.83,323.44");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=359.61,275.05");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=355.73,359.29");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=304.58,395.71");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=317.48,332.37");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=369.13,295.04");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=346.17,382.12");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=312.59,388.87");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=397.34,318.70");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=252.47,283.08");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=281.60,338.58");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=227.63,287.07");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=145.67,345.33");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=311.91,365.94");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=391.39,272.96");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=338.86,315.88");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=370.48,306.76");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=349.30,300.16");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=317.93,344.35");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=172.09,297.43");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=189.60,290.34");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=182.46,352.45");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=238.45,381.59");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=312.61,245.65");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=397.51,304.67");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=318.39,288.57");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=336.80,264.64");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=383.24,306.89");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=252.94,359.16");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=306.48,300.18");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=370.21,332.32");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=390.53,394.82");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=364.60,316.21");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=384.38,354.63");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=218.55,306.46");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=207.56,340.99");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=272.76,313.88");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=292.15,338.44");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=224.27,393.83");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=261.45,331.00");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=281.30,234.26");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=248.37,369.62");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=356.87,323.02");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=333.70,279.03");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=171.39,349.54");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=145.08,366.43");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=213.26,377.20");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=291.41,383.07");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=374.76,279.16");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=289.52,312.06");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=394.21,328.71");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=365.94,264.40");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=397.43,351.36");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=320.57,356.62");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=261.08,317.72");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=387.81,253.99");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=366.08,370.33");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=380.03,379.27");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=317.23,305.20");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=232.07,336.42");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=217.01,273.57");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=234.92,321.56");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=166.18,334.97");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=271.39,325.73");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=242.98,312.74");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=302.53,280.34");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=299.99,256.38");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=256.56,397.06");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=269.22,344.51");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=177.08,367.47");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=244.85,297.07");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=185.55,398.37");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=193.34,392.02");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=272.31,288.69");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=393.74,374.94");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=383.46,243.06");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=351.98,311.30");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=351.28,369.21");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=237.71,352.85");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=267.74,373.12");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=399.74,292.46");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=319.67,316.21");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=291.21,351.42");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=334.46,388.98");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=241.73,268.40");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=266.11,264.37");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=268.40,241.88");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=199.86,361.20");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=286.68,270.87");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=280.80,252.78");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=338.32,289.79");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=280.82,380.11");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=340.21,358.56");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=309.95,258.31");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=192.16,236.82");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=228.11,377.30");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=172.69,382.66");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=290.38,396.45");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=320.76,239.03");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=350.19,290.06");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=362.75,284.90");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=369.15,240.90");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=377.10,399.37");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=280.00,399.02");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=278.31,349.40");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=392.11,283.52");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=347.70,392.17");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=358.70,303.59");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=322.78,369.43");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=275.59,303.75");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=163.75,373.05");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=244.35,398.15");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=173.78,316.86");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=207.85,395.96");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=362.42,339.47");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=320.67,276.63");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=281.85,280.78");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=302.29,381.35");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=256.59,376.21");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=159.01,398.91");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=157.90,328.15");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=120.77,396.52");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=260.92,352.80");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=381.30,266.28");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=386.79,317.23");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=332.08,254.51");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=398.94,230.33");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=263.71,387.29");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=236.28,391.68");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=327.51,298.79");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=397.87,261.58");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=322.41,386.63");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=296.21,301.97");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=269.38,398.90");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=296.74,240.75");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=214.99,260.55");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=206.53,289.41");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=248.74,258.63");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=271.55,275.51");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=375.23,253.44");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=321.04,217.29");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=322.07,253.60");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=298.09,290.38");
    }

}

