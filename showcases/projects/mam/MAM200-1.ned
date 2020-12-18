
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM200-1
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
        @display("p=310.00,378.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=257.82,395.40");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=270.13,305.08");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=287.66,305.21");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=303.62,341.59");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=220.21,355.46");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=254.15,292.50");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=205.53,268.84");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=208.24,355.60");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=210.45,398.10");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=133.82,375.81");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=124.69,345.91");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=92.59,330.30");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=15.96,303.70");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=168.50,329.55");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=210.90,313.14");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=257.52,339.43");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=328.36,391.04");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=244.66,348.47");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=155.00,347.84");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=114.93,312.57");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=180.15,303.95");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=220.17,281.03");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=185.69,271.23");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=60.57,394.22");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=79.16,333.31");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=28.43,382.01");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=17.16,388.06");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=66.02,375.84");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=63.11,314.86");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=51.82,301.56");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=59.36,213.75");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=53.68,169.73");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=78.81,152.95");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=101.36,210.36");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=122.84,220.91");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=158.09,145.28");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=204.65,121.13");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=161.28,47.49");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=74.08,44.03");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=129.24,37.59");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=121.44,91.10");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=126.39,74.20");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=91.45,79.42");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=134.70,146.72");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=134.41,49.57");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=165.79,79.71");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=255.90,48.32");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=218.50,34.28");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=191.75,59.30");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=200.55,3.70");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=208.75,23.66");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=259.71,37.13");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=346.88,46.85");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=362.39,60.65");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=346.37,100.37");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=394.98,162.96");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=372.68,81.45");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=346.63,28.64");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=299.24,80.41");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=286.54,91.82");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=318.80,53.69");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=306.30,53.39");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=343.99,110.66");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=277.08,108.71");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=202.81,82.70");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=232.08,3.25");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=156.30,22.31");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=178.28,8.48");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=141.06,38.80");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=153.39,59.52");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=252.08,21.86");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=227.51,45.50");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=267.81,63.86");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=309.85,78.15");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=283.09,55.64");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=220.73,14.74");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=154.65,35.64");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=165.93,35.32");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=169.29,58.59");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=60.26,19.80");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=17.48,16.22");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=93.61,10.06");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=124.17,6.79");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=151.90,124.71");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=131.72,103.81");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=125.01,59.79");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=100.67,44.20");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=13.92,31.56");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=42.29,64.98");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=88.97,97.37");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=100.65,106.37");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=172.67,130.16");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=138.65,4.12");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=31.31,13.61");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=23.17,4.69");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=5.77,2.79");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=22.81,53.65");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=100.34,63.23");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=178.30,73.30");
    }

    host_fn_rly_101: <default("SensorNode")> like INetworkNode {
        @display("p=226.92,25.50");
    }

    host_fn_rly_102: <default("SensorNode")> like INetworkNode {
        @display("p=198.71,35.02");
    }

    host_fn_rly_103: <default("SensorNode")> like INetworkNode {
        @display("p=352.15,76.29");
    }

    host_fn_rly_104: <default("SensorNode")> like INetworkNode {
        @display("p=328.93,31.07");
    }

    host_fn_rly_105: <default("SensorNode")> like INetworkNode {
        @display("p=282.39,25.53");
    }

    host_fn_rly_106: <default("SensorNode")> like INetworkNode {
        @display("p=216.39,65.36");
    }

    host_fn_rly_107: <default("SensorNode")> like INetworkNode {
        @display("p=230.79,103.64");
    }

    host_fn_rly_108: <default("SensorNode")> like INetworkNode {
        @display("p=253.31,109.76");
    }

    host_fn_rly_109: <default("SensorNode")> like INetworkNode {
        @display("p=345.56,128.52");
    }

    host_fn_rly_110: <default("SensorNode")> like INetworkNode {
        @display("p=396.74,124.58");
    }

    host_fn_rly_111: <default("SensorNode")> like INetworkNode {
        @display("p=389.91,133.37");
    }

    host_fn_rly_112: <default("SensorNode")> like INetworkNode {
        @display("p=353.54,92.91");
    }

    host_fn_rly_113: <default("SensorNode")> like INetworkNode {
        @display("p=361.88,123.31");
    }

    host_fn_rly_114: <default("SensorNode")> like INetworkNode {
        @display("p=274.46,7.47");
    }

    host_fn_rly_115: <default("SensorNode")> like INetworkNode {
        @display("p=315.82,91.00");
    }

    host_fn_rly_116: <default("SensorNode")> like INetworkNode {
        @display("p=290.48,163.20");
    }

    host_fn_rly_117: <default("SensorNode")> like INetworkNode {
        @display("p=285.70,152.25");
    }

    host_fn_rly_118: <default("SensorNode")> like INetworkNode {
        @display("p=300.85,137.24");
    }

    host_fn_rly_119: <default("SensorNode")> like INetworkNode {
        @display("p=302.42,112.91");
    }

    host_fn_rly_120: <default("SensorNode")> like INetworkNode {
        @display("p=258.30,70.41");
    }

    host_fn_rly_121: <default("SensorNode")> like INetworkNode {
        @display("p=252.05,200.38");
    }

    host_fn_rly_122: <default("SensorNode")> like INetworkNode {
        @display("p=208.26,180.85");
    }

    host_fn_rly_123: <default("SensorNode")> like INetworkNode {
        @display("p=300.97,160.67");
    }

    host_fn_rly_124: <default("SensorNode")> like INetworkNode {
        @display("p=355.71,150.58");
    }

    host_fn_rly_125: <default("SensorNode")> like INetworkNode {
        @display("p=360.01,105.83");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=303.91,392.82");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=252.48,386.17");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=263.54,319.37");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=291.44,329.91");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=388.25,367.85");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=269.74,350.78");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=272.25,230.47");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=224.28,271.30");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=182.95,394.51");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=239.98,376.30");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=214.63,323.90");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=79.25,383.70");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=112.41,398.61");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=34.86,234.25");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=158.83,325.66");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=227.51,318.08");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=245.44,270.54");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=298.70,301.77");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=179.04,356.44");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=163.16,312.33");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=170.99,375.00");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=210.56,253.06");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=210.15,380.30");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=157.53,281.87");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=134.42,364.17");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=92.42,386.38");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=40.60,294.74");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=90.39,348.84");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=44.99,343.09");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=130.89,257.49");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=48.51,331.36");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=78.89,204.48");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=45.73,156.20");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=59.47,72.70");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=67.95,201.94");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=148.63,188.94");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=145.65,81.66");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=219.12,76.86");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=216.60,52.26");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=86.38,52.10");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=121.80,21.71");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=156.73,73.16");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=191.77,81.73");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=110.96,82.02");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=105.92,199.72");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=230.14,35.73");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=150.88,105.48");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=200.22,111.05");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=201.54,71.22");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=181.67,37.51");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=231.54,79.92");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=200.75,53.35");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=247.35,33.35");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=393.16,13.98");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=383.98,22.27");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=351.23,58.49");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=372.52,209.60");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=399.55,47.10");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=316.31,19.39");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=291.76,31.39");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=267.38,128.20");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=335.90,119.88");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=316.53,31.58");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=374.41,118.80");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=288.83,128.85");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=173.16,91.92");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=235.49,14.11");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=153.16,2.06");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=98.14,19.44");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=190.64,11.74");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=246.13,96.83");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=209.64,103.56");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=271.87,38.78");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=220.92,146.86");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=325.75,70.64");
    }

    host_lpn_201: <default("SensorNode")> like INetworkNode {
        @display("p=333.13,132.09");
    }

    host_lpn_202: <default("SensorNode")> like INetworkNode {
        @display("p=225.50,57.95");
    }

    host_lpn_203: <default("SensorNode")> like INetworkNode {
        @display("p=106.12,53.07");
    }

    host_lpn_204: <default("SensorNode")> like INetworkNode {
        @display("p=104.81,28.45");
    }

    host_lpn_205: <default("SensorNode")> like INetworkNode {
        @display("p=151.34,152.67");
    }

    host_lpn_206: <default("SensorNode")> like INetworkNode {
        @display("p=35.96,34.83");
    }

    host_lpn_207: <default("SensorNode")> like INetworkNode {
        @display("p=2.74,18.63");
    }

    host_lpn_208: <default("SensorNode")> like INetworkNode {
        @display("p=97.12,88.95");
    }

    host_lpn_209: <default("SensorNode")> like INetworkNode {
        @display("p=69.30,24.87");
    }

    host_lpn_210: <default("SensorNode")> like INetworkNode {
        @display("p=63.82,120.95");
    }

    host_lpn_211: <default("SensorNode")> like INetworkNode {
        @display("p=166.45,115.04");
    }

    host_lpn_212: <default("SensorNode")> like INetworkNode {
        @display("p=112.27,151.75");
    }

    host_lpn_213: <default("SensorNode")> like INetworkNode {
        @display("p=120.53,102.06");
    }

    host_lpn_214: <default("SensorNode")> like INetworkNode {
        @display("p=16.46,76.10");
    }

    host_lpn_215: <default("SensorNode")> like INetworkNode {
        @display("p=73.15,86.30");
    }

    host_lpn_216: <default("SensorNode")> like INetworkNode {
        @display("p=78.56,70.41");
    }

    host_lpn_217: <default("SensorNode")> like INetworkNode {
        @display("p=83.78,168.32");
    }

    host_lpn_218: <default("SensorNode")> like INetworkNode {
        @display("p=100.93,122.15");
    }

    host_lpn_219: <default("SensorNode")> like INetworkNode {
        @display("p=107.45,9.49");
    }

    host_lpn_220: <default("SensorNode")> like INetworkNode {
        @display("p=89.11,68.58");
    }

    host_lpn_221: <default("SensorNode")> like INetworkNode {
        @display("p=44.44,8.54");
    }

    host_lpn_222: <default("SensorNode")> like INetworkNode {
        @display("p=74.62,60.86");
    }

    host_lpn_223: <default("SensorNode")> like INetworkNode {
        @display("p=64.91,35.20");
    }

    host_lpn_224: <default("SensorNode")> like INetworkNode {
        @display("p=135.57,92.89");
    }

    host_lpn_225: <default("SensorNode")> like INetworkNode {
        @display("p=143.82,71.24");
    }

    host_lpn_226: <default("SensorNode")> like INetworkNode {
        @display("p=237.48,63.78");
    }

    host_lpn_227: <default("SensorNode")> like INetworkNode {
        @display("p=269.52,84.19");
    }

    host_lpn_228: <default("SensorNode")> like INetworkNode {
        @display("p=305.35,99.42");
    }

    host_lpn_229: <default("SensorNode")> like INetworkNode {
        @display("p=371.47,53.23");
    }

    host_lpn_230: <default("SensorNode")> like INetworkNode {
        @display("p=342.86,10.33");
    }

    host_lpn_231: <default("SensorNode")> like INetworkNode {
        @display("p=161.98,126.21");
    }

    host_lpn_232: <default("SensorNode")> like INetworkNode {
        @display("p=215.29,112.74");
    }

    host_lpn_233: <default("SensorNode")> like INetworkNode {
        @display("p=339.51,154.03");
    }

    host_lpn_234: <default("SensorNode")> like INetworkNode {
        @display("p=331.61,92.98");
    }

    host_lpn_235: <default("SensorNode")> like INetworkNode {
        @display("p=349.67,161.55");
    }

    host_lpn_236: <default("SensorNode")> like INetworkNode {
        @display("p=307.97,169.59");
    }

    host_lpn_237: <default("SensorNode")> like INetworkNode {
        @display("p=326.39,111.83");
    }

    host_lpn_238: <default("SensorNode")> like INetworkNode {
        @display("p=390.05,104.83");
    }

    host_lpn_239: <default("SensorNode")> like INetworkNode {
        @display("p=302.51,7.85");
    }

    host_lpn_240: <default("SensorNode")> like INetworkNode {
        @display("p=336.68,168.23");
    }

    host_lpn_241: <default("SensorNode")> like INetworkNode {
        @display("p=287.93,174.37");
    }

    host_lpn_242: <default("SensorNode")> like INetworkNode {
        @display("p=230.34,204.64");
    }

    host_lpn_243: <default("SensorNode")> like INetworkNode {
        @display("p=303.72,183.61");
    }

    host_lpn_244: <default("SensorNode")> like INetworkNode {
        @display("p=319.00,198.67");
    }

    host_lpn_245: <default("SensorNode")> like INetworkNode {
        @display("p=242.40,124.37");
    }

    host_lpn_246: <default("SensorNode")> like INetworkNode {
        @display("p=266.76,203.54");
    }

    host_lpn_247: <default("SensorNode")> like INetworkNode {
        @display("p=230.66,254.88");
    }

    host_lpn_248: <default("SensorNode")> like INetworkNode {
        @display("p=235.99,139.69");
    }

    host_lpn_249: <default("SensorNode")> like INetworkNode {
        @display("p=269.64,161.37");
    }

    host_lpn_250: <default("SensorNode")> like INetworkNode {
        @display("p=382.83,162.26");
    }

    host_lpn_251: <default("SensorNode")> like INetworkNode {
        @display("p=319.24,357.68");
    }

    host_lpn_252: <default("SensorNode")> like INetworkNode {
        @display("p=222.38,332.02");
    }

    host_lpn_253: <default("SensorNode")> like INetworkNode {
        @display("p=338.08,302.60");
    }

    host_lpn_254: <default("SensorNode")> like INetworkNode {
        @display("p=205.18,340.00");
    }

    host_lpn_255: <default("SensorNode")> like INetworkNode {
        @display("p=247.47,333.64");
    }

    host_lpn_256: <default("SensorNode")> like INetworkNode {
        @display("p=277.68,342.28");
    }

    host_lpn_257: <default("SensorNode")> like INetworkNode {
        @display("p=230.02,236.87");
    }

    host_lpn_258: <default("SensorNode")> like INetworkNode {
        @display("p=193.65,319.91");
    }

    host_lpn_259: <default("SensorNode")> like INetworkNode {
        @display("p=215.62,341.89");
    }

    host_lpn_260: <default("SensorNode")> like INetworkNode {
        @display("p=245.15,363.87");
    }

    host_lpn_261: <default("SensorNode")> like INetworkNode {
        @display("p=110.69,341.70");
    }

    host_lpn_262: <default("SensorNode")> like INetworkNode {
        @display("p=105.40,356.59");
    }

    host_lpn_263: <default("SensorNode")> like INetworkNode {
        @display("p=73.70,317.45");
    }

    host_lpn_264: <default("SensorNode")> like INetworkNode {
        @display("p=48.28,365.12");
    }

    host_lpn_265: <default("SensorNode")> like INetworkNode {
        @display("p=149.63,380.79");
    }

    host_lpn_266: <default("SensorNode")> like INetworkNode {
        @display("p=161.66,249.66");
    }

    host_lpn_267: <default("SensorNode")> like INetworkNode {
        @display("p=289.73,375.88");
    }

    host_lpn_268: <default("SensorNode")> like INetworkNode {
        @display("p=293.91,365.64");
    }

    host_lpn_269: <default("SensorNode")> like INetworkNode {
        @display("p=260.03,284.15");
    }

    host_lpn_270: <default("SensorNode")> like INetworkNode {
        @display("p=105.04,325.18");
    }

    host_lpn_271: <default("SensorNode")> like INetworkNode {
        @display("p=128.80,319.11");
    }

    host_lpn_272: <default("SensorNode")> like INetworkNode {
        @display("p=162.07,393.99");
    }

    host_lpn_273: <default("SensorNode")> like INetworkNode {
        @display("p=251.33,258.67");
    }

    host_lpn_274: <default("SensorNode")> like INetworkNode {
        @display("p=248.42,247.83");
    }

    host_lpn_275: <default("SensorNode")> like INetworkNode {
        @display("p=27.39,354.08");
    }

    host_lpn_276: <default("SensorNode")> like INetworkNode {
        @display("p=43.19,321.63");
    }

    host_lpn_277: <default("SensorNode")> like INetworkNode {
        @display("p=23.71,340.45");
    }

    host_lpn_278: <default("SensorNode")> like INetworkNode {
        @display("p=0.43,396.49");
    }

    host_lpn_279: <default("SensorNode")> like INetworkNode {
        @display("p=84.50,374.32");
    }

    host_lpn_280: <default("SensorNode")> like INetworkNode {
        @display("p=84.57,259.86");
    }

    host_lpn_281: <default("SensorNode")> like INetworkNode {
        @display("p=88.57,288.27");
    }

    host_lpn_282: <default("SensorNode")> like INetworkNode {
        @display("p=65.12,228.55");
    }

    host_lpn_283: <default("SensorNode")> like INetworkNode {
        @display("p=88.64,201.26");
    }

    host_lpn_284: <default("SensorNode")> like INetworkNode {
        @display("p=101.83,187.05");
    }

    host_lpn_285: <default("SensorNode")> like INetworkNode {
        @display("p=25.86,205.21");
    }

    host_lpn_286: <default("SensorNode")> like INetworkNode {
        @display("p=90.46,230.44");
    }

    host_lpn_287: <default("SensorNode")> like INetworkNode {
        @display("p=166.81,169.45");
    }

    host_lpn_288: <default("SensorNode")> like INetworkNode {
        @display("p=143.74,169.22");
    }

    host_lpn_289: <default("SensorNode")> like INetworkNode {
        @display("p=172.57,46.12");
    }

    host_lpn_290: <default("SensorNode")> like INetworkNode {
        @display("p=84.70,31.57");
    }

    host_lpn_291: <default("SensorNode")> like INetworkNode {
        @display("p=136.05,14.88");
    }

    host_lpn_292: <default("SensorNode")> like INetworkNode {
        @display("p=121.43,190.85");
    }

    host_lpn_293: <default("SensorNode")> like INetworkNode {
        @display("p=172.63,149.91");
    }

    host_lpn_294: <default("SensorNode")> like INetworkNode {
        @display("p=87.01,115.20");
    }

    host_lpn_295: <default("SensorNode")> like INetworkNode {
        @display("p=91.15,215.82");
    }

    host_lpn_296: <default("SensorNode")> like INetworkNode {
        @display("p=162.81,12.34");
    }

    host_lpn_297: <default("SensorNode")> like INetworkNode {
        @display("p=198.05,133.72");
    }

    host_lpn_298: <default("SensorNode")> like INetworkNode {
        @display("p=251.47,5.28");
    }

    host_lpn_299: <default("SensorNode")> like INetworkNode {
        @display("p=196.12,22.50");
    }

    host_lpn_300: <default("SensorNode")> like INetworkNode {
        @display("p=182.36,123.07");
    }

    host_lpn_301: <default("SensorNode")> like INetworkNode {
        @display("p=290.87,44.10");
    }

    host_lpn_302: <default("SensorNode")> like INetworkNode {
        @display("p=182.06,87.03");
    }

    host_lpn_303: <default("SensorNode")> like INetworkNode {
        @display("p=285.25,68.59");
    }

    host_lpn_304: <default("SensorNode")> like INetworkNode {
        @display("p=359.90,49.71");
    }

    host_lpn_305: <default("SensorNode")> like INetworkNode {
        @display("p=366.02,144.90");
    }

    host_lpn_306: <default("SensorNode")> like INetworkNode {
        @display("p=391.15,82.17");
    }

    host_lpn_307: <default("SensorNode")> like INetworkNode {
        @display("p=312.65,210.32");
    }

    host_lpn_308: <default("SensorNode")> like INetworkNode {
        @display("p=374.06,67.15");
    }

    host_lpn_309: <default("SensorNode")> like INetworkNode {
        @display("p=364.79,22.10");
    }

    host_lpn_310: <default("SensorNode")> like INetworkNode {
        @display("p=303.35,66.88");
    }

    host_lpn_311: <default("SensorNode")> like INetworkNode {
        @display("p=262.02,91.60");
    }

    host_lpn_312: <default("SensorNode")> like INetworkNode {
        @display("p=261.71,17.33");
    }

    host_lpn_313: <default("SensorNode")> like INetworkNode {
        @display("p=357.76,8.69");
    }

    host_lpn_314: <default("SensorNode")> like INetworkNode {
        @display("p=275.36,92.40");
    }

    host_lpn_315: <default("SensorNode")> like INetworkNode {
        @display("p=263.91,116.58");
    }

    host_lpn_316: <default("SensorNode")> like INetworkNode {
        @display("p=222.93,90.55");
    }

    host_lpn_317: <default("SensorNode")> like INetworkNode {
        @display("p=182.83,54.74");
    }

    host_lpn_318: <default("SensorNode")> like INetworkNode {
        @display("p=164.12,0.56");
    }

    host_lpn_319: <default("SensorNode")> like INetworkNode {
        @display("p=183.30,98.38");
    }

    host_lpn_320: <default("SensorNode")> like INetworkNode {
        @display("p=136.96,115.37");
    }

    host_lpn_321: <default("SensorNode")> like INetworkNode {
        @display("p=185.67,140.17");
    }

    host_lpn_322: <default("SensorNode")> like INetworkNode {
        @display("p=249.48,59.93");
    }

    host_lpn_323: <default("SensorNode")> like INetworkNode {
        @display("p=175.37,106.84");
    }

    host_lpn_324: <default("SensorNode")> like INetworkNode {
        @display("p=329.25,10.56");
    }

    host_lpn_325: <default("SensorNode")> like INetworkNode {
        @display("p=314.92,66.45");
    }

    host_lpn_326: <default("SensorNode")> like INetworkNode {
        @display("p=341.94,90.44");
    }

    host_lpn_327: <default("SensorNode")> like INetworkNode {
        @display("p=235.78,94.17");
    }

    host_lpn_328: <default("SensorNode")> like INetworkNode {
        @display("p=120.24,113.15");
    }

    host_lpn_329: <default("SensorNode")> like INetworkNode {
        @display("p=157.54,92.16");
    }

    host_lpn_330: <default("SensorNode")> like INetworkNode {
        @display("p=206.02,93.15");
    }

    host_lpn_331: <default("SensorNode")> like INetworkNode {
        @display("p=58.56,95.45");
    }

    host_lpn_332: <default("SensorNode")> like INetworkNode {
        @display("p=46.22,18.64");
    }

    host_lpn_333: <default("SensorNode")> like INetworkNode {
        @display("p=63.44,8.70");
    }

    host_lpn_334: <default("SensorNode")> like INetworkNode {
        @display("p=86.05,18.53");
    }

    host_lpn_335: <default("SensorNode")> like INetworkNode {
        @display("p=61.79,84.89");
    }

    host_lpn_336: <default("SensorNode")> like INetworkNode {
        @display("p=110.99,70.16");
    }

    host_lpn_337: <default("SensorNode")> like INetworkNode {
        @display("p=50.21,123.23");
    }

    host_lpn_338: <default("SensorNode")> like INetworkNode {
        @display("p=54.93,43.63");
    }

    host_lpn_339: <default("SensorNode")> like INetworkNode {
        @display("p=8.26,40.23");
    }

    host_lpn_340: <default("SensorNode")> like INetworkNode {
        @display("p=45.35,47.77");
    }

    host_lpn_341: <default("SensorNode")> like INetworkNode {
        @display("p=72.81,139.57");
    }

    host_lpn_342: <default("SensorNode")> like INetworkNode {
        @display("p=136.20,161.25");
    }

    host_lpn_343: <default("SensorNode")> like INetworkNode {
        @display("p=135.60,128.95");
    }

    host_lpn_344: <default("SensorNode")> like INetworkNode {
        @display("p=177.00,27.46");
    }

    host_lpn_345: <default("SensorNode")> like INetworkNode {
        @display("p=1.22,55.32");
    }

    host_lpn_346: <default("SensorNode")> like INetworkNode {
        @display("p=72.92,4.14");
    }

    host_lpn_347: <default("SensorNode")> like INetworkNode {
        @display("p=42.82,75.21");
    }

    host_lpn_348: <default("SensorNode")> like INetworkNode {
        @display("p=26.93,72.52");
    }

    host_lpn_349: <default("SensorNode")> like INetworkNode {
        @display("p=19.35,100.49");
    }

    host_lpn_350: <default("SensorNode")> like INetworkNode {
        @display("p=241.81,74.41");
    }

    host_lpn_351: <default("SensorNode")> like INetworkNode {
        @display("p=242.52,52.22");
    }

    host_lpn_352: <default("SensorNode")> like INetworkNode {
        @display("p=217.31,2.46");
    }

    host_lpn_353: <default("SensorNode")> like INetworkNode {
        @display("p=337.41,73.62");
    }

    host_lpn_354: <default("SensorNode")> like INetworkNode {
        @display("p=384.86,46.94");
    }

    host_lpn_355: <default("SensorNode")> like INetworkNode {
        @display("p=315.66,43.83");
    }

    host_lpn_356: <default("SensorNode")> like INetworkNode {
        @display("p=283.76,117.81");
    }

    host_lpn_357: <default("SensorNode")> like INetworkNode {
        @display("p=289.02,78.86");
    }

    host_lpn_358: <default("SensorNode")> like INetworkNode {
        @display("p=251.61,84.40");
    }

    host_lpn_359: <default("SensorNode")> like INetworkNode {
        @display("p=334.97,211.40");
    }

    host_lpn_360: <default("SensorNode")> like INetworkNode {
        @display("p=353.98,36.38");
    }

    host_lpn_361: <default("SensorNode")> like INetworkNode {
        @display("p=376.29,100.44");
    }

    host_lpn_362: <default("SensorNode")> like INetworkNode {
        @display("p=392.87,64.84");
    }

    host_lpn_363: <default("SensorNode")> like INetworkNode {
        @display("p=337.01,62.00");
    }

    host_lpn_364: <default("SensorNode")> like INetworkNode {
        @display("p=369.30,3.68");
    }

    host_lpn_365: <default("SensorNode")> like INetworkNode {
        @display("p=313.72,155.16");
    }

    host_lpn_366: <default("SensorNode")> like INetworkNode {
        @display("p=284.91,101.74");
    }

    host_lpn_367: <default("SensorNode")> like INetworkNode {
        @display("p=204.51,204.49");
    }

    host_lpn_368: <default("SensorNode")> like INetworkNode {
        @display("p=333.12,142.53");
    }

    host_lpn_369: <default("SensorNode")> like INetworkNode {
        @display("p=309.29,131.60");
    }

    host_lpn_370: <default("SensorNode")> like INetworkNode {
        @display("p=277.16,138.15");
    }

    host_lpn_371: <default("SensorNode")> like INetworkNode {
        @display("p=197.40,224.02");
    }

    host_lpn_372: <default("SensorNode")> like INetworkNode {
        @display("p=232.54,189.33");
    }

    host_lpn_373: <default("SensorNode")> like INetworkNode {
        @display("p=311.52,143.97");
    }

    host_lpn_374: <default("SensorNode")> like INetworkNode {
        @display("p=355.04,194.71");
    }

    host_lpn_375: <default("SensorNode")> like INetworkNode {
        @display("p=360.83,171.58");
    }

    host_lpn_376: <default("SensorNode")> like INetworkNode {
        @display("p=346.08,389.83");
    }

    host_lpn_377: <default("SensorNode")> like INetworkNode {
        @display("p=227.78,348.23");
    }

    host_lpn_378: <default("SensorNode")> like INetworkNode {
        @display("p=269.43,249.43");
    }

    host_lpn_379: <default("SensorNode")> like INetworkNode {
        @display("p=259.94,374.84");
    }

    host_lpn_380: <default("SensorNode")> like INetworkNode {
        @display("p=298.68,356.07");
    }

    host_lpn_381: <default("SensorNode")> like INetworkNode {
        @display("p=224.17,296.23");
    }

    host_lpn_382: <default("SensorNode")> like INetworkNode {
        @display("p=209.47,296.55");
    }

    host_lpn_383: <default("SensorNode")> like INetworkNode {
        @display("p=264.70,293.38");
    }

    host_lpn_384: <default("SensorNode")> like INetworkNode {
        @display("p=213.62,367.81");
    }

    host_lpn_385: <default("SensorNode")> like INetworkNode {
        @display("p=236.91,354.81");
    }

    host_lpn_386: <default("SensorNode")> like INetworkNode {
        @display("p=132.34,353.18");
    }

    host_lpn_387: <default("SensorNode")> like INetworkNode {
        @display("p=102.02,366.91");
    }

    host_lpn_388: <default("SensorNode")> like INetworkNode {
        @display("p=33.42,311.16");
    }

    host_lpn_389: <default("SensorNode")> like INetworkNode {
        @display("p=38.36,263.84");
    }

    host_lpn_390: <default("SensorNode")> like INetworkNode {
        @display("p=93.07,272.17");
    }

    host_lpn_391: <default("SensorNode")> like INetworkNode {
        @display("p=237.61,316.92");
    }

    host_lpn_392: <default("SensorNode")> like INetworkNode {
        @display("p=185.34,332.92");
    }

    host_lpn_393: <default("SensorNode")> like INetworkNode {
        @display("p=343.85,321.55");
    }

    host_lpn_394: <default("SensorNode")> like INetworkNode {
        @display("p=240.65,298.10");
    }

    host_lpn_395: <default("SensorNode")> like INetworkNode {
        @display("p=136.21,288.21");
    }

    host_lpn_396: <default("SensorNode")> like INetworkNode {
        @display("p=78.96,249.56");
    }

    host_lpn_397: <default("SensorNode")> like INetworkNode {
        @display("p=222.27,214.14");
    }

    host_lpn_398: <default("SensorNode")> like INetworkNode {
        @display("p=306.92,265.16");
    }

    host_lpn_399: <default("SensorNode")> like INetworkNode {
        @display("p=144.16,277.93");
    }

    host_lpn_400: <default("SensorNode")> like INetworkNode {
        @display("p=60.96,363.08");
    }

    host_lpn_401: <default("SensorNode")> like INetworkNode {
        @display("p=64.60,266.84");
    }

    host_lpn_402: <default("SensorNode")> like INetworkNode {
        @display("p=77.86,302.80");
    }

    host_lpn_403: <default("SensorNode")> like INetworkNode {
        @display("p=7.69,323.73");
    }

    host_lpn_404: <default("SensorNode")> like INetworkNode {
        @display("p=83.91,361.12");
    }

    host_lpn_405: <default("SensorNode")> like INetworkNode {
        @display("p=49.31,268.61");
    }

    host_lpn_406: <default("SensorNode")> like INetworkNode {
        @display("p=44.30,397.36");
    }

    host_lpn_407: <default("SensorNode")> like INetworkNode {
        @display("p=34.20,190.62");
    }

    host_lpn_408: <default("SensorNode")> like INetworkNode {
        @display("p=33.15,180.24");
    }

    host_lpn_409: <default("SensorNode")> like INetworkNode {
        @display("p=104.74,158.86");
    }

    host_lpn_410: <default("SensorNode")> like INetworkNode {
        @display("p=171.84,198.96");
    }

    host_lpn_411: <default("SensorNode")> like INetworkNode {
        @display("p=133.39,230.09");
    }

    host_lpn_412: <default("SensorNode")> like INetworkNode {
        @display("p=185.29,184.92");
    }

    host_lpn_413: <default("SensorNode")> like INetworkNode {
        @display("p=254.49,133.65");
    }

    host_lpn_414: <default("SensorNode")> like INetworkNode {
        @display("p=117.67,40.38");
    }

    host_lpn_415: <default("SensorNode")> like INetworkNode {
        @display("p=131.79,24.81");
    }

    host_lpn_416: <default("SensorNode")> like INetworkNode {
        @display("p=126.70,121.75");
    }

    host_lpn_417: <default("SensorNode")> like INetworkNode {
        @display("p=50.18,107.34");
    }

    host_lpn_418: <default("SensorNode")> like INetworkNode {
        @display("p=115.80,50.39");
    }

    host_lpn_419: <default("SensorNode")> like INetworkNode {
        @display("p=73.21,174.06");
    }

    host_lpn_420: <default("SensorNode")> like INetworkNode {
        @display("p=77.87,121.09");
    }

    host_lpn_421: <default("SensorNode")> like INetworkNode {
        @display("p=75.71,103.00");
    }

    host_lpn_422: <default("SensorNode")> like INetworkNode {
        @display("p=167.71,140.60");
    }

    host_lpn_423: <default("SensorNode")> like INetworkNode {
        @display("p=273.59,17.70");
    }

    host_lpn_424: <default("SensorNode")> like INetworkNode {
        @display("p=237.35,113.66");
    }

    host_lpn_425: <default("SensorNode")> like INetworkNode {
        @display("p=220.31,132.26");
    }

    host_lpn_426: <default("SensorNode")> like INetworkNode {
        @display("p=262.71,5.84");
    }

    host_lpn_427: <default("SensorNode")> like INetworkNode {
        @display("p=289.17,3.46");
    }

    host_lpn_428: <default("SensorNode")> like INetworkNode {
        @display("p=225.31,113.43");
    }

    host_lpn_429: <default("SensorNode")> like INetworkNode {
        @display("p=266.11,51.79");
    }

    host_lpn_430: <default("SensorNode")> like INetworkNode {
        @display("p=395.67,146.49");
    }

    host_lpn_431: <default("SensorNode")> like INetworkNode {
        @display("p=380.53,88.93");
    }

    host_lpn_432: <default("SensorNode")> like INetworkNode {
        @display("p=390.63,222.79");
    }

    host_lpn_433: <default("SensorNode")> like INetworkNode {
        @display("p=337.26,51.44");
    }

    host_lpn_434: <default("SensorNode")> like INetworkNode {
        @display("p=303.13,33.43");
    }

    host_lpn_435: <default("SensorNode")> like INetworkNode {
        @display("p=383.57,74.61");
    }

    host_lpn_436: <default("SensorNode")> like INetworkNode {
        @display("p=254.61,166.06");
    }

    host_lpn_437: <default("SensorNode")> like INetworkNode {
        @display("p=312.48,9.16");
    }

    host_lpn_438: <default("SensorNode")> like INetworkNode {
        @display("p=363.09,70.98");
    }

    host_lpn_439: <default("SensorNode")> like INetworkNode {
        @display("p=322.26,129.70");
    }

    host_lpn_440: <default("SensorNode")> like INetworkNode {
        @display("p=299.71,125.19");
    }

    host_lpn_441: <default("SensorNode")> like INetworkNode {
        @display("p=198.32,177.70");
    }

    host_lpn_442: <default("SensorNode")> like INetworkNode {
        @display("p=237.44,28.59");
    }

    host_lpn_443: <default("SensorNode")> like INetworkNode {
        @display("p=147.28,114.90");
    }

    host_lpn_444: <default("SensorNode")> like INetworkNode {
        @display("p=208.38,11.06");
    }

    host_lpn_445: <default("SensorNode")> like INetworkNode {
        @display("p=143.87,24.67");
    }

    host_lpn_446: <default("SensorNode")> like INetworkNode {
        @display("p=141.32,60.76");
    }

    host_lpn_447: <default("SensorNode")> like INetworkNode {
        @display("p=252.81,120.08");
    }

    host_lpn_448: <default("SensorNode")> like INetworkNode {
        @display("p=266.50,106.02");
    }

    host_lpn_449: <default("SensorNode")> like INetworkNode {
        @display("p=314.28,107.52");
    }

    host_lpn_450: <default("SensorNode")> like INetworkNode {
        @display("p=250.46,149.25");
    }

    host_lpn_451: <default("SensorNode")> like INetworkNode {
        @display("p=330.19,41.23");
    }

    host_lpn_452: <default("SensorNode")> like INetworkNode {
        @display("p=151.62,12.98");
    }

    host_lpn_453: <default("SensorNode")> like INetworkNode {
        @display("p=149.90,46.60");
    }

    host_lpn_454: <default("SensorNode")> like INetworkNode {
        @display("p=84.88,0.88");
    }

    host_lpn_455: <default("SensorNode")> like INetworkNode {
        @display("p=123.73,135.41");
    }

    host_lpn_456: <default("SensorNode")> like INetworkNode {
        @display("p=38.34,87.38");
    }

    host_lpn_457: <default("SensorNode")> like INetworkNode {
        @display("p=52.54,28.13");
    }

    host_lpn_458: <default("SensorNode")> like INetworkNode {
        @display("p=51.92,82.64");
    }

    host_lpn_459: <default("SensorNode")> like INetworkNode {
        @display("p=100.76,1.22");
    }

    host_lpn_460: <default("SensorNode")> like INetworkNode {
        @display("p=159.83,161.21");
    }

    host_lpn_461: <default("SensorNode")> like INetworkNode {
        @display("p=101.36,76.98");
    }

    host_lpn_462: <default("SensorNode")> like INetworkNode {
        @display("p=93.76,149.71");
    }

    host_lpn_463: <default("SensorNode")> like INetworkNode {
        @display("p=27.08,85.56");
    }

    host_lpn_464: <default("SensorNode")> like INetworkNode {
        @display("p=3.69,84.24");
    }

    host_lpn_465: <default("SensorNode")> like INetworkNode {
        @display("p=107.02,93.60");
    }

    host_lpn_466: <default("SensorNode")> like INetworkNode {
        @display("p=88.61,129.80");
    }

    host_lpn_467: <default("SensorNode")> like INetworkNode {
        @display("p=39.25,140.52");
    }

    host_lpn_468: <default("SensorNode")> like INetworkNode {
        @display("p=131.19,184.17");
    }

    host_lpn_469: <default("SensorNode")> like INetworkNode {
        @display("p=181.68,18.00");
    }

    host_lpn_470: <default("SensorNode")> like INetworkNode {
        @display("p=30.39,25.85");
    }

    host_lpn_471: <default("SensorNode")> like INetworkNode {
        @display("p=58.82,57.85");
    }

    host_lpn_472: <default("SensorNode")> like INetworkNode {
        @display("p=3.87,30.01");
    }

    host_lpn_473: <default("SensorNode")> like INetworkNode {
        @display("p=46.98,97.05");
    }

    host_lpn_474: <default("SensorNode")> like INetworkNode {
        @display("p=162.47,103.19");
    }

    host_lpn_475: <default("SensorNode")> like INetworkNode {
        @display("p=123.55,149.68");
    }

    host_lpn_476: <default("SensorNode")> like INetworkNode {
        @display("p=274.94,72.65");
    }

    host_lpn_477: <default("SensorNode")> like INetworkNode {
        @display("p=193.63,103.20");
    }

    host_lpn_478: <default("SensorNode")> like INetworkNode {
        @display("p=370.58,35.29");
    }

    host_lpn_479: <default("SensorNode")> like INetworkNode {
        @display("p=332.76,0.41");
    }

    host_lpn_480: <default("SensorNode")> like INetworkNode {
        @display("p=291.65,19.12");
    }

    host_lpn_481: <default("SensorNode")> like INetworkNode {
        @display("p=239.29,151.59");
    }

    host_lpn_482: <default("SensorNode")> like INetworkNode {
        @display("p=218.77,161.49");
    }

    host_lpn_483: <default("SensorNode")> like INetworkNode {
        @display("p=227.06,176.87");
    }

    host_lpn_484: <default("SensorNode")> like INetworkNode {
        @display("p=320.01,183.09");
    }

    host_lpn_485: <default("SensorNode")> like INetworkNode {
        @display("p=350.81,177.54");
    }

    host_lpn_486: <default("SensorNode")> like INetworkNode {
        @display("p=389.80,172.66");
    }

    host_lpn_487: <default("SensorNode")> like INetworkNode {
        @display("p=296.77,90.96");
    }

    host_lpn_488: <default("SensorNode")> like INetworkNode {
        @display("p=368.38,182.35");
    }

    host_lpn_489: <default("SensorNode")> like INetworkNode {
        @display("p=241.12,85.56");
    }

    host_lpn_490: <default("SensorNode")> like INetworkNode {
        @display("p=325.44,172.69");
    }

    host_lpn_491: <default("SensorNode")> like INetworkNode {
        @display("p=280.26,165.45");
    }

    host_lpn_492: <default("SensorNode")> like INetworkNode {
        @display("p=302.58,229.85");
    }

    host_lpn_493: <default("SensorNode")> like INetworkNode {
        @display("p=293.48,57.06");
    }

    host_lpn_494: <default("SensorNode")> like INetworkNode {
        @display("p=372.28,159.65");
    }

    host_lpn_495: <default("SensorNode")> like INetworkNode {
        @display("p=316.62,119.63");
    }

    host_lpn_496: <default("SensorNode")> like INetworkNode {
        @display("p=282.06,202.39");
    }

    host_lpn_497: <default("SensorNode")> like INetworkNode {
        @display("p=175.57,163.37");
    }

    host_lpn_498: <default("SensorNode")> like INetworkNode {
        @display("p=356.07,220.54");
    }

    host_lpn_499: <default("SensorNode")> like INetworkNode {
        @display("p=372.25,134.23");
    }

    host_lpn_500: <default("SensorNode")> like INetworkNode {
        @display("p=326.51,152.05");
    }

}

