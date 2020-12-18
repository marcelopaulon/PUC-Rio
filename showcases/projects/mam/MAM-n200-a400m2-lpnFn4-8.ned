
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn4-8
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
        @display("p=264.00,274.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=255.37,322.38");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=281.63,295.67");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=269.72,300.52");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=286.84,349.34");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=278.17,335.53");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=295.67,354.56");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=303.74,319.54");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=318.72,337.13");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=361.16,347.90");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=372.90,359.80");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=351.11,369.39");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=290.98,331.81");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=329.87,379.48");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=237.65,370.30");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=197.73,365.93");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=267.81,370.81");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=226.26,312.39");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=308.91,370.81");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=267.84,388.76");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=216.43,345.99");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=204.50,298.34");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=107.82,315.54");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=125.41,320.26");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=85.75,314.38");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=58.80,345.86");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=35.35,304.92");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=32.40,260.50");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=10.64,283.24");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=6.82,258.28");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=61.02,310.23");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=99.95,374.15");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=138.46,345.54");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=188.29,262.74");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=151.43,188.72");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=212.07,191.08");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=164.18,140.61");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=185.92,166.68");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=209.31,159.09");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=158.19,216.45");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=172.76,213.55");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=112.28,135.79");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=144.37,87.62");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=159.02,108.96");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=169.84,23.47");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=237.52,56.31");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=293.26,77.59");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=279.39,140.45");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=325.73,118.46");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=337.98,89.63");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=184.12,314.58");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=258.19,262.37");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=330.30,280.00");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=313.01,274.93");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=240.28,355.80");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=291.69,380.11");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=333.38,354.42");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=327.61,269.23");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=339.12,317.48");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=274.66,354.97");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=398.29,293.38");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=375.91,371.59");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=253.55,282.24");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=321.28,396.26");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=279.70,387.32");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=231.56,298.04");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=271.51,344.96");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=159.36,308.66");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=340.73,277.30");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=254.45,365.33");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=166.55,319.07");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=132.51,283.13");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=120.28,295.12");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=116.52,283.13");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=81.74,255.05");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=143.48,369.53");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=36.53,226.13");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=42.63,165.74");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=44.00,286.76");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=8.65,220.69");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=148.61,338.48");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=131.71,376.45");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=155.72,284.59");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=108.77,300.81");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=134.05,144.13");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=223.44,134.43");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=125.58,84.67");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=190.02,216.40");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=205.31,144.10");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=81.56,207.41");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=192.92,119.57");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=106.09,124.96");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=73.76,68.40");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=86.34,122.27");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=136.48,56.73");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=204.63,25.48");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=307.39,64.25");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=296.43,171.05");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=305.90,140.42");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=329.15,82.66");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=289.25,193.99");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=253.72,335.28");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=281.33,282.94");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=226.19,381.98");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=222.58,279.62");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=268.30,312.05");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=381.00,347.86");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=389.63,287.08");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=294.47,279.32");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=351.92,353.29");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=338.83,393.13");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=311.11,352.47");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=329.04,328.33");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=335.19,366.90");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=192.63,325.76");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=125.95,361.24");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=180.21,384.11");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=197.71,314.83");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=328.22,345.41");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=305.15,389.71");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=249.20,297.59");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=224.93,244.75");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=104.50,339.43");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=126.22,331.84");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=102.70,329.56");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=142.35,297.90");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=65.51,282.49");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=25.06,247.41");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=35.39,360.75");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=30.21,276.79");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=60.98,292.80");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=166.92,350.14");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=48.27,384.65");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=216.43,289.58");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=178.44,234.04");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=225.14,222.51");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=192.84,190.46");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=131.57,171.04");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=202.45,198.97");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=146.63,224.03");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=221.38,204.96");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=98.71,145.58");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=214.97,104.45");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=194.74,132.68");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=156.94,38.65");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=202.11,48.95");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=301.96,47.88");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=265.37,74.65");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=354.84,198.85");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=365.12,115.32");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=303.16,262.95");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=242.92,267.40");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=250.06,256.33");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=327.91,242.57");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=210.15,324.01");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=354.77,385.75");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=247.21,374.83");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=230.99,329.80");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=300.76,337.91");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=345.18,303.63");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=394.13,338.47");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=340.18,340.43");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=211.27,358.22");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=323.40,305.14");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=198.40,334.63");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=200.16,379.29");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=352.09,336.12");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=236.70,341.63");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=265.96,335.32");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=256.28,307.40");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=258.35,347.55");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=185.82,345.19");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=79.61,296.69");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=172.88,258.97");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=135.21,323.10");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=47.50,340.12");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=17.93,376.37");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=54.63,268.19");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=56.17,211.04");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=19.42,176.30");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=13.94,391.25");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=111.52,349.15");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=78.41,332.87");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=209.63,230.22");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=70.01,207.00");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=299.60,186.27");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=150.00,136.10");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=250.32,228.16");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=230.45,175.61");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=206.54,263.16");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=262.21,196.22");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=134.29,113.58");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=155.30,51.73");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=208.21,92.84");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=168.85,75.66");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=239.69,96.88");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=353.56,24.66");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=245.65,87.09");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=345.65,140.05");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=370.74,80.95");
    }

}

