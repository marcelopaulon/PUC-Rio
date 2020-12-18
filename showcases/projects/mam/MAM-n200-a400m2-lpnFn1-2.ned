
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn1-2
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
        @display("p=52.00,141.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=43.44,147.15");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=87.13,231.38");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=117.15,240.71");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=125.85,277.91");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=150.58,277.36");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=176.63,208.25");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=132.00,149.42");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=133.88,198.00");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=131.42,176.62");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=86.80,153.61");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=89.89,124.53");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=88.13,92.94");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=56.78,120.10");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=67.47,123.76");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=51.62,192.29");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=2.78,152.97");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=43.96,163.26");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=55.11,159.27");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=103.01,184.47");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=102.14,220.94");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=36.89,232.70");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=59.50,244.45");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=115.16,226.57");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=70.25,257.24");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=25.58,291.71");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=107.80,326.53");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=82.65,302.15");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=110.23,268.61");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=133.84,326.86");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=138.42,298.25");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=67.87,334.92");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=127.44,265.36");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=117.79,341.01");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=75.30,388.70");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=137.57,379.35");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=144.20,387.42");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=103.10,359.10");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=91.54,353.07");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=114.89,358.78");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=201.07,318.94");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=125.70,364.73");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=148.25,366.24");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=126.39,382.76");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=27.11,353.90");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=79.96,333.85");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=130.43,354.78");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=164.50,347.64");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=210.16,348.83");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=280.25,353.13");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=314.37,262.01");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=388.18,224.48");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=358.07,207.57");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=349.52,166.07");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=253.59,159.41");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=227.81,103.29");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=199.50,62.31");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=151.67,12.29");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=109.69,3.95");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=58.48,74.76");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=23.89,11.30");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=3.24,55.44");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=28.75,59.19");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=12.42,38.64");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=43.30,21.78");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=68.03,83.56");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=37.10,125.88");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=116.62,125.62");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=146.74,188.63");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=203.44,259.90");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=167.33,288.63");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=129.46,315.49");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=164.52,204.12");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=193.68,272.50");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=233.80,204.55");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=150.18,232.10");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=170.18,242.38");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=154.62,207.74");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=152.61,356.63");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=207.58,398.88");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=171.87,318.67");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=80.99,323.47");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=148.82,344.50");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=52.24,332.38");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=17.82,245.17");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=71.33,229.91");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=92.47,211.51");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=71.80,165.09");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=94.51,115.24");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=126.00,55.40");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=162.40,145.21");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=164.40,161.76");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=165.09,100.02");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=188.82,196.83");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=187.88,260.03");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=91.85,270.02");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=186.75,230.84");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=253.91,266.90");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=229.79,287.00");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=271.73,303.96");
    }

    host_fn_rly_101: <default("SensorNode")> like INetworkNode {
        @display("p=290.81,277.42");
    }

    host_fn_rly_102: <default("SensorNode")> like INetworkNode {
        @display("p=278.57,312.91");
    }

    host_fn_rly_103: <default("SensorNode")> like INetworkNode {
        @display("p=325.20,278.74");
    }

    host_fn_rly_104: <default("SensorNode")> like INetworkNode {
        @display("p=353.88,262.13");
    }

    host_fn_rly_105: <default("SensorNode")> like INetworkNode {
        @display("p=365.67,219.50");
    }

    host_fn_rly_106: <default("SensorNode")> like INetworkNode {
        @display("p=341.98,179.22");
    }

    host_fn_rly_107: <default("SensorNode")> like INetworkNode {
        @display("p=389.08,200.10");
    }

    host_fn_rly_108: <default("SensorNode")> like INetworkNode {
        @display("p=319.96,182.05");
    }

    host_fn_rly_109: <default("SensorNode")> like INetworkNode {
        @display("p=295.19,260.16");
    }

    host_fn_rly_110: <default("SensorNode")> like INetworkNode {
        @display("p=245.27,236.62");
    }

    host_fn_rly_111: <default("SensorNode")> like INetworkNode {
        @display("p=247.67,334.33");
    }

    host_fn_rly_112: <default("SensorNode")> like INetworkNode {
        @display("p=311.98,291.24");
    }

    host_fn_rly_113: <default("SensorNode")> like INetworkNode {
        @display("p=255.42,223.34");
    }

    host_fn_rly_114: <default("SensorNode")> like INetworkNode {
        @display("p=299.13,217.92");
    }

    host_fn_rly_115: <default("SensorNode")> like INetworkNode {
        @display("p=183.00,270.41");
    }

    host_fn_rly_116: <default("SensorNode")> like INetworkNode {
        @display("p=208.28,336.10");
    }

    host_fn_rly_117: <default("SensorNode")> like INetworkNode {
        @display("p=219.90,374.36");
    }

    host_fn_rly_118: <default("SensorNode")> like INetworkNode {
        @display("p=183.23,343.74");
    }

    host_fn_rly_119: <default("SensorNode")> like INetworkNode {
        @display("p=241.51,359.68");
    }

    host_fn_rly_120: <default("SensorNode")> like INetworkNode {
        @display("p=252.93,366.62");
    }

    host_fn_rly_121: <default("SensorNode")> like INetworkNode {
        @display("p=332.23,366.81");
    }

    host_fn_rly_122: <default("SensorNode")> like INetworkNode {
        @display("p=355.24,292.45");
    }

    host_fn_rly_123: <default("SensorNode")> like INetworkNode {
        @display("p=365.77,288.56");
    }

    host_fn_rly_124: <default("SensorNode")> like INetworkNode {
        @display("p=394.92,276.26");
    }

    host_fn_rly_125: <default("SensorNode")> like INetworkNode {
        @display("p=397.25,263.49");
    }

    host_fn_rly_126: <default("SensorNode")> like INetworkNode {
        @display("p=365.52,357.76");
    }

    host_fn_rly_127: <default("SensorNode")> like INetworkNode {
        @display("p=358.18,342.96");
    }

    host_fn_rly_128: <default("SensorNode")> like INetworkNode {
        @display("p=369.13,389.89");
    }

    host_fn_rly_129: <default("SensorNode")> like INetworkNode {
        @display("p=357.18,390.20");
    }

    host_fn_rly_130: <default("SensorNode")> like INetworkNode {
        @display("p=336.50,344.33");
    }

    host_fn_rly_131: <default("SensorNode")> like INetworkNode {
        @display("p=393.95,295.44");
    }

    host_fn_rly_132: <default("SensorNode")> like INetworkNode {
        @display("p=396.11,238.10");
    }

    host_fn_rly_133: <default("SensorNode")> like INetworkNode {
        @display("p=336.99,286.55");
    }

    host_fn_rly_134: <default("SensorNode")> like INetworkNode {
        @display("p=285.49,330.39");
    }

    host_fn_rly_135: <default("SensorNode")> like INetworkNode {
        @display("p=262.69,294.05");
    }

    host_fn_rly_136: <default("SensorNode")> like INetworkNode {
        @display("p=195.93,328.03");
    }

    host_fn_rly_137: <default("SensorNode")> like INetworkNode {
        @display("p=246.22,392.92");
    }

    host_fn_rly_138: <default("SensorNode")> like INetworkNode {
        @display("p=302.71,345.76");
    }

    host_fn_rly_139: <default("SensorNode")> like INetworkNode {
        @display("p=269.07,355.63");
    }

    host_fn_rly_140: <default("SensorNode")> like INetworkNode {
        @display("p=349.20,350.11");
    }

    host_fn_rly_141: <default("SensorNode")> like INetworkNode {
        @display("p=385.22,393.90");
    }

    host_fn_rly_142: <default("SensorNode")> like INetworkNode {
        @display("p=387.32,360.08");
    }

    host_fn_rly_143: <default("SensorNode")> like INetworkNode {
        @display("p=350.55,325.95");
    }

    host_fn_rly_144: <default("SensorNode")> like INetworkNode {
        @display("p=337.37,330.35");
    }

    host_fn_rly_145: <default("SensorNode")> like INetworkNode {
        @display("p=305.79,356.59");
    }

    host_fn_rly_146: <default("SensorNode")> like INetworkNode {
        @display("p=238.61,377.78");
    }

    host_fn_rly_147: <default("SensorNode")> like INetworkNode {
        @display("p=229.68,336.34");
    }

    host_fn_rly_148: <default("SensorNode")> like INetworkNode {
        @display("p=267.05,270.77");
    }

    host_fn_rly_149: <default("SensorNode")> like INetworkNode {
        @display("p=317.81,202.75");
    }

    host_fn_rly_150: <default("SensorNode")> like INetworkNode {
        @display("p=307.45,201.46");
    }

    host_fn_rly_151: <default("SensorNode")> like INetworkNode {
        @display("p=313.05,171.11");
    }

    host_fn_rly_152: <default("SensorNode")> like INetworkNode {
        @display("p=295.44,179.82");
    }

    host_fn_rly_153: <default("SensorNode")> like INetworkNode {
        @display("p=354.39,146.32");
    }

    host_fn_rly_154: <default("SensorNode")> like INetworkNode {
        @display("p=345.77,240.01");
    }

    host_fn_rly_155: <default("SensorNode")> like INetworkNode {
        @display("p=220.57,201.91");
    }

    host_fn_rly_156: <default("SensorNode")> like INetworkNode {
        @display("p=336.48,151.41");
    }

    host_fn_rly_157: <default("SensorNode")> like INetworkNode {
        @display("p=271.44,90.52");
    }

    host_fn_rly_158: <default("SensorNode")> like INetworkNode {
        @display("p=265.54,9.26");
    }

    host_fn_rly_159: <default("SensorNode")> like INetworkNode {
        @display("p=238.41,28.60");
    }

    host_fn_rly_160: <default("SensorNode")> like INetworkNode {
        @display("p=314.10,57.00");
    }

    host_fn_rly_161: <default("SensorNode")> like INetworkNode {
        @display("p=282.28,91.52");
    }

    host_fn_rly_162: <default("SensorNode")> like INetworkNode {
        @display("p=323.28,66.82");
    }

    host_fn_rly_163: <default("SensorNode")> like INetworkNode {
        @display("p=314.45,76.69");
    }

    host_fn_rly_164: <default("SensorNode")> like INetworkNode {
        @display("p=365.49,151.56");
    }

    host_fn_rly_165: <default("SensorNode")> like INetworkNode {
        @display("p=355.16,188.02");
    }

    host_fn_rly_166: <default("SensorNode")> like INetworkNode {
        @display("p=387.03,105.74");
    }

    host_fn_rly_167: <default("SensorNode")> like INetworkNode {
        @display("p=341.61,137.73");
    }

    host_fn_rly_168: <default("SensorNode")> like INetworkNode {
        @display("p=369.69,139.81");
    }

    host_fn_rly_169: <default("SensorNode")> like INetworkNode {
        @display("p=336.42,224.73");
    }

    host_fn_rly_170: <default("SensorNode")> like INetworkNode {
        @display("p=295.61,234.63");
    }

    host_fn_rly_171: <default("SensorNode")> like INetworkNode {
        @display("p=231.18,369.67");
    }

    host_fn_rly_172: <default("SensorNode")> like INetworkNode {
        @display("p=230.63,258.98");
    }

    host_fn_rly_173: <default("SensorNode")> like INetworkNode {
        @display("p=115.43,164.66");
    }

    host_fn_rly_174: <default("SensorNode")> like INetworkNode {
        @display("p=129.63,164.91");
    }

    host_fn_rly_175: <default("SensorNode")> like INetworkNode {
        @display("p=143.82,222.84");
    }

    host_fn_rly_176: <default("SensorNode")> like INetworkNode {
        @display("p=77.04,284.74");
    }

    host_fn_rly_177: <default("SensorNode")> like INetworkNode {
        @display("p=113.61,193.16");
    }

    host_fn_rly_178: <default("SensorNode")> like INetworkNode {
        @display("p=94.41,245.03");
    }

    host_fn_rly_179: <default("SensorNode")> like INetworkNode {
        @display("p=138.97,272.60");
    }

    host_fn_rly_180: <default("SensorNode")> like INetworkNode {
        @display("p=7.44,346.32");
    }

    host_fn_rly_181: <default("SensorNode")> like INetworkNode {
        @display("p=3.22,366.16");
    }

    host_fn_rly_182: <default("SensorNode")> like INetworkNode {
        @display("p=19.96,272.17");
    }

    host_fn_rly_183: <default("SensorNode")> like INetworkNode {
        @display("p=54.80,366.84");
    }

    host_fn_rly_184: <default("SensorNode")> like INetworkNode {
        @display("p=35.46,362.96");
    }

    host_fn_rly_185: <default("SensorNode")> like INetworkNode {
        @display("p=14.83,309.31");
    }

    host_fn_rly_186: <default("SensorNode")> like INetworkNode {
        @display("p=100.65,236.87");
    }

    host_fn_rly_187: <default("SensorNode")> like INetworkNode {
        @display("p=172.36,218.85");
    }

    host_fn_rly_188: <default("SensorNode")> like INetworkNode {
        @display("p=168.45,189.56");
    }

    host_fn_rly_189: <default("SensorNode")> like INetworkNode {
        @display("p=116.00,251.18");
    }

    host_fn_rly_190: <default("SensorNode")> like INetworkNode {
        @display("p=192.09,243.02");
    }

    host_fn_rly_191: <default("SensorNode")> like INetworkNode {
        @display("p=224.41,170.62");
    }

    host_fn_rly_192: <default("SensorNode")> like INetworkNode {
        @display("p=243.25,165.86");
    }

    host_fn_rly_193: <default("SensorNode")> like INetworkNode {
        @display("p=214.34,162.61");
    }

    host_fn_rly_194: <default("SensorNode")> like INetworkNode {
        @display("p=192.42,160.42");
    }

    host_fn_rly_195: <default("SensorNode")> like INetworkNode {
        @display("p=159.24,181.32");
    }

    host_fn_rly_196: <default("SensorNode")> like INetworkNode {
        @display("p=201.76,133.00");
    }

    host_fn_rly_197: <default("SensorNode")> like INetworkNode {
        @display("p=265.92,219.27");
    }

    host_fn_rly_198: <default("SensorNode")> like INetworkNode {
        @display("p=254.61,283.89");
    }

    host_fn_rly_199: <default("SensorNode")> like INetworkNode {
        @display("p=238.42,215.00");
    }

    host_fn_rly_200: <default("SensorNode")> like INetworkNode {
        @display("p=228.98,114.93");
    }

}

