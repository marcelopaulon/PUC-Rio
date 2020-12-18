
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn12-4
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
        @display("p=370.00,398.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=389.69,399.81");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=398.74,384.93");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=343.95,322.84");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=339.07,356.84");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=345.93,277.50");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=304.86,217.48");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=291.56,224.22");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=244.24,204.34");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=242.03,187.47");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=226.42,229.83");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=157.82,212.59");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=171.81,129.11");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=150.32,126.26");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=149.87,186.50");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=91.28,156.85");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=62.28,196.33");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=359.62,398.15");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=373.33,355.02");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=395.85,374.42");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=314.99,235.13");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=383.68,331.96");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=351.54,287.72");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=215.22,218.95");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=294.05,203.54");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=251.85,297.06");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=254.09,190.65");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=294.02,270.91");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=175.07,171.59");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=139.30,125.80");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=79.59,184.13");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=199.93,253.58");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=108.31,191.46");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=38.82,211.97");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=328.10,342.41");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=399.79,397.47");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=323.31,377.46");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=380.82,269.11");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=284.83,399.48");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=325.28,280.89");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=317.76,267.22");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=307.54,228.04");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=253.93,214.67");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=212.45,181.45");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=262.58,222.68");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=216.52,199.20");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=100.90,135.18");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=123.38,65.94");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=86.29,255.09");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=123.71,141.88");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=73.86,150.83");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=339.40,370.37");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=398.77,337.22");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=313.13,363.34");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=326.54,298.09");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=342.66,306.17");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=372.19,277.47");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=317.52,142.06");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=336.41,287.55");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=226.26,215.78");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=303.66,241.73");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=264.95,312.72");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=172.91,192.83");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=137.88,42.82");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=222.67,146.31");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=162.57,176.91");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=157.05,109.84");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=27.67,154.74");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=383.94,387.77");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=376.05,339.91");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=316.70,343.13");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=301.66,325.32");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=352.45,367.83");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=378.28,238.41");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=279.75,123.70");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=359.74,157.25");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=225.58,263.46");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=162.57,228.35");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=158.96,278.76");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=181.11,282.84");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=172.06,216.33");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=177.40,111.21");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=97.41,223.31");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=100.75,210.13");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=53.98,211.59");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=346.62,392.75");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=399.03,359.17");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=399.14,347.26");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=293.65,286.67");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=303.35,350.59");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=359.63,298.96");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=351.72,196.34");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=327.59,206.50");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=331.10,224.56");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=307.63,162.49");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=193.26,230.13");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=160.74,197.36");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=196.85,49.33");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=76.74,89.17");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=130.73,185.36");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=127.41,221.45");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=126.19,261.16");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=280.19,389.43");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=371.33,366.17");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=366.09,339.08");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=360.70,229.07");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=256.61,370.64");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=349.65,262.21");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=275.55,242.51");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=226.93,187.68");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=193.84,262.68");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=202.53,138.47");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=214.95,271.94");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=201.59,284.18");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=179.13,79.16");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=129.71,90.85");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=81.83,119.24");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=103.76,160.39");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=42.50,247.37");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=296.28,398.42");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=385.29,373.61");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=338.07,335.70");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=330.41,260.62");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=258.47,324.28");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=261.61,256.40");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=236.23,243.03");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=305.30,181.28");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=234.21,208.32");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=243.83,160.82");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=273.74,197.22");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=133.83,196.51");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=160.17,145.53");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=115.71,216.99");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=89.90,127.79");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=142.27,140.30");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=24.37,218.72");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=362.09,385.64");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=372.23,306.47");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=371.58,330.56");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=265.07,301.36");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=394.22,304.96");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=382.00,255.26");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=303.32,123.84");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=292.10,170.36");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=320.13,155.67");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=287.40,213.35");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=301.68,196.98");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=193.95,181.63");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=148.13,45.33");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=114.69,153.43");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=156.99,242.02");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=109.17,128.35");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=87.35,229.25");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=324.47,330.48");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=333.96,388.42");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=324.33,361.20");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=388.82,358.76");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=394.89,288.22");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=381.34,192.12");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=374.49,202.58");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=327.45,146.53");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=236.64,140.04");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=295.28,114.54");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=307.71,251.40");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=193.22,169.38");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=256.21,91.98");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=203.51,119.67");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=221.02,127.85");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=85.82,144.82");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=67.41,173.39");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=375.61,376.41");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=296.71,381.76");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=334.64,399.72");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=312.89,331.93");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=276.02,370.26");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=354.20,356.68");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=255.81,246.67");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=237.18,279.62");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=207.40,164.63");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=314.65,123.44");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=317.58,194.04");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=205.23,242.48");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=164.92,58.41");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=110.97,171.30");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=146.04,211.84");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=66.99,229.86");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=41.95,161.64");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=285.18,359.52");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=377.05,315.89");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=351.70,383.10");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=307.87,393.07");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=247.94,353.39");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=347.04,252.02");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=339.88,146.25");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=354.38,171.82");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=275.00,163.39");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=146.33,173.50");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=196.67,317.08");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=120.89,286.35");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=205.05,196.18");
    }

}

