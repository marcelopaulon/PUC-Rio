
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn1-7
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
        @display("p=398.00,148.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=366.41,120.24");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=333.13,117.23");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=330.13,148.77");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=368.55,216.13");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=394.77,226.27");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=332.90,295.37");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=303.99,267.17");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=253.20,316.09");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=214.51,303.05");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=235.43,394.18");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=245.96,398.93");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=302.25,351.54");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=274.90,334.96");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=189.29,341.83");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=184.49,323.46");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=155.24,258.12");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=237.09,248.43");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=244.45,262.03");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=295.12,200.76");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=224.19,251.59");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=243.02,280.92");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=233.17,296.47");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=261.93,358.60");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=279.64,358.89");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=357.35,335.91");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=350.90,320.94");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=304.92,254.72");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=379.92,200.67");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=337.41,281.98");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=303.94,365.22");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=353.66,399.28");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=378.56,382.62");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=359.86,366.97");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=366.88,384.39");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=375.88,393.80");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=342.45,346.44");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=279.65,371.59");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=342.25,306.11");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=315.57,354.07");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=327.11,374.48");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=270.12,316.67");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=236.14,307.20");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=270.10,284.73");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=285.15,271.10");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=293.42,278.44");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=287.26,344.82");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=254.70,251.42");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=259.69,207.20");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=280.09,243.45");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=284.46,227.19");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=350.50,209.97");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=318.28,206.70");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=310.05,196.12");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=255.53,298.01");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=272.68,389.31");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=338.51,385.51");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=320.22,396.82");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=392.57,366.33");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=372.86,358.18");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=344.92,357.90");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=318.62,368.63");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=322.26,301.46");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=387.66,305.45");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=358.31,304.10");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=264.42,336.13");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=230.40,372.85");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=228.31,342.35");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=167.76,339.27");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=192.65,379.20");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=260.39,384.23");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=268.21,242.24");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=228.01,163.33");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=290.63,249.71");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=332.64,249.88");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=363.30,244.13");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=312.11,325.44");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=368.76,371.74");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=372.36,346.27");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=301.63,323.57");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=200.10,394.33");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=281.04,325.80");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=193.92,351.97");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=173.67,350.64");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=220.88,281.86");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=243.67,129.32");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=231.31,141.70");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=202.98,62.29");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=237.56,44.74");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=249.35,34.63");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=162.72,72.89");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=110.73,136.70");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=126.51,119.72");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=122.28,108.20");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=102.46,92.59");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=163.27,109.08");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=220.95,55.89");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=268.83,32.77");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=264.14,15.11");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=208.67,77.91");
    }

    host_fn_rly_101: <default("SensorNode")> like INetworkNode {
        @display("p=176.70,71.40");
    }

    host_fn_rly_102: <default("SensorNode")> like INetworkNode {
        @display("p=212.70,148.14");
    }

    host_fn_rly_103: <default("SensorNode")> like INetworkNode {
        @display("p=259.31,172.68");
    }

    host_fn_rly_104: <default("SensorNode")> like INetworkNode {
        @display("p=229.61,201.38");
    }

    host_fn_rly_105: <default("SensorNode")> like INetworkNode {
        @display("p=166.65,187.24");
    }

    host_fn_rly_106: <default("SensorNode")> like INetworkNode {
        @display("p=202.22,118.30");
    }

    host_fn_rly_107: <default("SensorNode")> like INetworkNode {
        @display("p=177.72,148.78");
    }

    host_fn_rly_108: <default("SensorNode")> like INetworkNode {
        @display("p=135.81,143.17");
    }

    host_fn_rly_109: <default("SensorNode")> like INetworkNode {
        @display("p=187.95,138.39");
    }

    host_fn_rly_110: <default("SensorNode")> like INetworkNode {
        @display("p=176.00,165.51");
    }

    host_fn_rly_111: <default("SensorNode")> like INetworkNode {
        @display("p=233.83,86.19");
    }

    host_fn_rly_112: <default("SensorNode")> like INetworkNode {
        @display("p=172.75,128.07");
    }

    host_fn_rly_113: <default("SensorNode")> like INetworkNode {
        @display("p=159.53,156.54");
    }

    host_fn_rly_114: <default("SensorNode")> like INetworkNode {
        @display("p=150.17,187.44");
    }

    host_fn_rly_115: <default("SensorNode")> like INetworkNode {
        @display("p=186.32,211.26");
    }

    host_fn_rly_116: <default("SensorNode")> like INetworkNode {
        @display("p=108.78,203.96");
    }

    host_fn_rly_117: <default("SensorNode")> like INetworkNode {
        @display("p=155.34,208.35");
    }

    host_fn_rly_118: <default("SensorNode")> like INetworkNode {
        @display("p=170.02,235.11");
    }

    host_fn_rly_119: <default("SensorNode")> like INetworkNode {
        @display("p=150.58,173.74");
    }

    host_fn_rly_120: <default("SensorNode")> like INetworkNode {
        @display("p=183.38,181.74");
    }

    host_fn_rly_121: <default("SensorNode")> like INetworkNode {
        @display("p=221.14,186.21");
    }

    host_fn_rly_122: <default("SensorNode")> like INetworkNode {
        @display("p=132.61,296.31");
    }

    host_fn_rly_123: <default("SensorNode")> like INetworkNode {
        @display("p=206.72,311.39");
    }

    host_fn_rly_124: <default("SensorNode")> like INetworkNode {
        @display("p=212.71,399.47");
    }

    host_fn_rly_125: <default("SensorNode")> like INetworkNode {
        @display("p=336.69,270.95");
    }

    host_fn_rly_126: <default("SensorNode")> like INetworkNode {
        @display("p=386.33,357.06");
    }

    host_fn_rly_127: <default("SensorNode")> like INetworkNode {
        @display("p=391.51,332.30");
    }

    host_fn_rly_128: <default("SensorNode")> like INetworkNode {
        @display("p=377.89,233.62");
    }

    host_fn_rly_129: <default("SensorNode")> like INetworkNode {
        @display("p=384.61,186.76");
    }

    host_fn_rly_130: <default("SensorNode")> like INetworkNode {
        @display("p=394.77,193.09");
    }

    host_fn_rly_131: <default("SensorNode")> like INetworkNode {
        @display("p=364.41,228.45");
    }

    host_fn_rly_132: <default("SensorNode")> like INetworkNode {
        @display("p=353.43,249.60");
    }

    host_fn_rly_133: <default("SensorNode")> like INetworkNode {
        @display("p=335.07,231.33");
    }

    host_fn_rly_134: <default("SensorNode")> like INetworkNode {
        @display("p=271.36,181.43");
    }

    host_fn_rly_135: <default("SensorNode")> like INetworkNode {
        @display("p=278.41,121.81");
    }

    host_fn_rly_136: <default("SensorNode")> like INetworkNode {
        @display("p=255.75,94.04");
    }

    host_fn_rly_137: <default("SensorNode")> like INetworkNode {
        @display("p=85.53,208.66");
    }

    host_fn_rly_138: <default("SensorNode")> like INetworkNode {
        @display("p=84.26,129.95");
    }

    host_fn_rly_139: <default("SensorNode")> like INetworkNode {
        @display("p=78.03,175.05");
    }

    host_fn_rly_140: <default("SensorNode")> like INetworkNode {
        @display("p=50.91,180.72");
    }

    host_fn_rly_141: <default("SensorNode")> like INetworkNode {
        @display("p=100.29,135.45");
    }

    host_fn_rly_142: <default("SensorNode")> like INetworkNode {
        @display("p=136.80,107.88");
    }

    host_fn_rly_143: <default("SensorNode")> like INetworkNode {
        @display("p=141.24,97.16");
    }

    host_fn_rly_144: <default("SensorNode")> like INetworkNode {
        @display("p=76.95,34.33");
    }

    host_fn_rly_145: <default("SensorNode")> like INetworkNode {
        @display("p=66.65,81.09");
    }

    host_fn_rly_146: <default("SensorNode")> like INetworkNode {
        @display("p=75.79,19.22");
    }

    host_fn_rly_147: <default("SensorNode")> like INetworkNode {
        @display("p=102.86,34.57");
    }

    host_fn_rly_148: <default("SensorNode")> like INetworkNode {
        @display("p=120.89,63.55");
    }

    host_fn_rly_149: <default("SensorNode")> like INetworkNode {
        @display("p=34.95,65.97");
    }

    host_fn_rly_150: <default("SensorNode")> like INetworkNode {
        @display("p=94.48,112.38");
    }

    host_fn_rly_151: <default("SensorNode")> like INetworkNode {
        @display("p=156.85,142.89");
    }

    host_fn_rly_152: <default("SensorNode")> like INetworkNode {
        @display("p=215.62,127.31");
    }

    host_fn_rly_153: <default("SensorNode")> like INetworkNode {
        @display("p=195.93,153.85");
    }

    host_fn_rly_154: <default("SensorNode")> like INetworkNode {
        @display("p=181.71,201.74");
    }

    host_fn_rly_155: <default("SensorNode")> like INetworkNode {
        @display("p=199.32,127.93");
    }

    host_fn_rly_156: <default("SensorNode")> like INetworkNode {
        @display("p=228.76,117.87");
    }

    host_fn_rly_157: <default("SensorNode")> like INetworkNode {
        @display("p=259.21,83.30");
    }

    host_fn_rly_158: <default("SensorNode")> like INetworkNode {
        @display("p=219.21,113.87");
    }

    host_fn_rly_159: <default("SensorNode")> like INetworkNode {
        @display("p=313.51,123.59");
    }

    host_fn_rly_160: <default("SensorNode")> like INetworkNode {
        @display("p=292.88,91.50");
    }

    host_fn_rly_161: <default("SensorNode")> like INetworkNode {
        @display("p=325.73,12.24");
    }

    host_fn_rly_162: <default("SensorNode")> like INetworkNode {
        @display("p=336.17,15.25");
    }

    host_fn_rly_163: <default("SensorNode")> like INetworkNode {
        @display("p=396.79,73.08");
    }

    host_fn_rly_164: <default("SensorNode")> like INetworkNode {
        @display("p=387.95,93.27");
    }

    host_fn_rly_165: <default("SensorNode")> like INetworkNode {
        @display("p=362.03,164.01");
    }

    host_fn_rly_166: <default("SensorNode")> like INetworkNode {
        @display("p=372.93,173.62");
    }

    host_fn_rly_167: <default("SensorNode")> like INetworkNode {
        @display("p=378.68,216.19");
    }

    host_fn_rly_168: <default("SensorNode")> like INetworkNode {
        @display("p=338.58,134.11");
    }

    host_fn_rly_169: <default("SensorNode")> like INetworkNode {
        @display("p=334.46,259.86");
    }

    host_fn_rly_170: <default("SensorNode")> like INetworkNode {
        @display("p=320.49,260.50");
    }

    host_fn_rly_171: <default("SensorNode")> like INetworkNode {
        @display("p=315.01,280.80");
    }

    host_fn_rly_172: <default("SensorNode")> like INetworkNode {
        @display("p=296.84,290.44");
    }

    host_fn_rly_173: <default("SensorNode")> like INetworkNode {
        @display("p=368.11,257.22");
    }

    host_fn_rly_174: <default("SensorNode")> like INetworkNode {
        @display("p=284.21,308.20");
    }

    host_fn_rly_175: <default("SensorNode")> like INetworkNode {
        @display("p=371.49,308.37");
    }

    host_fn_rly_176: <default("SensorNode")> like INetworkNode {
        @display("p=289.95,372.37");
    }

    host_fn_rly_177: <default("SensorNode")> like INetworkNode {
        @display("p=219.33,383.00");
    }

    host_fn_rly_178: <default("SensorNode")> like INetworkNode {
        @display("p=91.55,366.87");
    }

    host_fn_rly_179: <default("SensorNode")> like INetworkNode {
        @display("p=72.26,294.13");
    }

    host_fn_rly_180: <default("SensorNode")> like INetworkNode {
        @display("p=47.12,287.07");
    }

    host_fn_rly_181: <default("SensorNode")> like INetworkNode {
        @display("p=35.05,258.12");
    }

    host_fn_rly_182: <default("SensorNode")> like INetworkNode {
        @display("p=34.83,277.03");
    }

    host_fn_rly_183: <default("SensorNode")> like INetworkNode {
        @display("p=51.51,315.78");
    }

    host_fn_rly_184: <default("SensorNode")> like INetworkNode {
        @display("p=14.70,243.44");
    }

    host_fn_rly_185: <default("SensorNode")> like INetworkNode {
        @display("p=106.80,228.67");
    }

    host_fn_rly_186: <default("SensorNode")> like INetworkNode {
        @display("p=142.37,194.15");
    }

    host_fn_rly_187: <default("SensorNode")> like INetworkNode {
        @display("p=204.28,252.68");
    }

    host_fn_rly_188: <default("SensorNode")> like INetworkNode {
        @display("p=129.82,364.76");
    }

    host_fn_rly_189: <default("SensorNode")> like INetworkNode {
        @display("p=135.14,386.89");
    }

    host_fn_rly_190: <default("SensorNode")> like INetworkNode {
        @display("p=163.16,383.27");
    }

    host_fn_rly_191: <default("SensorNode")> like INetworkNode {
        @display("p=130.08,338.69");
    }

    host_fn_rly_192: <default("SensorNode")> like INetworkNode {
        @display("p=111.41,375.37");
    }

    host_fn_rly_193: <default("SensorNode")> like INetworkNode {
        @display("p=114.91,340.31");
    }

    host_fn_rly_194: <default("SensorNode")> like INetworkNode {
        @display("p=102.84,270.31");
    }

    host_fn_rly_195: <default("SensorNode")> like INetworkNode {
        @display("p=56.24,241.23");
    }

    host_fn_rly_196: <default("SensorNode")> like INetworkNode {
        @display("p=68.60,213.87");
    }

    host_fn_rly_197: <default("SensorNode")> like INetworkNode {
        @display("p=61.38,250.27");
    }

    host_fn_rly_198: <default("SensorNode")> like INetworkNode {
        @display("p=77.29,248.19");
    }

    host_fn_rly_199: <default("SensorNode")> like INetworkNode {
        @display("p=62.22,265.79");
    }

    host_fn_rly_200: <default("SensorNode")> like INetworkNode {
        @display("p=78.45,258.99");
    }

}

