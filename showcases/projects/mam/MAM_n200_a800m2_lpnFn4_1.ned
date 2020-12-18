
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn4_1
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
        @display("p=39.42,732.20");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=49.12,653.37");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=23.61,732.26");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=49.08,639.11");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=45.51,574.36");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=8.07,591.81");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=105.32,603.55");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=134.57,597.07");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=148.78,613.95");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=94.10,654.68");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=145.29,692.03");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=198.15,627.68");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=179.18,642.23");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=138.73,636.49");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=121.19,610.52");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=145.12,517.62");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=63.13,550.10");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=128.11,499.40");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=123.34,413.83");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=64.63,353.18");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=94.33,375.35");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=170.35,321.73");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=113.02,379.72");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=73.92,462.05");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=78.76,486.45");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=67.08,470.18");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=114.15,501.33");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=90.41,522.01");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=138.24,556.88");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=158.08,543.54");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=132.08,530.72");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=107.36,563.36");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=102.93,512.57");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=71.51,521.82");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=108.95,586.56");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=207.88,574.38");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=220.10,631.23");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=233.35,695.01");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=255.30,687.51");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=242.24,619.05");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=170.74,625.09");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=219.21,688.38");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=221.48,658.22");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=161.82,677.46");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=119.10,671.68");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=120.49,691.38");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=66.73,637.09");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=88.24,667.55");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=58.07,742.00");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=116.66,715.77");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=16.86,713.24");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=105.32,681.26");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=48.77,758.84");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=67.25,731.92");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=50.69,628.57");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=52.21,562.10");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=120.71,520.56");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=196.03,597.73");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=177.32,608.95");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=32.75,719.94");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=91.93,679.67");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=133.27,625.26");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=229.93,684.42");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=90.36,706.28");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=160.57,587.96");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=171.62,448.84");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=93.23,543.46");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=87.73,569.76");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=157.03,421.81");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=66.70,402.80");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=113.66,340.11");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=89.41,316.81");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=35.01,358.89");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=55.77,471.39");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=151.97,532.14");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=88.12,477.09");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=91.22,442.17");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=50.55,591.66");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=213.88,615.33");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=160.27,511.83");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=96.29,559.42");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=36.18,628.11");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=47.93,500.13");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=102.53,498.33");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=107.25,575.30");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=233.33,509.17");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=248.09,705.40");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=206.77,658.78");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=261.98,701.97");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=288.98,553.60");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=203.84,538.86");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=193.99,757.50");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=315.56,661.23");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=72.20,664.36");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=147.32,660.32");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=148.25,743.93");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=73.84,646.46");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=150.50,625.30");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=79.04,781.86");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=142.91,733.36");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=48.44,719.60");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=91.90,614.70");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=28.74,710.39");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=35.10,554.07");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=29.80,593.12");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=7.04,614.56");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=99.95,525.26");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=114.79,643.66");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=173.21,544.66");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=145.54,680.73");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=178.88,740.50");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=199.54,565.56");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=166.26,710.75");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=175.34,671.50");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=159.17,652.88");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=112.12,459.61");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=25.41,472.39");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=112.95,434.32");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=105.79,407.88");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=0.18,331.44");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=90.53,283.08");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=124.03,254.11");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=145.34,388.54");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=61.81,531.53");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=25.09,491.64");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=75.35,448.01");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=176.62,503.28");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=74.37,537.88");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=196.57,475.92");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=176.29,556.60");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=214.37,480.24");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=108.61,544.98");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=141.60,446.99");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=54.89,580.53");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=22.28,539.02");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=214.41,551.42");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=193.85,679.12");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=257.57,655.70");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=268.98,681.95");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=289.45,664.76");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=126.01,708.04");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=253.73,675.41");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=135.89,709.64");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=130.47,693.44");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=206.72,707.99");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=84.11,715.23");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=77.27,585.79");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=92.53,690.41");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=31.60,659.76");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=109.24,764.00");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=56.96,780.21");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=92.95,629.49");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=17.81,780.45");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=102.12,643.37");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=54.97,544.30");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=74.27,615.59");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=131.44,510.23");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=150.62,601.81");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=168.13,661.16");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=84.08,635.49");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=220.49,673.21");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=237.87,538.29");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=170.73,690.27");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=62.23,657.50");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=129.36,574.27");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=115.21,485.64");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=13.12,626.97");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=192.54,520.74");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=102.13,419.44");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=56.61,327.15");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=145.16,344.98");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=185.24,333.95");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=44.75,339.19");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=76.12,425.78");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=138.46,426.60");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=95.38,463.91");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=145.38,495.17");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=63.80,562.15");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=169.10,476.12");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=238.97,574.44");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=184.24,473.30");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=128.43,584.44");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=171.13,512.97");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=85.21,550.75");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=177.94,656.08");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=214.38,516.96");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=174.03,568.95");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=209.45,732.72");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=256.26,715.03");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=302.50,674.22");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=169.98,583.89");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=181.85,630.26");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=205.59,722.64");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=69.89,711.77");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=47.25,685.72");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=120.00,728.51");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=67.02,583.18");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=145.13,722.76");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=85.89,737.14");
    }

}

