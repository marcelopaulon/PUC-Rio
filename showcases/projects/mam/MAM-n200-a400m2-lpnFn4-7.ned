
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn4-7
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
        @display("p=118.00,191.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=113.50,181.62");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=103.78,153.26");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=196.07,182.74");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=108.66,224.26");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=84.90,242.96");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=5.80,281.90");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=17.95,279.92");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=20.60,215.73");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=61.10,249.18");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=10.60,168.10");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=46.09,133.19");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=29.50,90.56");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=75.87,167.38");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=33.58,124.67");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=98.21,228.88");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=87.93,185.08");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=145.60,155.20");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=97.60,139.55");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=33.99,184.15");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=61.39,218.28");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=68.51,209.50");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=23.06,162.26");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=54.15,165.70");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=107.73,88.09");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=156.97,39.31");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=126.26,8.99");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=172.55,61.69");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=106.08,47.58");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=154.59,18.59");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=82.38,42.51");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=113.36,133.00");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=181.38,155.86");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=114.83,161.68");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=36.75,145.49");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=71.00,138.20");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=135.68,265.14");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=125.72,270.94");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=83.10,208.42");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=52.12,274.13");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=40.63,263.60");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=168.08,231.66");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=200.90,228.43");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=221.84,266.36");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=237.87,314.72");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=209.93,310.42");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=150.53,339.60");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=149.52,356.55");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=227.01,366.59");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=212.37,321.67");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=131.05,194.91");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=138.02,243.14");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=88.44,157.84");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=246.28,250.25");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=145.01,169.02");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=157.67,196.51");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=78.47,285.40");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=10.30,341.91");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=43.71,299.56");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=26.98,265.11");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=84.71,121.21");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=54.53,123.22");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=78.28,81.21");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=146.35,220.07");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=119.05,100.54");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=109.24,237.38");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=130.75,211.98");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=162.26,214.40");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=131.50,125.66");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=48.23,150.70");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=43.94,227.92");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=61.12,194.33");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=22.97,101.64");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=47.87,192.76");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=57.45,74.44");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=93.35,50.15");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=46.69,36.47");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=168.41,95.94");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=182.19,30.88");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=156.41,93.43");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=173.28,7.43");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=88.11,74.63");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=191.52,157.86");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=78.36,97.90");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=25.18,137.45");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=66.44,154.82");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=191.02,240.90");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=129.17,288.18");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=67.51,110.47");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=39.72,289.19");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=74.16,224.08");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=186.31,262.49");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=226.92,208.81");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=212.23,283.25");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=297.67,247.53");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=261.98,348.75");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=112.67,311.08");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=57.21,385.83");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=263.20,307.30");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=309.98,303.64");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=59.66,142.32");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=169.78,145.84");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=133.33,160.48");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=243.04,147.74");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=99.80,165.61");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=135.62,304.71");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=52.44,211.99");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=38.48,243.27");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=24.08,179.91");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=32.35,252.54");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=81.32,198.38");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=100.79,64.39");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=15.97,53.18");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=98.23,205.39");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=109.26,118.57");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=112.22,207.51");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=84.31,172.84");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=206.31,176.34");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=34.05,196.13");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=13.60,194.36");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=94.97,256.25");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=64.74,288.16");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=101.15,177.13");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=71.04,244.38");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=29.40,67.01");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=132.09,44.22");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=121.92,39.00");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=164.83,119.60");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=115.20,71.62");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=145.07,23.29");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=67.60,41.68");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=202.55,150.26");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=170.24,165.39");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=35.56,211.58");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=36.37,77.90");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=71.93,51.79");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=106.24,278.13");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=114.06,330.96");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=98.41,300.16");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=54.02,346.22");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=89.69,324.96");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=158.17,141.69");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=142.94,233.83");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=257.08,276.41");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=204.42,361.64");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=191.03,308.67");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=199.37,386.25");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=127.85,319.87");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=252.92,359.22");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=230.99,324.97");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=123.94,250.07");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=205.41,218.46");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=113.15,149.31");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=131.23,115.60");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=56.53,176.65");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=76.19,314.21");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=12.53,290.58");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=3.91,259.39");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=15.69,305.29");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=16.22,262.71");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=21.85,242.89");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=10.78,210.01");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=81.07,8.57");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=39.87,162.59");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=36.02,134.90");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=120.64,299.76");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=131.35,232.50");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=182.41,70.82");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=183.90,116.55");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=107.71,250.07");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=40.60,174.64");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=124.18,151.49");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=65.53,168.91");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=2.20,149.51");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=37.19,56.22");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=218.47,43.09");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=100.41,77.13");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=167.79,37.70");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=111.11,27.70");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=84.33,32.01");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=56.90,18.68");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=154.69,57.77");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=214.25,94.63");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=101.82,189.97");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=67.82,67.19");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=78.42,150.42");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=141.19,333.58");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=114.54,286.27");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=44.52,204.31");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=16.09,320.41");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=6.67,246.04");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=176.95,213.44");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=205.48,250.38");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=264.50,249.90");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=213.07,296.41");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=189.02,347.20");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=113.28,344.93");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=138.31,348.36");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=235.12,399.05");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=163.88,364.47");
    }

}

