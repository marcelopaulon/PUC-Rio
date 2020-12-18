
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn8_9
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
        @display("p=115.06,355.72");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=199.35,350.05");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=249.02,361.70");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=253.14,351.03");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=189.37,384.21");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=167.15,369.61");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=207.06,390.98");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=222.69,295.11");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=266.81,362.84");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=199.85,289.07");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=235.51,337.09");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=276.44,310.70");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=234.70,263.26");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=172.42,248.05");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=108.97,253.14");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=135.89,238.90");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=131.61,172.86");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=201.47,216.43");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=279.07,208.42");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=285.99,110.15");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=237.45,175.80");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=198.14,243.09");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=230.96,277.62");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=218.76,265.97");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=109.55,285.22");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=75.99,311.67");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=137.50,382.93");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=198.99,369.84");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=203.19,301.33");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=159.46,357.79");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=167.20,380.57");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=223.68,363.06");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=226.68,331.88");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=268.28,350.33");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=145.12,331.74");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=196.35,266.80");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=265.32,297.56");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=164.45,255.59");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=184.27,151.20");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=153.85,206.79");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=48.50,195.60");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=141.67,95.40");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=180.49,260.83");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=200.24,180.35");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=235.68,50.69");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=190.63,121.44");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=225.00,251.16");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=247.72,288.25");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=239.08,307.45");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=65.31,284.69");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=78.14,365.81");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=125.33,377.81");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=284.01,336.42");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=319.16,303.82");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=227.85,317.05");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=182.35,359.16");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=169.69,348.76");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=250.61,314.59");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=209.92,350.66");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=197.48,323.36");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=278.75,387.03");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=319.09,380.54");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=186.37,292.11");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=142.92,210.93");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=159.16,293.60");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=134.13,280.19");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=131.55,183.03");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=245.74,167.48");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=258.41,221.26");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=363.18,98.99");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=219.09,176.90");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=161.50,319.73");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=269.65,276.13");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=148.63,228.95");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=145.56,294.89");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=154.96,272.31");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=262.92,396.53");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=245.92,381.15");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=272.14,336.68");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=98.00,398.38");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=183.62,342.20");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=215.82,323.79");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=229.80,205.42");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=306.00,375.25");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=192.51,227.29");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=302.29,266.13");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=232.59,226.00");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=287.61,188.88");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=137.79,225.09");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=41.94,279.70");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=120.13,249.74");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=221.89,186.84");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=118.56,200.49");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=265.64,133.87");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=296.30,83.03");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=212.90,168.34");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=183.45,188.08");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=211.75,251.44");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=276.17,234.58");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=129.40,326.76");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=42.55,347.46");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=120.49,334.92");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=247.48,332.74");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=335.65,327.08");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=144.46,373.62");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=114.83,324.91");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=179.71,394.82");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=168.28,287.54");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=285.76,369.56");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=208.48,206.95");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=243.03,349.14");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=298.33,232.36");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=220.81,232.58");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=140.46,199.32");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=82.43,163.16");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=73.26,240.88");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=76.15,210.62");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=104.43,202.45");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=298.45,190.09");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=314.53,85.59");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=228.14,108.45");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=246.62,213.40");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=207.78,335.89");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=153.12,196.55");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=119.27,261.32");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=129.11,355.01");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=127.14,392.63");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=273.21,396.10");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=280.79,288.90");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=185.93,373.64");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=140.56,322.44");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=241.76,392.36");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=296.52,276.81");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=335.74,347.38");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=202.89,191.51");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=320.52,345.18");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=313.09,266.52");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=245.12,256.95");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=212.94,298.28");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=84.69,337.39");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=46.69,266.81");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=216.53,196.03");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=256.86,199.28");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=281.24,221.94");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=313.57,136.08");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=206.03,147.54");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=135.92,250.49");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=210.63,308.28");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=183.54,279.72");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=108.94,378.34");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=188.25,307.60");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=178.12,384.84");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=224.67,344.51");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=217.41,386.87");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=169.27,303.09");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=109.13,398.70");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=289.25,395.79");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=239.88,371.64");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=329.62,310.40");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=207.28,225.14");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=191.26,396.48");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=263.88,383.23");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=320.62,257.98");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=155.60,220.15");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=148.56,240.96");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=84.44,272.22");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=151.22,252.33");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=226.65,161.76");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=306.41,181.27");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=342.66,147.78");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=242.29,134.08");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=267.14,173.41");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=310.64,236.45");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=174.64,208.51");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=83.53,296.14");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=66.31,348.67");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=226.48,374.64");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=327.09,374.04");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=280.96,354.15");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=136.35,367.14");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=142.48,393.45");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=177.45,310.15");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=269.24,325.15");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=308.45,314.33");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=155.87,303.23");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=324.73,293.17");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=369.24,289.72");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=260.69,336.96");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=142.26,166.89");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=136.12,158.31");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=74.47,278.39");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=67.16,181.87");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=172.15,146.35");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=305.14,156.85");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=209.61,64.80");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=234.83,118.66");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=193.88,196.26");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=310.05,287.29");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=248.04,227.37");
    }

}

