
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn4-2
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
        @display("p=309.00,146.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=327.95,178.02");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=364.51,135.23");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=326.66,165.77");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=260.40,140.01");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=250.15,158.70");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=248.34,182.70");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=244.94,197.16");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=254.76,227.81");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=238.15,175.74");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=235.58,104.89");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=209.46,55.88");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=228.57,34.27");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=174.14,30.91");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=158.24,14.57");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=189.64,42.85");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=179.08,65.79");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=157.68,109.24");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=123.05,180.06");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=119.10,153.30");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=46.65,129.04");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=6.51,169.71");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=47.35,98.81");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=73.06,21.36");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=96.79,57.02");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=21.89,65.97");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=26.99,85.05");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=61.94,109.49");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=55.16,117.44");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=99.31,143.72");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=23.55,178.86");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=35.23,169.07");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=74.92,198.90");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=85.02,201.50");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=176.56,198.36");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=209.03,230.66");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=230.53,199.18");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=169.46,178.60");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=103.35,244.84");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=131.28,296.41");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=152.57,250.92");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=91.46,213.44");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=48.72,283.90");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=107.94,279.00");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=77.63,353.64");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=21.95,298.68");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=109.23,339.06");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=66.21,342.54");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=213.31,295.78");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=228.60,319.35");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=282.74,70.91");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=351.84,202.54");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=352.20,222.30");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=318.43,181.69");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=193.05,160.72");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=225.87,65.45");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=248.64,255.19");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=333.28,154.58");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=231.37,268.92");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=178.21,132.22");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=280.08,155.11");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=118.81,31.02");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=151.26,72.63");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=237.38,5.01");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=203.65,96.18");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=205.83,39.34");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=191.48,63.11");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=109.51,126.66");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=175.42,254.83");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=172.22,91.20");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=75.12,146.64");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=85.87,135.12");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=24.76,120.09");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=129.06,76.45");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=97.26,42.69");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=98.04,107.47");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=74.84,76.94");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=141.45,85.92");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=114.26,57.76");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=96.40,155.10");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=70.19,223.52");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=17.45,214.70");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=62.41,291.74");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=78.35,240.57");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=192.25,234.45");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=200.00,286.54");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=276.69,198.76");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=179.92,180.05");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=129.43,245.83");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=86.50,283.00");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=161.81,243.75");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=107.69,222.53");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=44.32,259.53");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=121.43,272.00");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=18.32,285.36");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=46.35,324.84");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=18.67,352.56");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=75.10,286.90");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=186.06,360.60");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=197.18,327.77");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=380.46,121.46");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=322.21,235.89");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=356.38,178.91");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=397.55,143.29");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=353.86,161.84");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=213.27,71.00");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=269.68,253.03");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=256.84,204.92");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=192.77,256.13");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=236.61,252.61");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=294.51,141.82");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=170.40,48.44");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=227.03,99.29");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=100.07,15.42");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=217.69,43.10");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=235.46,45.11");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=230.97,20.66");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=152.99,187.59");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=49.63,180.58");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=209.67,121.00");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=42.64,139.09");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=2.11,126.80");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=52.01,73.02");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=22.74,103.63");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=78.75,56.02");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=89.94,14.17");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=33.70,53.70");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=71.22,187.50");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=70.16,116.43");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=82.91,153.89");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=7.33,149.76");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=64.00,175.82");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=140.82,184.62");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=93.95,167.93");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=139.58,232.64");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=235.30,188.54");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=165.12,165.96");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=175.60,224.78");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=125.31,213.77");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=174.24,302.52");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=101.32,288.19");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=154.66,212.25");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=116.54,293.91");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=93.00,237.09");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=65.04,311.80");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=40.54,305.44");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=134.09,335.38");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=65.48,355.38");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=267.01,321.05");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=224.25,399.99");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=313.99,163.00");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=335.67,215.63");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=379.67,97.97");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=394.12,113.67");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=328.74,188.10");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=309.51,114.98");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=299.17,212.62");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=281.35,210.36");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=221.93,302.86");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=223.36,209.67");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=195.60,110.76");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=211.56,151.22");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=309.03,48.27");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=163.09,31.05");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=121.71,49.48");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=196.80,32.07");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=168.79,62.69");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=223.25,115.35");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=151.05,151.63");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=67.52,211.86");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=3.90,89.95");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=33.57,240.92");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=38.82,153.09");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=45.53,39.95");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=103.35,30.07");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=26.44,144.02");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=8.21,72.22");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=0.93,48.68");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=118.86,97.59");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=175.86,154.54");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=10.78,181.10");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=24.56,167.92");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=113.57,191.10");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=137.51,208.57");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=124.58,196.26");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=290.27,271.37");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=303.08,155.53");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=254.38,214.72");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=143.33,298.76");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=160.70,270.64");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=208.11,257.31");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=39.19,212.39");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=43.47,248.25");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=91.27,305.73");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=123.69,308.21");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=30.03,260.88");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=127.34,365.51");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=85.85,393.67");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=260.63,274.36");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=157.28,354.10");
    }

}

