
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn4-0
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
        @display("p=487.00,486.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=512.31,539.94");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=448.94,564.85");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=548.47,524.06");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=499.86,548.15");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=408.21,551.17");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=443.97,535.33");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=419.78,448.42");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=458.99,443.73");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=480.65,452.11");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=565.74,448.73");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=582.35,459.09");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=530.94,460.96");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=565.38,432.75");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=520.99,502.04");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=516.11,477.71");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=577.00,501.29");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=604.41,444.75");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=601.03,418.10");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=642.65,406.01");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=494.97,394.55");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=461.41,381.19");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=453.41,396.47");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=388.95,461.52");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=292.86,486.97");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=248.00,538.87");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=204.55,452.14");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=197.07,461.08");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=135.60,418.06");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=73.22,432.37");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=66.15,393.00");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=58.59,436.54");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=31.77,521.22");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=17.75,497.19");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=51.40,516.56");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=61.44,466.22");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=57.66,486.36");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=65.21,500.05");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=109.23,425.31");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=141.36,398.74");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=187.36,430.32");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=259.50,383.18");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=344.92,385.29");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=311.90,332.20");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=285.19,316.25");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=246.02,365.95");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=304.52,378.04");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=375.28,349.79");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=394.48,325.60");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=423.50,263.63");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=482.58,528.97");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=541.35,546.74");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=413.77,581.05");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=583.96,533.04");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=475.40,496.62");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=449.32,491.89");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=393.57,538.08");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=381.31,380.50");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=449.58,406.34");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=533.39,491.93");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=589.43,522.65");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=620.18,506.01");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=543.89,433.04");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=536.71,390.85");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=533.22,478.38");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=564.34,477.40");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=596.69,475.52");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=634.97,464.64");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=619.51,420.30");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=651.37,414.06");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=510.55,468.53");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=445.76,375.11");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=468.87,389.64");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=442.39,472.24");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=322.91,478.70");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=215.39,578.54");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=214.53,425.73");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=213.14,457.45");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=175.88,508.62");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=133.19,470.35");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=40.37,342.83");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=48.32,410.75");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=0.22,431.94");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=70.70,540.10");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=51.71,587.19");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=97.16,423.16");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=100.51,570.54");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=32.90,499.92");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=59.67,340.82");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=82.20,475.24");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=175.49,365.61");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=289.93,371.95");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=285.55,388.64");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=344.55,324.01");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=241.64,252.27");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=233.50,435.16");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=255.58,438.43");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=395.45,293.26");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=343.48,360.42");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=368.00,243.71");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=551.63,477.08");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=563.91,622.65");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=446.61,582.24");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=598.95,564.66");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=533.51,513.18");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=377.62,540.71");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=454.13,549.29");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=411.81,440.17");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=399.02,478.53");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=453.24,502.30");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=592.80,488.28");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=559.56,525.54");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=555.86,452.60");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=658.69,440.15");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=544.17,419.07");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=489.90,414.37");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=636.36,559.60");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=570.52,391.15");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=689.15,431.60");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=675.32,471.46");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=520.20,403.03");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=510.57,390.20");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=414.88,419.46");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=382.02,512.20");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=256.54,469.08");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=287.04,520.93");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=225.69,377.33");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=249.94,490.20");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=189.48,493.00");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=102.80,352.69");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=97.54,378.10");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=68.07,449.40");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=60.44,529.14");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=10.30,460.99");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=80.06,489.53");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=123.61,450.78");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=70.40,473.80");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=105.54,478.42");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=81.02,510.47");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=160.52,381.26");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=223.15,431.59");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=201.27,306.08");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=343.59,335.38");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=303.36,256.57");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=321.71,339.61");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=251.11,272.56");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=319.27,364.42");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=472.64,338.74");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=384.38,336.31");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=361.28,338.57");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=464.62,482.75");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=570.72,601.46");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=408.67,590.51");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=549.92,509.89");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=478.46,471.80");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=443.61,517.43");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=434.23,561.59");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=394.92,437.03");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=431.08,473.11");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=513.70,438.15");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=560.13,412.69");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=614.90,382.49");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=563.23,465.21");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=635.10,490.42");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=487.35,497.23");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=580.79,547.95");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=537.22,531.47");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=559.34,384.17");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=588.92,439.95");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=670.27,378.08");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=401.62,371.04");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=428.06,431.05");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=476.82,399.49");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=330.20,515.80");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=335.39,461.35");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=278.72,509.18");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=176.32,455.93");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=219.04,528.66");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=144.29,480.50");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=96.25,455.93");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=39.04,378.78");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=37.70,442.62");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=39.67,576.30");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=100.65,500.22");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=56.49,540.94");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=51.77,446.34");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=90.81,508.09");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=26.26,491.36");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=119.04,403.97");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=176.74,382.92");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=222.82,485.22");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=221.49,451.55");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=341.47,370.64");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=274.59,421.55");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=259.70,250.27");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=230.13,345.76");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=299.03,412.65");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=387.72,285.60");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=360.69,367.73");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=446.88,346.72");
    }

}

