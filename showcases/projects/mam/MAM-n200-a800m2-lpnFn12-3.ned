
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn12-3
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
        @display("p=375.00,420.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=364.63,457.01");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=383.58,524.52");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=345.99,511.12");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=376.40,470.45");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=352.75,392.20");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=354.67,358.00");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=368.15,329.63");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=352.89,285.21");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=321.72,216.23");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=293.96,223.17");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=310.94,206.12");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=376.05,252.30");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=281.89,250.89");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=304.71,181.35");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=277.09,219.23");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=225.95,205.76");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=390.60,410.46");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=424.97,411.06");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=403.10,526.76");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=356.86,567.85");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=327.15,399.49");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=327.80,380.87");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=384.67,326.66");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=334.79,282.44");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=284.47,319.72");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=353.13,219.90");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=229.31,264.59");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=341.34,139.60");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=383.31,245.39");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=294.12,204.93");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=298.95,271.92");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=272.94,126.29");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=294.64,154.38");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=423.18,479.61");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=360.11,490.92");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=296.03,548.86");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=358.26,535.00");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=373.60,515.71");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=386.15,363.79");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=349.56,268.01");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=405.35,338.85");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=378.10,379.29");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=264.79,293.12");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=334.97,184.36");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=261.22,257.59");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=341.28,341.35");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=230.45,247.01");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=283.17,171.39");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=251.61,247.27");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=168.64,226.74");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=418.08,394.34");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=456.91,438.75");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=415.07,534.61");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=330.85,558.12");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=357.50,405.97");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=366.15,374.84");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=341.95,367.70");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=423.54,316.48");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=423.55,333.40");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=340.50,213.78");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=321.33,297.40");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=336.60,199.19");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=432.36,245.84");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=356.85,313.63");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=319.76,121.05");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=213.09,287.29");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=237.48,226.83");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=431.95,440.97");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=384.36,545.42");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=372.44,611.29");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=375.54,483.45");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=344.07,539.78");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=403.03,404.15");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=324.81,368.54");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=348.30,323.48");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=304.54,239.72");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=310.94,168.14");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=216.76,228.48");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=253.41,190.03");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=290.38,265.78");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=273.28,261.10");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=261.95,179.57");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=220.10,137.65");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=209.97,171.18");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=433.84,362.67");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=446.88,424.75");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=384.82,424.56");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=277.69,472.47");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=416.68,431.91");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=311.56,430.11");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=344.16,412.73");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=343.26,302.48");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=391.92,298.83");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=364.51,163.77");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=279.40,188.94");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=372.19,179.08");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=366.59,218.75");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=255.69,236.61");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=357.20,201.55");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=315.97,195.82");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=234.06,277.55");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=360.16,431.04");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=304.85,405.58");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=432.14,496.49");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=422.60,553.52");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=348.30,553.91");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=407.95,364.42");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=372.75,440.31");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=384.22,345.94");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=358.20,331.74");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=288.72,138.17");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=327.33,312.32");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=396.88,155.04");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=378.75,311.08");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=299.60,342.78");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=304.81,145.35");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=296.69,298.06");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=203.13,205.31");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=417.27,443.30");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=446.55,437.55");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=332.14,463.13");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=324.93,432.17");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=356.71,470.88");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=364.59,394.16");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=331.93,303.22");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=298.05,379.14");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=325.16,352.62");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=261.49,227.37");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=339.93,234.86");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=344.06,245.62");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=398.53,330.31");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=353.52,238.25");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=353.49,182.66");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=262.69,203.90");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=257.15,168.82");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=320.11,387.75");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=361.96,503.04");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=390.35,508.29");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=358.64,549.24");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=334.71,388.55");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=317.76,318.30");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=311.41,416.68");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=403.18,294.02");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=265.54,323.92");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=327.48,234.19");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=297.65,192.91");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=304.88,124.06");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=377.26,161.79");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=239.76,170.66");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=240.84,186.89");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=214.98,188.96");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=208.57,139.01");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=315.23,464.28");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=329.47,516.68");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=429.14,520.38");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=369.69,552.71");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=395.58,474.14");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=402.36,382.43");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=292.72,308.60");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=369.40,319.45");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=366.29,302.89");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=319.30,241.83");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=253.00,264.35");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=313.81,277.14");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=375.79,228.12");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=197.95,255.63");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=280.22,274.62");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=208.70,247.32");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=168.53,168.29");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=468.37,408.41");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=455.40,464.34");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=295.50,498.87");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=314.76,501.09");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=304.92,477.93");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=352.50,376.71");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=337.93,314.20");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=369.67,353.45");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=409.43,255.11");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=349.12,123.98");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=327.74,157.04");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=308.35,258.89");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=418.35,267.88");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=199.09,287.00");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=288.81,236.90");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=216.88,214.25");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=259.77,139.82");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=390.77,483.35");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=308.54,519.93");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=395.43,519.57");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=311.40,530.45");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=454.38,482.71");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=356.85,443.11");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=280.43,411.73");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=439.71,396.30");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=298.47,354.31");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=273.75,143.69");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=324.94,185.74");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=394.86,165.24");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=412.28,229.49");
    }

}

