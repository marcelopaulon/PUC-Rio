
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn12-1
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
        @display("p=134.00,215.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=124.72,206.40");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=197.16,266.11");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=186.23,329.17");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=214.82,295.67");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=245.76,387.36");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=220.38,354.97");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=238.98,364.83");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=207.22,320.84");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=196.46,333.36");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=214.48,337.79");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=226.25,275.41");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=269.29,298.67");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=230.07,413.66");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=230.94,402.66");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=274.07,338.90");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=237.33,328.57");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=205.71,216.81");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=93.64,150.06");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=173.80,300.94");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=243.10,355.48");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=265.40,217.05");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=229.14,445.42");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=170.20,420.61");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=292.24,342.70");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=231.64,344.81");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=204.45,274.89");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=271.02,402.42");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=177.51,345.81");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=268.05,348.90");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=194.61,373.19");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=209.03,440.72");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=237.83,376.14");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=224.60,323.87");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=91.16,187.40");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=115.01,154.53");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=188.12,259.35");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=169.71,313.84");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=224.14,306.50");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=309.98,324.94");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=216.37,314.14");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=287.44,406.76");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=203.86,251.53");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=204.54,339.42");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=289.84,300.53");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=261.07,256.65");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=278.29,267.19");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=200.30,448.67");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=271.41,484.23");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=208.01,359.27");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=242.36,231.76");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=52.85,221.62");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=61.63,145.73");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=180.56,200.42");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=176.59,283.39");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=231.32,313.57");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=253.11,417.73");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=249.86,446.78");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=213.74,270.96");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=209.99,369.73");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=261.97,338.97");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=150.91,330.59");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=289.09,315.12");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=263.79,278.55");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=195.42,468.50");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=326.10,393.95");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=328.63,308.61");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=255.63,287.67");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=187.11,172.62");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=176.83,221.49");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=162.71,290.37");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=195.92,404.95");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=120.49,273.42");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=277.39,452.53");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=192.29,394.32");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=300.55,308.36");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=193.01,303.33");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=218.06,419.49");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=207.77,239.00");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=255.56,316.39");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=252.00,334.22");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=168.66,365.46");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=218.57,376.72");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=237.44,291.59");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=230.26,245.01");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=86.19,217.17");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=108.14,262.51");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=179.91,271.71");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=222.89,258.59");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=260.20,371.01");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=209.04,412.92");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=248.01,295.35");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=271.62,374.69");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=138.88,321.80");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=234.43,267.92");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=160.02,265.55");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=225.65,287.02");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=358.63,288.70");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=258.24,492.48");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=265.65,416.73");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=296.14,323.13");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=283.68,349.84");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=171.83,210.27");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=106.88,184.46");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=142.52,282.81");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=163.73,234.02");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=161.77,250.02");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=275.46,423.75");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=174.01,393.33");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=297.07,431.90");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=183.21,236.56");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=147.77,391.63");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=167.60,406.14");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=176.42,249.49");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=346.09,307.40");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=217.60,435.56");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=236.55,489.04");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=326.51,335.24");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=275.45,316.62");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=144.21,221.13");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=35.33,202.00");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=142.54,346.33");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=251.33,399.95");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=146.74,260.14");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=263.44,477.17");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=140.29,380.45");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=152.11,406.24");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=158.77,341.28");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=173.79,381.36");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=155.83,365.25");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=256.02,185.47");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=227.27,225.97");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=244.04,456.06");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=310.98,396.28");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=303.76,415.64");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=157.95,315.59");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=212.32,188.30");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=154.77,211.88");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=292.58,266.28");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=120.05,297.88");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=207.89,305.68");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=238.44,423.30");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=257.55,355.38");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=215.06,392.01");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=168.62,334.64");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=121.66,391.38");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=201.07,288.31");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=244.83,244.41");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=321.85,269.58");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=161.47,479.63");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=198.38,355.43");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=311.31,292.52");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=296.67,377.00");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=190.77,142.49");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=54.38,158.00");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=163.96,218.59");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=129.44,342.22");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=284.54,363.50");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=201.66,420.49");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=188.34,347.19");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=256.05,383.62");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=259.10,326.63");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=203.58,386.87");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=180.50,313.29");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=255.30,302.70");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=291.87,392.12");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=281.86,469.37");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=193.02,429.67");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=264.26,268.02");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=316.46,306.83");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=76.78,196.51");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=83.54,143.23");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=182.27,187.70");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=134.50,354.12");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=132.21,295.42");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=233.76,386.62");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=249.71,278.21");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=240.12,412.57");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=200.85,312.92");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=279.08,326.12");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=213.61,285.27");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=257.15,234.43");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=324.04,255.98");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=137.82,434.05");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=296.69,464.43");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=242.87,262.52");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=323.25,368.08");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=48.20,232.13");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=132.97,239.97");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=132.20,271.19");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=136.44,332.59");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=142.97,294.05");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=261.61,436.06");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=122.97,366.20");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=249.37,375.71");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=113.92,332.82");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=148.22,271.31");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=155.48,297.32");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=279.27,226.89");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=310.57,262.98");
    }

}

