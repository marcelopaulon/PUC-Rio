
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn12-1
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
        @display("p=394.00,246.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=390.32,257.50");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=399.07,344.91");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=378.62,345.96");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=373.29,330.46");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=340.84,241.21");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=293.60,246.33");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=301.09,260.08");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=306.20,215.32");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=291.15,235.43");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=350.72,197.73");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=320.74,299.90");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=384.83,291.34");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=338.69,260.00");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=391.89,211.70");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=375.39,201.83");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=374.62,176.28");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=369.75,245.10");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=384.55,312.32");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=351.42,305.03");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=362.80,364.60");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=334.17,338.42");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=367.83,283.33");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=278.05,219.07");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=211.54,294.54");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=330.40,181.31");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=244.09,321.17");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=379.09,103.14");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=291.40,330.12");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=305.15,309.77");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=346.78,166.52");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=399.01,154.39");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=335.46,127.86");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=382.91,228.67");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=382.61,280.31");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=350.54,292.50");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=354.81,357.04");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=350.36,326.56");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=306.39,287.37");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=329.89,237.08");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=283.72,251.96");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=255.75,308.83");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=287.19,207.53");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=263.58,278.33");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=349.70,215.23");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=328.84,269.35");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=314.49,253.18");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=388.99,340.09");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=342.00,139.65");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=372.20,225.45");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=398.99,92.62");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=359.34,159.36");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=339.79,229.85");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=348.96,381.33");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=296.46,348.50");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=306.28,357.78");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=334.18,214.43");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=263.03,265.61");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=309.15,237.94");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=291.22,150.83");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=321.64,164.48");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=398.81,186.68");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=333.19,304.84");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=372.71,313.99");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=328.09,205.03");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=377.21,138.16");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=356.89,181.38");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=361.32,211.04");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=399.95,201.40");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=362.34,303.02");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=341.60,356.98");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=395.52,363.43");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=361.72,343.38");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=267.02,255.34");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=313.60,228.25");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=203.48,239.07");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=277.25,157.73");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=261.25,217.22");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=320.85,243.81");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=354.01,235.94");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=371.50,269.70");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=292.03,285.88");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=356.89,247.24");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=387.78,202.05");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=380.74,213.81");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=378.51,257.47");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=350.57,279.88");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=397.65,294.41");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=346.35,343.24");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=333.51,391.86");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=287.70,300.83");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=255.55,199.23");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=259.46,295.66");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=310.17,191.57");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=195.84,231.03");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=347.83,253.06");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=328.13,329.32");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=397.89,275.92");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=318.01,327.44");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=385.91,180.77");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=344.93,182.31");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=283.40,137.51");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=388.35,190.66");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=383.78,239.49");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=379.41,387.66");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=295.04,319.46");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=333.93,349.93");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=348.06,266.10");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=205.25,250.75");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=292.59,178.26");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=257.98,133.88");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=276.10,240.07");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=336.15,197.18");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=303.87,368.49");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=331.65,362.10");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=266.03,308.47");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=399.98,217.76");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=389.86,134.25");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=369.46,92.45");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=395.68,312.01");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=395.18,166.08");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=384.79,328.10");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=362.62,324.47");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=316.32,354.59");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=252.45,279.96");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=223.31,223.87");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=308.48,269.67");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=311.23,201.86");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=278.38,186.35");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=353.12,150.51");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=306.93,343.66");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=359.78,265.29");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=364.06,256.16");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=379.52,158.68");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=336.97,172.75");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=328.09,107.59");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=330.35,254.21");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=397.27,327.91");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=391.86,391.68");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=359.19,374.35");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=304.56,396.68");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=339.48,155.68");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=276.79,199.78");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=267.67,319.37");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=352.20,128.96");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=246.24,218.63");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=366.68,193.91");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=323.35,288.14");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=305.18,298.80");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=308.12,165.46");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=322.25,221.95");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=364.94,169.80");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=303.74,133.08");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=398.51,233.75");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=370.55,295.23");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=340.52,330.52");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=309.19,382.56");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=339.48,278.81");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=282.16,268.50");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=272.31,331.49");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=263.29,241.84");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=246.72,294.18");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=235.90,205.11");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=321.94,135.47");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=312.87,318.13");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=387.04,268.39");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=304.92,248.11");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=344.19,205.45");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=313.60,148.35");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=288.34,221.60");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=339.34,316.00");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=357.71,313.63");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=377.13,355.89");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=293.70,393.21");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=339.71,294.43");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=367.90,146.15");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=245.13,234.17");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=222.41,238.25");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=269.08,179.39");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=245.84,311.26");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=305.70,176.07");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=294.94,308.33");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=319.63,340.94");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=282.64,336.00");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=370.79,130.00");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=389.76,149.14");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=315.95,105.54");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=365.88,235.21");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=399.54,265.87");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=344.95,395.59");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=318.01,388.77");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=305.54,325.16");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=266.29,196.60");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=215.66,206.74");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=253.59,255.14");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=281.36,229.84");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=349.79,225.59");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=324.12,146.78");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=245.84,264.25");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=319.63,262.56");
    }

}

