
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn8_7
{
    parameters:
        @display("bgb=1000,1000;bgg=100,1,grey95;bgu=m");
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
        @display("p=154.83,174.97");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=213.71,135.21");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=276.70,162.51");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=329.99,88.95");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=331.57,148.07");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=361.98,114.91");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=421.17,180.54");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=438.37,149.86");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=439.35,180.36");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=440.97,223.22");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=463.41,266.34");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=543.23,303.68");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=602.52,332.37");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=601.58,289.56");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=613.68,312.19");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=602.00,310.94");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=584.13,290.78");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=631.40,303.82");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=613.91,261.94");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=558.40,206.99");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=536.50,247.21");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=670.84,245.52");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=640.65,245.14");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=604.43,236.11");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=67.84,141.94");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=145.52,170.82");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=204.33,108.68");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=263.15,180.71");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=241.45,115.07");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=314.72,102.60");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=305.70,82.22");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=433.91,164.60");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=490.22,164.06");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=410.77,90.39");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=475.33,164.53");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=398.21,266.69");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=530.45,306.07");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=648.14,304.81");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=668.67,314.64");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=636.80,346.05");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=616.36,299.14");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=555.41,266.29");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=582.22,370.70");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=651.33,232.75");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=521.28,231.31");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=448.64,284.23");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=681.40,343.82");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=613.63,165.58");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=630.17,222.87");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=83.44,109.83");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=63.07,202.52");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=213.49,73.67");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=259.22,144.57");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=281.03,132.95");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=317.87,74.63");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=349.72,114.71");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=398.27,195.88");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=441.57,194.98");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=476.27,133.08");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=377.09,198.71");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=536.97,292.35");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=508.76,273.57");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=541.73,399.16");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=599.18,299.49");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=538.13,365.79");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=520.23,342.72");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=606.43,210.33");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=591.42,379.78");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=660.07,287.80");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=552.21,137.36");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=488.72,323.68");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=722.46,229.74");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=629.08,241.95");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=584.03,235.12");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=103.83,180.75");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=122.25,181.93");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=194.01,206.44");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=254.76,191.04");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=370.42,92.54");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=428.53,126.62");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=353.62,134.89");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=480.93,259.77");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=440.76,114.84");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=424.60,138.99");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=424.07,220.00");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=448.08,260.37");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=514.27,308.58");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=583.91,332.96");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=589.85,263.44");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=693.02,346.02");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=563.35,348.35");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=503.53,310.46");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=673.54,277.52");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=698.97,244.99");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=612.62,223.37");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=553.09,317.07");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=703.06,195.71");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=676.66,194.29");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=602.08,161.37");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=68.38,53.99");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=129.32,96.58");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=214.20,149.63");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=213.13,235.08");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=344.05,75.31");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=330.75,127.56");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=341.44,121.80");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=410.44,167.65");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=533.40,148.45");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=421.96,164.35");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=439.47,268.45");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=537.42,230.10");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=534.89,317.21");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=646.05,270.92");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=563.68,239.41");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=561.03,325.37");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=531.75,276.97");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=579.33,345.43");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=601.72,344.36");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=706.66,257.65");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=565.66,178.16");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=518.61,261.11");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=692.00,205.31");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=687.19,216.67");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=574.45,320.48");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=162.01,43.68");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=129.97,198.26");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=214.69,180.83");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=322.42,111.04");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=234.24,61.73");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=370.31,163.49");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=371.66,177.08");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=510.45,135.56");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=415.64,111.64");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=453.12,148.04");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=360.06,216.20");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=474.95,302.34");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=544.04,273.73");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=572.13,298.45");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=601.41,277.71");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=703.64,329.01");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=595.30,212.85");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=640.38,226.71");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=619.87,382.53");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=578.43,169.16");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=573.26,124.53");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=543.27,207.71");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=647.57,213.52");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=739.21,261.09");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=671.21,171.67");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=131.85,86.21");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=249.17,170.47");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=235.78,165.01");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=243.65,182.99");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=347.49,150.40");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=331.80,164.44");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=403.50,130.21");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=457.40,204.81");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=431.36,241.56");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=467.48,191.13");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=380.74,252.50");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=467.11,179.66");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=540.46,387.54");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=695.21,302.46");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=630.01,373.24");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=672.79,354.14");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=657.18,382.05");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=556.23,279.59");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=697.61,262.84");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=619.67,231.40");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=511.91,244.05");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=571.19,204.46");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=711.63,226.97");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=624.80,321.56");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=637.51,204.09");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=114.98,114.03");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=132.41,179.65");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=236.03,152.99");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=271.37,146.93");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=289.62,39.30");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=317.61,125.58");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=355.85,33.94");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=327.69,209.75");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=457.43,109.55");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=509.12,123.75");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=431.38,204.90");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=448.52,323.58");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=566.83,270.65");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=627.99,332.02");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=655.40,274.63");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=708.84,303.23");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=523.51,330.94");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=557.35,224.02");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=695.21,363.09");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=589.69,244.71");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=554.11,170.33");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=530.18,168.96");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=603.85,265.92");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=639.27,314.28");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=556.53,292.22");
    }

}

