
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn12_3
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
        @display("p=113.46,759.09");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=75.98,765.28");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=130.11,709.01");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=107.24,628.89");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=166.30,565.66");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=217.67,576.09");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=138.68,591.97");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=129.14,544.74");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=158.75,617.51");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=154.98,603.53");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=214.28,561.70");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=170.50,578.21");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=99.20,595.03");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=59.75,612.32");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=45.35,533.77");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=70.55,542.08");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=9.62,670.80");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=41.77,767.19");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=28.55,737.75");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=61.93,728.93");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=52.06,586.79");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=176.42,594.18");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=192.57,563.12");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=46.94,572.45");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=154.32,560.10");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=118.05,701.36");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=186.17,615.12");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=128.33,602.21");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=104.01,554.46");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=90.80,586.44");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=125.33,641.29");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=33.78,524.01");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=6.13,562.02");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=137.30,740.76");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=148.58,746.80");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=62.24,773.58");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=173.05,635.37");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=141.15,616.61");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=203.30,617.24");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=190.21,579.75");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=111.66,586.60");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=185.93,526.30");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=90.32,559.53");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=154.96,571.41");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=189.17,500.77");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=146.32,551.91");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=111.17,684.62");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=27.61,661.26");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=0.56,550.28");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=89.83,548.05");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=154.19,667.67");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=173.41,684.65");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=47.59,741.28");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=130.92,692.72");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=151.57,643.40");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=127.06,571.87");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=285.48,581.93");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=199.59,627.71");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=223.74,538.36");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=68.13,598.76");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=205.98,662.51");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=204.91,570.47");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=237.18,609.59");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=95.11,608.72");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=52.08,679.68");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=125.83,534.74");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=39.04,511.67");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=89.71,692.64");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=86.46,756.71");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=22.50,716.87");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=108.12,661.70");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=54.06,626.29");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=93.26,573.05");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=280.43,545.80");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=81.51,528.63");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=44.19,522.73");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=178.94,560.56");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=198.27,590.85");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=231.39,556.69");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=201.36,548.52");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=68.01,552.46");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=41.36,666.22");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=39.63,446.47");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=153.00,505.01");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=125.91,741.55");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=202.20,781.37");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=115.97,731.73");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=167.38,671.91");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=153.40,703.32");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=211.52,604.14");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=149.12,522.11");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=151.73,581.75");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=119.51,549.20");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=137.42,640.04");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=141.33,676.86");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=238.52,529.44");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=116.09,607.83");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=56.20,555.50");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=32.67,608.30");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=84.09,490.37");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=77.92,559.82");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=33.20,728.21");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=138.19,664.30");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=156.97,772.47");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=146.07,690.21");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=82.02,648.51");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=141.36,489.98");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=314.96,575.78");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=130.60,503.82");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=114.37,510.57");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=106.06,608.32");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=211.21,584.34");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=137.58,606.11");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=232.13,656.32");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=40.27,558.45");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=42.12,585.49");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=89.32,448.08");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=64.49,516.14");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=94.04,745.40");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=152.91,761.97");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=62.89,788.31");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=196.25,645.51");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=65.52,637.97");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=170.62,481.63");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=225.84,604.24");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=187.38,554.40");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=83.23,593.53");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=122.24,592.59");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=178.81,698.46");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=286.39,559.46");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=176.41,606.97");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=24.75,617.26");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=66.00,677.55");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=33.52,570.12");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=62.81,567.68");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=71.89,730.15");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=109.35,741.62");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=43.57,790.81");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=83.70,700.74");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=83.13,607.61");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=164.10,550.15");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=239.73,550.26");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=75.24,658.68");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=143.18,532.28");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=117.15,650.86");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=166.07,606.60");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=239.27,501.71");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=185.62,538.26");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=136.61,516.99");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=62.72,653.08");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=59.77,453.98");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=103.27,454.16");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=2.68,713.70");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=165.09,734.33");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=143.38,791.41");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=155.77,788.07");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=13.10,645.49");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=193.99,513.77");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=303.06,578.24");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=209.77,642.37");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=211.16,538.83");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=118.48,565.31");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=75.81,582.44");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=260.38,511.91");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=219.49,593.24");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=141.35,506.41");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=49.57,711.28");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=21.16,513.54");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=111.32,543.15");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=169.58,711.73");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=177.43,745.94");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=58.59,749.36");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=75.08,740.09");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=149.68,657.19");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=231.05,633.75");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=255.31,557.19");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=159.35,652.55");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=164.33,463.91");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=201.47,605.41");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=169.07,511.02");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=244.85,471.68");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=234.68,579.59");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=73.37,609.85");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=31.88,596.60");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=58.77,535.88");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=14.18,546.01");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=139.37,701.78");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=129.55,789.94");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=92.93,707.49");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=155.89,717.21");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=133.40,725.01");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=122.05,629.54");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=256.74,610.29");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=174.26,498.55");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=97.12,519.56");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=149.23,628.50");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=100.38,675.95");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=232.41,622.72");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=153.53,532.93");
    }

}

