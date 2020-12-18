
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn8_4
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
        @display("p=89.20,341.96");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=83.46,352.13");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=33.61,285.44");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=44.64,378.61");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=89.04,327.74");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=133.31,318.74");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=37.54,318.37");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=7.22,311.55");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=65.85,388.89");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=126.43,360.70");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=152.49,309.78");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=129.26,300.58");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=166.82,263.50");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=184.37,251.39");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=248.59,247.06");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=258.42,265.28");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=267.10,357.77");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=238.19,278.44");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=296.15,266.48");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=322.93,262.96");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=351.42,258.70");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=332.36,278.73");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=355.19,273.43");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=335.17,288.47");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=158.49,334.40");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=94.29,382.67");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=17.56,374.89");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=0.84,332.58");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=60.20,303.25");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=146.69,320.37");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=134.85,292.21");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=80.06,290.73");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=45.73,331.82");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=148.97,384.38");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=102.41,361.76");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=106.16,396.24");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=176.53,290.21");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=258.66,279.94");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=150.22,275.69");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=249.88,170.35");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=255.68,254.82");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=292.62,323.83");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=265.46,297.07");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=248.25,305.73");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=231.13,288.97");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=375.75,170.41");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=278.34,310.44");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=394.84,303.72");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=352.30,217.42");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=24.98,351.74");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=46.62,364.03");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=13.35,363.55");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=76.52,332.61");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=69.60,377.35");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=42.84,291.99");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=122.84,397.65");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=53.34,245.58");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=24.00,317.60");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=113.62,353.62");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=128.42,350.60");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=184.61,281.70");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=82.79,302.58");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=105.61,248.77");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=209.14,325.53");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=305.51,250.08");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=199.90,303.84");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=251.32,347.80");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=157.11,319.88");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=297.57,300.29");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=390.94,330.55");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=349.28,289.66");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=304.19,199.07");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=378.38,338.84");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=263.86,227.14");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=72.46,350.38");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=100.26,338.00");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=162.98,365.15");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=15.56,298.40");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=30.01,377.20");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=26.27,302.32");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=94.60,235.80");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=34.43,335.13");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=51.73,276.89");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=116.42,371.54");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=133.82,338.13");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=144.60,335.42");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=117.41,288.92");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=242.33,266.13");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=169.15,201.49");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=210.61,181.63");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=214.49,273.14");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=295.61,285.57");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=266.70,340.26");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=312.44,169.93");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=350.58,306.05");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=354.53,184.04");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=360.02,287.59");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=391.94,255.03");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=290.20,311.73");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=149.39,357.62");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=174.70,334.83");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=41.37,345.59");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=19.64,331.57");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=24.93,392.96");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=110.63,272.24");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=121.71,317.20");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=37.81,263.93");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=94.59,285.44");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=54.64,342.16");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=219.29,384.52");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=201.40,374.11");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=150.14,293.47");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=188.88,187.02");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=150.78,204.18");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=264.21,318.29");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=217.96,250.42");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=238.07,349.05");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=255.27,181.39");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=231.81,327.83");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=287.62,344.96");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=355.11,203.15");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=314.28,344.89");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=285.57,290.10");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=311.31,331.36");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=167.14,239.21");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=86.88,261.10");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=6.86,324.04");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=22.12,271.66");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=92.02,309.08");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=87.79,367.08");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=177.70,368.20");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=55.14,289.92");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=7.80,258.98");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=91.29,399.93");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=119.95,384.45");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=159.55,298.77");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=113.49,341.52");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=168.66,305.93");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=168.26,213.96");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=292.16,254.82");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=267.67,196.71");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=330.11,320.78");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=309.26,281.13");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=304.71,340.32");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=296.31,224.84");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=363.06,195.59");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=342.73,268.96");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=306.93,269.40");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=276.96,217.56");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=62.12,314.86");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=80.03,322.15");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=117.79,327.66");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=59.34,258.95");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=1.30,385.01");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=92.02,273.71");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=111.10,300.16");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=6.53,245.40");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=12.79,346.39");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=144.06,370.00");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=198.75,350.28");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=205.76,340.69");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=69.64,295.26");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=110.00,239.59");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=167.31,343.87");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=280.31,162.82");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=249.31,205.81");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=185.88,385.21");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=212.26,231.53");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=336.29,217.35");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=239.56,211.93");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=319.50,242.71");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=372.87,252.41");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=381.24,217.58");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=357.57,384.07");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=21.63,249.31");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=84.19,387.47");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=104.77,381.48");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=11.77,190.89");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=64.63,359.89");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=69.79,243.95");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=181.39,314.80");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=44.20,303.80");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=42.58,224.65");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=153.54,399.00");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=62.80,334.69");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=236.73,305.00");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=69.20,325.47");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=119.88,249.64");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=245.84,324.90");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=257.03,212.93");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=208.57,219.36");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=228.12,394.05");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=234.52,221.56");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=276.53,204.74");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=297.65,170.33");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=367.18,234.56");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=323.81,286.57");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=391.19,276.36");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=338.50,309.28");
    }

}

