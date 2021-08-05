
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn4_3
{
    parameters:
        @display("bgb=1000,1000;bgg=100,1,grey95;bgu=m");
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=68.85,95.57");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=53.83,98.90");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=64.14,64.59");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=42.78,144.00");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=116.87,154.72");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=104.85,142.52");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=118.19,93.93");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=204.77,134.91");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=192.35,84.02");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=165.48,146.18");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=150.94,173.13");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=139.59,164.91");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=146.18,138.36");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=134.19,118.59");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=133.43,180.07");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=97.08,128.69");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=123.60,169.36");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=94.83,161.84");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=169.73,249.53");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=219.32,268.23");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=242.79,215.66");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=221.53,280.04");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=277.42,236.85");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=270.91,292.93");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=246.21,334.22");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=283.70,373.44");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=359.27,398.72");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=417.21,340.94");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=458.72,342.12");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=368.47,374.40");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=336.84,372.37");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=434.16,361.20");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=420.67,443.47");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=407.79,413.67");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=501.28,417.86");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=502.84,441.84");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=562.94,377.28");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=482.83,412.68");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=464.40,486.54");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=430.30,501.73");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=393.58,541.25");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=478.47,553.99");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=498.73,557.71");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=572.47,503.61");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=616.77,539.04");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=595.05,525.51");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=581.59,612.06");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=582.07,622.06");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=535.81,592.89");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=180.26,91.56");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=21.07,113.79");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=35.02,41.98");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=133.58,84.67");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=24.12,234.80");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=134.98,145.10");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=128.78,67.61");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=98.54,88.74");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=247.84,165.86");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=222.79,68.01");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=206.07,153.95");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=61.81,152.09");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=69.00,196.23");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=170.59,200.03");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=167.96,82.38");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=221.39,173.88");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=46.58,68.06");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=107.10,183.28");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=142.44,109.58");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=204.47,278.08");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=259.90,184.95");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=198.28,177.42");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=269.00,260.85");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=289.57,264.13");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=280.06,285.49");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=267.81,338.28");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=315.88,364.35");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=396.64,403.49");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=454.21,324.62");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=410.41,378.67");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=306.89,398.46");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=267.92,369.63");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=449.26,440.52");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=448.51,418.84");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=380.64,443.00");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=486.21,429.92");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=463.19,473.30");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=587.98,444.01");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=525.13,470.76");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=547.34,450.26");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=380.47,497.29");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=304.79,567.59");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=475.19,474.64");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=466.59,524.27");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=578.05,596.92");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=530.53,516.46");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=557.27,504.85");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=570.45,562.59");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=607.23,619.13");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=569.92,657.46");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=87.34,65.98");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=79.80,98.25");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=35.66,99.29");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=23.83,99.68");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=71.23,120.88");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=112.15,206.59");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=126.26,52.97");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=204.92,67.84");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=188.75,117.83");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=201.54,91.62");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=153.63,153.75");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=112.57,114.17");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=139.90,246.56");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=144.87,183.89");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=119.83,127.44");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=120.83,140.11");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=152.60,75.91");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=111.78,75.78");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=156.21,234.94");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=172.41,331.23");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=237.09,279.89");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=257.06,142.69");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=224.28,306.97");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=265.19,319.89");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=182.46,301.07");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=283.37,340.06");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=271.10,458.71");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=293.70,383.08");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=427.15,353.99");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=493.91,344.29");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=371.42,400.47");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=304.34,380.06");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=472.63,400.80");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=437.75,537.12");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=490.90,443.78");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=548.34,389.45");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=511.56,390.30");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=596.18,338.93");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=448.38,364.21");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=478.87,489.85");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=443.25,574.87");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=424.47,536.93");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=418.29,577.53");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=515.25,593.38");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=596.57,502.52");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=636.76,541.23");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=552.32,561.75");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=547.19,611.41");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=659.20,667.84");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=523.38,606.76");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=137.43,94.27");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=147.76,53.92");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=93.98,25.84");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=157.78,91.08");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=10.87,91.75");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=94.25,189.20");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=196.46,107.97");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=86.21,1.02");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=248.75,207.58");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=208.88,3.86");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=142.06,224.24");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=203.94,233.25");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=199.14,198.97");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=176.47,72.37");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=153.64,205.80");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=214.15,204.57");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=77.06,223.23");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=178.89,138.02");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=72.32,164.07");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=143.79,200.86");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=183.34,189.55");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=249.19,275.56");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=196.62,312.07");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=297.54,321.87");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=250.35,294.65");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=248.24,313.32");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=286.13,353.28");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=405.91,432.77");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=353.21,379.44");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=494.84,275.17");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=430.44,372.95");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=319.23,439.90");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=454.22,314.25");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=361.05,364.05");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=464.95,434.09");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=554.32,370.75");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=459.90,463.59");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=604.20,414.66");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=426.37,392.56");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=561.80,471.81");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=414.62,506.17");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=437.86,512.68");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=406.31,577.60");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=554.54,587.19");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=610.92,576.30");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=706.77,574.88");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=612.62,563.11");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=543.59,672.76");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=598.36,649.07");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=542.09,572.54");
    }

}

