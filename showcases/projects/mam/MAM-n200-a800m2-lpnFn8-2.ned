
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn8-2
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
        @display("p=7.00,785.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=50.71,789.25");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=80.38,797.66");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=67.12,789.78");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=38.80,774.55");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=18.42,703.87");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=4.65,703.63");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=9.08,733.72");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=24.01,712.94");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=69.16,693.99");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=39.09,624.94");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=29.98,607.76");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=30.51,520.65");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=18.02,505.74");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=24.94,438.47");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=3.56,378.90");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=28.72,353.36");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=43.95,417.57");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=64.14,475.06");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=4.90,410.43");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=58.01,586.53");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=42.78,549.51");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=16.75,540.28");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=70.54,549.32");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=121.54,617.43");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=14.74,760.85");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=31.75,742.19");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=92.42,787.73");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=128.20,794.43");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=55.84,763.02");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=91.45,698.08");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=90.73,741.63");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=14.56,724.96");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=49.33,720.48");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=19.96,771.19");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=91.40,665.51");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=14.89,663.41");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=44.15,494.06");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=45.52,536.31");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=2.11,500.43");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=41.86,395.93");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=20.78,330.49");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=106.60,426.82");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=77.99,479.26");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=90.00,414.83");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=2.04,531.04");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=72.67,521.36");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=30.71,456.11");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=89.72,551.82");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=96.47,607.75");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=25.66,790.27");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=50.06,746.20");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=169.92,768.40");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=65.86,768.51");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=15.90,798.66");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=49.02,660.33");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=9.72,629.03");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=80.72,708.26");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=5.02,756.44");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=126.77,774.37");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=62.96,626.47");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=73.05,610.81");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=41.37,521.00");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=57.80,509.41");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=42.21,385.67");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=10.00,364.37");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=69.71,344.50");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=50.74,475.98");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=74.19,456.76");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=59.42,343.71");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=84.14,654.65");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=9.26,575.48");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=16.86,529.81");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=87.01,635.31");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=25.90,619.92");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=74.70,749.02");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=73.79,759.26");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=117.18,762.68");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=6.14,796.02");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=102.51,743.93");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=102.52,707.79");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=23.13,688.55");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=66.11,727.21");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=113.38,750.91");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=47.94,608.08");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=101.42,575.87");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=38.34,577.97");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=32.71,557.61");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=31.16,501.99");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=102.09,415.78");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=19.56,345.73");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=89.96,303.40");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=19.61,414.01");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=121.01,521.48");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=18.78,485.93");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=71.35,576.85");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=119.08,561.69");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=92.22,479.93");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=50.03,562.11");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=115.13,604.75");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=35.04,692.44");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=76.82,781.45");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=64.65,753.61");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=147.57,766.27");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=56.03,684.53");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=44.67,697.50");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=2.46,611.06");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=24.12,757.12");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=24.12,645.01");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=114.83,625.72");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=5.52,645.15");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=2.93,585.52");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=17.23,468.49");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=93.77,564.96");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=101.96,468.26");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=16.74,382.80");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=28.63,424.69");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=62.44,414.10");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=43.41,436.35");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=5.96,389.76");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=45.52,586.56");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=20.86,588.20");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=111.33,525.13");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=108.15,486.63");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=157.94,645.27");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=82.93,754.78");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=49.24,735.99");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=157.16,794.39");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=60.22,739.82");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=48.76,770.12");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=0.73,746.77");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=96.97,730.86");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=69.91,708.17");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=39.49,654.02");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=134.98,665.43");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=15.52,564.68");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=11.33,604.48");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=68.47,439.00");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=72.20,536.49");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=80.60,376.92");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=29.28,314.43");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=53.65,315.79");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=132.67,412.85");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=123.49,437.15");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=15.51,432.37");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=107.89,617.51");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=58.32,609.39");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=80.26,529.40");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=4.60,514.20");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=169.30,634.33");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=34.42,718.69");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=39.66,762.68");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=58.99,783.37");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=22.56,731.32");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=97.72,767.66");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=16.82,679.31");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=0.02,632.93");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=1.90,766.43");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=65.19,664.01");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=134.61,735.93");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=13.19,616.24");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=76.72,600.02");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=18.24,554.43");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=35.73,483.93");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=112.36,465.72");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=52.23,461.16");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=111.86,330.87");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=98.25,438.05");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=10.08,494.15");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=70.36,427.87");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=50.57,577.84");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=107.55,583.98");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=0.98,448.98");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=102.08,555.85");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=158.93,606.49");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=90.64,776.39");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=9.40,775.09");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=120.09,726.65");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=109.57,732.93");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=110.10,720.53");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=83.41,684.63");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=12.82,692.55");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=2.98,713.51");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=11.90,748.43");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=163.79,687.02");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=7.10,672.55");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=64.45,641.42");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=109.09,514.10");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=85.12,444.53");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=38.12,467.13");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=64.88,322.73");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=55.20,304.42");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=52.30,426.66");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=117.73,501.14");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=2.37,323.07");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=77.49,561.90");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=89.79,497.34");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=28.56,547.41");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=105.42,538.68");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=149.31,707.84");
    }

}

