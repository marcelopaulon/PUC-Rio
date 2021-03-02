
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn4_3
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=12.41,81.44");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=49.35,153.29");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=43.83,177.41");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=38.85,91.88");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=51.87,91.29");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=82.28,95.71");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=103.38,115.91");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=51.70,77.40");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=63.10,78.55");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=84.37,85.23");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=3.15,141.97");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=36.38,161.08");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=135.83,150.75");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=105.47,164.21");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=106.75,174.76");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=92.34,180.43");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=126.28,169.73");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=178.22,176.46");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=169.77,193.24");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=124.68,155.62");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=171.29,158.33");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=179.37,131.86");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=167.48,123.40");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=249.06,106.08");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=223.76,95.39");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=180.50,75.59");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=274.16,61.65");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=232.48,17.71");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=289.81,43.54");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=312.51,69.89");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=322.33,154.39");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=272.93,230.79");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=239.23,206.82");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=204.44,174.05");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=206.54,230.58");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=176.35,263.74");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=176.70,232.20");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=116.94,287.42");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=183.15,275.24");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=232.01,300.92");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=213.06,262.19");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=254.29,288.60");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=205.53,212.03");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=204.05,294.33");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=216.26,281.60");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=244.09,322.46");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=218.95,402.46");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=236.46,383.78");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=208.52,358.32");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=151.82,102.82");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=19.93,60.68");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=22.01,116.03");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=69.80,142.75");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=62.61,53.18");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=83.92,26.27");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=79.01,110.40");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=19.45,101.14");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=116.47,113.92");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=80.81,75.43");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=113.83,51.26");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=29.29,187.25");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=12.89,152.79");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=119.22,208.49");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=78.12,181.08");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=25.76,160.45");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=185.98,194.87");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=57.42,240.31");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=250.25,201.96");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=236.44,186.97");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=99.57,211.17");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=136.32,166.56");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=132.08,99.48");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=159.31,113.57");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=268.63,95.93");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=222.27,31.36");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=154.95,39.96");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=363.31,69.11");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=194.98,1.85");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=283.04,32.21");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=242.98,140.17");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=345.17,220.97");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=279.77,272.54");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=293.86,253.10");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=176.48,149.26");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=180.13,203.46");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=186.52,349.54");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=133.03,318.88");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=143.78,276.51");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=137.69,291.09");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=194.08,238.35");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=225.24,263.96");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=190.80,284.50");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=230.95,224.84");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=174.46,358.54");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=264.99,368.50");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=230.26,340.33");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=227.69,425.51");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=302.95,311.95");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=219.36,377.50");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=96.29,149.38");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=20.83,74.37");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=105.26,135.30");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=21.59,131.44");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=103.94,33.21");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=79.98,166.17");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=145.21,161.90");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=77.80,134.47");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=64.81,27.94");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=120.65,88.19");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=85.75,121.15");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=9.99,163.66");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=7.56,219.69");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=141.70,82.00");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=158.19,166.37");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=118.97,135.21");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=78.19,274.00");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=190.21,166.04");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=160.99,182.43");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=211.65,189.14");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=142.17,190.76");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=111.84,154.91");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=174.74,63.62");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=208.19,111.02");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=311.18,130.94");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=216.12,137.50");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=205.67,74.44");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=300.21,50.63");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=319.59,32.64");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=340.81,96.42");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=372.10,15.75");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=327.81,199.19");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=234.82,152.00");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=262.64,132.51");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=254.85,91.10");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=188.63,208.83");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=97.03,256.00");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=139.24,215.14");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=34.66,244.51");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=104.41,289.65");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=285.99,340.67");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=236.08,235.02");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=253.93,214.86");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=138.88,260.12");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=244.70,262.12");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=206.54,324.38");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=176.90,325.72");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=238.27,435.47");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=243.47,444.33");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=250.09,305.24");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=73.23,89.07");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=31.55,67.48");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=89.44,170.55");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=54.02,185.12");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=32.27,145.91");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=56.38,123.00");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=62.00,134.66");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=144.51,35.71");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=71.29,39.96");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=33.15,121.66");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=124.36,70.33");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=2.35,186.14");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=109.06,204.43");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=92.16,70.38");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=69.23,170.13");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=68.57,108.60");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=131.94,250.87");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=132.47,132.06");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=157.46,145.03");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=187.32,104.27");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=124.83,243.35");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=196.67,88.94");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=199.25,128.70");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=200.90,156.09");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=259.67,184.55");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=221.27,58.93");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=234.88,87.91");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=256.69,66.74");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=213.46,41.57");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=308.14,96.80");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=277.34,134.23");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=254.17,173.98");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=261.37,299.76");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=265.67,193.60");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=274.74,241.30");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=131.74,232.38");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=154.84,282.33");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=127.69,180.03");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=46.61,299.02");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=262.62,247.53");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=266.44,284.44");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=212.08,334.74");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=310.36,363.88");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=166.71,279.18");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=213.49,219.00");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=249.64,247.87");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=299.53,264.64");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=195.86,390.36");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=263.01,392.56");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=277.73,346.69");
    }

}

