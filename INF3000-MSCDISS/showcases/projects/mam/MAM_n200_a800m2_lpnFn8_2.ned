
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn8_2
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=73.94,46.84");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=86.99,43.03");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=138.50,112.55");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=122.16,116.64");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=44.34,133.91");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=61.87,105.74");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=95.53,166.34");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=61.37,188.51");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=123.12,202.18");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=73.34,186.21");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=22.96,147.57");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=6.49,146.65");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=68.69,198.23");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=100.18,183.77");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=169.23,241.30");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=181.13,221.48");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=209.19,314.05");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=161.27,252.09");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=90.09,186.85");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=93.11,257.42");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=77.50,250.63");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=135.22,313.13");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=184.00,372.63");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=194.79,362.36");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=133.49,192.23");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=100.66,36.57");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=154.33,42.94");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=122.42,142.34");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=167.74,149.96");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=57.04,155.85");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=88.19,55.22");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=141.21,205.36");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=5.32,219.39");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=146.69,225.52");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=39.26,244.36");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=20.51,176.52");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=24.06,116.60");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=79.75,151.76");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=115.11,91.75");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=162.19,218.73");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=266.13,218.15");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=162.72,380.71");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=168.08,300.77");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=88.17,175.48");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=36.72,321.48");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=5.80,295.36");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=141.93,241.59");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=211.87,375.32");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=255.49,407.61");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=124.63,132.01");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=69.37,12.47");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=42.40,63.25");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=57.46,118.30");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=213.72,101.03");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=31.02,134.12");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=14.95,97.50");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=29.04,168.10");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=101.03,144.39");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=127.10,216.93");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=103.29,210.82");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=17.40,202.57");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=4.05,158.75");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=104.24,236.01");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=120.97,280.36");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=163.64,290.50");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=174.37,202.64");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=252.73,374.00");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=85.63,296.55");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=93.09,202.49");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=120.71,238.56");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=59.66,293.73");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=116.32,350.96");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=268.12,379.64");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=176.64,433.36");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=138.75,49.61");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=26.81,2.03");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=88.69,25.89");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=111.64,47.13");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=174.24,165.14");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=81.16,207.03");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=25.10,100.73");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=80.36,232.39");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=120.22,161.82");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=129.39,176.53");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=131.55,230.69");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=89.11,158.65");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=5.88,205.51");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=95.74,129.91");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=144.28,266.44");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=196.03,247.08");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=159.88,271.57");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=305.25,290.09");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=158.78,235.77");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=142.48,153.17");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=80.60,272.74");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=42.85,227.77");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=147.61,402.51");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=233.69,374.39");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=138.80,284.08");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=112.60,66.33");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=94.74,86.72");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=78.28,67.65");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=170.77,112.68");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=200.60,110.42");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=65.94,146.33");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=65.51,127.97");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=117.21,179.77");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=71.43,169.50");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=116.87,295.99");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=35.76,263.44");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=69.96,219.12");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=30.70,76.28");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=61.84,174.88");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=84.69,108.44");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=179.55,288.84");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=237.75,269.34");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=239.61,292.61");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=105.06,255.80");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=40.14,205.08");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=50.75,202.53");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=123.33,265.73");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=226.73,332.82");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=152.38,346.45");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=194.46,323.66");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=192.54,75.75");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=58.19,56.89");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=81.81,95.52");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=58.18,137.60");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=130.80,102.77");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=21.04,158.53");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=43.63,80.80");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=105.75,160.99");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=79.97,139.87");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=133.31,253.41");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=46.56,270.70");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=52.17,183.74");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=17.81,238.52");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=132.19,163.65");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=108.02,201.81");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=191.97,176.30");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=216.05,210.36");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=162.35,337.88");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=135.90,293.66");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=179.07,144.63");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=99.85,332.88");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=44.31,333.00");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=92.95,277.93");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=174.31,311.10");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=226.66,291.44");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=116.72,81.39");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=152.30,60.19");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=165.98,81.83");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=151.94,148.68");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=42.72,105.82");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=45.17,156.57");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=58.07,68.16");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=116.66,253.19");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=110.30,171.94");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=180.51,178.78");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=66.88,285.97");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=52.37,102.41");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=53.24,166.89");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=56.12,242.15");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=1.06,172.20");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=236.40,174.81");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=161.13,202.19");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=214.88,295.95");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=184.62,200.07");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=105.77,129.28");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=73.05,239.22");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=72.06,264.97");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=136.10,327.22");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=146.93,440.40");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=192.35,346.71");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=97.66,111.61");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=63.47,90.29");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=76.04,30.49");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=186.48,121.50");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=196.79,132.87");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=4.66,118.45");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=41.44,44.35");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=127.71,88.50");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=93.62,267.72");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=144.07,193.29");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=40.19,190.84");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=39.46,173.39");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=70.37,158.58");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=12.52,187.81");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=140.01,173.67");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=250.28,239.10");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=168.00,260.42");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=219.05,308.16");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=213.54,281.98");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=117.99,224.99");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=29.05,223.75");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=93.34,227.57");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=185.79,246.93");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=120.18,327.41");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=101.39,359.95");
    }

}

