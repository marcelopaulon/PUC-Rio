
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn12_5
{
    parameters:
        @display("bgb=2000,2000;bgg=100,1,grey95;bgu=m");
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
        @display("p=100.00,900.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=81.58,891.70");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=152.47,892.00");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=113.17,869.87");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=62.52,789.55");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=154.64,791.19");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=220.45,741.36");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=191.98,742.28");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=157.36,709.45");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=217.16,676.51");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=188.18,634.61");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=274.86,614.43");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=347.00,616.34");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=330.37,657.77");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=282.12,705.77");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=237.52,689.68");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=207.16,615.47");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=164.59,834.19");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=71.09,958.13");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=193.16,906.61");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=100.45,858.24");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=39.32,823.85");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=142.95,789.71");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=230.09,774.56");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=229.67,828.69");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=174.84,680.50");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=280.03,634.57");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=182.50,609.70");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=268.32,624.25");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=313.43,646.97");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=359.23,690.92");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=228.42,625.22");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=277.43,751.75");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=298.16,600.42");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=81.41,807.06");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=35.07,867.18");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=111.42,922.22");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=195.60,863.35");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=104.98,788.46");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=148.02,845.71");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=207.80,781.19");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=155.98,761.13");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=91.20,761.84");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=206.14,663.12");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=148.78,608.96");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=310.61,584.08");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=361.17,613.17");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=408.69,618.65");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=200.68,715.92");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=226.75,702.41");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=218.45,637.58");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=29.70,839.37");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=76.45,861.58");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=162.14,798.83");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=117.60,801.77");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=58.31,806.15");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=175.45,757.04");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=233.05,739.92");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=194.89,697.45");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=153.54,663.35");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=292.91,659.04");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=242.15,639.51");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=321.52,685.11");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=327.23,626.06");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=308.98,707.90");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=212.40,719.47");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=294.04,677.44");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=140.12,591.48");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=86.10,873.75");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=137.49,879.87");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=84.35,919.17");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=55.24,920.20");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=121.35,764.40");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=144.71,753.71");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=171.58,692.77");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=167.80,711.56");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=248.57,710.00");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=219.82,691.68");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=186.04,671.01");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=350.17,666.08");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=426.19,651.59");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=350.42,648.26");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=292.81,710.72");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=239.25,762.09");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=210.34,646.81");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=121.56,974.21");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=67.84,893.88");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=203.25,909.43");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=162.64,874.76");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=39.16,784.25");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=184.43,796.31");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=243.69,747.63");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=190.23,755.05");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=95.67,694.46");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=252.84,604.63");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=92.90,615.86");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=218.59,617.61");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=415.14,596.11");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=299.51,614.01");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=252.92,672.87");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=248.69,757.21");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=226.13,605.35");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=124.48,876.19");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=41.19,968.95");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=222.36,917.51");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=147.12,863.31");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=58.93,774.68");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=180.84,778.01");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=292.37,750.37");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=172.12,790.38");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=116.79,711.78");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=165.00,654.01");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=269.30,688.27");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=282.88,521.16");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=415.40,674.56");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=235.75,665.22");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=309.15,694.16");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=257.51,653.29");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=272.89,590.81");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=29.80,876.51");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=82.57,842.97");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=233.68,919.37");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=53.93,842.48");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=73.02,782.93");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=149.75,805.16");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=147.22,718.88");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=97.88,724.66");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=144.29,675.90");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=186.32,656.29");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=174.36,639.08");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=245.63,652.03");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=357.60,575.81");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=334.84,643.67");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=291.78,725.04");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=254.78,768.60");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=236.63,575.97");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=123.12,942.22");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=149.58,928.71");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=60.81,910.59");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=114.82,892.16");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=14.89,791.34");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=164.46,780.95");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=259.35,815.83");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=187.27,727.81");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=215.88,660.28");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=207.40,683.93");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=257.48,594.95");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=340.10,591.13");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=359.62,548.48");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=333.73,743.10");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=379.32,727.14");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=297.66,688.58");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=204.31,633.43");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=51.22,949.90");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=109.64,963.39");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=139.40,818.07");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=66.85,873.80");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=31.79,710.68");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=242.33,816.93");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=209.08,702.68");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=192.16,766.76");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=67.53,735.80");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=155.20,600.67");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=125.86,636.34");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=344.10,633.39");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=360.48,652.28");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=318.86,618.69");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=368.45,703.52");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=250.15,684.55");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=196.45,616.68");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=133.75,839.50");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=154.76,825.45");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=131.79,989.60");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=128.70,859.80");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=25.43,807.92");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=170.31,809.70");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=253.54,735.11");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=139.27,768.21");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=94.05,780.31");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=182.22,596.93");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=221.36,648.17");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=343.05,601.71");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=347.54,572.60");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=331.87,676.84");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=306.61,676.58");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=261.90,719.87");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=236.22,533.49");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=142.98,911.45");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=40.20,917.35");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=99.86,973.14");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=115.15,822.29");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=33.05,770.99");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=199.91,787.91");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=210.97,765.21");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=188.77,813.53");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=132.44,803.46");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=271.41,659.50");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=260.43,617.59");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=333.44,580.92");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=368.76,575.50");
    }

}

