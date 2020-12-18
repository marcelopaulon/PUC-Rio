
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn1-5
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
        @display("p=105.00,267.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=151.08,270.33");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=54.94,290.90");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=58.86,272.26");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=140.13,243.51");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=117.56,249.41");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=190.01,312.44");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=249.62,322.20");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=324.98,382.27");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=349.60,330.27");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=386.45,319.09");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=378.72,359.07");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=347.41,364.19");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=334.72,329.62");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=367.16,239.09");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=377.90,274.04");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=340.90,251.09");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=339.75,205.06");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=320.82,218.33");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=330.69,187.38");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=288.59,214.36");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=303.15,178.99");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=372.68,181.19");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=323.20,238.89");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=387.84,283.48");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=346.90,297.86");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=339.78,283.20");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=334.13,310.53");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=322.23,308.05");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=316.86,325.00");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=390.87,272.43");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=377.55,257.08");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=391.50,193.79");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=374.02,198.88");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=340.03,164.52");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=368.05,142.80");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=270.85,214.18");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=255.71,137.16");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=314.82,153.98");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=291.54,204.40");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=280.65,200.61");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=360.13,247.54");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=349.98,146.84");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=291.74,243.68");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=318.91,373.94");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=317.59,344.02");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=300.81,333.46");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=293.47,357.56");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=273.41,363.65");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=373.54,371.49");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=378.54,389.96");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=394.27,331.05");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=315.11,228.28");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=291.42,188.32");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=307.82,279.95");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=294.02,298.74");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=296.51,367.67");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=298.39,285.43");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=248.05,268.28");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=245.10,240.19");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=220.44,241.54");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=242.55,200.81");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=228.60,223.83");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=223.87,262.62");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=188.85,263.83");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=159.82,249.87");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=124.79,206.42");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=148.51,182.10");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=68.47,203.80");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=58.47,171.94");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=80.76,94.03");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=84.26,43.95");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=81.12,70.74");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=108.33,106.81");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=119.79,120.00");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=80.59,163.28");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=84.78,145.40");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=96.12,114.95");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=131.92,195.21");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=111.01,177.55");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=118.81,145.83");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=117.40,101.91");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=27.31,134.64");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=97.89,98.85");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=94.35,83.85");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=64.47,146.79");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=106.03,223.66");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=42.30,166.43");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=43.27,134.50");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=14.06,100.30");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=27.74,112.92");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=5.87,202.81");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=29.06,188.40");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=18.35,201.55");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=49.04,201.08");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=84.06,267.15");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=21.25,274.60");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=29.59,242.78");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=96.61,187.26");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=108.46,188.20");
    }

    host_fn_rly_101: <default("SensorNode")> like INetworkNode {
        @display("p=174.68,216.62");
    }

    host_fn_rly_102: <default("SensorNode")> like INetworkNode {
        @display("p=236.76,153.49");
    }

    host_fn_rly_103: <default("SensorNode")> like INetworkNode {
        @display("p=301.98,203.85");
    }

    host_fn_rly_104: <default("SensorNode")> like INetworkNode {
        @display("p=316.14,171.47");
    }

    host_fn_rly_105: <default("SensorNode")> like INetworkNode {
        @display("p=314.77,116.53");
    }

    host_fn_rly_106: <default("SensorNode")> like INetworkNode {
        @display("p=337.78,143.82");
    }

    host_fn_rly_107: <default("SensorNode")> like INetworkNode {
        @display("p=371.11,168.37");
    }

    host_fn_rly_108: <default("SensorNode")> like INetworkNode {
        @display("p=288.58,125.20");
    }

    host_fn_rly_109: <default("SensorNode")> like INetworkNode {
        @display("p=258.21,117.65");
    }

    host_fn_rly_110: <default("SensorNode")> like INetworkNode {
        @display("p=247.73,143.56");
    }

    host_fn_rly_111: <default("SensorNode")> like INetworkNode {
        @display("p=317.47,133.58");
    }

    host_fn_rly_112: <default("SensorNode")> like INetworkNode {
        @display("p=396.61,135.94");
    }

    host_fn_rly_113: <default("SensorNode")> like INetworkNode {
        @display("p=360.61,124.93");
    }

    host_fn_rly_114: <default("SensorNode")> like INetworkNode {
        @display("p=388.71,225.23");
    }

    host_fn_rly_115: <default("SensorNode")> like INetworkNode {
        @display("p=302.96,267.33");
    }

    host_fn_rly_116: <default("SensorNode")> like INetworkNode {
        @display("p=309.10,317.00");
    }

    host_fn_rly_117: <default("SensorNode")> like INetworkNode {
        @display("p=288.83,278.10");
    }

    host_fn_rly_118: <default("SensorNode")> like INetworkNode {
        @display("p=260.06,164.49");
    }

    host_fn_rly_119: <default("SensorNode")> like INetworkNode {
        @display("p=240.42,170.60");
    }

    host_fn_rly_120: <default("SensorNode")> like INetworkNode {
        @display("p=233.43,189.95");
    }

    host_fn_rly_121: <default("SensorNode")> like INetworkNode {
        @display("p=160.93,146.91");
    }

    host_fn_rly_122: <default("SensorNode")> like INetworkNode {
        @display("p=203.42,156.38");
    }

    host_fn_rly_123: <default("SensorNode")> like INetworkNode {
        @display("p=206.02,82.11");
    }

    host_fn_rly_124: <default("SensorNode")> like INetworkNode {
        @display("p=218.94,79.64");
    }

    host_fn_rly_125: <default("SensorNode")> like INetworkNode {
        @display("p=244.01,96.83");
    }

    host_fn_rly_126: <default("SensorNode")> like INetworkNode {
        @display("p=237.60,119.41");
    }

    host_fn_rly_127: <default("SensorNode")> like INetworkNode {
        @display("p=300.92,74.73");
    }

    host_fn_rly_128: <default("SensorNode")> like INetworkNode {
        @display("p=285.42,147.90");
    }

    host_fn_rly_129: <default("SensorNode")> like INetworkNode {
        @display("p=212.34,169.70");
    }

    host_fn_rly_130: <default("SensorNode")> like INetworkNode {
        @display("p=262.35,221.16");
    }

    host_fn_rly_131: <default("SensorNode")> like INetworkNode {
        @display("p=275.25,306.41");
    }

    host_fn_rly_132: <default("SensorNode")> like INetworkNode {
        @display("p=277.41,335.83");
    }

    host_fn_rly_133: <default("SensorNode")> like INetworkNode {
        @display("p=278.92,294.39");
    }

    host_fn_rly_134: <default("SensorNode")> like INetworkNode {
        @display("p=323.96,202.65");
    }

    host_fn_rly_135: <default("SensorNode")> like INetworkNode {
        @display("p=284.27,231.23");
    }

    host_fn_rly_136: <default("SensorNode")> like INetworkNode {
        @display("p=216.09,332.04");
    }

    host_fn_rly_137: <default("SensorNode")> like INetworkNode {
        @display("p=266.49,314.81");
    }

    host_fn_rly_138: <default("SensorNode")> like INetworkNode {
        @display("p=259.58,184.53");
    }

    host_fn_rly_139: <default("SensorNode")> like INetworkNode {
        @display("p=229.15,129.65");
    }

    host_fn_rly_140: <default("SensorNode")> like INetworkNode {
        @display("p=263.06,71.33");
    }

    host_fn_rly_141: <default("SensorNode")> like INetworkNode {
        @display("p=282.08,108.32");
    }

    host_fn_rly_142: <default("SensorNode")> like INetworkNode {
        @display("p=322.04,94.38");
    }

    host_fn_rly_143: <default("SensorNode")> like INetworkNode {
        @display("p=356.33,86.54");
    }

    host_fn_rly_144: <default("SensorNode")> like INetworkNode {
        @display("p=301.85,85.83");
    }

    host_fn_rly_145: <default("SensorNode")> like INetworkNode {
        @display("p=304.17,166.08");
    }

    host_fn_rly_146: <default("SensorNode")> like INetworkNode {
        @display("p=266.30,83.53");
    }

    host_fn_rly_147: <default("SensorNode")> like INetworkNode {
        @display("p=221.08,121.58");
    }

    host_fn_rly_148: <default("SensorNode")> like INetworkNode {
        @display("p=160.23,136.38");
    }

    host_fn_rly_149: <default("SensorNode")> like INetworkNode {
        @display("p=142.41,121.59");
    }

    host_fn_rly_150: <default("SensorNode")> like INetworkNode {
        @display("p=132.85,94.65");
    }

    host_fn_rly_151: <default("SensorNode")> like INetworkNode {
        @display("p=10.22,171.39");
    }

    host_fn_rly_152: <default("SensorNode")> like INetworkNode {
        @display("p=29.98,101.06");
    }

    host_fn_rly_153: <default("SensorNode")> like INetworkNode {
        @display("p=31.94,68.88");
    }

    host_fn_rly_154: <default("SensorNode")> like INetworkNode {
        @display("p=63.40,38.55");
    }

    host_fn_rly_155: <default("SensorNode")> like INetworkNode {
        @display("p=126.57,62.63");
    }

    host_fn_rly_156: <default("SensorNode")> like INetworkNode {
        @display("p=113.27,78.30");
    }

    host_fn_rly_157: <default("SensorNode")> like INetworkNode {
        @display("p=84.01,83.42");
    }

    host_fn_rly_158: <default("SensorNode")> like INetworkNode {
        @display("p=73.63,12.67");
    }

    host_fn_rly_159: <default("SensorNode")> like INetworkNode {
        @display("p=54.79,82.18");
    }

    host_fn_rly_160: <default("SensorNode")> like INetworkNode {
        @display("p=129.88,39.10");
    }

    host_fn_rly_161: <default("SensorNode")> like INetworkNode {
        @display("p=110.39,23.07");
    }

    host_fn_rly_162: <default("SensorNode")> like INetworkNode {
        @display("p=64.98,19.12");
    }

    host_fn_rly_163: <default("SensorNode")> like INetworkNode {
        @display("p=47.08,1.67");
    }

    host_fn_rly_164: <default("SensorNode")> like INetworkNode {
        @display("p=42.61,53.97");
    }

    host_fn_rly_165: <default("SensorNode")> like INetworkNode {
        @display("p=32.20,47.88");
    }

    host_fn_rly_166: <default("SensorNode")> like INetworkNode {
        @display("p=95.05,4.77");
    }

    host_fn_rly_167: <default("SensorNode")> like INetworkNode {
        @display("p=95.85,28.68");
    }

    host_fn_rly_168: <default("SensorNode")> like INetworkNode {
        @display("p=64.39,78.95");
    }

    host_fn_rly_169: <default("SensorNode")> like INetworkNode {
        @display("p=127.69,13.09");
    }

    host_fn_rly_170: <default("SensorNode")> like INetworkNode {
        @display("p=148.74,26.60");
    }

    host_fn_rly_171: <default("SensorNode")> like INetworkNode {
        @display("p=158.37,74.39");
    }

    host_fn_rly_172: <default("SensorNode")> like INetworkNode {
        @display("p=203.19,47.06");
    }

    host_fn_rly_173: <default("SensorNode")> like INetworkNode {
        @display("p=106.73,46.26");
    }

    host_fn_rly_174: <default("SensorNode")> like INetworkNode {
        @display("p=71.29,29.21");
    }

    host_fn_rly_175: <default("SensorNode")> like INetworkNode {
        @display("p=115.38,68.10");
    }

    host_fn_rly_176: <default("SensorNode")> like INetworkNode {
        @display("p=142.82,81.68");
    }

    host_fn_rly_177: <default("SensorNode")> like INetworkNode {
        @display("p=238.04,81.42");
    }

    host_fn_rly_178: <default("SensorNode")> like INetworkNode {
        @display("p=260.34,103.95");
    }

    host_fn_rly_179: <default("SensorNode")> like INetworkNode {
        @display("p=249.28,81.26");
    }

    host_fn_rly_180: <default("SensorNode")> like INetworkNode {
        @display("p=245.72,20.10");
    }

    host_fn_rly_181: <default("SensorNode")> like INetworkNode {
        @display("p=246.80,2.68");
    }

    host_fn_rly_182: <default("SensorNode")> like INetworkNode {
        @display("p=253.01,33.73");
    }

    host_fn_rly_183: <default("SensorNode")> like INetworkNode {
        @display("p=267.95,39.59");
    }

    host_fn_rly_184: <default("SensorNode")> like INetworkNode {
        @display("p=350.96,49.85");
    }

    host_fn_rly_185: <default("SensorNode")> like INetworkNode {
        @display("p=335.18,72.97");
    }

    host_fn_rly_186: <default("SensorNode")> like INetworkNode {
        @display("p=392.08,72.28");
    }

    host_fn_rly_187: <default("SensorNode")> like INetworkNode {
        @display("p=316.61,18.32");
    }

    host_fn_rly_188: <default("SensorNode")> like INetworkNode {
        @display("p=333.95,38.84");
    }

    host_fn_rly_189: <default("SensorNode")> like INetworkNode {
        @display("p=370.76,67.21");
    }

    host_fn_rly_190: <default("SensorNode")> like INetworkNode {
        @display("p=331.99,26.68");
    }

    host_fn_rly_191: <default("SensorNode")> like INetworkNode {
        @display("p=375.40,31.85");
    }

    host_fn_rly_192: <default("SensorNode")> like INetworkNode {
        @display("p=339.81,12.45");
    }

    host_fn_rly_193: <default("SensorNode")> like INetworkNode {
        @display("p=350.87,95.28");
    }

    host_fn_rly_194: <default("SensorNode")> like INetworkNode {
        @display("p=398.33,36.25");
    }

    host_fn_rly_195: <default("SensorNode")> like INetworkNode {
        @display("p=325.12,56.21");
    }

    host_fn_rly_196: <default("SensorNode")> like INetworkNode {
        @display("p=243.69,54.58");
    }

    host_fn_rly_197: <default("SensorNode")> like INetworkNode {
        @display("p=208.75,33.57");
    }

    host_fn_rly_198: <default("SensorNode")> like INetworkNode {
        @display("p=307.49,29.64");
    }

    host_fn_rly_199: <default("SensorNode")> like INetworkNode {
        @display("p=393.76,124.61");
    }

    host_fn_rly_200: <default("SensorNode")> like INetworkNode {
        @display("p=379.72,137.26");
    }

}

