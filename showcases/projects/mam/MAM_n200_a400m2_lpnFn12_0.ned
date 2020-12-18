
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn12_0
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
        @display("p=178.85,336.52");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=193.31,308.79");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=267.34,331.72");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=267.86,236.91");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=258.22,228.46");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=243.88,255.46");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=264.98,178.22");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=328.53,185.75");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=310.16,171.30");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=312.57,217.40");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=286.09,191.67");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=273.94,195.14");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=294.16,226.73");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=303.49,208.50");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=280.27,111.68");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=322.85,51.95");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=89.79,301.80");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=187.77,369.33");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=240.76,341.09");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=204.79,266.58");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=347.78,201.28");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=213.90,195.25");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=174.89,234.17");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=210.41,239.60");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=393.30,164.77");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=235.25,205.71");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=322.95,250.34");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=232.44,265.81");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=265.64,268.74");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=292.11,214.22");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=379.46,191.62");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=259.48,200.81");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=332.94,62.64");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=99.74,280.75");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=174.01,326.80");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=145.18,227.84");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=205.35,327.67");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=243.67,212.21");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=286.85,237.05");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=196.64,210.77");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=240.17,180.39");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=298.93,275.44");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=382.37,121.24");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=328.39,122.10");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=293.56,113.61");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=242.65,116.90");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=320.17,260.48");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=331.73,238.37");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=282.71,163.18");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=362.37,107.80");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=119.19,359.57");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=183.78,347.37");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=125.28,335.38");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=267.82,359.06");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=235.02,222.61");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=276.88,205.19");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=202.25,222.63");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=343.22,122.58");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=311.61,155.17");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=299.57,178.93");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=357.98,145.62");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=338.04,109.96");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=259.38,186.80");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=271.52,148.18");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=324.94,176.25");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=240.98,47.20");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=313.27,123.69");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=136.81,234.49");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=181.47,305.97");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=212.85,311.29");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=244.59,365.81");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=337.68,261.32");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=343.27,229.03");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=277.30,249.18");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=286.81,254.91");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=330.81,210.74");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=314.22,196.84");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=220.77,225.68");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=306.96,249.58");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=253.04,170.64");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=283.14,222.56");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=380.25,266.14");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=261.60,116.10");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=363.59,19.88");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=138.85,257.98");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=245.61,394.52");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=195.48,319.05");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=241.21,381.72");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=289.96,266.04");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=263.31,248.75");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=256.86,258.98");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=269.65,137.53");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=330.69,156.63");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=300.05,165.15");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=236.94,234.36");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=352.12,185.85");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=293.76,198.88");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=287.89,130.57");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=264.85,217.65");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=221.66,116.99");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=344.79,14.14");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=69.39,310.96");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=170.34,374.70");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=231.53,352.94");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=296.32,399.61");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=281.01,316.15");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=288.26,308.50");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=266.85,291.54");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=254.20,159.49");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=340.75,242.92");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=320.94,235.25");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=395.96,245.18");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=308.60,265.99");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=278.91,266.53");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=351.34,171.01");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=248.54,199.15");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=335.16,171.14");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=247.76,77.83");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=80.36,287.01");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=109.65,274.08");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=185.57,295.26");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=302.59,334.58");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=273.61,305.59");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=191.65,159.58");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=254.02,243.49");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=177.96,147.06");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=340.92,161.08");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=377.64,230.32");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=361.68,235.12");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=296.92,103.60");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=206.88,253.97");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=355.87,294.32");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=337.43,293.87");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=299.97,61.89");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=348.55,114.04");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=138.62,316.50");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=161.92,278.26");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=215.20,343.59");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=281.17,390.00");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=252.73,283.05");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=203.78,184.15");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=192.88,234.58");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=171.97,197.62");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=375.63,146.55");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=302.18,118.82");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=291.59,141.58");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=191.63,170.10");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=181.01,224.24");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=276.04,230.92");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=346.11,255.82");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=343.61,58.00");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=330.37,43.60");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=109.51,314.05");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=207.36,352.45");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=164.72,359.23");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=253.86,313.56");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=229.19,160.78");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=246.73,293.84");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=216.14,162.89");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=239.39,144.64");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=311.06,238.68");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=312.36,142.59");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=321.38,205.30");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=281.46,286.84");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=201.57,156.44");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=254.72,269.27");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=312.46,227.52");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=270.26,89.62");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=388.86,83.00");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=70.21,384.06");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=129.23,277.62");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=151.87,292.32");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=188.32,390.23");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=327.92,304.16");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=179.34,169.20");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=268.55,258.19");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=184.98,192.28");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=322.48,219.56");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=285.90,180.78");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=304.89,304.96");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=216.45,132.06");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=232.02,120.23");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=222.81,281.30");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=312.18,184.31");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=230.56,56.80");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=376.76,47.76");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=54.16,349.75");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=168.14,296.09");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=228.58,291.94");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=204.26,291.82");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=354.38,216.14");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=160.11,231.09");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=219.32,260.87");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=223.38,146.64");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=342.30,134.73");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=356.59,89.14");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=329.47,198.67");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=219.74,208.55");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=350.30,246.18");
    }

}

