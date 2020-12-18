
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn8_9
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
        @display("p=146.45,776.54");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=113.85,770.31");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=157.92,768.24");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=127.87,718.79");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=193.79,694.98");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=158.71,651.97");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=162.55,589.63");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=173.12,559.25");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=108.21,610.36");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=189.47,624.57");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=205.43,598.83");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=282.39,650.09");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=374.34,659.30");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=385.81,685.64");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=326.18,653.87");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=406.78,674.46");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=418.21,673.95");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=439.62,643.46");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=409.54,618.27");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=486.78,563.86");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=516.06,552.07");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=612.13,564.36");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=650.18,545.28");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=702.65,575.98");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=151.33,723.66");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=116.87,723.91");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=147.41,742.88");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=109.47,761.32");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=139.04,720.87");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=167.58,676.42");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=77.33,699.22");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=169.88,511.74");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=171.86,632.93");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=75.73,545.74");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=273.47,589.49");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=171.98,607.90");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=252.30,561.35");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=443.59,627.36");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=429.23,709.18");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=397.93,664.36");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=434.09,672.17");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=435.08,739.98");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=462.93,606.93");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=422.30,621.69");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=457.40,597.72");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=580.01,597.58");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=555.57,589.02");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=640.74,521.45");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=700.90,548.64");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=93.92,742.09");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=182.59,774.34");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=134.48,780.93");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=244.68,748.84");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=171.12,710.91");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=227.95,719.26");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=97.62,648.60");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=136.79,632.40");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=226.11,488.76");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=125.18,636.23");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=147.55,646.45");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=194.44,651.69");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=200.67,659.83");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=334.81,719.95");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=402.08,695.90");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=355.28,687.94");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=418.20,662.31");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=476.98,638.52");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=414.67,606.22");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=369.91,573.86");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=498.78,507.67");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=480.83,530.98");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=588.34,658.08");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=712.48,488.30");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=709.65,565.80");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=123.22,656.80");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=198.86,781.92");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=175.90,762.46");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=70.44,751.21");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=153.22,700.55");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=110.44,690.79");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=161.71,751.49");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=242.30,544.67");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=172.71,591.34");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=135.61,567.37");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=198.51,608.21");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=291.30,567.83");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=334.54,644.71");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=421.10,690.25");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=345.92,644.72");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=389.14,627.85");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=394.23,677.83");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=412.46,636.79");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=465.87,699.20");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=379.88,586.10");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=479.38,608.30");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=583.61,500.64");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=655.09,643.65");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=567.10,544.32");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=719.02,573.19");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=97.14,758.85");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=227.60,770.08");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=81.48,776.76");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=136.00,765.22");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=103.25,735.54");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=163.29,734.96");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=168.58,618.88");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=232.45,634.54");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=180.41,601.53");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=132.36,594.93");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=168.27,665.95");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=180.84,575.49");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=208.28,668.96");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=363.86,607.63");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=372.94,695.63");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=317.90,582.70");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=451.04,676.83");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=340.89,616.21");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=469.59,675.72");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=377.36,635.19");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=511.70,583.28");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=566.67,625.39");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=632.42,559.32");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=690.62,480.63");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=705.78,497.47");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=50.98,648.30");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=213.77,714.60");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=55.28,781.95");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=86.22,767.30");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=133.84,741.99");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=181.46,669.85");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=149.57,630.06");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=101.50,545.03");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=126.62,609.75");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=106.85,627.97");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=174.62,657.29");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=162.80,536.37");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=319.67,692.84");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=441.75,656.07");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=330.22,750.10");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=310.78,602.19");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=459.88,746.32");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=393.84,724.24");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=487.49,662.92");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=405.40,581.53");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=485.72,628.40");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=496.40,580.40");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=665.10,561.62");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=725.58,545.83");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=668.52,627.32");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=24.26,663.35");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=226.16,755.81");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=101.14,672.08");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=220.55,746.98");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=109.89,794.63");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=126.21,686.04");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=110.57,715.89");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=128.37,577.54");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=113.84,597.32");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=24.03,586.33");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=228.16,651.86");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=232.09,584.81");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=288.31,686.99");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=326.32,595.98");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=431.51,695.26");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=254.78,630.53");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=378.92,714.77");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=398.66,652.12");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=501.92,698.68");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=442.20,589.58");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=419.49,534.26");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=436.69,571.36");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=663.70,529.41");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=664.24,589.67");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=743.91,641.41");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=127.71,794.80");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=145.94,795.22");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=163.48,686.55");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=70.43,794.18");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=74.58,765.42");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=152.59,710.81");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=210.34,646.69");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=179.19,542.37");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=124.22,511.24");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=17.26,604.88");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=268.00,647.17");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=183.23,613.98");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=287.61,667.81");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=377.59,678.85");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=402.55,755.81");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=267.82,619.85");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=352.84,741.21");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=425.09,742.27");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=430.85,722.60");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=323.65,619.17");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=582.76,587.27");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=543.34,528.42");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=539.90,582.31");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=564.74,516.52");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=633.56,594.13");
    }

}

