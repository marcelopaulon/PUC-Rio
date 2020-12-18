
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn4-2
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
        @display("p=641.00,697.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=654.24,700.04");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=695.64,715.49");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=616.51,737.21");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=562.18,721.49");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=631.53,676.46");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=621.20,659.93");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=607.23,674.68");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=642.40,642.34");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=559.24,674.99");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=531.29,745.61");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=482.82,706.03");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=496.36,699.63");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=573.50,656.33");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=541.40,605.77");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=583.62,655.43");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=541.19,586.24");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=584.98,665.40");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=652.08,726.10");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=593.00,724.84");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=635.01,705.05");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=695.79,673.23");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=641.27,756.35");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=705.09,787.93");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=709.40,868.35");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=708.15,883.29");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=649.97,951.28");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=727.55,974.71");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=730.90,997.41");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=739.44,926.58");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=833.07,910.96");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=869.70,936.76");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=903.05,925.59");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=882.29,911.95");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=922.90,889.17");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=936.64,936.05");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=843.60,938.22");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=935.77,909.12");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=939.31,951.67");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=985.36,948.52");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=977.54,962.10");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=988.84,999.04");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=922.57,936.60");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=909.09,884.18");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=887.03,947.29");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=944.83,918.88");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=927.21,917.80");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=844.22,895.84");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=851.64,910.14");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=875.92,888.16");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=623.62,682.67");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=670.49,682.76");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=688.65,707.36");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=613.09,683.50");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=651.06,759.88");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=608.09,584.78");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=634.07,624.17");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=691.47,727.17");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=683.31,683.88");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=508.67,747.22");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=524.73,821.61");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=522.17,689.55");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=415.12,716.50");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=598.05,605.94");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=573.86,562.89");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=595.34,658.74");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=548.17,622.32");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=621.38,639.99");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=642.53,720.48");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=594.72,772.67");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=689.29,748.63");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=707.14,668.69");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=633.46,772.46");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=656.65,779.68");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=718.93,874.30");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=694.47,913.55");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=656.89,991.52");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=801.21,977.91");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=781.06,971.76");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=725.35,904.32");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=866.35,847.28");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=851.16,975.01");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=933.43,898.39");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=910.34,935.11");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=952.98,902.00");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=932.78,962.79");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=838.57,967.21");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=894.89,895.29");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=903.81,991.99");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=963.59,923.55");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=996.74,957.35");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=964.05,943.94");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=844.11,996.87");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=856.74,893.69");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=898.67,958.57");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=982.60,899.49");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=891.29,971.04");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=875.57,859.04");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=888.23,983.45");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=865.93,882.65");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=607.91,649.96");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=583.43,742.74");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=754.48,781.54");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=595.92,741.16");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=661.07,710.41");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=633.86,600.93");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=706.73,704.66");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=598.61,688.29");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=631.69,652.72");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=621.60,629.06");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=535.55,819.48");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=436.40,708.85");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=485.09,632.49");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=629.95,577.51");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=474.60,588.54");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=546.08,639.85");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=495.51,575.35");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=606.10,660.01");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=627.86,785.40");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=531.02,722.54");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=653.61,685.03");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=639.23,686.40");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=735.91,747.40");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=682.04,731.53");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=744.41,911.76");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=739.67,864.94");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=633.35,969.26");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=821.05,992.28");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=678.06,917.07");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=717.34,985.49");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=835.79,982.26");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=791.76,946.35");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=870.95,966.96");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=956.22,849.17");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=988.77,854.96");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=947.16,945.39");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=842.95,883.02");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=943.79,878.06");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=949.86,962.64");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=914.08,910.17");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=903.82,948.19");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=920.41,990.83");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=917.53,956.32");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=980.88,872.86");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=819.33,926.13");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=862.59,915.25");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=843.54,866.67");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=822.22,850.47");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=923.40,868.96");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=826.82,867.93");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=687.28,609.55");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=618.79,697.92");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=706.23,756.24");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=604.34,786.44");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=495.73,722.59");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=659.89,652.99");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=581.01,675.29");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=603.14,721.92");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=660.93,559.75");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=501.09,631.74");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=460.01,694.28");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=577.49,711.06");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=489.00,617.78");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=530.07,617.84");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=507.02,586.44");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=514.14,656.27");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=523.46,585.74");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=503.53,710.08");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=613.41,771.31");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=616.81,722.51");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=704.37,688.80");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=701.73,628.99");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=622.97,756.32");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=693.19,796.15");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=681.26,848.80");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=620.64,860.86");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=743.56,954.29");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=763.57,890.12");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=739.82,973.00");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=728.10,855.63");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=826.34,898.13");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=906.95,980.09");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=962.02,971.06");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=869.46,922.91");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=852.52,876.03");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=921.94,848.37");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=832.22,996.64");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=962.70,986.34");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=878.77,977.19");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=952.66,977.13");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=932.06,980.40");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=969.53,907.82");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=979.79,934.28");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=891.09,872.29");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=796.77,961.60");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=994.74,936.45");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=991.09,870.63");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=933.26,873.05");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=911.24,860.66");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=942.82,866.65");
    }

}

