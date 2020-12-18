
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
        @display("p=917.00,524.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=842.17,467.35");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=829.36,479.37");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=796.45,480.75");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=818.55,429.92");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=824.70,419.90");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=860.61,395.74");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=857.80,456.22");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=858.19,472.24");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=918.44,512.09");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=961.83,533.49");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=917.78,608.11");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=972.89,650.08");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=964.05,670.37");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=972.63,676.58");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=939.69,643.58");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=971.62,636.19");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=991.54,671.94");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=946.49,657.77");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=879.73,702.14");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=893.13,730.35");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=875.65,688.68");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=846.69,685.77");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=819.97,705.30");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=826.65,784.91");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=808.51,874.91");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=798.30,911.63");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=789.96,853.68");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=827.94,851.53");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=758.40,787.56");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=852.14,819.29");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=894.59,785.08");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=983.94,816.15");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=958.37,748.12");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=899.91,756.51");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=965.04,716.96");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=953.07,769.34");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=908.74,786.03");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=981.23,836.19");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=925.84,873.34");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=932.03,851.70");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=979.10,764.32");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=976.11,730.89");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=918.55,791.86");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=961.61,733.43");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=979.82,744.90");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=948.76,743.78");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=874.82,738.25");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=871.64,714.31");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=798.93,705.25");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=880.18,565.92");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=874.43,443.18");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=892.75,486.68");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=782.13,492.46");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=873.52,409.66");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=739.11,442.48");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=860.18,374.93");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=823.87,445.12");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=807.64,456.39");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=957.30,459.06");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=879.10,577.31");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=873.31,637.16");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=937.94,622.91");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=877.01,663.96");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=888.12,636.44");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=933.42,659.66");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=946.53,582.40");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=923.30,650.72");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=906.67,667.71");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=865.65,697.80");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=808.90,719.24");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=831.67,701.76");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=782.70,635.57");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=807.19,689.67");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=880.47,865.51");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=809.53,800.16");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=720.61,885.71");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=804.55,863.64");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=768.11,774.96");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=715.82,819.88");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=877.66,903.19");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=823.98,740.82");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=942.31,870.71");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=898.83,683.01");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=947.03,783.17");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=935.49,730.29");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=981.45,801.80");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=956.41,806.41");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=970.26,807.11");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=910.05,895.64");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=944.65,857.98");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=985.24,790.58");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=983.40,711.17");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=908.63,853.60");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=924.04,816.62");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=933.71,747.14");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=894.49,812.15");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=851.25,739.63");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=857.75,725.26");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=740.71,679.35");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=909.12,516.16");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=847.98,484.08");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=808.06,475.18");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=817.26,465.10");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=868.76,487.24");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=818.65,368.11");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=832.41,354.98");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=797.31,433.99");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=815.31,410.34");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=921.81,453.92");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=948.43,469.88");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=863.98,616.17");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=987.33,649.39");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=961.10,643.39");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=978.49,663.77");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=894.77,584.81");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=971.52,612.62");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=913.97,707.56");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=950.92,707.54");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=892.21,706.34");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=869.43,749.67");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=873.84,626.79");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=809.23,761.23");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=833.77,719.85");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=862.13,825.66");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=866.46,802.29");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=826.25,834.51");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=769.37,834.48");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=819.44,809.65");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=729.06,868.14");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=886.35,848.45");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=889.21,795.50");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=999.96,805.86");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=994.81,727.52");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=857.21,714.95");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=891.80,661.56");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=963.71,781.38");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=935.90,819.21");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=962.13,823.07");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=967.10,921.67");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=839.95,837.30");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=996.75,830.26");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=968.09,762.78");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=838.87,746.08");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=943.55,756.96");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=924.99,685.26");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=918.88,776.16");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=828.46,654.00");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=817.42,685.51");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=758.97,695.94");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=935.30,465.25");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=820.57,493.20");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=759.90,474.25");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=834.72,528.16");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=795.71,413.81");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=753.11,378.76");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=845.64,436.51");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=876.43,477.81");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=895.56,408.01");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=902.61,466.80");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=935.18,498.48");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=914.38,625.35");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=998.80,743.93");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=918.85,675.76");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=997.62,692.13");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=923.26,564.55");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=956.70,567.17");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=955.21,619.01");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=992.21,632.01");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=931.81,674.95");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=870.57,727.62");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=886.04,676.82");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=782.89,691.03");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=883.32,727.54");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=736.80,782.26");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=873.63,946.32");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=742.75,943.59");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=796.62,770.14");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=839.12,931.01");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=728.13,791.19");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=859.58,790.17");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=937.90,800.54");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=924.26,894.76");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=936.91,696.51");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=814.25,745.09");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=902.66,714.91");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=880.00,828.37");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=887.75,766.81");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=891.66,878.60");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=933.53,882.78");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=925.66,947.47");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=999.19,760.14");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=950.91,687.98");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=923.97,802.27");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=958.73,680.90");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=917.83,763.58");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=879.32,805.48");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=953.20,794.41");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=865.12,649.47");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=809.79,700.23");
    }

}

