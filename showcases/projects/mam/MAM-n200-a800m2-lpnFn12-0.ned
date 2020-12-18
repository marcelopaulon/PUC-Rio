
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn12-0
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
        @display("p=274.00,571.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=308.81,596.24");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=261.83,555.02");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=224.24,624.88");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=191.74,603.01");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=209.39,582.11");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=167.25,646.66");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=180.93,687.10");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=175.74,660.25");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=223.51,642.93");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=186.22,648.24");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=158.26,679.06");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=118.86,700.97");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=125.64,677.51");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=193.92,631.24");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=198.15,727.07");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=210.33,701.46");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=259.66,544.10");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=324.23,594.63");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=302.57,507.89");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=224.70,723.56");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=206.74,527.99");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=215.92,653.28");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=142.10,621.73");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=255.67,648.97");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=148.62,652.19");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=253.19,595.38");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=181.70,629.22");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=171.16,759.88");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=187.10,661.09");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=103.68,709.30");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=231.96,686.53");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=203.88,736.42");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=301.75,725.31");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=265.78,613.39");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=327.54,605.47");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=276.89,608.79");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=197.23,617.03");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=143.56,576.66");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=179.30,578.94");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=241.68,580.90");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=137.44,658.73");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=104.00,686.28");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=213.47,621.14");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=202.08,670.99");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=143.04,723.47");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=59.24,677.63");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=33.79,697.45");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=159.27,614.28");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=186.69,719.88");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=220.40,793.66");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=238.81,603.77");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=308.74,532.09");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=323.30,529.22");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=210.34,712.89");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=287.76,603.49");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=262.25,523.64");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=109.69,664.25");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=265.60,662.81");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=242.91,704.02");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=209.41,630.73");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=192.05,674.26");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=159.85,745.92");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=115.84,714.41");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=109.44,765.33");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=228.31,574.61");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=209.68,756.51");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=135.92,635.86");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=202.49,591.06");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=370.03,626.49");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=328.87,489.45");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=216.98,537.10");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=190.75,517.10");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=241.15,567.06");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=99.32,624.02");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=238.89,678.52");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=167.49,620.57");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=253.17,664.30");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=134.32,646.69");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=150.84,665.17");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=71.93,647.23");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=44.12,660.46");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=267.34,686.26");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=288.83,700.13");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=264.45,705.89");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=222.76,602.94");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=338.32,673.70");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=286.50,644.99");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=234.63,666.98");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=234.83,588.75");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=241.74,620.55");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=179.87,734.46");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=247.48,637.26");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=160.80,697.96");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=256.19,573.79");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=249.81,724.27");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=215.13,690.66");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=52.90,742.10");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=141.23,675.40");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=267.91,586.49");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=137.66,752.12");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=231.52,749.33");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=322.58,546.10");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=383.37,554.54");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=318.65,574.78");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=167.95,551.17");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=186.83,620.45");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=179.31,507.78");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=163.18,582.55");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=170.64,683.73");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=170.00,704.17");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=227.29,674.21");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=161.31,669.38");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=145.78,771.09");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=125.74,759.26");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=89.66,755.59");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=158.84,654.64");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=181.13,794.20");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=203.77,687.83");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=230.40,481.05");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=397.50,639.49");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=276.53,467.79");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=258.18,634.31");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=128.27,561.98");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=180.32,597.81");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=131.01,702.35");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=152.51,599.02");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=97.78,634.01");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=197.58,644.27");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=223.31,697.46");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=82.10,698.78");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=93.42,782.29");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=139.61,599.62");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=128.85,688.50");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=248.20,755.27");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=287.37,735.29");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=235.08,541.30");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=366.25,565.29");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=220.33,471.14");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=311.05,645.49");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=209.53,562.07");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=165.07,515.92");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=93.21,650.12");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=112.11,743.37");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=186.17,697.60");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=254.33,675.26");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=240.00,657.48");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=102.39,719.47");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=51.39,636.17");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=146.40,707.69");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=286.05,633.09");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=259.42,733.46");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=254.75,693.26");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=193.44,560.50");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=316.01,497.42");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=348.49,527.07");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=279.31,620.53");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=115.68,554.48");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=276.79,555.66");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=126.36,662.94");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=141.21,742.22");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=149.58,611.63");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=293.80,681.22");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=158.71,718.39");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=128.19,744.52");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=57.05,663.16");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=97.24,607.08");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=190.81,540.83");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=221.21,744.35");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=197.20,710.51");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=322.04,646.63");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=285.10,570.90");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=270.53,516.22");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=274.69,706.88");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=220.77,592.85");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=167.54,533.71");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=150.55,555.74");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=201.43,774.87");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=155.90,641.17");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=168.19,635.02");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=195.22,654.85");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=78.57,735.15");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=60.56,628.32");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=117.28,625.65");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=166.43,561.65");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=198.31,757.94");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=202.42,606.20");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=274.50,492.65");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=385.28,572.49");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=239.98,521.40");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=270.64,646.49");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=159.13,545.63");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=267.82,600.33");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=189.61,583.15");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=161.43,763.96");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=167.74,599.82");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=149.34,588.18");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=117.93,602.54");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=147.35,684.77");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=64.19,754.04");
    }

}

