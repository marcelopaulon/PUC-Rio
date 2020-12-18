
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn12-2
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
        @display("p=297.00,325.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=360.84,386.47");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=388.01,447.97");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=334.27,411.73");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=244.21,411.22");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=231.86,384.96");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=264.96,402.26");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=334.05,438.57");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=356.28,491.26");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=386.44,505.86");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=400.15,579.74");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=405.11,546.57");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=387.60,536.62");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=404.90,497.66");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=347.79,474.34");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=364.67,453.32");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=437.15,495.97");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=328.06,377.49");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=306.72,308.91");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=450.22,478.91");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=343.92,501.77");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=218.86,397.58");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=238.04,370.03");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=279.97,386.30");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=244.99,433.92");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=373.17,471.91");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=462.24,509.37");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=308.93,583.75");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=408.40,598.88");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=417.55,485.03");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=435.66,542.47");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=315.57,442.14");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=330.54,481.80");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=417.85,464.35");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=289.43,340.30");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=358.91,334.21");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=360.99,509.07");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=296.94,389.29");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=157.64,432.37");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=256.90,313.12");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=318.32,426.70");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=314.23,405.37");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=271.72,537.59");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=436.63,437.20");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=306.01,573.06");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=492.52,547.65");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=421.10,570.67");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=380.83,436.46");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=292.20,469.24");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=362.49,468.14");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=503.28,469.11");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=317.94,323.48");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=404.02,302.59");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=316.58,514.33");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=381.87,358.53");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=278.64,350.01");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=144.50,419.90");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=219.25,387.26");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=371.85,407.53");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=424.94,536.52");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=463.62,487.42");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=405.75,627.51");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=389.52,580.01");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=356.69,545.26");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=431.19,452.19");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=303.59,398.37");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=391.92,474.26");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=524.56,517.35");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=280.06,423.14");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=326.77,294.07");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=400.30,454.33");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=361.04,481.55");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=236.26,446.67");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=289.86,416.74");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=237.23,457.18");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=328.03,356.50");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=370.67,488.43");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=395.84,409.53");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=379.92,525.60");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=425.36,611.54");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=348.06,519.59");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=446.69,423.60");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=392.71,462.65");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=369.82,501.21");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=481.54,520.62");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=363.30,349.29");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=387.26,417.57");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=365.76,421.13");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=353.94,441.37");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=225.43,426.44");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=242.49,337.96");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=188.12,355.04");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=399.71,509.23");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=279.12,517.30");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=381.21,487.98");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=455.64,617.89");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=400.42,618.48");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=356.92,560.20");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=346.04,572.92");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=350.18,530.93");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=392.13,376.79");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=520.15,506.87");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=297.30,244.80");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=426.77,408.08");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=405.05,350.63");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=345.23,491.04");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=246.55,390.31");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=206.79,375.50");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=205.88,401.49");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=309.79,488.16");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=406.53,565.44");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=338.62,530.49");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=414.24,530.63");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=315.29,529.88");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=340.87,590.65");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=451.72,585.34");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=388.71,517.79");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=405.16,376.95");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=451.42,488.99");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=276.21,401.19");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=294.23,376.60");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=378.17,370.04");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=265.75,352.97");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=241.56,400.68");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=220.74,294.51");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=260.59,391.51");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=335.46,462.57");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=400.49,555.51");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=430.50,423.01");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=398.71,534.04");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=335.21,601.83");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=434.31,474.32");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=373.88,591.61");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=393.80,488.85");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=345.06,455.68");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=495.97,537.81");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=323.81,314.91");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=335.26,394.79");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=431.97,382.03");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=272.54,414.87");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=233.28,493.37");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=313.36,332.62");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=340.15,378.96");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=300.53,415.26");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=312.18,453.19");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=480.44,490.22");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=382.64,562.46");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=426.79,642.92");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=363.35,578.84");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=354.24,420.47");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=291.96,441.21");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=349.34,395.72");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=494.48,513.59");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=294.68,314.34");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=394.29,360.68");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=407.41,411.58");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=293.60,486.60");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=247.84,351.32");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=141.58,380.13");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=196.72,443.85");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=294.85,452.07");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=383.21,457.52");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=423.66,594.44");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=427.23,582.13");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=455.07,536.58");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=413.89,553.97");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=336.53,513.50");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=311.22,476.55");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=445.80,461.94");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=461.31,459.98");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=363.32,260.38");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=316.37,298.58");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=404.37,440.23");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=346.69,338.65");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=205.00,350.10");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=320.71,397.00");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=207.69,419.86");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=326.85,456.05");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=306.68,434.75");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=306.16,498.52");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=475.28,643.38");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=368.61,564.21");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=370.54,535.40");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=417.02,514.68");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=322.88,501.79");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=347.05,430.76");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=410.29,472.41");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=210.08,283.48");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=318.72,367.88");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=440.76,387.93");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=266.83,383.19");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=196.02,429.55");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=169.67,369.53");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=280.08,328.76");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=380.12,390.72");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=330.03,493.34");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=456.01,448.29");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=447.53,550.99");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=424.22,555.68");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=444.91,593.28");
    }

}

