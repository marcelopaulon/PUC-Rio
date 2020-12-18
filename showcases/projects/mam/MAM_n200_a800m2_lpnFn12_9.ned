
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn12_9
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
        @display("p=44.76,629.07");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=55.56,571.49");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=19.87,558.06");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=13.17,567.29");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=38.68,560.19");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=32.04,583.35");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=20.34,504.56");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=37.53,529.33");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=9.25,505.29");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=38.22,455.46");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=47.54,462.63");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=85.42,509.36");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=22.91,546.06");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=110.00,570.23");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=80.45,568.05");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=40.23,575.29");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=84.10,687.41");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=57.01,561.28");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=88.26,488.02");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=61.66,532.69");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=30.24,508.39");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=39.66,550.11");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=71.25,573.86");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=43.97,505.45");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=89.86,580.77");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=33.42,492.24");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=29.45,437.79");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=81.18,473.79");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=80.51,551.38");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=29.95,519.20");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=115.88,526.33");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=111.37,498.14");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=3.28,575.92");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=101.74,666.19");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=18.05,655.34");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=136.31,567.48");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=46.86,583.10");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=55.40,513.90");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=69.37,602.36");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=10.66,540.82");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=25.67,478.57");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=48.37,555.97");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=89.19,500.10");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=24.26,453.07");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=9.25,428.73");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=158.78,485.80");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=94.27,522.66");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=186.72,586.64");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=78.63,590.80");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=123.87,575.45");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=150.19,735.01");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=54.71,630.70");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=17.24,581.87");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=60.54,547.48");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=28.21,565.99");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=91.90,567.34");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=22.22,603.85");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=69.51,437.02");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=50.36,493.48");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=3.25,437.71");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=96.89,451.14");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=26.98,427.63");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=120.14,449.67");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=30.95,612.50");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=63.60,583.01");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=70.20,623.69");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=121.73,606.69");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=118.35,689.15");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=1.01,618.50");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=85.05,606.95");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=4.34,554.60");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=10.51,599.07");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=76.43,488.21");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=24.50,628.31");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=1.70,457.17");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=118.89,516.13");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=10.67,474.63");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=15.70,365.41");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=41.46,419.16");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=137.44,514.29");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=16.46,483.66");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=143.37,477.54");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=169.19,560.50");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=1.36,639.59");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=180.92,665.98");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=110.16,595.25");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=56.49,598.42");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=34.52,622.69");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=50.30,607.03");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=92.97,547.18");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=49.32,671.05");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=10.38,524.92");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=68.80,520.08");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=63.78,486.47");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=99.93,414.23");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=86.23,393.95");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=98.96,502.31");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=14.34,460.71");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=114.19,550.98");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=121.33,585.76");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=96.14,534.45");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=68.15,766.97");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=44.33,643.74");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=55.94,646.65");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=32.77,602.19");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=25.39,640.15");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=100.26,620.51");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=99.02,649.59");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=47.08,408.69");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=124.23,534.69");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=52.54,453.19");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=71.12,471.03");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=60.51,383.96");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=78.82,519.77");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=46.32,542.13");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=67.77,638.24");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=147.86,611.91");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=101.60,578.33");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=5.37,732.02");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=135.85,640.61");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=78.07,538.84");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=40.11,594.15");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=49.30,658.86");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=0.37,481.52");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=63.14,669.40");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=44.07,438.56");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=72.70,559.70");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=62.03,424.96");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=27.82,383.88");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=5.32,409.30");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=154.17,537.25");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=48.14,525.42");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=180.70,546.99");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=114.30,620.03");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=69.57,498.42");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=95.23,688.27");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=79.43,709.58");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=90.13,619.21");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=93.25,596.43");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=38.49,477.95");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=0.69,494.97");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=49.29,620.07");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=109.90,535.36");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=113.87,465.09");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=85.35,441.51");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=132.73,431.44");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=105.68,509.88");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=142.43,529.83");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=11.29,616.07");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=129.73,548.15");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=108.49,559.30");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=7.88,662.46");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=190.76,736.75");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=103.96,635.76");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=110.76,605.85");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=18.18,531.80");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=0.32,512.68");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=53.85,481.03");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=82.30,643.68");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=19.52,515.79");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=121.18,485.55");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=20.05,418.30");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=15.04,446.70");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=99.18,478.43");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=146.92,502.84");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=60.28,461.01");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=162.53,627.84");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=141.90,620.87");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=90.57,633.70");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=80.28,725.38");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=115.94,664.47");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=146.34,558.02");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=56.98,503.48");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=25.88,468.15");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=121.44,562.26");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=114.09,637.84");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=88.74,466.55");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=76.01,449.88");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=23.21,492.22");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=102.64,402.14");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=18.18,405.28");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=136.32,451.61");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=30.71,536.79");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=172.53,618.77");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=140.64,542.84");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=26.61,592.92");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=127.21,779.88");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=122.20,649.32");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=127.97,628.78");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=2.50,531.09");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=7.67,585.41");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=65.68,509.41");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=110.98,584.44");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=51.00,430.03");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=110.91,487.31");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=65.58,451.39");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=63.80,371.15");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=144.48,460.48");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=172.57,515.17");
    }

}

