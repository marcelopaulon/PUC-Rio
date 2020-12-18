
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn8-4
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
        @display("p=581.00,391.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=577.40,413.98");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=548.34,455.54");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=457.56,469.96");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=382.32,460.67");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=382.26,437.17");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=294.52,416.96");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=315.30,442.01");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=284.78,450.95");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=240.83,495.78");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=197.47,506.59");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=211.19,425.48");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=158.81,450.03");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=156.02,484.01");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=196.01,470.54");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=192.21,446.98");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=201.41,394.64");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=235.85,329.44");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=265.24,266.21");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=175.98,266.39");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=174.26,281.98");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=105.15,318.64");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=131.46,342.72");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=175.95,293.39");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=96.34,242.17");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=601.61,345.77");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=555.84,391.52");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=511.30,443.79");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=472.37,427.79");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=386.12,485.68");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=426.36,379.98");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=336.58,342.42");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=386.59,474.07");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=271.35,390.42");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=267.17,485.29");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=220.41,502.05");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=127.49,475.46");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=115.43,519.42");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=187.09,459.57");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=163.18,416.89");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=192.46,521.15");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=218.68,394.27");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=221.81,362.03");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=234.81,208.86");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=211.66,282.05");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=237.43,313.42");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=174.52,339.81");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=74.54,281.06");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=131.97,299.85");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=54.87,264.12");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=607.52,376.22");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=609.33,334.18");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=525.02,399.79");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=439.63,523.14");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=386.19,505.60");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=397.13,471.02");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=364.01,448.93");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=383.41,420.61");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=271.00,452.19");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=206.25,529.70");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=205.44,588.44");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=129.33,409.82");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=161.30,461.31");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=159.95,501.81");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=188.20,492.60");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=154.31,386.24");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=215.50,336.45");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=251.83,330.92");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=255.96,353.56");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=183.17,345.30");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=201.24,251.92");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=181.99,377.33");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=152.98,313.19");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=186.77,304.75");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=146.80,253.54");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=555.19,443.39");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=572.58,426.86");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=520.98,478.54");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=525.51,447.48");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=443.24,504.83");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=421.40,369.43");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=316.12,327.23");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=333.92,436.00");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=206.46,436.69");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=242.21,463.73");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=215.68,512.84");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=257.69,417.50");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=172.42,425.87");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=190.99,401.48");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=172.26,437.38");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=121.22,439.81");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=123.19,399.88");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=262.23,395.50");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=227.29,260.61");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=156.16,244.95");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=194.22,269.04");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=92.31,367.83");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=118.97,359.86");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=194.25,283.88");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=27.82,297.09");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=569.95,377.02");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=536.06,397.51");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=538.70,424.90");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=398.23,424.86");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=404.52,509.55");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=407.51,451.47");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=221.71,372.32");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=315.11,459.22");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=282.94,414.30");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=257.08,523.10");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=176.39,512.62");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=206.23,462.10");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=140.05,451.07");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=137.96,484.01");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=226.25,482.11");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=268.94,415.10");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=237.24,400.90");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=210.71,324.59");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=242.99,279.72");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=109.91,287.99");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=237.22,346.50");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=36.68,349.21");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=194.65,370.29");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=204.40,202.77");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=97.98,259.88");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=593.96,428.88");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=657.37,447.48");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=577.81,465.15");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=415.83,498.79");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=372.12,559.44");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=368.61,339.15");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=295.54,438.72");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=258.13,495.52");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=287.39,548.65");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=245.10,452.93");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=120.30,500.11");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=220.45,416.05");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=144.62,410.27");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=206.85,560.36");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=106.47,504.75");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=236.38,386.84");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=191.55,385.71");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=281.20,341.77");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=255.21,261.54");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=186.30,239.02");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=194.01,329.15");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=82.26,311.32");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=114.77,279.06");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=249.96,243.22");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=74.52,259.52");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=620.23,394.98");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=541.81,333.45");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=632.38,422.50");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=440.85,457.26");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=438.77,469.06");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=324.81,462.33");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=290.49,470.87");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=316.31,470.30");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=328.69,421.65");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=314.44,527.41");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=200.42,482.55");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=267.08,462.66");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=68.00,442.40");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=177.83,414.11");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=263.94,515.46");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=222.76,432.60");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=242.00,372.44");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=221.89,328.28");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=270.89,287.47");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=197.52,343.92");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=163.20,343.31");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=160.46,375.80");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=142.94,332.29");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=212.21,304.60");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=80.27,238.27");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=564.54,311.64");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=558.59,471.02");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=544.12,409.44");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=443.12,558.67");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=347.67,524.90");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=382.35,404.76");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=288.38,318.52");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=311.13,480.25");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=349.62,452.36");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=220.43,561.06");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=243.21,475.18");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=291.03,427.25");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=161.00,439.89");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=142.31,523.77");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=190.25,429.80");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=257.71,454.31");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=222.00,313.22");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=287.45,368.45");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=307.33,204.57");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=159.81,320.97");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=100.89,345.00");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=123.57,308.44");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=105.93,354.28");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=264.28,331.15");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=118.41,185.20");
    }

}

