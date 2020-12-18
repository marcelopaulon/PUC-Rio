
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn8-4
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
        @display("p=673.00,589.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=690.87,602.54");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=739.27,551.49");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=804.87,575.96");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=760.78,579.20");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=751.50,606.55");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=815.61,560.58");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=749.84,525.25");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=780.72,515.48");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=769.70,511.67");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=722.12,560.87");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=718.76,618.22");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=733.67,605.58");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=733.24,630.43");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=755.02,649.59");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=730.22,677.35");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=773.27,587.23");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=763.87,665.12");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=688.07,675.59");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=766.30,615.02");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=857.30,588.90");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=892.76,573.46");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=918.10,653.60");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=947.61,615.94");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=951.19,572.43");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=686.59,540.07");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=660.52,564.39");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=657.32,545.74");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=853.43,576.54");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=831.77,604.20");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=748.16,696.74");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=755.25,511.61");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=737.38,513.12");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=775.34,543.92");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=780.87,456.07");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=670.85,491.09");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=728.72,707.14");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=796.34,631.85");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=742.63,637.54");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=779.32,654.35");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=696.85,701.06");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=819.59,542.07");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=771.07,741.66");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=695.46,661.56");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=741.83,577.42");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=789.93,525.43");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=892.75,620.04");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=884.26,675.41");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=994.19,595.76");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=918.84,576.82");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=708.30,595.62");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=681.27,595.00");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=824.44,515.99");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=787.02,615.07");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=690.42,568.55");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=791.60,605.16");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=740.88,501.62");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=664.68,575.98");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=849.96,525.63");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=779.07,503.57");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=730.79,592.36");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=682.92,613.20");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=744.84,534.21");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=769.49,641.23");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=711.40,634.60");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=722.48,732.27");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=821.24,617.80");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=766.53,693.15");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=662.13,614.51");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=763.72,628.93");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=859.43,634.80");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=927.54,637.65");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=893.50,708.01");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=908.56,633.72");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=981.05,504.02");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=623.83,559.88");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=604.79,589.84");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=660.54,602.90");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=804.22,625.41");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=699.82,551.90");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=693.56,685.22");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=808.24,491.07");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=700.68,531.41");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=846.48,467.17");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=703.53,469.48");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=713.36,496.30");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=731.10,573.69");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=754.50,540.96");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=649.10,577.13");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=797.85,725.33");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=720.44,655.97");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=698.10,593.66");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=775.76,716.38");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=621.13,670.19");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=720.40,591.30");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=915.03,522.03");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=902.48,580.82");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=960.88,711.91");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=944.78,604.92");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=933.25,526.37");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=690.89,640.00");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=600.41,612.86");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=664.30,529.40");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=792.99,645.99");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=789.65,553.68");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=776.45,619.91");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=884.05,613.56");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=799.23,509.08");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=839.51,580.48");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=768.58,522.73");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=692.58,621.04");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=750.93,561.88");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=683.93,584.22");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=728.96,641.61");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=765.67,682.83");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=713.58,674.48");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=786.48,582.94");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=820.14,659.85");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=693.15,711.78");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=779.91,573.33");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=872.95,617.55");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=948.08,561.68");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=935.46,644.83");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=930.59,610.38");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=964.47,525.03");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=631.68,573.47");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=781.38,598.52");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=731.07,538.07");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=862.73,535.76");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=684.09,528.05");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=809.13,611.86");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=867.62,518.76");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=706.16,585.38");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=831.64,465.53");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=822.22,445.18");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=742.66,483.87");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=662.58,640.38");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=742.59,598.60");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=798.31,595.23");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=810.53,677.36");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=731.50,655.95");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=834.56,545.76");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=791.90,662.94");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=656.87,705.85");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=731.98,696.20");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=941.63,591.13");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=911.36,563.64");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=987.34,662.22");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=939.46,628.44");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=959.93,534.75");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=617.87,527.39");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=647.66,532.45");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=732.04,526.78");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=836.11,558.29");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=816.11,575.76");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=829.40,649.68");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=864.37,486.56");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=766.56,495.02");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=815.29,429.89");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=751.43,450.23");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=716.67,464.50");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=676.96,638.94");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=699.52,646.69");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=745.27,624.60");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=705.88,621.82");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=669.03,690.47");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=848.95,535.77");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=687.76,722.64");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=642.04,598.30");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=782.03,689.20");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=834.36,592.34");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=918.21,620.65");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=900.78,681.54");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=948.60,646.23");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=904.02,550.86");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=636.94,564.54");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=668.54,649.24");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=799.54,533.32");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=857.70,563.54");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=817.52,525.16");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=739.09,685.97");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=875.66,547.54");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=767.21,600.49");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=779.55,560.43");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=853.62,544.64");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=710.90,545.25");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=707.59,610.14");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=744.16,670.90");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=767.76,571.77");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=711.60,692.46");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=723.68,666.11");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=841.53,636.34");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=792.43,705.55");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=715.07,756.68");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=784.24,631.10");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=876.09,502.93");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=933.24,577.90");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=849.65,668.76");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=960.15,655.88");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=960.75,509.95");
    }

}

