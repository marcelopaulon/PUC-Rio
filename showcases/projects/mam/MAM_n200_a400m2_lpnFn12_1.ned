
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn12_1
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
        @display("p=100.00,300.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=122.37,277.72");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=116.24,225.16");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=129.23,288.17");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=92.20,269.19");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=132.21,242.11");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=184.62,326.31");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=195.41,308.19");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=215.39,313.16");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=245.29,334.21");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=312.39,363.75");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=276.19,382.33");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=266.32,361.26");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=265.22,311.98");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=294.12,315.14");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=249.81,367.26");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=320.85,350.35");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=77.59,313.27");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=141.21,195.50");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=92.82,193.84");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=118.87,260.83");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=98.58,248.65");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=146.69,278.97");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=134.11,323.47");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=222.36,252.16");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=188.11,242.14");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=221.37,303.79");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=308.35,389.16");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=287.87,386.41");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=252.11,389.27");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=259.36,279.79");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=314.30,304.99");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=339.73,399.19");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=376.74,330.15");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=106.22,327.34");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=46.99,270.46");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=125.49,232.74");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=159.03,286.59");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=46.29,236.43");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=114.01,185.70");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=257.30,291.49");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=197.93,348.82");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=127.25,306.62");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=240.80,245.62");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=291.88,351.90");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=294.05,333.09");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=215.10,332.34");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=273.30,320.06");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=215.60,374.12");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=173.28,362.42");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=349.57,358.85");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=144.06,343.23");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=74.01,364.60");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=86.02,131.26");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=137.78,272.56");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=181.29,291.21");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=146.04,298.56");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=177.35,373.71");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=198.14,293.79");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=200.75,378.69");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=228.28,397.84");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=322.54,338.95");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=338.31,381.69");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=175.96,334.52");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=205.64,318.87");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=295.50,394.87");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=227.76,315.61");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=355.40,325.09");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=141.86,235.83");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=96.85,310.02");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=142.68,208.18");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=161.80,265.37");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=126.95,267.55");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=152.13,240.83");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=205.20,368.94");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=122.10,335.73");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=145.48,379.46");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=165.36,378.52");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=300.05,363.33");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=338.56,366.16");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=249.38,349.50");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=278.61,310.08");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=309.25,321.47");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=192.02,337.51");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=322.07,394.51");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=114.89,311.52");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=78.48,220.53");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=167.89,236.92");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=116.11,290.72");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=85.58,260.89");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=114.26,246.76");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=172.25,281.22");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=188.03,279.56");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=234.65,323.94");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=246.67,312.10");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=323.52,282.35");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=359.64,384.14");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=339.21,324.82");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=330.40,295.77");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=380.52,351.67");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=238.08,391.24");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=242.17,301.49");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=95.93,208.62");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=180.38,231.44");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=35.77,261.51");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=139.50,258.70");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=58.79,342.37");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=121.68,207.51");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=135.55,373.95");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=195.91,271.47");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=305.92,276.67");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=281.66,287.36");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=335.12,307.94");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=282.84,369.98");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=261.12,349.73");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=280.24,257.08");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=316.18,267.24");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=240.80,355.10");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=335.47,280.89");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=134.91,223.49");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=113.77,270.05");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=188.94,255.45");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=192.02,364.68");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=53.44,187.42");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=180.59,264.85");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=213.50,355.21");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=172.10,321.79");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=304.03,340.79");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=215.09,239.16");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=311.98,332.03");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=346.32,345.02");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=244.93,377.11");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=284.06,277.00");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=367.74,325.15");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=209.55,280.70");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=377.70,389.40");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=70.77,296.52");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=101.25,288.68");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=64.34,252.10");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=87.35,342.60");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=65.39,234.69");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=170.88,210.07");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=235.13,280.94");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=172.45,255.32");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=222.50,346.39");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=267.74,285.45");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=323.62,371.57");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=263.49,332.17");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=232.74,376.14");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=288.06,265.81");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=356.58,249.16");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=157.70,357.26");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=371.25,272.26");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=66.86,219.80");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=124.09,354.86");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=58.01,152.52");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=102.34,223.39");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=48.19,247.40");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=44.78,211.96");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=235.17,345.34");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=291.50,294.63");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=272.52,346.07");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=232.95,363.25");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=364.68,397.92");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=362.87,363.68");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=338.03,338.23");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=203.16,237.77");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=244.66,284.70");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=215.56,389.38");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=332.07,264.04");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=110.07,355.12");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=37.78,320.26");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=72.88,203.40");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=39.49,301.62");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=154.32,190.99");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=202.64,203.89");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=169.27,298.38");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=263.49,256.97");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=267.54,296.98");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=255.63,304.53");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=366.90,293.46");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=284.50,325.88");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=351.40,373.42");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=228.23,241.19");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=342.88,300.17");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=297.72,377.30");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=304.99,254.59");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=91.97,283.91");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=173.19,193.25");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=30.80,272.05");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=161.57,319.04");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=159.68,250.77");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=229.91,225.00");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=199.10,330.11");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=218.90,266.36");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=141.34,313.01");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=311.04,287.45");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=351.75,336.16");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=229.53,332.74");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=312.33,399.71");
    }

}

