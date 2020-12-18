
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn4-9
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
        @display("p=972.00,737.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=978.33,707.59");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=906.61,736.19");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=848.18,667.03");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=837.81,702.55");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=849.99,779.26");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=824.52,789.03");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=802.98,782.36");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=844.82,804.71");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=821.72,742.85");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=778.43,655.49");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=732.97,707.72");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=774.51,671.65");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=784.47,669.57");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=857.38,708.08");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=873.11,673.12");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=929.40,675.45");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=995.96,691.81");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=982.40,672.90");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=977.71,658.82");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=982.52,607.02");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=934.83,524.12");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=986.14,550.85");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=975.16,640.54");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=947.91,690.37");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=830.44,610.55");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=830.55,514.00");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=795.84,458.20");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=837.68,464.82");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=825.69,477.28");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=880.09,420.83");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=921.13,430.08");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=930.59,348.82");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=910.05,363.72");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=864.85,317.44");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=863.61,331.10");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=833.94,406.07");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=806.32,369.23");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=808.67,283.86");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=799.06,343.76");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=820.58,324.85");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=773.77,377.31");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=796.22,394.71");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=739.92,405.58");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=735.20,351.83");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=749.92,357.99");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=716.61,400.68");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=681.37,412.43");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=652.16,474.19");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=599.71,494.76");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=932.80,811.84");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=938.31,737.16");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=840.08,734.20");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=864.38,602.82");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=878.84,710.66");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=771.77,740.35");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=875.31,799.45");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=803.70,723.33");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=809.74,872.73");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=818.88,725.12");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=824.05,585.61");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=760.06,679.35");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=839.95,601.52");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=801.71,648.71");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=851.96,680.93");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=835.49,685.44");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=945.10,674.87");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=966.18,765.86");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=947.17,746.70");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=961.56,724.70");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=936.57,646.21");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=972.53,522.55");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=966.26,499.69");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=943.31,621.64");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=927.48,639.48");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=883.45,642.80");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=842.62,429.75");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=809.55,447.66");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=810.39,468.45");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=886.00,514.09");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=831.31,426.44");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=901.05,426.10");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=909.93,313.98");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=919.36,385.87");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=890.20,267.09");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=912.53,336.93");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=780.49,362.55");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=740.33,421.16");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=816.30,313.80");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=853.71,293.81");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=781.95,281.27");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=744.22,388.58");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=820.09,390.63");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=736.65,475.17");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=817.42,400.64");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=697.40,398.83");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=716.93,378.64");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=691.80,408.72");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=602.48,532.38");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=580.19,494.68");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=997.11,734.09");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=904.70,755.51");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=948.76,714.18");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=819.57,574.64");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=915.12,685.42");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=868.24,724.13");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=792.21,880.41");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=788.28,750.35");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=786.24,817.27");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=735.37,765.60");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=772.48,632.51");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=762.39,624.38");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=730.25,614.74");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=834.00,646.20");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=933.34,687.05");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=927.73,609.52");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=872.44,751.51");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=976.23,719.79");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=969.27,671.61");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=963.88,657.85");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=940.47,584.47");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=861.85,483.62");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=988.99,460.92");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=994.21,674.35");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=949.44,656.30");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=754.33,632.21");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=866.83,498.76");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=820.97,421.83");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=895.61,413.51");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=901.06,490.96");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=921.02,415.84");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=974.93,413.56");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=918.65,447.22");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=959.16,338.09");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=828.22,355.84");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=818.60,360.45");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=835.65,391.82");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=711.48,390.38");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=793.54,301.50");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=782.52,350.90");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=733.74,305.79");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=816.15,371.09");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=787.65,404.43");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=745.39,339.19");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=762.65,419.63");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=780.56,330.61");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=624.21,375.79");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=591.99,427.86");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=687.48,533.99");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=590.90,506.85");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=980.33,773.21");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=923.61,760.05");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=822.93,776.28");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=893.32,662.73");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=851.54,734.35");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=868.58,783.47");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=805.12,761.54");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=744.52,790.62");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=918.42,781.65");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=867.36,692.54");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=766.86,643.22");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=744.46,653.49");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=772.67,587.54");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=726.91,650.98");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=905.55,716.92");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=861.09,741.00");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=963.54,635.19");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=997.76,784.66");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=956.05,677.88");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=979.17,624.16");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=980.68,595.99");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=984.19,508.28");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=983.32,574.50");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=953.30,599.96");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=938.13,783.89");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=781.02,604.12");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=819.43,491.40");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=857.41,526.96");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=933.82,446.31");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=796.90,542.12");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=847.16,383.89");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=911.06,413.02");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=929.03,306.77");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=924.75,397.83");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=844.66,313.44");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=859.83,343.61");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=756.38,350.08");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=803.85,334.69");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=838.63,277.29");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=808.56,422.49");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=818.11,338.40");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=858.69,413.60");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=722.05,368.19");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=724.66,420.89");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=770.52,292.17");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=759.43,401.01");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=684.53,345.03");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=722.62,496.50");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=666.80,482.98");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=541.82,416.40");
    }

}

