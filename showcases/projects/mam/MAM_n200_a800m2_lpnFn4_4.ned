
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn4_4
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
        @display("p=73.90,123.11");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=77.66,49.84");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=83.79,78.33");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=182.19,70.00");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=234.39,51.74");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=186.06,27.48");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=201.60,65.64");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=198.67,90.62");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=150.88,144.29");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=156.92,154.33");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=219.88,112.01");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=304.42,157.18");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=338.59,164.88");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=307.74,170.22");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=263.07,168.30");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=214.06,132.94");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=140.66,79.41");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,68.31");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=98.14,36.02");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=114.74,72.95");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=135.35,153.22");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=132.39,69.86");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=209.74,92.57");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=163.62,101.91");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=213.94,143.74");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=165.00,133.70");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=131.18,216.21");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=68.06,264.89");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=40.20,248.99");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=10.90,233.52");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=66.92,285.93");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=42.42,306.17");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=75.21,364.14");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=16.83,352.58");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=69.67,421.18");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=164.79,392.73");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=195.95,358.77");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=195.00,433.67");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=186.50,439.00");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=239.80,481.10");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=241.49,424.85");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=241.31,439.14");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=285.05,427.94");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=289.08,471.79");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=310.74,484.66");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=321.62,458.15");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=286.63,484.80");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=280.30,504.12");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=252.10,502.12");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=88.42,173.57");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=128.00,198.12");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=48.76,53.86");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=64.90,59.61");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=244.12,7.10");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=209.67,25.39");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=268.12,61.90");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=202.39,54.47");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=201.09,79.25");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=168.36,87.62");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=175.50,164.61");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=225.76,125.25");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=265.94,243.33");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=346.54,109.76");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=288.50,226.48");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=267.29,158.94");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=192.96,136.19");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=143.70,112.73");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=100.72,51.19");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=74.55,69.26");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=63.53,46.13");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=60.20,186.88");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=125.01,132.01");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=223.35,50.11");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=162.92,36.15");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=284.43,140.67");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=204.00,156.32");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=144.63,227.91");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=38.98,262.80");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=105.35,251.94");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=4.26,207.58");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=99.47,299.35");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=64.77,305.09");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=9.64,339.29");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=0.12,437.47");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=85.16,409.56");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=152.45,390.67");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=192.43,373.98");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=214.18,420.58");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=156.31,428.25");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=237.06,496.61");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=223.18,463.85");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=222.77,444.85");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=276.14,449.66");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=199.07,504.80");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=296.57,402.26");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=384.75,483.82");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=252.48,419.44");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=188.60,519.14");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=179.70,459.25");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=104.39,79.56");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=52.41,118.19");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=95.89,23.21");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=84.71,63.38");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=158.02,80.62");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=249.37,62.68");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=210.51,48.22");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=274.72,102.11");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=260.04,148.75");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=149.74,126.73");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=192.61,181.52");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=243.10,129.93");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=324.06,195.05");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=330.53,146.48");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=273.72,146.46");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=304.28,87.86");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=240.10,176.52");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=189.78,58.63");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=152.85,23.30");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=27.83,87.94");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=115.29,53.12");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=122.76,232.02");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=220.54,95.59");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=259.44,128.90");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=143.23,188.99");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=236.94,103.50");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=177.07,109.39");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=97.94,184.21");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=38.81,279.69");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=24.38,327.01");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=33.10,223.28");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=67.37,275.10");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=56.54,229.01");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=44.96,371.06");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=82.39,286.09");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=46.54,359.32");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=117.99,440.33");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=219.05,384.14");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=177.69,498.74");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=188.93,451.54");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=217.99,488.84");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=275.54,335.80");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=261.14,362.54");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=359.60,402.32");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=343.93,444.64");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=337.24,403.42");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=311.71,470.09");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=272.21,495.03");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=284.60,520.23");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=272.58,534.05");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=101.65,146.70");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=67.54,110.18");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=29.15,59.74");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=55.16,7.48");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=171.04,15.01");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=224.44,71.63");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=215.95,58.95");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=293.01,56.03");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=143.46,93.48");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=82.12,97.64");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=154.67,108.89");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=241.01,119.27");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=230.21,198.77");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=333.36,241.65");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=355.08,162.17");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=241.71,89.65");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=202.08,123.10");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=163.62,52.07");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=73.13,148.39");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=106.27,16.74");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=116.70,101.69");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=122.14,115.16");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=134.82,30.10");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=226.09,168.46");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=161.88,144.66");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=160.60,181.87");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=173.97,126.67");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=170.44,199.63");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=17.15,306.66");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=80.09,236.31");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=13.58,290.81");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=13.10,364.33");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=86.94,326.69");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=97.67,383.39");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=20.89,340.81");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=96.84,410.63");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=185.92,333.75");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=187.28,349.62");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=174.13,438.65");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=264.25,483.68");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=202.97,463.55");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=258.10,456.15");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=250.00,431.66");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=303.93,434.67");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=381.62,454.74");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=360.16,496.30");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=352.36,435.57");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=353.72,449.77");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=321.83,414.42");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=172.46,524.50");
    }

}

