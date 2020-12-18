
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn4-5
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
        @display("p=230.00,397.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=229.86,348.80");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=253.65,381.90");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=173.37,385.21");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=168.19,310.10");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=153.83,387.39");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=107.64,327.93");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=130.14,303.42");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=126.10,216.94");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=96.25,156.44");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=107.28,206.70");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=132.31,271.61");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=186.08,262.95");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=226.47,327.78");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=264.43,381.68");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=304.18,371.50");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=381.48,350.04");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=392.85,346.40");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=386.82,333.66");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=353.47,350.69");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=346.00,306.57");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=348.71,376.46");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=331.00,394.83");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=255.15,367.88");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=127.71,387.38");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=109.15,337.88");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=187.60,345.79");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=151.48,353.47");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=86.57,378.47");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=128.22,350.36");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=155.14,255.43");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=118.39,329.41");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=119.35,308.40");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=108.98,297.41");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=143.72,345.57");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=133.66,340.61");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=186.28,369.03");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=200.33,335.60");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=209.43,277.05");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=197.68,360.70");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=170.32,329.19");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=93.60,314.37");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=110.45,314.30");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=61.52,385.42");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=36.06,348.03");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=27.95,379.71");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=44.68,357.63");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=5.42,393.74");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=18.65,362.86");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=74.15,365.20");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=211.54,359.64");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=271.56,300.96");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=196.06,377.23");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=160.12,367.31");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=205.77,345.18");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=201.37,393.75");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=99.63,269.03");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=63.45,348.70");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=63.48,189.86");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=67.16,69.10");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=38.62,181.07");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=155.64,295.83");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=170.62,278.11");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=277.63,367.14");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=313.39,397.28");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=336.46,363.74");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=397.51,332.19");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=391.94,373.29");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=313.13,299.29");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=346.01,359.41");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=361.87,313.10");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=279.41,311.09");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=250.98,357.44");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=236.07,368.32");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=116.07,350.56");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=193.16,313.57");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=237.80,298.56");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=162.56,380.80");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=99.47,374.75");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=169.47,263.49");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=221.95,251.46");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=144.87,318.79");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=59.74,310.19");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=139.71,331.20");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=175.32,360.99");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=140.65,257.83");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=269.19,343.38");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=196.55,257.87");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=149.66,217.57");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=203.95,292.60");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=136.10,379.84");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=98.14,348.18");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=117.33,252.26");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=60.71,366.69");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=23.04,327.92");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=44.75,377.04");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=86.92,333.10");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=1.23,326.56");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=8.59,370.91");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=132.08,370.34");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=303.25,399.35");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=267.10,326.86");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=249.34,326.82");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=204.33,304.25");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=130.11,230.30");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=179.59,290.78");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=69.55,312.40");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=141.69,297.94");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=61.85,287.35");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=164.63,110.07");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=108.12,147.53");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=182.47,324.40");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=141.20,277.96");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=236.83,336.26");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=253.81,345.64");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=251.25,292.25");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=330.74,317.02");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=393.24,363.02");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=307.69,385.19");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=373.13,364.19");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=359.65,382.77");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=323.91,330.82");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=274.27,383.59");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=312.74,359.52");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=90.55,399.36");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=138.46,362.63");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=150.96,375.16");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=107.80,365.95");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=14.60,388.61");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=124.98,319.85");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=185.16,248.06");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=158.29,330.85");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=84.97,289.07");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=78.49,220.05");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=114.77,267.83");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=170.53,397.87");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=277.34,328.00");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=165.76,343.63");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=215.23,289.42");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=219.22,381.60");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=178.77,309.12");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=100.31,303.22");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=87.02,277.81");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=105.67,393.13");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=47.78,347.51");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=77.29,324.42");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=2.50,355.15");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=78.48,350.63");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=41.53,333.27");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=51.11,290.77");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=232.97,386.75");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=233.19,266.05");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=297.08,333.09");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=208.95,383.53");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=250.88,310.63");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=115.62,394.51");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=76.94,340.74");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=224.07,275.15");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=153.43,282.28");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=110.87,169.47");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=63.81,203.74");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=84.66,252.53");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=154.62,234.76");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=209.35,260.32");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=232.80,319.66");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=340.71,320.07");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=291.37,377.12");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=340.23,390.93");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=360.44,335.37");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=393.69,394.29");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=270.29,281.76");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=324.80,374.95");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=350.21,388.40");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=287.62,366.72");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=86.74,389.29");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=36.85,392.83");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=122.06,340.98");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=137.88,397.38");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=31.06,361.83");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=190.62,392.17");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=233.84,233.10");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=29.67,283.41");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=150.10,304.29");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=165.92,248.06");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=75.57,302.64");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=226.26,302.99");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=172.83,298.50");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=106.44,355.27");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=272.60,217.32");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=120.35,362.00");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=84.44,368.13");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=50.87,326.98");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=31.89,312.78");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=22.67,397.09");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=75.80,389.12");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=46.85,397.20");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=30.53,294.80");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=62.89,322.06");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=0.44,337.78");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=112.04,379.32");
    }

}

