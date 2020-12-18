
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn12-6
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
        @display("p=366.00,296.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=370.40,258.80");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=434.35,209.14");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=447.65,191.57");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=456.14,184.37");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=402.86,242.47");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=399.84,165.12");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=340.65,173.51");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=418.49,233.94");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=486.93,251.48");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=415.34,182.06");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=497.70,202.04");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=552.51,151.89");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=599.31,67.33");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=643.63,45.46");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=678.51,37.45");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=578.09,59.32");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=349.24,312.47");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=324.23,275.33");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=474.51,246.22");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=455.71,159.96");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=500.04,233.72");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=374.02,159.15");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=424.34,208.41");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=349.88,182.23");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=355.24,252.14");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=473.94,185.47");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=397.34,207.40");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=513.43,203.17");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=570.00,135.18");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=538.34,116.40");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=698.86,43.85");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=622.12,51.89");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=586.18,50.95");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=356.73,302.10");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=358.81,204.37");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=526.75,176.26");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=422.80,168.82");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=428.05,117.95");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=349.63,238.64");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=454.35,123.67");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=302.00,168.05");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=419.92,143.02");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=466.05,317.08");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=498.68,172.52");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=454.18,249.79");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=566.92,148.36");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=533.82,94.08");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=656.87,98.06");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=670.80,69.58");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=557.89,63.32");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=305.31,320.60");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=301.04,268.07");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=502.98,274.66");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=414.20,268.06");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=417.77,110.32");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=425.71,191.57");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=404.03,155.77");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=397.29,184.52");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=483.06,285.06");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=479.85,262.71");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=397.50,264.73");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=578.05,196.19");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=608.17,211.85");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=621.84,94.05");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=635.95,64.81");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=662.86,21.46");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=588.89,26.25");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=443.62,298.92");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=322.43,331.00");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=527.40,232.44");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=484.87,218.92");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=466.36,164.15");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=426.14,326.17");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=382.71,188.35");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=368.11,147.18");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=441.74,232.51");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=387.66,255.66");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=413.90,248.45");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=531.91,268.63");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=548.94,141.75");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=578.53,155.58");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=691.45,123.12");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=646.00,26.81");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=540.39,33.61");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=368.04,353.64");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=298.33,237.88");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=532.03,212.48");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=483.45,126.67");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=515.20,225.28");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=396.67,229.23");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=440.57,176.19");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=341.50,159.26");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=368.48,239.01");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=495.59,257.86");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=339.77,195.53");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=469.26,211.47");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=511.07,165.37");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=584.31,87.53");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=730.93,55.44");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=672.84,25.30");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=563.79,55.24");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=415.96,279.79");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=337.02,276.69");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=476.93,141.75");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=468.47,147.40");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=508.63,116.23");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=431.83,240.46");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=404.78,137.14");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=369.33,82.13");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=434.11,255.79");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=496.75,322.67");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=407.96,171.28");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=502.24,217.24");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=580.54,170.98");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=613.44,155.75");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=614.35,102.29");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=665.20,55.11");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=630.74,0.94");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=327.53,228.48");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=353.11,270.87");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=410.09,121.94");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=534.85,150.14");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=490.09,165.48");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=379.81,318.52");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=352.99,218.27");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=288.40,169.45");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=389.61,237.05");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=521.18,241.20");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=374.08,105.82");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=552.78,225.44");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=545.28,163.87");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=627.18,84.95");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=605.67,23.06");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=656.87,48.71");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=570.33,4.80");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=326.68,241.80");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=403.67,277.86");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=385.09,146.31");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=500.74,156.45");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=392.18,127.26");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=383.29,277.20");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=446.63,130.87");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=389.40,219.48");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=384.60,301.24");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=509.92,310.05");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=432.29,135.22");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=467.12,290.01");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=547.52,124.70");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=635.81,120.07");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=612.58,11.12");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=671.62,6.93");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=653.80,86.89");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=454.96,310.18");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=279.90,243.28");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=446.63,280.56");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=416.19,156.44");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=476.50,202.47");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=427.24,312.68");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=392.87,153.96");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=386.40,206.55");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=336.54,245.38");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=479.94,274.84");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=465.23,132.96");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=486.50,199.05");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=550.10,180.62");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=637.63,77.46");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=725.22,17.59");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=661.02,65.28");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=512.55,64.43");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=354.87,325.84");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=288.03,311.63");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=448.93,225.50");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=465.61,202.01");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=495.90,190.70");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=356.87,159.67");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=372.80,130.29");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=364.66,111.80");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=434.26,148.59");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=487.35,306.19");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=362.59,229.73");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=475.83,225.19");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=598.22,163.06");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=666.07,128.31");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=611.37,38.41");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=700.04,16.76");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=593.97,111.09");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=276.51,257.56");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=451.19,201.02");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=454.65,296.09");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=441.26,269.12");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=488.24,101.51");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=321.56,289.51");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=414.78,71.22");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=271.15,146.00");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=426.42,281.78");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=438.04,333.43");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=374.03,215.68");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=556.89,271.49");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=507.73,101.89");
    }

}

