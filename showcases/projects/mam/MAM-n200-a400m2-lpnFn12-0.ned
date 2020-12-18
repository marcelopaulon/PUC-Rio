
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn12-0
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
        @display("p=354.00,307.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=273.03,257.20");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=211.07,222.65");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=264.61,170.17");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=283.95,91.01");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=225.81,125.36");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=205.99,206.96");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=150.55,200.13");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=132.45,187.89");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=163.92,145.11");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=141.60,237.86");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=137.26,254.22");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=148.43,266.86");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=232.82,265.14");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=249.24,283.70");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=231.78,290.41");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=271.19,242.05");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=388.00,236.94");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=283.07,219.65");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=181.15,183.33");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=255.48,182.22");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=294.44,93.55");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=144.23,84.32");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=286.50,236.95");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=212.19,157.78");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=185.48,163.38");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=239.83,101.44");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=141.11,222.06");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=120.66,249.52");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=179.09,204.94");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=278.49,269.15");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=203.61,349.91");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=210.06,302.23");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=299.89,205.24");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=334.59,345.16");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=175.06,264.24");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=123.61,202.50");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=312.36,108.23");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=322.41,44.55");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=169.07,90.56");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=159.21,171.34");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=218.99,258.33");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=216.98,180.41");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=114.54,167.93");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=179.51,171.91");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=61.26,296.44");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=149.59,280.45");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=249.15,326.85");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=318.65,265.20");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=206.86,260.91");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=286.61,249.49");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=312.65,332.32");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=260.37,338.74");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=229.53,184.44");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=230.13,145.07");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=281.72,137.85");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=204.86,109.89");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=136.01,154.31");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=206.75,180.86");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=94.72,185.79");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=219.53,138.21");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=165.30,276.35");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=103.77,230.19");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=114.56,231.60");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=282.44,305.31");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=265.83,196.93");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=234.11,277.20");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=326.43,173.22");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=368.77,308.46");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=270.73,282.83");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=226.70,164.88");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=352.11,155.00");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=253.80,135.18");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=257.13,46.97");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=258.50,231.42");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=124.31,164.06");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=83.75,171.06");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=161.39,157.70");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=230.85,230.99");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=155.37,311.50");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=78.31,336.21");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=251.32,222.03");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=208.49,320.88");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=248.67,296.54");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=298.15,251.84");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=342.47,372.27");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=283.30,325.09");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=238.26,214.52");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=274.23,179.14");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=345.00,128.64");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=167.25,118.53");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=305.46,214.63");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=60.10,220.67");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=128.12,220.67");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=180.10,62.34");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=112.18,209.92");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=102.62,200.32");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=152.73,224.52");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=184.79,307.05");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=236.07,300.76");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=273.62,212.92");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=287.82,155.02");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=385.09,336.32");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=295.36,224.69");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=295.16,170.49");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=195.84,209.50");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=280.41,59.38");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=205.14,54.70");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=190.22,197.76");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=186.21,282.73");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=112.71,255.71");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=210.38,147.85");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=98.68,210.59");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=144.83,339.69");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=136.69,286.54");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=219.19,311.17");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=256.32,257.41");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=185.50,336.76");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=251.98,207.44");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=385.47,250.34");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=292.23,193.06");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=231.19,206.65");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=357.08,174.91");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=256.60,163.78");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=189.14,109.27");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=190.69,234.34");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=146.90,250.26");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=198.05,250.38");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=83.28,91.09");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=212.09,271.72");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=197.48,327.64");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=97.98,310.68");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=298.09,300.50");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=299.54,310.72");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=222.91,219.78");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=242.47,182.67");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=338.90,299.12");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=293.91,335.61");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=186.46,250.52");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=331.40,127.77");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=295.14,73.08");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=241.26,135.84");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=191.22,126.13");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=184.18,147.58");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=192.93,173.77");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=198.40,134.50");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=93.31,237.74");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=45.77,256.21");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=172.14,196.07");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=265.82,309.70");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=255.95,276.21");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=205.74,283.94");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=215.87,198.00");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=366.41,332.03");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=271.32,346.40");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=166.59,246.04");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=225.45,250.61");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=317.62,57.02");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=230.01,74.25");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=145.99,163.59");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=137.97,196.58");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=83.45,186.11");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=143.26,139.89");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=198.01,296.96");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=88.76,200.12");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=170.01,292.16");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=276.48,296.59");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=308.88,281.25");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=274.59,369.44");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=368.03,252.41");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=356.52,262.46");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=366.86,239.09");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=202.90,234.43");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=258.33,74.53");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=196.69,86.09");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=274.77,107.83");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=240.66,147.39");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=137.64,211.99");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=123.25,175.23");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=154.42,104.96");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=67.55,271.83");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=109.79,297.25");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=81.68,270.46");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=255.18,246.72");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=250.03,266.44");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=307.45,240.02");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=281.79,196.55");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=394.37,324.16");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=306.39,264.79");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=232.60,243.51");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=344.82,184.78");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=320.34,1.07");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=164.05,75.43");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=194.39,146.23");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=112.53,117.35");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=165.70,180.63");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=101.86,110.68");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=105.89,177.88");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=143.79,311.37");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=131.12,268.24");
    }

}

