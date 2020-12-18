
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn12_7
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
        @display("p=87.36,680.50");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=85.02,722.80");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=41.94,782.92");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=21.79,785.85");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=40.91,748.66");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=51.15,766.43");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=76.29,753.96");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=67.57,711.66");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=33.42,687.23");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=74.08,644.77");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=20.90,635.40");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=25.14,577.48");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=24.31,598.61");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=17.13,606.27");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=4.81,618.95");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=8.31,637.35");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=114.54,650.82");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=3.40,669.10");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=56.75,677.17");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=24.35,775.23");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=101.91,731.88");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=46.71,692.90");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=87.59,690.79");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=167.91,736.68");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=51.12,637.11");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=26.39,719.40");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=119.84,724.49");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=78.17,629.30");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=55.48,558.00");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=41.27,596.42");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=31.65,622.89");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=6.10,522.79");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=37.20,612.03");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=76.70,610.49");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=132.11,606.01");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=83.07,661.54");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=69.35,783.02");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=57.45,781.06");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=15.12,673.81");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=133.47,780.91");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=112.38,740.88");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=7.24,771.38");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=59.86,600.45");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=53.79,655.43");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=6.30,701.12");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=57.55,569.01");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=4.75,557.56");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=17.57,618.86");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=66.17,620.27");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=59.08,590.24");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=116.84,706.27");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=77.83,695.36");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=137.35,740.52");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=29.17,797.90");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=76.95,793.57");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=4.82,727.17");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=29.73,752.53");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=68.55,745.97");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=99.79,716.45");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=73.01,734.57");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=118.89,609.74");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=25.74,695.36");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=54.73,519.36");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=16.77,554.11");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=46.60,608.36");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=45.88,620.66");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=18.63,687.19");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=99.41,634.68");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=139.78,715.47");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=72.77,722.58");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=26.29,733.02");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=4.83,797.78");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=39.63,703.36");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=4.59,738.74");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=115.67,688.52");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=60.56,754.98");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=69.16,675.26");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=97.82,593.31");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=5.46,575.47");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=89.35,638.87");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=33.93,585.51");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=31.96,561.03");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=38.31,655.51");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=48.29,583.89");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=92.22,745.11");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=182.47,679.28");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=34.41,766.07");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=109.45,784.76");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=16.98,797.72");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=18.66,741.46");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=115.53,761.36");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=162.16,767.84");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=103.54,657.70");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=60.44,691.74");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=71.24,567.64");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=33.13,636.54");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=70.53,550.40");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=50.73,546.60");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=92.18,671.58");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=43.70,559.33");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=3.28,601.63");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=147.37,741.32");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=154.01,630.55");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=42.87,759.21");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=2.21,785.15");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=48.93,790.94");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=99.01,686.56");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=105.04,771.33");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=165.02,783.59");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=17.50,713.78");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=62.41,735.89");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=114.14,638.08");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=12.08,586.11");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=2.72,504.90");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=90.78,608.49");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=31.44,524.98");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=8.93,651.84");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=44.80,719.60");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=182.36,720.12");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=99.24,582.52");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=55.25,705.62");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=95.97,780.86");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=81.20,774.01");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=21.39,662.39");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=44.13,737.26");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=172.85,760.12");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=75.53,684.90");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=75.54,597.07");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=22.67,647.77");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=9.64,540.37");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=16.49,524.74");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=80.46,571.58");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=16.12,508.38");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=93.47,624.93");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=47.88,666.21");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=109.14,678.11");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=116.85,667.12");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=132.37,755.32");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=127.59,796.43");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=20.24,765.97");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=123.65,784.83");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=102.55,750.85");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=65.16,772.33");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=68.07,699.23");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=56.47,615.42");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=131.44,654.67");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=37.65,676.17");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=31.55,535.74");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=22.67,567.36");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=84.49,588.96");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=77.08,558.35");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=4.07,681.27");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=160.16,711.99");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=78.13,708.94");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=148.14,674.98");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=42.35,798.78");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=8.34,749.75");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=26.65,673.81");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=92.79,758.83");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=136.00,790.88");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=128.86,697.74");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=126.87,679.84");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=61.57,643.02");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=26.51,549.67");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=111.55,619.38");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=60.06,509.39");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=108.53,594.39");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=26.50,612.31");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=2.31,628.95");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=196.37,718.39");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=69.86,662.91");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=83.38,735.42");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=15.54,726.99");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=57.74,796.10");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=135.50,726.43");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=125.78,764.73");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=89.68,794.51");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=165.16,724.56");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=95.35,647.20");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=116.97,586.05");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=105.49,668.03");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=110.36,555.91");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=98.77,570.93");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=75.50,580.46");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=61.16,579.47");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=34.34,570.96");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=148.12,724.63");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=155.26,682.84");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=150.79,707.46");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=83.02,762.40");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=53.91,728.69");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=91.91,770.14");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=122.29,747.17");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=139.10,696.92");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=89.15,709.86");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=6.31,713.15");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=153.77,641.31");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=84.85,650.44");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=46.11,526.25");
    }

}

