
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn4-5
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
        @display("p=632.00,925.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=568.80,864.16");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=555.77,936.29");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=568.95,935.23");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=551.57,848.45");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=580.40,933.69");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=572.40,907.39");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=608.78,825.57");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=609.31,745.33");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=634.95,779.20");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=614.70,733.71");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=635.88,663.93");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=638.64,618.30");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=579.58,623.62");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=558.43,570.69");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=548.29,556.78");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=517.80,596.65");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=555.26,602.25");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=516.88,632.70");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=513.27,673.80");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=564.72,610.14");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=482.22,623.05");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=556.17,686.42");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=644.42,657.62");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=583.97,712.57");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=545.87,795.01");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=538.00,876.61");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=462.32,843.36");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=492.59,790.05");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=483.26,782.09");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=553.83,803.81");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=578.09,822.26");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=626.53,825.66");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=661.26,773.83");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=618.97,712.95");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=633.59,706.14");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=640.19,689.58");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=598.14,677.21");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=571.47,728.81");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=557.57,723.24");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=588.91,733.74");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=533.30,710.85");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=529.82,725.18");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=439.74,740.99");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=450.01,764.17");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=421.85,725.10");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=386.86,732.68");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=352.34,816.87");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=297.40,886.99");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=309.97,956.82");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=603.53,867.23");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=512.56,866.39");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=612.54,949.04");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=548.46,985.04");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=592.42,763.74");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=610.63,924.47");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=550.76,958.49");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=632.70,848.29");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=595.33,788.81");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=631.53,762.22");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=568.81,694.13");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=623.16,655.32");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=609.57,674.40");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=603.69,641.76");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=623.50,565.79");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=580.39,569.68");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=487.00,512.97");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=579.10,604.96");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=593.32,662.98");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=526.46,738.27");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=501.88,644.95");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=486.55,679.76");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=508.04,760.14");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=614.21,614.53");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=573.50,715.87");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=464.23,740.46");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=560.43,814.09");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=421.62,829.08");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=447.24,853.48");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=520.75,840.19");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=568.59,887.28");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=536.85,838.27");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=618.40,831.73");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=670.76,769.28");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=639.49,722.31");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=623.28,688.60");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=700.05,725.08");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=526.73,679.93");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=584.56,646.89");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=522.92,709.59");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=572.46,759.08");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=539.87,698.17");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=485.09,726.40");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=410.63,771.89");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=465.44,854.18");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=415.73,699.63");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=306.50,681.50");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=279.77,815.76");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=249.47,897.66");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=326.91,934.09");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=562.15,976.17");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=517.01,820.79");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=602.69,965.11");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=580.09,841.42");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=518.68,898.64");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=646.27,969.85");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=594.72,840.44");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=595.16,815.01");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=591.72,705.66");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=655.76,741.06");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=524.23,698.66");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=666.04,735.24");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=695.22,698.75");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=510.76,612.67");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=568.23,568.58");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=516.20,505.18");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=542.55,585.84");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=555.31,613.94");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=546.44,666.33");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=498.27,685.64");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=511.84,563.94");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=455.26,592.79");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=535.84,783.83");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=690.17,644.28");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=584.26,687.24");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=522.69,748.09");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=498.90,878.16");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=412.84,835.79");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=498.22,845.86");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=506.75,794.23");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=596.31,802.18");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=602.50,847.51");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=633.30,860.26");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=673.43,755.64");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=643.99,761.48");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=678.24,682.60");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=631.61,609.17");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=645.67,670.36");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=558.96,655.60");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=573.26,705.19");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=570.28,798.33");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=477.70,770.14");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=625.25,736.98");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=448.32,712.06");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=486.70,810.84");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=369.07,786.70");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=308.52,767.20");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=301.42,820.53");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=269.54,924.25");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=369.74,890.81");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=629.12,887.68");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=640.75,900.54");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=541.03,896.37");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=556.04,888.19");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=523.26,877.43");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=571.83,957.05");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=561.49,920.64");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=578.84,806.25");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=582.81,697.52");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=665.62,820.76");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=581.74,725.82");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=680.10,729.21");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=556.61,668.09");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=574.87,578.34");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=490.93,639.07");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=528.78,535.04");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=599.88,548.66");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=525.34,563.25");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=483.98,568.63");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=480.30,743.40");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=558.35,708.51");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=455.79,673.25");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=510.30,742.20");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=659.22,578.74");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=600.57,737.19");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=630.77,800.34");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=526.96,859.33");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=462.11,815.57");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=528.53,825.95");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=511.56,779.98");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=596.04,879.83");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=557.64,823.83");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=626.65,773.28");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=650.49,707.49");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=702.87,745.59");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=647.23,750.57");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=671.86,661.70");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=548.48,677.60");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=542.71,729.57");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=615.94,778.97");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=529.01,808.28");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=475.14,680.39");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=512.57,661.15");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=503.65,722.52");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=393.71,772.26");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=411.35,662.76");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=389.97,679.96");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=392.31,784.90");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=245.26,863.56");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=287.12,983.24");
    }

}

