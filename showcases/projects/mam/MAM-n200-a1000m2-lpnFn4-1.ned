
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn4-1
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
        @display("p=468.00,292.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=480.60,299.53");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=430.42,320.05");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=512.24,347.16");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=532.46,261.98");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=527.20,217.41");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=597.14,246.02");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=634.70,235.27");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=675.36,255.41");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=726.26,313.81");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=694.79,342.48");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=720.76,438.43");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=803.42,423.29");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=788.24,424.92");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=800.44,439.18");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=843.21,445.58");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=801.86,487.09");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=813.28,482.35");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=830.66,542.41");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=882.89,537.07");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=925.56,545.67");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=926.19,639.66");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=887.30,638.33");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=833.32,587.91");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=851.41,578.83");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=907.41,584.53");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=962.76,600.29");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=977.15,559.69");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=984.51,552.45");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=931.85,570.95");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=932.76,617.68");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=954.26,572.13");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=922.22,531.91");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=942.01,576.49");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=848.55,605.97");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=899.46,547.00");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=965.40,554.38");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=929.81,559.62");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=918.24,631.55");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=873.53,544.23");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=907.03,538.13");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=844.75,513.10");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=809.80,451.58");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=847.35,426.30");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=856.87,434.09");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=890.54,397.61");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=823.62,346.15");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=918.66,347.00");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=908.50,293.81");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=961.53,314.68");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=446.94,292.87");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=522.06,369.22");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=455.55,360.57");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=484.92,401.48");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=514.81,277.57");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=543.44,171.09");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=591.52,191.10");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=575.24,176.04");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=678.20,239.56");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=723.68,271.34");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=665.41,275.75");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=645.05,434.22");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=822.15,425.56");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=808.25,339.66");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=818.34,440.57");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=888.27,364.37");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=830.04,503.20");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=797.67,467.82");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=820.91,524.39");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=971.80,578.60");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=984.08,497.91");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=878.76,616.38");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=916.93,671.04");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=879.03,605.36");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=869.00,609.92");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=911.52,573.44");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=996.56,625.92");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=977.27,541.22");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=955.70,460.63");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=956.60,497.18");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=908.01,525.65");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=948.46,590.64");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=969.54,484.48");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=921.86,609.44");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=857.25,600.78");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=887.16,494.71");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=948.42,631.72");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=896.83,600.20");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=864.77,581.89");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=807.11,594.69");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=856.57,528.83");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=875.96,463.90");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=785.75,541.08");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=907.20,462.00");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=893.75,409.18");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=912.50,405.88");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=788.23,324.21");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=987.00,326.45");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=843.87,246.11");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=884.29,278.86");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=462.65,273.95");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=388.71,303.10");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=377.96,353.20");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=440.68,385.33");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=539.01,273.92");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=493.38,205.30");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=611.39,250.22");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=660.43,309.69");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=667.96,245.82");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=681.32,379.36");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=663.22,396.60");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=731.67,432.71");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=845.02,406.40");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=723.91,400.41");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=845.66,465.64");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=745.35,430.87");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=739.22,418.95");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=769.26,566.56");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=854.59,567.08");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=810.29,556.08");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=938.04,546.47");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=990.36,587.64");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=911.96,617.52");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=783.66,606.51");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=877.22,561.61");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=870.04,554.53");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=972.05,639.21");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=930.76,583.54");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=958.95,516.30");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=984.60,532.66");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=949.24,611.55");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=941.42,599.14");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=896.34,530.41");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=959.49,544.57");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=831.25,574.65");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=954.25,479.71");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=967.15,532.19");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=965.31,617.96");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=939.78,660.01");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=911.76,493.63");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=900.01,636.04");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=769.71,483.21");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=764.09,407.47");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=780.37,477.01");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=856.45,471.53");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=914.80,371.95");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=857.37,358.31");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=965.85,293.35");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=888.41,293.42");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=888.45,351.73");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=450.14,239.02");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=500.78,285.61");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=448.10,312.59");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=474.25,417.04");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=582.35,255.52");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=528.57,202.18");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=609.72,304.85");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=567.58,259.92");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=742.51,316.53");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=809.42,290.93");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=669.91,294.53");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=774.58,393.00");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=782.06,354.60");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=694.22,431.09");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=766.95,446.24");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=833.10,447.19");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=808.85,530.66");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=865.69,521.50");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=780.30,530.22");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=907.07,509.12");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=980.22,595.98");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=889.17,684.50");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=824.91,683.84");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=754.63,618.68");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=822.03,558.32");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=880.98,574.54");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=988.33,507.16");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=943.06,505.77");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=988.94,576.24");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=912.36,562.38");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=953.94,666.07");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=996.16,642.27");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=971.91,496.11");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=904.79,662.04");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=846.28,591.92");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=872.75,529.24");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=974.30,519.05");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=993.61,540.32");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=841.75,630.02");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=883.50,476.33");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=918.56,455.49");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=916.51,469.57");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=785.87,394.43");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=867.77,387.90");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=861.17,379.39");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=981.88,357.15");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=855.96,301.25");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=927.86,413.29");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=971.67,264.40");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=964.27,280.71");
    }

}

