
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn8-0
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
        @display("p=681.00,300.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=714.57,342.58");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=701.04,416.60");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=668.90,348.20");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=703.72,357.62");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=695.75,381.62");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=708.81,438.82");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=767.58,496.23");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=739.05,502.89");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=688.07,570.47");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=730.34,554.83");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=749.37,508.36");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=755.65,523.61");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=716.54,455.96");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=726.27,404.47");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=783.46,436.44");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=854.82,405.91");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=921.09,451.09");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=932.35,522.73");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=895.86,521.89");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=890.45,511.39");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=953.76,490.37");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=878.92,553.79");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=910.66,513.66");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=929.79,461.98");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=655.09,316.79");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=639.62,350.76");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=729.67,457.98");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=666.26,258.54");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=629.93,389.58");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=674.78,471.24");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=716.01,478.50");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=839.20,442.67");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=763.48,408.03");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=691.37,547.56");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=820.52,549.72");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=765.54,602.06");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=799.85,538.09");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=671.88,503.70");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=704.56,397.90");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=826.53,440.06");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=863.18,395.72");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=973.07,529.12");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=930.21,433.57");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=957.47,558.45");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=897.48,465.94");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=951.15,542.83");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=881.74,477.18");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=858.83,508.99");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=941.37,449.30");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=733.50,344.72");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=729.74,269.99");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=621.02,370.96");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=594.91,404.39");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=655.83,389.93");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=655.23,452.16");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=748.16,463.34");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=751.97,435.69");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=778.57,477.29");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=716.77,584.13");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=740.97,558.17");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=810.70,527.69");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=828.33,540.75");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=676.69,458.17");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=821.40,390.27");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=753.07,498.53");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=786.57,399.35");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=897.45,446.02");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=980.92,495.32");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=914.96,470.69");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=858.86,587.35");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=972.66,485.56");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=878.99,514.76");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=999.20,551.90");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=911.08,440.27");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=677.97,312.33");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=698.86,305.31");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=682.69,419.73");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=690.33,295.67");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=692.23,355.14");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=744.28,415.18");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=705.00,471.10");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=792.60,503.53");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=710.08,486.99");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=678.78,488.50");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=760.01,482.61");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=793.97,471.56");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=793.06,482.12");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=712.34,499.18");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=698.20,327.08");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=790.62,425.93");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=769.29,381.44");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=936.31,543.46");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=938.64,483.73");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=841.15,533.93");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=901.03,583.42");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=878.82,440.18");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=891.91,544.39");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=912.69,457.83");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=972.83,465.35");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=685.22,331.06");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=675.46,328.13");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=684.81,440.35");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=591.36,316.18");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=644.10,402.80");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=685.47,396.36");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=660.38,484.87");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=722.63,575.85");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=738.06,595.53");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=675.05,536.81");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=792.04,628.61");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=787.24,599.73");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=789.24,540.05");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=704.25,457.48");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=730.74,366.64");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=747.88,445.05");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=921.43,388.28");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=897.35,382.65");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=920.97,531.44");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=838.31,597.99");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=859.45,519.89");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=977.72,509.42");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=922.30,509.86");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=883.32,586.77");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=927.02,401.62");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=724.73,326.94");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=702.97,337.97");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=736.27,471.03");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=651.77,277.09");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=667.51,407.37");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=674.03,367.20");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=753.22,382.92");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=755.31,473.44");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=755.10,576.74");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=677.47,552.77");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=742.80,484.01");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=660.32,495.84");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=762.32,442.42");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=625.64,424.43");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=806.94,423.60");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=777.13,427.27");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=849.84,385.43");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=875.73,539.36");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=940.71,463.30");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=905.76,567.26");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=801.04,554.88");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=959.15,506.30");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=810.59,514.07");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=987.85,525.06");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=893.13,485.16");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=734.30,278.96");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=668.14,380.01");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=607.85,450.63");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=718.35,354.71");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=782.39,336.77");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=678.33,410.40");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=670.41,430.72");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=809.21,571.79");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=728.07,505.45");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=702.17,563.63");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=667.15,596.20");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=718.70,530.52");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=783.27,524.66");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=734.60,436.51");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=770.35,339.01");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=853.86,419.74");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=772.78,369.47");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=960.02,373.72");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=988.15,440.27");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=984.68,541.58");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=843.56,483.68");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=929.54,494.56");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=819.19,621.06");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=934.04,506.70");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=911.19,493.53");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=730.74,217.79");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=736.38,307.02");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=741.82,453.85");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=601.56,391.42");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=790.33,381.98");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=728.48,313.59");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=711.98,421.32");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=831.05,498.00");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=794.72,585.08");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=714.65,560.39");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=755.02,622.79");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=683.21,505.46");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=790.46,575.85");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=699.20,517.15");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=720.09,385.48");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=758.56,462.21");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=859.24,441.62");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=993.59,482.07");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=977.95,584.58");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=844.62,504.11");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=856.48,546.92");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=953.13,479.40");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=861.99,492.72");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=841.89,584.08");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=959.59,448.88");
    }

}

