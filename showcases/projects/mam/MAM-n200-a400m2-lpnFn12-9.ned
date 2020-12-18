
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn12-9
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
        @display("p=221.00,154.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=232.95,163.74");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=142.61,144.13");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=131.34,144.68");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=170.08,195.80");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=200.11,206.37");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=283.59,171.45");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=308.97,199.37");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=254.87,163.69");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=299.00,231.27");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=288.39,294.17");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=287.23,329.11");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=272.75,269.74");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=298.07,245.06");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=328.55,235.30");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=283.98,223.23");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=272.81,313.85");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=178.80,155.89");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=189.66,222.87");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=183.03,231.36");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=134.61,134.38");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=222.45,220.34");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=178.91,286.14");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=301.31,172.07");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=346.85,155.42");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=214.05,212.97");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=229.15,259.58");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=301.36,303.21");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=237.16,290.65");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=288.53,256.65");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=340.44,268.94");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=344.90,224.52");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=283.58,182.66");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=348.78,331.75");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=212.78,145.89");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=247.67,217.82");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=188.10,78.00");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=84.23,56.55");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=178.26,181.72");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=120.21,153.51");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=334.57,131.67");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=284.85,200.82");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=259.22,120.66");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=271.23,225.37");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=315.30,369.27");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=363.03,356.71");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=338.92,208.29");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=285.53,282.09");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=340.95,143.44");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=335.88,194.99");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=225.62,373.92");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=180.90,217.70");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=166.05,229.29");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=156.60,78.13");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=88.59,194.10");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=150.14,135.59");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=216.50,166.24");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=317.89,204.60");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=295.43,204.70");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=258.91,173.89");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=267.25,209.24");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=324.38,286.15");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=197.19,314.12");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=246.95,346.72");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=385.00,212.12");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=308.84,239.47");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=356.42,251.48");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=260.77,316.91");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=210.48,116.37");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=239.94,156.27");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=200.52,130.25");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=107.81,137.49");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=162.55,202.87");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=188.70,175.96");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=318.05,222.83");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=309.04,271.77");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=204.01,108.62");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=269.74,240.57");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=262.25,284.06");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=308.79,354.41");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=182.01,243.32");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=267.83,252.48");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=312.37,187.24");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=306.61,129.32");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=279.56,339.15");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=284.28,121.53");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=314.83,108.34");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=161.39,139.58");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=163.34,184.20");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=97.14,217.92");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=152.73,247.27");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=267.81,139.03");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=300.39,151.74");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=328.00,174.06");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=206.06,238.86");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=244.18,331.20");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=314.25,387.35");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=353.14,305.55");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=256.93,262.87");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=382.35,222.01");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=289.18,307.70");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=223.57,326.43");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=168.20,74.80");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=159.99,215.39");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=165.06,160.40");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=70.15,161.61");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=115.40,190.90");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=116.73,256.10");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=258.38,218.63");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=233.25,135.69");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=314.91,149.66");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=330.81,300.89");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=272.55,286.29");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=272.70,354.08");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=306.25,290.04");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=229.21,308.31");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=302.16,256.03");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=234.58,213.91");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=262.69,339.47");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=191.24,165.33");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=158.30,124.22");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=129.36,85.26");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=138.33,154.73");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=153.34,158.19");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=265.73,163.51");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=308.32,209.52");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=303.34,220.85");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=280.73,149.35");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=220.07,184.13");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=378.33,336.29");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=261.55,363.10");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=269.75,197.17");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=343.12,250.41");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=318.49,260.78");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=262.26,300.11");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=278.68,385.50");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=272.50,102.68");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=234.01,188.55");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=168.94,120.21");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=165.13,52.79");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=129.32,273.93");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=171.05,215.33");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=288.38,238.70");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=360.80,142.67");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=254.45,187.72");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=389.29,190.84");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=313.89,341.99");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=319.21,327.53");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=225.23,286.76");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=213.16,262.92");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=366.63,291.20");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=247.78,274.72");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=222.87,251.30");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=198.97,79.77");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=239.62,171.93");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=106.38,123.72");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=100.32,164.52");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=242.99,194.20");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=158.67,265.44");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=241.12,142.62");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=228.11,204.76");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=182.90,130.09");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=396.38,250.96");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=247.87,239.31");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=223.13,276.09");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=295.07,187.88");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=237.90,223.51");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=359.14,269.30");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=286.58,268.81");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=294.98,358.37");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=223.33,88.18");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=295.57,111.94");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=88.68,98.14");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=173.21,90.13");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=149.26,186.79");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=130.26,210.89");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=260.77,90.88");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=240.18,255.92");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=252.89,137.66");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=355.33,239.59");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=283.93,316.95");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=283.75,348.50");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=193.62,292.71");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=373.96,212.30");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=381.09,315.81");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=248.76,300.48");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=206.15,293.04");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=210.58,196.47");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=310.65,161.85");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=191.44,120.42");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=174.55,171.04");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=119.82,244.55");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=192.74,194.51");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=191.02,143.90");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=357.24,207.27");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=294.91,99.05");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=322.71,272.28");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=239.70,379.18");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=347.30,288.21");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=201.34,264.44");
    }

}

