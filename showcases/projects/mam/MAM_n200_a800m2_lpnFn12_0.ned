
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn12_0
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=70.97,121.82");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=161.56,147.99");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=245.88,192.86");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=203.82,254.00");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=235.79,263.62");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=221.17,346.43");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=231.87,411.48");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=255.52,399.11");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=252.87,415.01");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=225.92,368.26");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=288.52,315.47");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=313.51,281.47");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=363.46,248.87");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=331.14,184.41");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=264.54,250.73");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=248.71,324.02");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=110.20,104.44");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=167.17,126.38");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=106.66,160.97");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=166.96,208.77");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=208.34,237.14");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=245.88,247.07");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=288.19,344.90");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=218.89,375.73");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=180.46,394.17");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=207.33,397.23");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=238.68,392.38");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=299.72,359.30");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=268.55,337.99");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=373.66,250.27");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=340.91,226.30");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=289.77,230.69");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=242.44,334.13");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=90.41,84.89");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=94.46,26.38");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=106.88,139.00");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=190.70,149.85");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=186.96,245.00");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=155.04,269.38");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=193.41,279.97");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=249.94,379.59");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=278.29,384.66");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=242.42,403.23");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=197.60,381.23");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=275.00,365.38");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=339.31,332.66");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=391.30,295.11");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=282.78,191.53");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=276.47,276.86");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=260.45,232.92");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=132.13,138.97");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=86.09,128.76");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=183.65,91.22");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=211.77,186.77");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=256.48,270.73");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=323.75,287.22");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=307.94,376.09");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=238.28,379.80");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=246.50,354.16");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=256.83,431.00");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=224.27,332.14");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=316.38,307.08");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=285.13,267.21");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=374.10,162.96");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=304.81,120.55");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=338.99,208.92");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=253.09,314.71");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=159.17,68.24");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=82.68,113.85");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=176.83,134.63");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=225.09,192.02");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=108.41,268.73");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=220.18,238.73");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=250.67,366.28");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=155.04,349.54");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=199.99,460.94");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=223.85,478.48");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=198.84,338.01");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=353.28,354.89");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=316.25,341.24");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=380.90,317.78");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=352.21,181.57");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=309.95,196.57");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=201.10,351.83");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=148.00,137.62");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=110.00,92.75");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=125.45,238.39");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=273.97,231.64");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=118.09,207.89");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=143.22,243.59");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=180.12,364.82");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=181.44,437.24");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=226.39,441.85");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=268.55,431.10");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=139.89,359.77");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=295.37,261.10");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=257.66,285.88");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=416.93,323.20");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=290.77,155.64");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=320.31,184.02");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=330.34,341.60");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=120.49,151.36");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=58.65,103.13");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=180.34,80.97");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=262.30,132.25");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=250.39,205.35");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=229.13,218.65");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=217.36,387.21");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=214.81,507.97");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=179.17,405.94");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=306.12,436.96");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=282.35,405.34");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=250.73,302.07");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=394.78,238.11");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=457.70,233.35");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=306.85,161.24");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=211.36,261.62");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=199.23,367.91");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=41.34,28.65");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=46.85,158.88");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=168.51,53.16");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=287.05,172.27");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=264.42,301.78");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=297.11,299.21");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=136.97,312.14");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=310.46,385.80");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=156.94,415.05");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=224.26,397.60");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=195.71,314.90");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=332.59,376.04");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=318.00,269.09");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=370.83,196.98");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=351.46,205.70");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=278.71,297.56");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=194.38,300.27");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=39.35,84.10");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=146.09,187.75");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=179.63,56.24");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=254.39,99.62");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=181.98,230.00");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=291.22,213.71");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=260.07,330.65");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=289.01,440.90");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=292.11,389.16");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=346.42,381.33");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=231.17,354.11");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=355.81,369.73");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=226.19,271.09");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=352.61,221.82");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=346.01,121.27");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=206.96,279.49");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=239.56,280.49");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=29.32,90.82");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=126.33,162.45");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=221.41,93.33");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=192.52,229.22");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=256.40,172.95");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=278.88,333.12");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=283.48,355.62");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=188.95,358.51");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=290.37,467.72");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=270.42,457.29");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=222.93,424.15");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=333.13,238.25");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=300.84,278.33");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=336.92,313.61");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=267.46,209.32");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=274.82,264.59");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=224.25,306.06");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=130.33,126.10");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=33.75,174.68");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=71.48,133.99");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=165.72,187.94");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=141.70,232.43");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=203.92,223.24");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=187.25,334.44");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=242.57,430.43");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=349.99,393.68");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=304.45,496.45");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=290.71,418.31");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=370.56,333.58");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=376.99,221.15");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=428.80,284.91");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=429.17,180.68");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=324.20,193.31");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=237.79,343.58");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=121.13,15.67");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=62.01,147.91");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=194.62,113.28");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=278.12,147.57");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=163.48,263.43");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=246.40,270.86");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=163.60,307.54");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=214.48,355.68");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=248.65,441.57");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=316.81,423.65");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=258.80,354.55");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=312.45,321.97");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=362.74,260.26");
    }

}

