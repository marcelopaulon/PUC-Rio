
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn12-4
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
        @display("p=276.00,369.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=332.44,326.86");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=277.25,332.36");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=278.78,281.09");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=284.56,321.82");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=238.38,209.62");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=286.95,131.13");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=253.48,126.92");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=283.36,211.68");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=198.70,219.37");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=254.98,162.28");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=326.71,209.92");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=306.91,204.74");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=283.23,184.36");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=289.08,196.54");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=300.17,171.62");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=289.00,176.14");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=349.02,304.55");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=295.87,341.00");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=231.24,248.44");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=243.64,242.49");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=247.95,331.89");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=226.74,208.48");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=321.79,180.85");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=202.61,127.23");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=271.58,136.57");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=195.70,274.64");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=233.05,152.93");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=366.51,136.44");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=342.21,203.23");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=262.08,209.42");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=273.40,198.83");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=249.10,142.06");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=349.51,142.41");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=279.83,358.14");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=293.55,372.55");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=321.81,308.38");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=265.24,300.82");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=278.98,294.46");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=289.22,150.65");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=228.69,92.90");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=323.02,131.78");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=231.58,183.15");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=218.09,175.29");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=298.73,234.29");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=367.92,207.08");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=241.68,275.22");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=248.96,207.55");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=305.05,261.24");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=350.97,89.10");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=313.12,234.05");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=200.81,394.79");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=322.21,267.32");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=329.67,349.96");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=349.01,281.43");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=266.62,265.86");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=251.49,226.19");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=192.53,156.41");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=206.63,149.68");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=302.93,246.32");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=208.96,283.31");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=279.02,162.39");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=318.74,290.40");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=370.64,224.93");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=281.04,231.47");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=280.24,143.08");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=353.35,161.59");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=220.24,230.41");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=324.43,388.81");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=314.95,326.53");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=328.64,255.99");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=258.79,255.28");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=218.36,323.09");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=211.04,239.93");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=280.83,117.65");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=261.85,111.99");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=293.31,217.13");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=139.46,212.01");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=301.54,153.36");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=351.10,192.82");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=373.30,146.73");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=223.64,142.44");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=259.64,245.08");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=314.35,117.28");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=212.89,187.78");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=261.41,285.57");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=359.91,311.26");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=244.15,318.14");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=290.92,312.98");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=286.17,251.50");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=230.86,279.95");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=244.98,132.87");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=167.81,100.12");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=315.28,140.56");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=183.72,298.30");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=167.21,188.58");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=355.73,216.20");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=353.84,203.25");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=287.94,276.12");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=316.11,166.27");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=364.32,153.45");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=296.69,182.86");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=204.12,366.01");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=334.00,369.36");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=342.75,350.39");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=225.04,333.79");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=271.29,318.55");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=214.61,208.84");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=327.06,56.50");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=285.66,80.44");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=260.70,232.05");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=112.89,268.65");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=265.28,158.11");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=310.24,189.10");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=229.47,225.46");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=252.57,194.52");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=265.69,170.82");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=308.10,131.82");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=330.57,243.79");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=283.37,348.04");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=333.51,289.96");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=208.35,293.87");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=361.12,336.10");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=294.91,266.82");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=272.76,179.97");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=246.42,104.98");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=293.15,71.58");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=318.78,203.28");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=176.29,193.21");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=236.12,74.11");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=340.07,189.57");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=246.46,171.86");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=338.70,158.80");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=337.75,179.40");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=318.98,225.39");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=312.11,150.99");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=263.41,393.49");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=347.82,319.67");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=285.12,262.26");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=222.25,289.90");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=285.23,303.72");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=201.45,163.63");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=311.52,41.02");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=317.96,90.05");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=298.13,115.94");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=189.14,197.77");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=265.20,71.60");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=341.02,241.07");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=321.58,156.08");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=357.13,227.74");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=199.30,230.03");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=230.26,119.34");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=361.95,182.71");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=264.34,363.84");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=363.52,348.61");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=296.55,327.78");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=312.59,369.13");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=307.10,314.41");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=149.62,174.32");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=326.34,194.66");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=301.50,81.61");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=333.43,270.53");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=204.18,201.32");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=200.23,189.60");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=330.35,226.32");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=304.56,215.51");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=230.09,108.38");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=266.59,102.48");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=212.95,137.13");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=355.32,134.18");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=222.16,376.32");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=360.85,321.53");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=261.20,331.53");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=297.93,358.63");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=225.21,264.76");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=231.03,199.05");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=287.42,102.67");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=265.34,126.75");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=219.90,250.69");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=158.56,290.12");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=181.23,128.33");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=379.60,192.99");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=362.81,258.76");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=329.08,110.33");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=289.18,286.52");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=242.35,185.89");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=275.62,221.77");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=346.37,364.79");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=369.15,250.79");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=305.10,279.97");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=197.79,261.25");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=341.73,384.90");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=173.34,218.61");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=253.23,89.93");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=262.50,144.83");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=374.33,178.60");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=183.15,142.73");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=241.22,219.57");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=369.49,240.42");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=387.20,243.33");
    }

}

