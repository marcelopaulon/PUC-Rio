
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn4-0
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
        @display("p=384.00,296.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=301.78,318.92");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=296.69,351.31");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=291.47,298.13");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=208.90,300.12");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=294.69,280.98");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=392.47,358.29");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=337.29,336.87");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=264.76,316.04");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=212.40,241.42");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=254.94,373.16");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=208.95,350.56");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=247.73,341.80");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=250.71,328.56");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=255.44,305.08");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=193.75,256.45");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=233.29,272.14");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=219.64,222.90");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=265.16,193.73");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=294.84,161.15");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=349.35,80.19");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=327.91,87.77");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=274.01,43.00");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=259.63,97.48");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=191.70,155.33");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=153.18,102.10");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=134.52,91.19");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=225.14,81.17");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=296.81,40.63");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=361.57,53.24");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=339.10,1.07");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=269.14,14.56");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=232.58,44.94");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=207.97,113.29");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=177.81,126.30");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=184.66,134.78");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=274.83,113.28");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=315.73,23.92");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=373.65,62.57");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=388.57,57.04");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=351.89,97.57");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=375.52,151.78");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=384.77,159.41");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=356.91,210.81");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=312.29,150.28");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=361.56,86.87");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=376.45,167.68");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=355.80,107.60");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=331.92,68.69");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=344.68,54.81");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=369.05,319.32");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=217.42,360.42");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=321.43,378.52");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=200.75,319.13");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=212.37,322.77");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=230.93,218.04");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=391.52,310.71");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=345.37,394.06");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=245.46,302.93");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=234.60,319.20");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=213.89,393.77");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=211.29,370.30");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=330.77,294.75");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=306.23,360.19");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=239.89,376.74");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=176.10,255.26");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=225.94,207.26");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=290.00,268.90");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=300.63,203.81");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=218.17,173.91");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=370.46,15.35");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=315.04,51.24");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=249.43,31.16");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=278.75,77.10");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=238.07,139.49");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=147.36,81.00");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=128.63,81.82");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=254.15,125.57");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=298.76,4.52");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=343.39,15.71");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=322.77,14.37");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=270.02,25.90");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=256.79,16.65");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=158.04,153.50");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=138.13,103.20");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=164.79,167.69");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=284.47,116.53");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=332.69,28.35");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=367.58,108.99");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=364.37,38.89");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=340.97,109.42");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=322.73,222.46");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=359.26,143.60");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=386.54,212.77");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=344.29,186.60");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=292.80,109.61");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=286.82,128.26");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=331.24,141.47");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=311.97,81.87");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=334.06,54.85");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=398.16,391.44");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=330.52,307.87");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=370.92,363.52");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=306.11,252.23");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=113.08,282.89");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=355.46,273.21");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=345.60,383.76");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=355.64,317.39");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=204.48,259.92");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=154.25,247.78");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=265.18,382.39");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=173.70,273.66");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=195.62,384.52");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=207.41,277.22");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=250.03,364.25");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=186.29,182.32");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=307.75,290.79");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=211.08,214.85");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=270.05,211.15");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=290.39,142.50");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=372.46,45.30");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=332.58,125.86");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=230.39,17.28");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=266.87,150.83");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=98.70,177.93");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=83.08,173.04");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=110.57,88.72");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=196.65,116.99");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=311.31,60.74");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=317.65,116.46");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=258.02,37.76");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=285.91,57.11");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=262.51,50.16");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=171.47,33.54");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=134.35,141.67");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=198.82,76.43");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=302.06,86.02");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=274.91,64.45");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=387.43,17.42");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=395.37,47.77");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=328.72,105.52");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=347.04,244.29");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=380.28,95.01");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=301.23,134.77");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=259.71,170.21");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=391.40,121.28");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=373.51,228.08");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=354.87,65.60");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=275.22,92.19");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=318.53,70.82");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=371.63,287.58");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=278.50,360.54");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=311.78,345.43");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=373.50,330.58");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=120.83,293.72");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=346.39,256.71");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=382.17,359.81");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=334.76,324.38");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=235.70,247.06");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=205.05,165.39");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=288.60,332.76");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=286.32,397.01");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=218.35,308.72");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=281.58,316.16");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=281.15,240.14");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=269.49,258.18");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=188.50,299.81");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=146.85,159.34");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=273.94,174.28");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=257.40,183.57");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=297.53,26.46");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=296.41,55.10");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=181.89,45.72");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=244.37,122.72");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=207.61,140.21");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=126.65,109.96");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=93.77,144.23");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=130.76,70.35");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=381.49,78.47");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=321.42,32.30");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=309.97,12.12");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=188.68,30.72");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=251.30,0.33");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=183.63,114.73");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=144.26,46.49");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=182.65,196.32");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=269.41,131.23");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=279.25,30.92");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=351.60,45.90");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=296.73,74.63");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=376.56,118.93");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=384.10,246.52");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=361.27,197.93");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=361.92,180.96");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=318.62,142.25");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=264.16,74.55");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=366.48,166.31");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=391.37,132.39");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=396.19,10.12");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=307.20,121.99");
    }

}

