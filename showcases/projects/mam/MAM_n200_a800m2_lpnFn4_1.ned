
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=67.81,43.65");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=37.11,117.16");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=0.83,74.18");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=61.62,79.03");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=62.97,66.84");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=36.01,54.79");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=34.08,143.77");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=19.97,119.60");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=116.34,128.76");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=157.57,213.96");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=95.88,242.66");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=48.20,327.04");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=96.69,379.50");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=77.29,434.27");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=81.69,450.20");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=8.30,512.72");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=54.61,541.03");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=126.74,588.58");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=194.61,608.34");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=277.46,596.37");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=268.33,600.54");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=289.45,562.08");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=329.71,542.68");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=364.53,553.74");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=337.94,550.08");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=280.64,543.51");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=236.90,631.57");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=214.81,601.97");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=245.72,621.00");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=293.34,673.57");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=336.73,746.34");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=366.72,747.15");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=374.94,723.18");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=380.99,714.08");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=351.47,728.57");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=313.27,702.54");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=228.65,707.48");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=186.98,581.85");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=124.54,642.21");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=71.74,574.68");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=77.03,589.15");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=116.29,539.18");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=142.47,634.05");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=160.13,709.29");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=104.92,742.29");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=72.12,767.82");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=81.29,773.84");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=86.35,758.76");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=149.69,788.61");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=51.80,146.42");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=18.14,104.51");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=49.36,128.38");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=34.31,82.44");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=69.23,115.57");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=23.00,37.54");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=120.86,99.90");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=27.73,92.40");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=36.87,167.21");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=107.04,163.55");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=111.54,237.13");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=156.36,308.12");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=43.29,316.43");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=114.36,420.63");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=72.93,422.01");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=34.68,536.15");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=44.17,438.96");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=5.61,487.25");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=163.53,645.93");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=159.28,550.47");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=357.08,578.96");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=250.65,570.36");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=371.67,575.54");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=370.37,473.54");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=354.61,531.17");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=339.92,601.37");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=337.55,527.14");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=235.52,619.27");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=221.89,565.20");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=260.36,623.54");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=365.64,653.39");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=307.75,666.27");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=314.13,692.33");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=310.21,781.44");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=420.67,692.58");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=409.42,714.76");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=310.67,682.68");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=326.14,716.35");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=174.88,620.42");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=137.18,572.30");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=164.81,539.99");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=108.01,581.81");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=114.93,502.64");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=187.53,597.60");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=163.90,718.81");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=112.84,732.83");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=30.44,749.83");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=125.94,773.25");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=143.20,681.86");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=225.11,797.83");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=49.44,58.46");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=39.56,73.36");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=101.71,76.34");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=51.56,74.24");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=78.98,87.65");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=28.57,27.67");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=33.62,17.82");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=98.55,116.19");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=30.76,133.75");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=127.32,128.43");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=154.20,198.82");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=97.24,265.88");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=19.40,375.86");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=131.59,429.95");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=99.17,426.13");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=118.82,461.43");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=27.49,494.09");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=17.94,474.34");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=73.09,626.31");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=129.57,548.01");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=275.98,681.28");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=276.28,570.94");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=326.33,507.14");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=368.46,463.46");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=340.42,566.86");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=425.73,554.53");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=314.77,578.72");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=222.46,541.09");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=198.55,556.22");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=328.77,585.29");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=225.70,643.82");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=285.55,724.93");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=399.57,723.68");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=281.57,714.80");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=420.84,739.72");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=430.86,692.64");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=372.97,737.29");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=254.78,651.05");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=223.13,584.14");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=184.90,570.50");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=160.95,613.74");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=104.85,682.50");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=140.66,589.05");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=177.73,643.16");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=180.69,727.34");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=80.68,708.92");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=47.94,778.67");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=79.06,796.84");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=96.01,725.91");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=193.92,749.79");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=121.24,62.42");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=82.27,45.96");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=104.52,143.55");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=9.49,60.26");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=5.52,89.73");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=77.00,0.92");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=53.97,89.54");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=128.86,163.19");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=56.19,161.66");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=148.68,158.02");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=250.08,235.51");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=94.32,288.48");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=48.62,302.48");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=187.94,402.97");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=65.29,437.73");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=34.44,525.75");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=9.91,551.75");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=63.14,525.30");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=107.57,614.72");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=173.94,688.55");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=310.52,605.12");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=219.56,673.68");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=295.85,576.88");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=297.36,478.68");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=315.21,470.65");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=403.84,502.50");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=258.42,481.93");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=218.44,663.19");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=182.88,695.01");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=174.97,672.99");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=241.33,605.68");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=361.34,670.39");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=385.82,765.80");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=363.60,726.59");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=428.79,763.35");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=374.16,788.37");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=386.00,726.59");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=257.64,668.77");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=118.37,555.98");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=118.55,650.27");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=64.93,605.83");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=38.32,656.42");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=51.01,594.98");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=229.41,656.96");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=118.98,707.99");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=47.99,755.13");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=136.18,693.19");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=38.86,687.29");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=85.56,661.61");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=147.59,695.24");
    }

}

