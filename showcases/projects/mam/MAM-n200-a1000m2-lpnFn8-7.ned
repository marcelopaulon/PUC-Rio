
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn8-7
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
        @display("p=785.00,709.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=757.57,614.94");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=818.16,587.79");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=774.53,592.78");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=712.08,548.38");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=769.03,552.54");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=777.89,541.42");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=817.49,617.80");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=833.61,626.49");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=884.98,559.11");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=877.22,568.61");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=804.31,576.93");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=828.74,583.12");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=864.35,547.11");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=809.11,537.93");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=785.17,443.09");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=847.37,396.13");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=811.83,454.00");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=888.96,439.58");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=936.62,405.25");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=890.72,380.62");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=864.32,386.14");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=786.89,417.40");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=790.75,402.42");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=775.37,495.08");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=792.60,734.52");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=745.40,679.73");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=862.78,603.88");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=784.08,600.19");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=772.20,505.93");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=720.86,518.12");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=768.39,525.61");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=780.45,640.17");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=815.06,632.51");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=913.03,554.24");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=902.18,648.16");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=822.15,600.74");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=778.87,524.38");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=895.86,616.99");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=822.18,439.14");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=752.52,496.69");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=881.66,346.17");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=855.79,534.01");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=876.31,449.98");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=971.79,368.14");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=901.08,425.46");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=838.37,443.85");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=804.04,437.58");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=808.23,471.78");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=720.81,498.83");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=824.16,712.94");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=720.89,606.16");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=859.80,573.18");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=784.73,654.73");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=739.07,530.82");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=778.70,558.25");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=749.83,453.82");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=801.85,550.85");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=776.78,581.64");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=804.30,510.78");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=911.80,505.42");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=726.52,564.08");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=831.01,570.17");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=933.79,603.45");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=831.71,533.11");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=798.83,424.24");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=868.76,475.91");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=830.57,395.06");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=855.82,479.88");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=967.21,389.15");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=958.88,322.02");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=868.19,358.44");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=834.45,354.65");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=760.37,458.63");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=724.89,443.84");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=771.32,807.60");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=841.72,602.97");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=810.51,598.27");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=752.02,573.51");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=703.42,505.28");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=764.83,563.24");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=743.27,554.27");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=801.17,529.63");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=860.97,697.43");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=892.94,548.42");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=884.38,581.26");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=803.35,670.68");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=731.68,605.97");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=851.82,503.03");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=823.41,545.01");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=841.96,432.42");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=860.44,370.00");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=785.59,500.64");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=934.64,372.30");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=931.87,393.41");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=834.91,422.51");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=820.38,304.47");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=810.84,392.62");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=761.49,367.21");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=853.74,552.27");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=699.97,693.80");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=748.70,623.27");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=858.45,594.32");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=750.96,546.03");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=695.00,470.59");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=808.18,499.60");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=749.33,593.21");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=821.73,563.11");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=853.29,715.20");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=910.01,579.65");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=876.55,632.09");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=816.47,676.14");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=785.51,614.19");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=872.73,501.31");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=797.61,494.76");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=728.56,455.02");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=779.58,455.95");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=836.34,476.64");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=901.49,340.56");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=917.20,388.14");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=954.90,406.86");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=772.57,424.03");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=800.01,408.15");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=793.74,477.17");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=697.02,541.46");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=769.73,771.03");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=718.02,630.87");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=843.82,636.45");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=867.18,621.10");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=658.12,473.47");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=788.63,521.88");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=842.90,486.94");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=842.05,583.76");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=915.01,665.52");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=850.82,520.73");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=893.01,570.60");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=737.06,585.41");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=874.64,610.69");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=901.80,503.55");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=841.41,559.15");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=716.75,508.11");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=773.52,404.13");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=799.95,454.01");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=928.77,458.92");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=937.51,500.93");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=909.71,463.33");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=882.01,388.54");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=739.71,433.56");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=779.15,392.01");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=750.96,478.45");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=770.29,703.88");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=718.48,595.36");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=764.10,636.02");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=769.47,645.94");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=707.54,595.21");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=780.62,477.66");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=865.52,531.22");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=754.97,648.99");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=837.92,657.73");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=896.37,559.98");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=903.21,546.91");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=759.53,513.42");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=912.93,530.38");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=849.73,471.65");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=787.30,549.30");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=753.65,436.98");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=892.12,390.84");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=745.78,400.03");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=847.75,422.40");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=910.09,451.76");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=962.22,424.69");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=862.22,399.33");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=730.84,409.89");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=879.69,405.87");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=767.57,469.93");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=813.79,648.41");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=686.54,658.47");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=791.66,625.32");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=734.05,651.49");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=649.86,483.85");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=727.22,533.33");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=725.06,479.43");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=727.40,619.25");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=842.18,620.53");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=890.39,474.46");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=871.24,582.93");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=808.82,561.82");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=800.66,658.48");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=925.68,572.04");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=838.76,521.62");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=829.02,491.32");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=850.44,365.99");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=832.80,460.16");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=938.31,481.96");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=924.74,362.44");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=922.37,322.71");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=955.07,390.18");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=742.06,341.08");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=787.04,373.41");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=716.36,568.48");
    }

}

