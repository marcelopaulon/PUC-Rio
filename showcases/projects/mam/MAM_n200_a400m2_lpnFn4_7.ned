
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn4_7
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
        @display("p=148.21,28.46");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=181.04,9.20");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=260.25,69.03");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=227.73,14.40");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=290.92,36.10");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=272.74,59.34");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=311.84,87.64");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=308.88,51.97");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=361.17,34.57");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=279.48,50.67");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=340.38,95.38");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=340.30,164.86");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=265.60,105.88");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=316.06,177.54");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=268.71,149.44");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=313.85,161.62");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=303.83,158.95");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=289.83,182.66");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=268.08,181.10");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=252.85,266.89");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=178.85,200.54");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=188.32,242.10");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=270.88,298.20");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=270.43,317.03");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=307.22,304.99");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=264.89,326.77");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=314.98,385.35");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=271.04,364.82");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=248.87,324.07");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=198.07,289.36");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=218.70,320.01");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=248.07,389.80");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=234.98,334.05");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=208.90,324.07");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=202.42,298.53");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=332.42,314.74");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=347.81,306.23");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=308.72,358.09");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=243.18,311.18");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=319.63,296.71");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=359.82,359.17");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=340.81,379.66");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=333.15,349.62");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=398.29,308.26");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=369.96,229.10");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=377.61,202.64");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=313.29,260.37");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=345.41,233.32");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=307.39,171.37");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=79.63,61.24");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=76.61,4.12");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=115.16,34.90");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=347.67,51.50");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=279.79,91.97");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=241.39,9.37");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=263.05,13.48");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=251.85,147.42");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=302.80,68.12");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=321.35,16.23");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=233.74,94.82");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=259.70,93.95");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=283.00,147.96");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=326.62,71.37");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=354.26,199.71");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=256.21,80.42");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=266.36,198.20");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=311.30,151.57");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=353.32,186.03");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=219.42,157.65");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=234.28,248.36");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=205.12,239.26");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=114.35,214.65");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=357.95,323.00");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=253.20,297.94");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=299.34,347.55");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=325.06,275.57");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=318.77,340.03");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=333.02,291.24");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=210.06,306.72");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=158.94,345.51");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=207.87,274.13");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=296.55,383.73");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=193.07,277.90");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=137.75,324.20");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=186.26,259.27");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=394.63,290.99");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=373.34,241.82");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=315.58,375.33");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=257.57,277.69");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=343.85,280.72");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=317.95,315.53");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=331.76,392.33");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=334.34,364.12");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=338.60,256.46");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=384.75,221.46");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=325.96,199.14");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=336.42,228.84");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=397.31,253.06");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=374.24,184.84");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=34.62,26.91");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=144.02,53.88");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=197.05,3.99");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=341.19,116.12");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=182.68,53.88");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=321.92,107.12");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=233.54,50.34");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=394.58,108.87");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=318.17,45.05");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=381.53,52.02");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=260.12,30.00");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=354.25,81.76");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=242.98,179.55");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=246.49,197.62");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=397.08,144.91");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=234.03,219.67");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=289.95,119.71");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=264.16,219.87");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=302.67,99.90");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=284.30,166.06");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=231.44,291.93");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=158.37,227.27");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=169.20,230.30");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=291.90,254.46");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=290.44,268.99");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=288.41,327.75");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=281.56,308.96");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=346.44,369.78");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=287.39,350.28");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=185.28,332.63");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=198.57,312.89");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=158.08,258.08");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=207.11,336.17");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=248.16,284.13");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=218.53,330.50");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=214.16,224.52");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=370.77,285.68");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=391.72,275.02");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=369.88,329.28");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=288.98,300.07");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=357.28,274.63");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=374.69,307.42");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=309.32,331.04");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=260.17,287.40");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=367.13,270.76");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=363.41,204.03");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=360.04,115.06");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=302.96,277.86");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=300.46,236.83");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=318.15,139.74");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=139.39,86.95");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=141.39,43.44");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=168.82,19.09");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=217.11,49.94");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=214.93,28.91");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=281.04,14.95");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=309.66,15.09");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=295.94,77.03");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=335.63,66.79");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=375.17,35.67");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=346.10,0.51");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=362.99,174.63");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=336.69,135.60");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=260.12,120.04");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=357.14,140.59");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=306.17,202.79");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=348.26,107.07");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=260.33,237.04");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=342.05,210.97");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=261.86,207.22");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=204.79,261.06");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=179.04,282.51");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=235.04,303.21");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=280.64,291.40");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=232.63,371.33");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=298.65,292.54");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=212.19,286.27");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=288.06,367.90");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=241.82,400.00");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=271.19,380.41");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=125.83,257.43");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=138.83,309.39");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=245.70,362.38");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=166.67,397.80");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=182.95,312.85");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=216.92,374.65");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=389.39,371.34");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=330.98,332.77");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=326.15,357.27");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=276.73,260.09");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=352.32,380.72");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=379.22,364.49");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=344.62,354.51");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=373.62,343.59");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=381.15,316.07");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=347.17,134.73");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=353.18,252.21");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=328.11,250.54");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=302.20,189.11");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=383.22,169.82");
    }

}

