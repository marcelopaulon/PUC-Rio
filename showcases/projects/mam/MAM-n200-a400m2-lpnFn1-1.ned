
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn1-1
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
        @display("p=390.00,240.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=352.44,230.03");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=380.81,288.90");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=358.56,216.24");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=357.48,197.11");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=399.91,125.31");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=363.01,104.25");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=366.53,57.04");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=385.90,84.79");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=332.74,65.12");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=330.37,128.70");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=316.52,75.43");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=366.57,126.73");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=350.97,35.19");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=393.01,35.59");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=329.02,53.15");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=337.60,11.09");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=321.91,4.41");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=272.36,69.14");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=283.23,88.65");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=361.18,136.76");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=344.37,73.98");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=256.99,40.26");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=234.10,28.42");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=253.12,103.23");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=230.65,90.70");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=179.80,73.88");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=224.06,52.94");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=234.63,11.88");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=174.66,7.31");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=83.33,44.48");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=32.27,66.69");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=74.89,23.77");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=110.03,3.44");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=47.15,8.04");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=27.62,8.10");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=54.23,24.31");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=25.51,79.39");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=14.59,31.54");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=5.89,38.18");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=59.11,107.62");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=27.34,32.54");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=97.09,95.97");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=40.95,148.93");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=29.60,159.97");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=24.66,249.63");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=17.62,311.85");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=57.43,279.77");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=32.31,320.10");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=60.56,314.47");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=29.55,229.86");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=47.42,204.85");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=30.69,180.48");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=24.07,134.26");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=70.14,108.99");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=45.58,87.72");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=86.86,108.53");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=89.42,121.68");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=3.16,114.22");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=71.18,44.15");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=44.59,45.40");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=94.07,41.10");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=136.69,75.36");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=68.97,61.17");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=106.46,85.61");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=123.64,60.98");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=148.32,84.45");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=187.31,64.91");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=209.01,119.05");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=224.85,112.93");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=179.72,154.02");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=183.90,164.08");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=211.83,207.24");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=178.12,289.07");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=111.79,362.68");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=76.51,345.73");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=120.75,379.23");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=157.28,377.46");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=129.36,309.34");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=70.92,262.26");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=112.72,328.54");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=116.84,346.56");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=204.11,340.48");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=218.95,359.51");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=246.06,350.65");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=206.44,397.69");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=278.79,330.78");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=277.63,365.59");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=311.78,316.47");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=258.77,309.06");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=263.80,262.40");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=334.03,242.18");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=268.66,315.42");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=250.20,222.15");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=194.78,186.20");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=218.64,255.86");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=224.08,193.79");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=145.80,149.77");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=116.31,109.73");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=161.19,92.42");
    }

    host_fn_rly_101: <default("SensorNode")> like INetworkNode {
        @display("p=174.76,37.94");
    }

    host_fn_rly_102: <default("SensorNode")> like INetworkNode {
        @display("p=230.32,78.20");
    }

    host_fn_rly_103: <default("SensorNode")> like INetworkNode {
        @display("p=228.53,42.96");
    }

    host_fn_rly_104: <default("SensorNode")> like INetworkNode {
        @display("p=144.59,65.39");
    }

    host_fn_rly_105: <default("SensorNode")> like INetworkNode {
        @display("p=80.92,32.71");
    }

    host_fn_rly_106: <default("SensorNode")> like INetworkNode {
        @display("p=33.61,98.64");
    }

    host_fn_rly_107: <default("SensorNode")> like INetworkNode {
        @display("p=110.83,62.52");
    }

    host_fn_rly_108: <default("SensorNode")> like INetworkNode {
        @display("p=136.65,119.44");
    }

    host_fn_rly_109: <default("SensorNode")> like INetworkNode {
        @display("p=98.03,138.81");
    }

    host_fn_rly_110: <default("SensorNode")> like INetworkNode {
        @display("p=80.49,91.21");
    }

    host_fn_rly_111: <default("SensorNode")> like INetworkNode {
        @display("p=114.48,163.00");
    }

    host_fn_rly_112: <default("SensorNode")> like INetworkNode {
        @display("p=67.12,174.68");
    }

    host_fn_rly_113: <default("SensorNode")> like INetworkNode {
        @display("p=24.35,51.96");
    }

    host_fn_rly_114: <default("SensorNode")> like INetworkNode {
        @display("p=106.41,43.02");
    }

    host_fn_rly_115: <default("SensorNode")> like INetworkNode {
        @display("p=7.48,50.34");
    }

    host_fn_rly_116: <default("SensorNode")> like INetworkNode {
        @display("p=40.56,126.08");
    }

    host_fn_rly_117: <default("SensorNode")> like INetworkNode {
        @display("p=124.19,184.37");
    }

    host_fn_rly_118: <default("SensorNode")> like INetworkNode {
        @display("p=111.56,178.83");
    }

    host_fn_rly_119: <default("SensorNode")> like INetworkNode {
        @display("p=98.26,184.90");
    }

    host_fn_rly_120: <default("SensorNode")> like INetworkNode {
        @display("p=135.61,155.84");
    }

    host_fn_rly_121: <default("SensorNode")> like INetworkNode {
        @display("p=107.76,215.09");
    }

    host_fn_rly_122: <default("SensorNode")> like INetworkNode {
        @display("p=100.04,285.06");
    }

    host_fn_rly_123: <default("SensorNode")> like INetworkNode {
        @display("p=193.77,332.10");
    }

    host_fn_rly_124: <default("SensorNode")> like INetworkNode {
        @display("p=159.09,306.09");
    }

    host_fn_rly_125: <default("SensorNode")> like INetworkNode {
        @display("p=170.79,305.77");
    }

    host_fn_rly_126: <default("SensorNode")> like INetworkNode {
        @display("p=207.59,387.48");
    }

    host_fn_rly_127: <default("SensorNode")> like INetworkNode {
        @display("p=167.77,335.15");
    }

    host_fn_rly_128: <default("SensorNode")> like INetworkNode {
        @display("p=182.71,325.74");
    }

    host_fn_rly_129: <default("SensorNode")> like INetworkNode {
        @display("p=183.42,305.57");
    }

    host_fn_rly_130: <default("SensorNode")> like INetworkNode {
        @display("p=203.68,248.12");
    }

    host_fn_rly_131: <default("SensorNode")> like INetworkNode {
        @display("p=192.63,218.80");
    }

    host_fn_rly_132: <default("SensorNode")> like INetworkNode {
        @display("p=248.95,242.72");
    }

    host_fn_rly_133: <default("SensorNode")> like INetworkNode {
        @display("p=305.98,294.84");
    }

    host_fn_rly_134: <default("SensorNode")> like INetworkNode {
        @display("p=237.85,293.83");
    }

    host_fn_rly_135: <default("SensorNode")> like INetworkNode {
        @display("p=329.89,298.19");
    }

    host_fn_rly_136: <default("SensorNode")> like INetworkNode {
        @display("p=360.87,376.92");
    }

    host_fn_rly_137: <default("SensorNode")> like INetworkNode {
        @display("p=378.39,330.69");
    }

    host_fn_rly_138: <default("SensorNode")> like INetworkNode {
        @display("p=370.90,320.38");
    }

    host_fn_rly_139: <default("SensorNode")> like INetworkNode {
        @display("p=275.85,304.94");
    }

    host_fn_rly_140: <default("SensorNode")> like INetworkNode {
        @display("p=222.86,288.82");
    }

    host_fn_rly_141: <default("SensorNode")> like INetworkNode {
        @display("p=246.33,266.08");
    }

    host_fn_rly_142: <default("SensorNode")> like INetworkNode {
        @display("p=335.75,278.55");
    }

    host_fn_rly_143: <default("SensorNode")> like INetworkNode {
        @display("p=298.42,308.58");
    }

    host_fn_rly_144: <default("SensorNode")> like INetworkNode {
        @display("p=322.45,338.11");
    }

    host_fn_rly_145: <default("SensorNode")> like INetworkNode {
        @display("p=267.13,281.63");
    }

    host_fn_rly_146: <default("SensorNode")> like INetworkNode {
        @display("p=270.88,291.48");
    }

    host_fn_rly_147: <default("SensorNode")> like INetworkNode {
        @display("p=212.12,277.97");
    }

    host_fn_rly_148: <default("SensorNode")> like INetworkNode {
        @display("p=220.78,309.49");
    }

    host_fn_rly_149: <default("SensorNode")> like INetworkNode {
        @display("p=283.85,271.54");
    }

    host_fn_rly_150: <default("SensorNode")> like INetworkNode {
        @display("p=161.52,260.12");
    }

    host_fn_rly_151: <default("SensorNode")> like INetworkNode {
        @display("p=173.35,203.99");
    }

    host_fn_rly_152: <default("SensorNode")> like INetworkNode {
        @display("p=228.31,123.76");
    }

    host_fn_rly_153: <default("SensorNode")> like INetworkNode {
        @display("p=288.27,51.85");
    }

    host_fn_rly_154: <default("SensorNode")> like INetworkNode {
        @display("p=215.61,129.65");
    }

    host_fn_rly_155: <default("SensorNode")> like INetworkNode {
        @display("p=165.95,129.71");
    }

    host_fn_rly_156: <default("SensorNode")> like INetworkNode {
        @display("p=153.76,41.22");
    }

    host_fn_rly_157: <default("SensorNode")> like INetworkNode {
        @display("p=94.58,28.82");
    }

    host_fn_rly_158: <default("SensorNode")> like INetworkNode {
        @display("p=122.70,19.07");
    }

    host_fn_rly_159: <default("SensorNode")> like INetworkNode {
        @display("p=151.73,24.37");
    }

    host_fn_rly_160: <default("SensorNode")> like INetworkNode {
        @display("p=123.46,44.91");
    }

    host_fn_rly_161: <default("SensorNode")> like INetworkNode {
        @display("p=205.54,94.19");
    }

    host_fn_rly_162: <default("SensorNode")> like INetworkNode {
        @display("p=188.84,131.28");
    }

    host_fn_rly_163: <default("SensorNode")> like INetworkNode {
        @display("p=301.83,111.77");
    }

    host_fn_rly_164: <default("SensorNode")> like INetworkNode {
        @display("p=341.89,53.36");
    }

    host_fn_rly_165: <default("SensorNode")> like INetworkNode {
        @display("p=396.12,175.74");
    }

    host_fn_rly_166: <default("SensorNode")> like INetworkNode {
        @display("p=296.54,204.69");
    }

    host_fn_rly_167: <default("SensorNode")> like INetworkNode {
        @display("p=282.52,195.56");
    }

    host_fn_rly_168: <default("SensorNode")> like INetworkNode {
        @display("p=319.28,258.28");
    }

    host_fn_rly_169: <default("SensorNode")> like INetworkNode {
        @display("p=320.46,222.43");
    }

    host_fn_rly_170: <default("SensorNode")> like INetworkNode {
        @display("p=312.99,234.88");
    }

    host_fn_rly_171: <default("SensorNode")> like INetworkNode {
        @display("p=377.33,234.63");
    }

    host_fn_rly_172: <default("SensorNode")> like INetworkNode {
        @display("p=391.96,310.05");
    }

    host_fn_rly_173: <default("SensorNode")> like INetworkNode {
        @display("p=344.40,350.03");
    }

    host_fn_rly_174: <default("SensorNode")> like INetworkNode {
        @display("p=375.85,343.89");
    }

    host_fn_rly_175: <default("SensorNode")> like INetworkNode {
        @display("p=391.78,380.03");
    }

    host_fn_rly_176: <default("SensorNode")> like INetworkNode {
        @display("p=361.77,271.28");
    }

    host_fn_rly_177: <default("SensorNode")> like INetworkNode {
        @display("p=368.96,248.34");
    }

    host_fn_rly_178: <default("SensorNode")> like INetworkNode {
        @display("p=233.83,327.15");
    }

    host_fn_rly_179: <default("SensorNode")> like INetworkNode {
        @display("p=135.01,244.56");
    }

    host_fn_rly_180: <default("SensorNode")> like INetworkNode {
        @display("p=159.22,186.80");
    }

    host_fn_rly_181: <default("SensorNode")> like INetworkNode {
        @display("p=205.68,186.66");
    }

    host_fn_rly_182: <default("SensorNode")> like INetworkNode {
        @display("p=119.77,149.82");
    }

    host_fn_rly_183: <default("SensorNode")> like INetworkNode {
        @display("p=149.96,172.28");
    }

    host_fn_rly_184: <default("SensorNode")> like INetworkNode {
        @display("p=83.93,205.83");
    }

    host_fn_rly_185: <default("SensorNode")> like INetworkNode {
        @display("p=117.23,242.97");
    }

    host_fn_rly_186: <default("SensorNode")> like INetworkNode {
        @display("p=67.62,275.25");
    }

    host_fn_rly_187: <default("SensorNode")> like INetworkNode {
        @display("p=96.96,259.75");
    }

    host_fn_rly_188: <default("SensorNode")> like INetworkNode {
        @display("p=131.93,168.76");
    }

    host_fn_rly_189: <default("SensorNode")> like INetworkNode {
        @display("p=112.55,120.30");
    }

    host_fn_rly_190: <default("SensorNode")> like INetworkNode {
        @display("p=36.61,22.42");
    }

    host_fn_rly_191: <default("SensorNode")> like INetworkNode {
        @display("p=16.46,163.67");
    }

    host_fn_rly_192: <default("SensorNode")> like INetworkNode {
        @display("p=51.62,217.20");
    }

    host_fn_rly_193: <default("SensorNode")> like INetworkNode {
        @display("p=24.38,218.71");
    }

    host_fn_rly_194: <default("SensorNode")> like INetworkNode {
        @display("p=30.78,194.17");
    }

    host_fn_rly_195: <default("SensorNode")> like INetworkNode {
        @display("p=59.85,191.45");
    }

    host_fn_rly_196: <default("SensorNode")> like INetworkNode {
        @display("p=76.09,234.39");
    }

    host_fn_rly_197: <default("SensorNode")> like INetworkNode {
        @display("p=75.67,190.78");
    }

    host_fn_rly_198: <default("SensorNode")> like INetworkNode {
        @display("p=8.84,233.44");
    }

    host_fn_rly_199: <default("SensorNode")> like INetworkNode {
        @display("p=34.91,294.48");
    }

    host_fn_rly_200: <default("SensorNode")> like INetworkNode {
        @display("p=100.19,354.28");
    }

}

