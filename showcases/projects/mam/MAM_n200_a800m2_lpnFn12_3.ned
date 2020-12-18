
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn12_3
{
    parameters:
        @display("bgb=1600,1600;bgg=100,1,grey95;bgu=m");
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
        @display("p=120.72,628.66");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=180.89,606.37");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=158.70,604.64");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=213.89,605.08");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=184.25,638.35");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=226.86,548.71");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=235.42,563.45");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=198.00,530.16");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=254.42,560.48");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=292.15,617.84");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=318.12,634.45");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=273.83,645.73");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=261.15,619.02");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=224.04,565.56");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=161.99,583.64");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=201.97,517.19");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=112.00,726.09");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=128.95,581.26");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=160.85,665.45");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=142.36,690.33");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=198.79,636.40");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=150.62,639.65");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=174.80,557.08");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=147.91,543.43");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=200.95,566.72");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=246.14,534.05");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=287.47,523.28");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=326.22,644.28");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=266.72,662.15");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=285.34,653.14");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=173.22,513.21");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=98.00,561.64");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=202.47,507.14");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=138.39,765.29");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=54.04,611.40");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=207.66,641.32");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=122.94,658.11");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=161.61,556.81");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=162.66,638.96");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=238.93,505.39");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=249.03,491.36");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=212.22,540.27");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=302.34,603.97");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=225.29,648.41");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=315.93,574.33");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=187.96,677.80");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=184.66,571.56");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=265.46,608.34");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=208.78,551.46");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=151.00,499.73");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=143.33,730.37");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=34.87,623.34");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=188.84,544.41");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=136.92,633.44");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=291.71,591.70");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=98.19,668.06");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=280.46,544.59");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=281.71,558.22");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=229.71,584.89");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=234.25,494.11");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=321.91,657.32");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=311.10,616.48");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=231.72,702.68");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=249.41,639.67");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=160.19,505.50");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=106.83,529.21");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=195.83,477.79");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=73.41,772.01");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=50.58,585.93");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=172.17,591.04");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=110.86,643.14");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=230.84,677.38");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=110.64,601.69");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=209.15,453.23");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=151.27,533.04");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=214.25,436.66");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=215.25,478.75");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=295.13,646.51");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=286.69,577.21");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=362.57,617.31");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=349.41,615.10");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=254.42,508.65");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=137.70,571.84");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=253.18,520.81");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=48.19,675.86");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=101.84,624.11");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=218.79,628.79");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=160.86,624.22");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=229.28,623.85");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=131.96,671.13");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=224.93,575.64");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=241.34,516.76");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=222.62,599.40");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=334.60,536.41");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=279.09,699.22");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=329.43,633.70");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=245.17,623.29");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=185.24,624.12");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=292.38,513.86");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=69.98,587.66");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=142.84,458.96");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=148.33,784.73");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=130.70,606.07");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=188.69,589.32");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=106.75,572.58");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=216.45,679.97");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=135.04,646.10");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=224.88,521.27");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=252.83,571.31");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=249.00,479.65");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=307.25,540.42");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=273.05,629.71");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=327.62,590.29");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=294.63,632.06");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=331.24,601.58");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=261.10,597.87");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=121.74,543.91");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=236.27,531.07");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=105.27,761.04");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=51.68,566.69");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=221.88,616.66");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=173.59,656.73");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=137.00,552.18");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=148.92,679.92");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=244.94,463.06");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=317.02,592.14");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=171.90,500.04");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=282.71,505.86");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=283.16,628.87");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=332.31,699.59");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=262.34,635.13");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=289.38,664.34");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=191.19,654.88");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=99.00,545.52");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=158.88,492.54");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=109.05,679.24");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=88.93,711.66");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=120.45,570.49");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=204.37,681.20");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=237.43,601.90");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=242.78,588.35");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=191.51,607.64");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=291.62,491.12");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=205.46,496.83");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=228.36,479.45");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=370.64,677.06");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=395.92,620.21");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=333.64,724.32");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=338.01,558.46");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=190.80,506.26");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=212.24,526.74");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=179.32,537.81");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=28.69,720.80");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=59.38,666.25");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=84.53,628.86");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=166.78,567.95");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=251.90,603.23");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=176.23,681.70");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=265.88,561.77");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=305.98,565.08");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=218.07,556.86");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=282.21,476.03");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=321.58,670.73");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=399.49,632.98");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=246.88,661.22");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=275.75,609.90");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=264.61,573.22");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=96.04,584.85");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=178.73,489.49");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=171.75,630.82");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=88.58,681.43");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=188.67,688.66");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=212.48,659.33");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=208.19,696.84");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=255.24,628.01");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=258.22,544.03");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=231.27,612.23");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=112.02,512.72");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=172.33,528.71");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=320.13,685.34");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=262.94,587.04");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=276.08,568.77");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=203.81,653.08");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=209.06,588.20");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=103.53,654.97");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=127.52,513.50");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=89.80,723.07");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=196.82,668.93");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=248.38,548.06");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=147.71,584.18");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=241.98,687.93");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=98.63,645.02");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=266.81,514.57");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=187.11,519.17");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=220.27,511.81");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=225.50,531.84");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=356.49,683.31");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=356.64,644.79");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=258.13,697.73");
    }

}

