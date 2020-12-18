
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn4_6
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
        @display("p=21.29,685.32");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=56.73,685.58");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=34.19,642.35");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=52.95,652.58");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=2.70,627.10");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=73.22,612.33");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=101.38,676.95");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=134.19,588.52");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=141.10,615.65");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=163.54,617.21");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=138.63,689.45");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=197.52,767.17");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=143.27,721.22");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=82.09,788.01");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=102.57,787.97");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=85.77,758.17");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=110.74,721.06");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=44.79,757.87");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=94.32,646.17");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=108.24,628.83");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=36.10,629.34");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=48.07,633.61");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=3.25,610.59");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=27.91,598.69");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=86.47,529.45");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=38.26,512.21");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=25.38,534.17");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=26.44,518.75");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=92.90,586.84");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=153.34,601.82");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=166.14,669.88");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=119.61,610.14");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=195.37,549.67");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=241.98,542.92");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=237.99,530.40");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=222.90,557.72");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=230.63,547.23");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=254.05,524.55");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=242.35,512.55");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=218.15,481.89");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=277.34,433.43");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=212.64,386.53");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=261.26,460.53");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=322.60,465.07");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=322.99,477.92");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=305.87,490.85");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=396.54,462.77");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=331.50,393.64");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=317.17,421.00");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=102.69,665.21");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=16.26,663.39");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=98.83,771.67");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=65.74,721.23");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=11.61,682.24");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=24.56,625.15");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=139.08,577.77");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=172.53,686.29");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=143.84,491.29");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=166.85,632.10");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=168.36,588.15");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=58.63,697.54");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=190.80,755.37");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=139.86,710.39");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=23.72,794.72");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=93.16,718.87");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=88.75,699.92");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=182.14,655.30");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=46.20,733.16");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=77.57,636.65");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=110.45,618.92");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=61.74,581.64");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=112.32,709.99");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=25.81,588.04");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=34.50,572.80");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=85.33,517.78");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=96.84,485.48");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=51.85,505.66");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=13.23,486.92");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=73.59,648.64");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=200.78,640.35");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=212.08,725.93");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=111.60,592.71");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=172.60,567.71");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=182.57,499.79");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=302.57,558.24");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=151.76,583.17");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=251.58,547.29");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=322.84,564.20");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=285.15,522.27");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=220.90,450.39");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=312.40,360.22");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=241.46,359.59");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=284.51,510.65");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=318.44,504.87");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=366.25,513.53");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=270.42,536.41");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=423.24,465.70");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=361.82,369.23");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=265.29,367.49");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=75.75,699.32");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=71.30,710.26");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=96.95,745.77");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=19.87,567.08");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=43.29,610.61");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=63.08,647.58");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=112.04,683.20");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=163.90,645.92");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=114.62,511.31");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=105.25,640.41");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=121.42,676.36");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=150.88,689.55");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=136.24,733.75");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=165.52,705.12");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=142.87,762.41");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=63.98,737.04");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=88.99,774.82");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=125.73,765.22");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=63.82,769.12");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=122.34,643.72");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=122.58,689.95");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=56.41,620.48");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=89.80,543.39");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=3.84,554.38");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=85.33,616.23");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=172.72,528.62");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=109.68,464.73");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=101.87,521.57");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=4.57,513.14");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=83.63,593.82");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=242.77,586.05");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=109.64,744.92");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=63.83,568.38");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=195.50,529.53");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=290.40,572.01");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=282.13,553.56");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=216.94,544.03");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=206.23,561.28");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=292.36,593.04");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=218.27,528.99");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=259.10,492.41");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=199.80,402.63");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=142.85,449.85");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=264.91,398.55");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=302.00,467.34");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=294.51,504.90");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=285.00,447.35");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=391.06,380.34");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=313.57,394.03");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=260.64,386.68");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=144.21,671.97");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=33.60,618.35");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=4.10,647.59");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=91.67,657.32");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=104.98,606.70");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=54.24,602.76");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=110.39,565.69");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=64.36,593.28");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=191.64,629.18");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=61.03,658.60");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=148.49,658.36");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=164.85,693.69");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=188.22,775.11");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=190.80,692.27");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=117.55,730.02");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=69.38,795.97");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=55.59,724.87");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=90.46,731.88");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=30.86,754.39");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=156.37,627.74");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=117.85,580.77");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=31.96,607.92");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=14.89,586.75");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=95.91,617.29");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=45.20,622.71");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=60.11,532.12");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=49.85,548.55");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=88.61,568.70");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=14.76,473.19");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=11.19,637.57");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=166.01,537.16");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=237.68,630.94");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=91.12,603.92");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=132.05,492.90");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=338.53,525.85");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=332.36,536.11");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=179.18,636.09");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=204.87,503.04");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=349.01,528.06");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=258.52,511.69");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=245.56,389.00");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=276.15,415.63");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=228.19,392.94");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=297.96,413.87");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=375.03,419.98");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=376.55,555.92");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=382.63,437.01");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=494.03,469.26");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=292.98,389.55");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=351.33,332.60");
    }

}

