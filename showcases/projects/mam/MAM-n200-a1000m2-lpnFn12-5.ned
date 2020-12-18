
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn12-5
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
        @display("p=861.00,372.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=895.85,407.88");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=841.45,428.52");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=847.05,409.70");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=763.07,421.39");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=799.61,426.74");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=808.50,455.37");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=811.08,415.27");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=869.65,426.33");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=838.32,417.41");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=874.60,390.66");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=874.30,310.94");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=848.08,328.76");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=823.33,324.72");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=789.70,312.21");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=776.06,334.66");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=741.11,341.61");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=827.43,440.31");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=802.18,397.15");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=790.52,352.34");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=884.03,404.25");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=777.50,405.74");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=824.19,385.06");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=733.85,443.44");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=825.81,405.41");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=882.20,430.92");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=833.48,492.32");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=905.15,461.45");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=870.14,244.40");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=876.82,339.01");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=840.49,285.81");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=828.78,278.55");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=803.31,326.79");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=754.26,356.00");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=808.73,438.66");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=827.69,365.72");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=793.18,376.31");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=762.84,387.47");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=764.78,401.03");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=772.98,499.69");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=757.04,429.82");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=868.05,406.13");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=899.01,473.63");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=761.38,439.65");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=944.84,419.28");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=844.27,338.80");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=855.38,392.41");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=801.10,346.53");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=766.39,350.27");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=808.28,372.67");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=681.00,348.86");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=913.62,295.88");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=962.24,356.75");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=825.83,344.30");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=844.04,372.25");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=777.61,434.10");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=787.21,429.04");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=806.52,466.35");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=843.80,383.92");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=861.17,471.65");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=856.37,503.86");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=909.42,352.58");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=868.44,324.77");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=915.86,362.40");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=776.11,249.10");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=779.46,369.37");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=731.60,292.88");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=702.40,332.54");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=925.94,396.13");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=924.28,414.85");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=745.09,446.66");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=846.51,354.77");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=724.74,356.03");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=753.69,382.54");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=825.52,504.86");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=822.88,425.15");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=875.69,412.75");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=775.04,421.29");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=825.81,459.85");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=884.73,317.39");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=805.91,298.70");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=778.04,345.44");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=764.19,280.39");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=739.57,422.02");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=797.13,335.48");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=855.40,461.74");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=973.23,367.29");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=888.96,516.17");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=794.20,481.00");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=746.48,435.56");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=800.28,415.38");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=819.45,450.15");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=754.67,410.68");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=895.36,455.74");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=879.48,460.15");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=881.41,365.51");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=823.17,236.28");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=862.71,349.77");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=859.62,304.81");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=727.31,263.79");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=764.50,295.37");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=719.50,301.60");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=915.20,441.11");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=944.55,397.38");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=833.97,350.77");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=812.11,389.55");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=848.08,419.65");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=789.22,439.31");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=789.77,451.30");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=817.45,360.95");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=855.03,447.90");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=842.69,399.51");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=886.24,415.28");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=813.39,274.81");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=938.73,319.76");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=726.44,323.98");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=722.00,339.56");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=704.23,355.52");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=738.53,364.79");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=818.75,336.61");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=900.35,500.35");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=894.52,346.97");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=836.93,450.23");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=736.43,399.14");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=822.54,523.44");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=760.00,470.97");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=729.47,387.30");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=865.95,499.95");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=844.64,497.65");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=858.26,402.55");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=925.44,261.27");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=941.95,347.19");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=750.91,287.91");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=717.74,314.77");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=711.26,344.37");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=777.46,358.25");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=912.04,310.13");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=910.51,405.89");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=776.36,381.69");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=879.40,494.25");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=744.50,480.76");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=801.90,504.17");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=872.45,486.65");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=716.33,391.90");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=927.93,438.88");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=744.86,392.97");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=890.88,382.86");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=820.94,300.31");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=831.24,259.86");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=812.02,254.24");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=779.33,319.66");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=746.77,322.45");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=749.92,272.44");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=953.65,373.71");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=972.38,384.13");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=839.65,509.77");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=870.06,367.45");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=705.31,389.52");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=721.25,369.37");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=760.78,536.06");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=765.75,368.10");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=917.27,430.22");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=881.66,448.35");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=864.28,335.40");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=942.27,275.21");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=898.98,243.76");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=795.89,363.97");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=790.58,322.58");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=695.49,318.30");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=664.18,379.26");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=883.03,304.92");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=893.37,331.24");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=789.64,392.88");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=861.44,415.11");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=751.53,464.08");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=710.78,420.70");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=798.50,445.83");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=899.81,444.08");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=860.96,432.70");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=848.53,469.03");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=862.55,382.83");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=879.40,229.19");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=933.07,332.61");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=748.36,301.76");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=794.46,296.27");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=786.08,253.61");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=709.04,430.91");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=926.86,301.03");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=984.99,421.67");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=934.51,404.46");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=886.66,469.88");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=806.36,485.69");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=715.77,477.32");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=844.13,486.75");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=776.99,460.92");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=904.35,422.11");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=893.47,423.14");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=957.08,334.40");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=862.90,294.85");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=906.30,389.29");
    }

}

