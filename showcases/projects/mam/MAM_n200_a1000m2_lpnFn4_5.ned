
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn4_5
{
    parameters:
        @display("bgb=1000,1000;bgg=100,1,grey95;bgu=m");
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
        @display("p=130.30,126.01");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=139.81,61.32");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=144.91,71.06");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=77.72,56.65");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=84.66,39.59");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=69.63,82.37");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=121.81,134.17");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=133.27,89.77");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=186.39,58.79");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=174.09,58.83");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=156.47,80.81");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=144.03,14.62");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=57.61,61.07");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=125.07,57.84");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=168.27,135.91");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=199.32,56.35");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=207.68,79.40");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=185.49,4.30");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=273.71,15.04");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=316.83,16.18");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=308.58,60.92");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=352.74,85.95");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=332.83,81.53");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=256.03,61.60");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=283.15,49.74");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=349.19,53.48");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=367.69,26.66");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=343.50,33.37");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=382.57,34.87");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=427.46,35.25");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=413.53,23.38");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=386.89,9.68");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=470.59,17.18");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=434.57,63.54");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=482.80,37.94");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=544.09,79.76");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=574.96,103.00");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=573.91,155.62");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=602.48,229.00");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=656.99,299.68");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=621.30,369.38");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=597.51,381.67");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=575.76,413.96");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=567.72,492.30");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=578.42,524.63");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=522.90,543.01");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=597.80,484.38");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=580.52,490.44");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=522.45,496.41");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=92.71,196.91");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=65.33,52.32");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=148.27,49.47");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=90.86,20.76");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=155.32,67.66");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=142.78,25.83");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=89.58,139.47");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=129.22,160.54");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=133.57,138.10");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=176.85,110.02");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=209.83,93.84");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=156.28,56.49");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=122.13,27.46");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=47.40,146.35");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=104.52,44.75");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=225.38,146.96");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=257.68,48.62");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=204.82,145.57");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=179.83,16.17");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=291.18,3.69");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=309.85,43.06");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=324.56,97.06");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=432.25,94.71");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=364.44,90.80");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=245.46,57.62");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=185.94,29.57");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=297.47,85.81");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=397.32,55.86");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=317.46,74.16");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=330.45,54.13");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=411.29,44.97");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=394.35,33.99");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=375.20,99.62");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=447.30,12.90");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=414.79,63.17");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=444.47,101.17");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=459.27,92.02");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=562.48,157.18");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=627.32,106.36");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=658.70,148.70");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=592.80,301.85");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=636.17,349.95");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=615.09,473.29");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=584.63,447.54");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=571.87,556.90");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=584.49,533.21");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=498.28,517.83");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=615.11,500.17");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=593.91,464.88");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=515.38,446.53");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=129.33,184.85");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=142.56,127.20");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=219.17,112.51");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=168.11,14.21");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=68.47,62.93");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=92.82,50.44");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=48.73,83.86");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=179.48,151.06");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=150.76,34.85");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=225.15,57.58");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=101.82,31.14");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=77.53,116.28");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=159.99,0.43");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=104.14,82.68");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=118.23,14.91");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=150.40,139.08");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=213.54,51.01");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=224.57,136.57");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=198.00,22.71");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=269.13,43.19");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=238.10,43.83");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=274.42,62.93");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=392.99,124.70");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=384.97,97.30");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=255.62,114.25");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=223.65,74.02");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=289.67,116.83");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=329.12,24.62");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=308.27,9.74");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=387.77,24.92");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=394.81,16.18");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=471.50,82.59");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=420.11,103.32");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=499.23,106.20");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=433.86,118.64");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=469.35,4.41");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=543.49,142.98");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=593.64,78.67");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=618.91,149.57");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=638.30,256.47");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=740.92,281.35");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=650.27,387.54");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=600.32,432.79");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=524.25,379.11");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=475.00,502.79");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=486.59,561.61");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=498.46,571.90");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=626.41,543.90");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=538.92,493.57");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=471.19,440.97");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=82.18,88.30");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=135.29,194.00");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=130.32,48.66");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=143.38,87.27");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=48.79,95.29");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=66.64,112.91");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=79.51,74.31");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=89.12,212.51");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=159.97,122.01");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=183.62,71.79");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=203.24,36.07");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=141.60,110.67");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=101.67,15.87");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=2.54,18.69");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=61.94,20.39");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=193.87,137.46");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=193.75,72.77");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=306.35,73.14");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=173.76,43.52");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=236.38,96.17");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=394.23,70.40");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=280.95,6.04");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=353.26,65.51");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=369.98,109.78");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=256.80,33.02");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=298.79,32.22");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=361.31,73.36");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=354.07,26.60");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=423.06,3.53");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=385.90,47.17");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=447.06,32.87");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=460.88,102.02");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=292.10,20.10");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=484.58,106.97");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=419.89,74.70");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=451.80,62.06");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=603.43,51.82");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=591.00,145.79");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=540.41,121.19");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=517.84,258.51");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=640.81,300.21");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=647.30,372.66");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=617.83,351.53");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=592.00,409.53");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=547.19,526.24");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=491.91,543.55");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=524.76,622.22");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=662.08,532.20");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=621.15,459.15");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=545.04,448.24");
    }

}

