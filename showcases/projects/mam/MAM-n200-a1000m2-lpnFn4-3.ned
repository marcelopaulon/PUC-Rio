
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn4-3
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
        @display("p=498.00,290.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=411.54,246.92");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=432.39,170.52");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=446.39,264.87");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=524.93,250.59");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=594.50,298.33");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=620.29,300.90");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=637.67,252.64");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=626.48,331.16");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=589.82,392.43");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=593.42,352.83");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=571.16,315.12");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=582.39,371.57");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=553.12,288.62");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=515.95,297.28");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=554.82,243.67");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=515.27,323.55");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=641.94,396.26");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=567.88,392.96");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=485.88,340.52");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=431.19,337.02");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=435.03,301.03");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=368.15,277.73");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=340.86,358.50");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=375.04,332.13");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=374.25,372.87");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=365.72,443.90");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=378.70,453.76");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=338.47,435.05");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=296.32,362.93");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=322.70,299.16");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=280.00,324.66");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=288.68,352.02");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=306.44,300.92");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=283.50,374.67");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=259.43,380.58");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=270.58,390.71");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=283.05,416.43");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=294.58,419.02");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=266.64,413.46");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=316.82,399.69");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=305.13,389.52");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=346.20,306.12");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=342.49,380.20");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=240.23,429.90");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=253.20,419.93");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=237.67,412.31");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=162.48,459.37");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=233.68,505.06");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=254.63,437.63");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=423.36,237.66");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=400.45,252.93");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=442.93,186.42");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=443.98,274.79");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=558.57,271.02");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=602.05,322.27");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=632.43,274.27");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=617.94,350.01");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=656.86,346.71");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=658.54,363.83");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=604.93,408.61");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=546.38,308.23");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=563.61,462.67");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=591.12,365.33");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=502.43,313.23");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=580.58,279.51");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=551.45,404.25");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=661.81,428.08");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=549.50,384.36");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=440.19,381.50");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=403.18,347.88");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=466.96,336.00");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=351.66,272.43");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=355.23,338.56");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=409.27,377.06");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=381.24,298.54");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=387.54,465.86");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=397.05,453.26");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=338.62,509.34");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=316.76,325.30");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=291.80,258.32");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=193.03,321.92");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=294.01,341.71");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=327.78,354.89");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=261.09,336.87");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=177.35,427.80");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=290.10,403.92");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=326.68,457.93");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=345.30,457.88");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=289.49,432.25");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=385.69,392.21");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=364.91,393.45");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=428.33,281.20");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=361.17,424.77");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=287.84,390.42");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=168.97,422.24");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=309.54,343.02");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=98.47,505.06");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=217.42,495.13");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=193.91,393.18");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=558.18,226.53");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=457.50,247.78");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=517.60,220.60");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=458.38,346.46");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=445.70,214.26");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=535.80,295.92");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=646.67,357.01");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=632.98,228.99");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=644.95,320.58");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=517.71,459.22");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=689.56,337.90");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=488.45,301.97");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=671.08,344.81");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=544.96,279.68");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=492.16,349.06");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=623.36,244.39");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=457.36,395.77");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=570.23,438.89");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=543.92,355.86");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=580.54,338.85");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=421.26,353.11");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=370.46,265.10");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=346.58,244.26");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=330.64,275.89");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=406.83,264.50");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=391.59,374.96");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=342.30,488.31");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=385.23,544.16");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=356.15,491.41");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=268.19,344.24");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=338.86,286.08");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=239.96,301.07");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=242.90,398.79");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=328.34,337.33");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=305.65,316.27");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=284.30,302.32");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=272.75,433.79");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=222.49,450.04");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=257.73,349.16");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=320.26,428.80");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=386.64,428.23");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=329.44,370.05");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=349.84,290.59");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=421.98,422.62");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=202.39,432.54");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=304.52,494.58");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=206.48,364.22");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=176.24,490.03");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=281.45,472.83");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=171.58,389.52");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=586.83,257.38");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=406.34,275.53");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=463.59,206.65");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=468.71,277.73");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=524.00,228.52");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=662.35,246.76");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=700.47,349.85");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=677.69,286.79");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=662.35,332.87");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=575.72,430.29");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=603.50,353.33");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=559.90,315.66");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=546.14,437.23");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=620.27,323.10");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=545.09,232.13");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=580.61,265.26");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=558.59,373.56");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=607.79,419.05");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=500.38,428.80");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=426.85,263.16");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=479.39,349.27");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=372.59,239.52");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=378.85,248.12");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=382.98,321.97");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=409.03,289.35");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=337.06,415.31");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=351.72,470.30");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=428.64,396.00");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=291.80,457.52");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=241.28,364.01");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=346.04,327.09");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=288.35,312.33");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=229.41,275.65");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=235.43,341.80");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=278.15,356.02");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=191.70,375.68");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=318.62,465.15");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=272.57,464.37");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=218.39,391.74");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=228.78,482.50");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=326.23,383.48");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=300.09,329.56");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=277.37,252.59");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=367.19,406.99");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=167.50,447.59");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=234.12,450.35");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=258.29,461.66");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=168.28,471.06");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=274.87,562.62");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=262.79,472.11");
    }

}

