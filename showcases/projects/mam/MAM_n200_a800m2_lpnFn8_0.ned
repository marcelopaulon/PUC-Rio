
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn8_0
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
        @display("p=100.00,700.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=100.62,646.99");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=42.07,641.91");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=68.46,639.37");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=14.29,621.14");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=21.90,559.75");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=49.33,624.40");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=11.64,633.32");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=1.42,699.45");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=12.09,711.05");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=98.77,666.48");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=186.27,621.89");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=133.73,615.05");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=157.40,536.64");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=169.31,529.32");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=136.11,548.33");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=93.23,572.40");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=172.93,514.24");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=137.88,496.17");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=199.40,514.01");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=146.01,509.88");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=129.01,511.90");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=190.06,453.68");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=211.59,396.39");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=179.85,487.30");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=142.11,704.05");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=43.82,692.66");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=116.55,628.72");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=97.17,588.49");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=64.90,703.40");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=4.26,547.77");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=62.48,578.46");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=36.80,672.16");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=86.78,696.89");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=70.01,689.49");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=70.31,719.90");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=220.91,593.14");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=154.99,639.93");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=131.58,526.35");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=232.19,533.21");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=90.85,529.35");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=123.46,648.60");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=163.88,463.43");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=104.89,465.95");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=236.53,577.98");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=193.03,551.76");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=169.32,545.55");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=216.38,540.25");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=243.28,416.01");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=178.88,558.51");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=152.22,708.89");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=105.87,593.74");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=66.43,605.61");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=21.67,628.83");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=27.51,581.27");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=38.16,462.56");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=66.57,678.04");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=49.64,677.93");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=9.45,743.12");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=13.33,722.65");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=73.06,652.80");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=193.95,587.92");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=109.65,674.32");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=121.99,502.78");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=114.52,482.05");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=121.27,546.90");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=150.01,562.19");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=223.34,477.87");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=75.98,519.08");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=220.98,510.64");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=63.32,515.85");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=102.81,506.40");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=234.47,513.36");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=203.47,382.12");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=210.11,466.47");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=175.58,702.65");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=100.19,558.03");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=47.20,661.29");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=105.33,631.90");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=27.10,686.81");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=65.66,562.97");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=112.55,578.97");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=32.22,658.60");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=68.70,766.57");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=70.95,747.36");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=86.01,648.94");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=138.94,604.20");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=80.99,622.73");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=93.10,603.73");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=162.76,492.22");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=202.16,563.01");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=160.65,593.93");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=147.81,524.04");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=137.34,567.06");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=214.04,601.27");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=55.27,540.49");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=107.73,543.33");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=127.17,430.78");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=162.83,399.16");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=196.54,499.46");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=19.97,734.43");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=196.18,638.55");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=116.61,683.54");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=119.59,565.63");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=46.24,613.67");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=23.47,605.76");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=74.45,548.72");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=54.26,562.78");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=78.14,755.48");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=9.28,660.04");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=102.09,613.57");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=188.62,699.87");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=118.11,587.33");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=253.04,545.79");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=198.07,479.80");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=196.65,527.35");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=112.91,526.31");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=264.93,535.31");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=83.61,489.75");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=241.16,477.01");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=108.21,432.60");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=122.93,419.20");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=265.31,469.73");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=259.55,339.11");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=215.59,519.64");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=86.34,670.28");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=2.78,650.36");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=31.36,646.56");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=134.67,649.65");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=0.02,608.13");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=102.34,524.63");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=101.19,578.57");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=21.71,653.36");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=82.79,738.22");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=51.15,707.68");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=140.11,690.81");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=251.91,605.11");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=123.80,602.60");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=163.60,442.85");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=105.44,476.24");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=204.03,542.31");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=149.27,595.06");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=140.75,539.36");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=158.30,475.11");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=286.18,539.08");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=157.98,427.64");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=122.90,576.48");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=179.32,476.23");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=235.06,352.18");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=172.61,393.53");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=80.26,678.24");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=110.02,726.20");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=27.54,697.99");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=33.55,600.43");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=57.98,664.72");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=38.86,582.20");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=20.68,670.36");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=26.50,710.08");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=60.50,776.49");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=14.17,759.30");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=54.23,749.87");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=222.97,649.49");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=143.15,632.01");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=148.32,582.37");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=176.44,441.56");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=113.43,619.11");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=6.25,594.15");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=177.34,580.26");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=122.82,469.30");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=258.83,478.48");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=144.18,458.49");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=143.84,419.69");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=270.98,496.23");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=240.31,427.12");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=151.86,549.06");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=159.55,675.23");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=111.56,658.38");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=34.89,634.82");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=81.65,633.19");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=46.56,551.14");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=56.90,641.29");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=89.73,543.64");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=15.58,585.58");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=58.20,690.26");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=26.53,772.63");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=120.02,700.50");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=218.20,677.86");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=171.25,650.02");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=171.60,497.68");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=218.70,496.70");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=187.93,565.98");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=15.53,528.14");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=164.97,561.90");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=186.95,421.51");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=229.05,467.55");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=141.45,472.21");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=108.95,417.08");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=274.68,465.50");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=137.66,377.23");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=223.79,403.32");
    }

}

