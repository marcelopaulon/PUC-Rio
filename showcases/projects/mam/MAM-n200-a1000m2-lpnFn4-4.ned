
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn4-4
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
        @display("p=589.00,621.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=577.83,657.49");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=561.17,651.21");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=573.57,637.55");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=585.54,581.08");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=612.21,666.24");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=553.44,727.85");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=572.62,799.46");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=572.77,815.25");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=540.78,883.38");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=556.53,961.70");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=559.16,932.26");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=511.16,910.68");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=531.11,832.46");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=595.04,960.42");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=621.85,918.35");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=712.54,923.44");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=723.04,942.26");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=734.19,941.28");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=768.33,933.00");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=768.54,884.73");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=811.79,805.45");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=796.16,793.11");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=803.72,841.59");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=728.02,889.00");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=658.65,867.36");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=615.73,871.96");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=606.33,967.74");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=628.34,996.48");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=690.18,924.56");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=608.32,907.55");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=567.59,995.26");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=526.37,970.77");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=475.73,982.78");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=495.01,988.00");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=541.15,947.56");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=519.14,959.98");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=548.59,913.00");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=577.78,955.27");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=493.06,934.67");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=427.87,908.63");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=441.45,952.02");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=398.70,997.45");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=390.00,989.79");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=326.77,973.72");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=306.72,907.97");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=283.09,909.06");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=274.68,859.52");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=289.19,943.75");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=362.04,980.12");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=617.72,577.88");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=487.74,630.80");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=609.69,705.85");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=505.79,631.53");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=532.61,614.55");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=630.47,743.53");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=464.32,770.54");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=580.23,785.08");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=498.96,787.22");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=530.97,794.05");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=495.95,965.57");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=558.82,880.18");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=541.00,979.46");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=444.85,845.88");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=688.12,940.98");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=647.57,877.26");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=688.76,981.55");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=709.38,939.70");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=755.37,868.36");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=750.79,941.18");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=776.50,893.17");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=808.86,832.60");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=793.85,747.59");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=852.22,836.35");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=711.77,838.93");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=653.63,887.08");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=638.99,859.26");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=570.14,943.43");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=639.54,997.95");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=715.95,871.78");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=662.40,952.76");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=590.49,991.82");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=601.98,995.54");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=512.59,925.08");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=485.91,973.05");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=496.59,878.80");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=473.40,899.89");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=550.54,982.52");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=499.96,978.25");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=453.03,882.83");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=427.80,925.16");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=473.75,956.54");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=460.52,992.57");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=377.93,994.04");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=246.25,935.61");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=304.30,950.81");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=260.32,860.20");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=264.85,883.81");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=241.49,923.20");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=389.91,960.40");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=595.27,630.29");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=603.08,681.57");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=623.79,700.16");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=606.50,596.20");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=507.64,557.51");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=601.91,664.63");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=471.37,677.86");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=522.17,873.82");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=547.25,822.39");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=542.13,870.20");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=596.48,887.50");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=584.84,982.87");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=572.36,837.93");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=484.44,890.79");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=625.44,967.88");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=644.00,988.37");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=676.58,876.35");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=677.73,957.46");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=803.11,893.29");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=801.57,934.34");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=737.37,893.36");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=792.66,805.01");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=835.10,811.76");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=867.49,870.42");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=758.90,842.37");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=570.23,895.37");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=630.46,827.37");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=584.72,887.78");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=621.67,986.33");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=683.38,908.76");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=661.82,973.50");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=666.00,996.44");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=491.97,920.68");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=391.35,974.49");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=452.65,948.26");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=499.02,900.47");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=513.55,944.06");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=528.87,941.74");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=554.54,945.03");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=516.28,893.46");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=467.63,944.31");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=446.03,962.26");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=443.27,996.91");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=362.16,948.58");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=322.28,945.57");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=267.60,830.98");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=211.32,886.64");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=340.46,932.88");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=256.23,889.34");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=411.16,964.22");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=640.47,601.48");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=629.44,731.38");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=602.35,646.11");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=591.02,644.92");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=506.00,617.11");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=516.72,645.41");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=553.40,769.82");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=583.48,752.95");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=559.29,794.76");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=553.76,862.74");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=620.81,908.03");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=635.96,937.31");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=439.18,914.09");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=475.78,812.49");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=601.86,938.94");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=576.33,916.30");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=787.96,865.79");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=686.61,896.28");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=728.76,952.67");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=745.23,912.29");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=839.20,871.33");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=793.94,768.50");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=765.96,854.43");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=806.07,859.67");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=726.52,970.63");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=735.20,821.38");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=637.22,883.79");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=649.95,971.65");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=592.11,909.25");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=738.97,981.60");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=640.94,817.78");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=568.56,969.57");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=579.35,992.60");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=441.92,971.88");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=537.73,999.92");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=536.77,934.54");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=511.34,993.34");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=475.99,936.57");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=548.13,968.29");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=443.37,982.41");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=401.33,926.58");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=467.48,868.94");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=470.49,973.60");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=374.12,917.27");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=315.91,927.29");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=289.29,840.65");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=215.59,877.24");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=282.40,796.53");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=260.29,994.28");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=388.68,905.73");
    }

}

