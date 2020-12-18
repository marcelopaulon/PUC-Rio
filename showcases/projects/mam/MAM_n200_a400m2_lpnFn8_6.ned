
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn8_6
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
        @display("p=100.00,300.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=73.56,337.47");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=69.84,323.57");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=143.15,390.31");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=181.29,366.79");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=98.88,364.35");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=73.98,391.51");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=55.66,361.83");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=9.47,343.67");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=83.30,302.10");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=121.90,294.55");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=114.60,333.13");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=113.66,317.19");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=104.11,322.01");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=79.22,283.91");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=133.10,303.08");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=65.41,251.04");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=64.18,184.30");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=77.06,184.29");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=145.23,149.78");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=190.28,237.45");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=246.30,200.52");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=219.54,171.34");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=265.58,121.45");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=264.38,165.24");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=43.72,241.18");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=44.16,334.49");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=112.44,373.90");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=146.14,301.94");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=159.31,277.85");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=140.19,317.49");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=153.59,352.02");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=53.05,348.74");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=33.41,348.92");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=119.77,257.79");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=115.24,207.41");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=127.26,394.85");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=92.18,329.54");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=132.19,290.98");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=44.90,195.64");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=127.30,216.85");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=97.42,288.71");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=92.84,169.61");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=78.18,150.32");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=143.85,190.72");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=203.11,255.01");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=286.76,162.72");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=211.24,145.82");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=291.75,116.82");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=279.27,243.76");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=134.58,344.87");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=11.87,280.65");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=93.02,242.71");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=183.03,312.60");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=212.45,309.88");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=87.99,352.28");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=85.09,394.64");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=28.52,367.00");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=7.87,379.91");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=73.20,263.57");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=134.79,274.64");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=163.53,317.45");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=151.95,310.41");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=107.14,282.76");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=31.20,331.64");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=97.90,215.57");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=61.51,212.62");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=42.29,221.04");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=77.31,197.04");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=152.12,164.77");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=208.18,225.74");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=239.57,137.24");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=237.51,190.34");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=264.27,145.49");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=256.36,152.17");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=159.23,252.38");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=70.69,354.74");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=43.04,310.11");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=80.76,326.18");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=162.48,357.02");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=121.23,356.13");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=95.94,373.99");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=133.93,379.79");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=64.92,282.86");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=4.31,288.98");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=67.20,303.51");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=113.93,384.80");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=191.73,334.46");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=169.74,257.57");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=58.01,264.79");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=108.49,360.76");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=24.21,274.70");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=26.70,208.86");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=85.98,189.42");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=52.14,152.32");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=209.97,198.92");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=164.54,182.39");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=161.99,194.91");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=268.96,105.48");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=317.68,167.38");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=85.27,379.55");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=16.99,397.30");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=38.89,366.43");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=214.16,383.65");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=166.27,346.86");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=101.82,345.15");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=70.37,371.09");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=80.04,363.51");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=19.07,326.53");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=117.89,238.31");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=42.80,285.70");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=150.87,371.84");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=56.43,325.62");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=83.71,340.46");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=149.95,218.14");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=148.34,258.42");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=51.13,173.55");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=84.30,222.38");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=111.28,185.80");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=241.76,154.46");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=181.20,280.18");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=162.29,160.09");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=270.63,203.45");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=240.91,214.10");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=304.98,215.57");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=174.56,338.80");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=74.92,243.08");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=131.09,333.09");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=239.49,390.25");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=202.44,371.61");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=55.46,299.95");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=37.48,383.91");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=100.80,394.73");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=51.90,373.82");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=143.98,285.08");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=41.88,323.35");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=158.79,299.74");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=70.42,292.93");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=124.99,315.46");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=54.88,276.69");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=167.41,268.69");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=25.99,191.04");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=11.66,266.84");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=100.74,194.98");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=94.19,133.79");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=256.74,209.56");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=286.38,265.61");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=244.55,79.68");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=236.13,120.04");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=300.55,138.45");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=193.10,314.22");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=160.29,337.36");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=14.03,302.15");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=228.01,374.65");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=166.59,371.90");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=9.89,354.35");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=21.05,359.57");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=91.58,309.19");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=22.03,346.32");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=97.80,267.66");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=182.45,248.21");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=192.48,289.34");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=140.90,247.18");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=141.08,235.31");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=9.45,332.40");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=145.96,327.45");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=70.39,207.96");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=77.27,88.14");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=127.97,150.02");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=163.68,213.93");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=206.52,270.13");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=310.41,205.07");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=214.02,237.50");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=306.59,192.11");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=283.95,208.90");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=41.75,274.98");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=31.35,315.66");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=62.69,339.09");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=220.17,366.73");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=208.27,355.95");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=86.41,268.20");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=65.58,398.73");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=44.13,398.72");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=5.99,314.39");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=25.68,232.91");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=105.61,227.52");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=204.34,321.90");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=106.49,309.52");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=133.94,259.23");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=68.04,272.60");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=204.49,290.99");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=0.26,192.10");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=106.38,101.76");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=105.65,160.11");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=193.99,93.79");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=174.11,222.35");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=170.05,240.33");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=137.79,181.49");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=292.45,58.30");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=311.68,240.93");
    }

}

