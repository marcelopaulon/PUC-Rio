
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn8_2
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
            @display("p=100,100");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=141.12,173.21");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=137.77,207.69");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=181.23,208.12");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=237.68,197.83");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=238.90,240.99");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=282.81,323.30");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=293.81,350.69");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=317.89,307.90");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=339.86,240.14");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=314.82,216.39");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=238.33,156.21");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=150.45,191.44");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=240.62,226.44");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=368.40,192.27");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=381.07,264.64");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=295.38,279.79");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=287.13,245.84");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=275.16,149.70");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=286.21,157.89");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=378.80,155.86");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=367.48,148.04");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=316.68,184.15");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=296.70,222.79");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=272.98,311.99");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=62.64,31.70");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=123.24,176.87");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=75.58,236.72");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=129.79,164.72");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=166.11,165.61");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=240.63,167.73");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=335.84,359.81");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=322.62,339.70");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=301.93,319.61");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=334.25,192.68");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=363.85,250.44");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=228.84,252.50");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=199.24,161.78");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=183.24,269.59");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=355.44,175.43");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=370.36,282.05");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=269.27,274.74");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=267.35,201.92");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=252.44,138.37");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=297.76,176.30");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=383.95,125.65");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=338.24,222.57");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=253.89,148.68");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=205.73,200.22");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=277.13,281.31");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=88.88,71.33");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=87.83,161.62");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=151.62,216.98");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=201.54,216.03");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=285.29,220.07");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=157.61,281.14");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=207.58,325.82");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=359.38,380.05");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=260.27,270.02");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=303.70,234.59");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=328.17,204.86");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=236.77,117.13");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=155.97,205.53");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=255.23,291.23");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=321.06,155.31");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=355.42,333.69");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=347.19,264.06");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=309.10,271.97");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=204.16,101.27");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=284.02,141.87");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=366.56,172.49");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=278.27,170.01");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=315.54,203.58");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=256.65,193.29");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=279.36,252.97");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=156.25,68.36");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=65.49,180.26");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=62.44,232.97");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=230.60,216.00");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=174.05,220.76");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=210.10,169.19");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=315.55,280.56");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=202.92,356.69");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=368.03,339.30");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=353.38,233.76");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=353.66,255.49");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=220.80,181.55");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=219.62,137.92");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=184.95,252.31");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=294.37,194.54");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=357.71,267.45");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=282.73,292.24");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=269.66,225.45");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=194.31,103.73");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=333.42,106.10");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=391.87,180.82");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=394.06,99.09");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=253.85,208.44");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=337.69,176.29");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=243.97,326.29");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=76.49,137.18");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=138.23,152.64");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=184.63,142.50");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=204.56,255.66");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=149.07,240.18");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=293.56,213.25");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=317.97,230.10");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=308.99,359.00");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=336.39,320.16");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=327.90,290.53");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=245.04,189.93");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=298.89,97.80");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=170.23,148.84");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=243.15,276.48");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=366.15,158.73");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=395.78,302.90");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=294.72,291.43");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=213.07,301.59");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=272.29,126.61");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=221.38,224.33");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=337.04,120.91");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=345.56,85.27");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=277.09,98.79");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=306.64,186.77");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=214.42,313.91");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=102.95,111.81");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=106.82,234.43");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=109.85,246.12");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=179.21,191.67");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=190.75,117.04");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=284.81,263.07");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=267.28,288.69");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=268.99,342.92");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=348.26,379.02");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=399.41,187.41");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=360.99,202.20");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=312.97,164.91");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=175.00,157.82");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=241.71,216.44");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=350.39,202.23");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=377.74,251.63");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=252.27,261.12");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=286.99,234.10");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=285.49,125.28");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=322.25,137.90");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=380.72,171.36");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=353.93,108.24");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=371.71,218.61");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=262.03,141.86");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=295.55,307.58");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=158.35,90.11");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=206.07,231.87");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=215.50,153.33");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=263.53,250.85");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=271.45,177.37");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=220.05,279.21");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=291.24,337.36");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=253.84,353.22");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=296.12,254.60");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=337.86,259.09");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=354.01,134.24");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=227.35,147.18");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=195.25,187.66");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=176.67,288.62");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=377.88,232.74");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=391.66,316.23");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=234.31,346.14");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=233.41,301.11");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=208.05,187.15");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=256.64,182.11");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=384.66,146.15");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=380.55,78.12");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=299.24,158.99");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=227.68,287.63");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=271.21,301.44");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=182.26,67.95");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=131.92,100.51");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=202.08,273.51");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=151.74,268.73");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=327.41,181.38");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=307.63,246.04");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=267.62,328.04");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=213.80,378.31");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=234.64,319.51");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=386.11,275.61");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=218.47,197.68");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=231.44,78.01");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=147.34,157.67");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=251.54,228.39");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=329.43,145.84");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=384.34,331.66");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=280.38,186.37");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=261.48,236.79");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=344.32,128.05");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=323.87,125.12");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=392.37,224.66");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=297.13,114.49");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=317.76,115.37");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=360.51,299.24");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=241.71,251.55");
    }

}

