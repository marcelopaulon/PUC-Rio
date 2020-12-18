
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn12-4
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
        @display("p=352.00,511.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=426.41,545.40");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=378.97,493.52");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=391.91,477.60");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=327.67,464.63");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=361.97,445.95");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=401.49,392.95");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=430.32,320.25");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=442.23,306.57");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=402.64,269.03");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=374.44,295.81");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=389.67,289.59");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=359.96,261.71");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=342.78,294.16");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=337.28,285.04");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=315.98,199.25");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=356.87,217.08");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=334.02,531.78");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=412.53,537.44");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=377.04,568.07");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=406.98,420.16");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=320.68,499.72");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=340.87,391.30");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=373.37,383.60");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=381.25,326.34");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=424.70,299.52");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=342.99,219.92");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=415.52,219.00");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=410.07,281.46");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=366.49,162.25");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=341.28,348.64");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=396.01,227.22");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=356.61,169.92");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=391.86,166.39");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=347.67,498.80");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=398.99,451.68");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=371.58,485.46");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=419.84,450.11");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=319.61,420.28");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=365.09,544.23");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=408.63,406.09");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=509.46,282.38");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=518.70,315.24");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=414.76,334.17");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=393.72,377.74");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=394.21,249.68");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=284.31,288.68");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=302.59,221.45");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=337.75,253.43");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=222.84,213.61");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=349.98,252.52");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=376.13,517.36");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=474.24,510.31");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=412.02,474.66");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=462.41,534.01");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=321.85,455.45");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=384.08,452.62");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=467.61,429.87");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=459.00,277.30");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=493.27,336.91");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=465.10,308.33");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=355.02,274.89");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=389.30,274.92");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=363.80,240.56");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=382.16,246.04");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=308.70,285.88");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=342.52,204.45");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=435.06,179.41");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=384.94,504.34");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=368.71,469.86");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=395.90,411.79");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=354.41,521.18");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=277.88,448.90");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=332.83,419.77");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=443.66,476.93");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=362.03,305.29");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=440.80,296.00");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=486.89,278.79");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=330.95,364.20");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=387.42,315.54");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=323.93,293.89");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=437.29,278.03");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=338.46,316.67");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=324.49,174.56");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=381.22,207.81");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=334.75,448.37");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=389.57,607.29");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=429.41,475.19");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=352.53,432.22");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=381.57,438.57");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=300.89,415.02");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=312.66,437.55");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=465.84,337.51");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=464.35,267.21");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=384.90,348.46");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=371.32,274.23");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=370.99,335.64");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=409.72,252.89");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=304.98,322.38");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=352.67,371.61");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=299.56,148.46");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=403.59,173.24");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=328.44,548.59");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=412.38,557.51");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=383.15,426.35");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=342.14,516.28");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=297.83,539.05");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=380.57,542.95");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=427.01,357.18");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=456.05,344.98");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=475.49,264.83");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=465.98,192.18");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=354.63,314.94");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=388.83,263.51");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=300.33,194.05");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=275.94,230.98");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=321.49,370.95");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=320.83,162.30");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=368.15,190.50");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=266.12,527.51");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=379.06,615.36");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=393.35,495.04");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=339.76,401.58");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=341.90,469.43");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=287.86,413.22");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=422.66,435.91");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=436.32,352.55");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=486.49,265.27");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=441.80,336.63");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=400.97,306.66");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=373.68,256.18");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=382.41,229.62");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=359.48,349.51");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=268.04,216.30");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=242.15,263.40");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=411.03,189.60");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=425.71,522.60");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=498.04,475.86");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=370.44,586.74");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=392.99,523.64");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=296.43,455.36");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=392.23,436.06");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=412.82,385.00");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=528.74,311.10");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=409.91,320.95");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=443.75,242.34");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=297.53,291.76");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=415.08,242.68");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=323.72,312.58");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=302.07,353.02");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=321.83,225.01");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=365.97,118.10");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=357.50,292.99");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=371.48,419.70");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=405.19,614.88");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=435.34,415.82");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=423.74,396.43");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=365.68,431.48");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=407.07,464.47");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=350.88,413.29");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=483.66,358.77");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=461.43,221.99");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=450.26,255.20");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=400.07,286.40");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=375.86,308.25");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=412.22,344.53");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=331.51,262.58");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=291.01,264.65");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=305.14,241.09");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=347.11,148.50");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=346.45,531.70");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=407.26,568.53");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=312.83,492.87");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=363.60,557.49");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=404.02,514.78");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=322.85,381.23");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=359.45,387.88");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=464.30,396.01");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=400.51,333.26");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=344.83,327.86");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=460.64,252.87");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=390.95,329.66");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=268.01,257.32");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=375.26,218.07");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=425.67,238.80");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=277.45,208.53");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=288.79,175.07");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=330.94,564.27");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=415.87,517.70");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=370.56,500.81");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=373.09,455.20");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=287.26,495.22");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=299.62,509.14");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=331.74,332.12");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=395.41,348.22");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=450.11,272.60");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=424.22,210.11");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=414.46,206.22");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=440.94,259.04");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=354.16,236.22");
    }

}

