
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn12-6
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
        @display("p=303.00,158.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=205.97,182.09");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=183.22,149.75");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=255.46,126.02");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=214.57,120.32");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=199.58,165.79");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=252.14,139.25");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=300.67,76.97");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=243.49,19.53");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=279.22,4.89");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=344.85,75.18");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=330.24,41.46");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=304.12,115.23");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=287.03,101.08");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=239.95,148.37");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=257.08,60.18");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=300.07,127.39");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=307.81,65.29");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=184.48,202.53");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=195.70,142.87");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=284.66,46.35");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=188.14,126.49");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=272.87,161.60");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=185.59,164.04");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=345.16,119.96");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=219.48,79.33");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=218.84,22.79");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=380.95,120.18");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=268.55,110.92");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=323.29,120.42");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=310.25,4.93");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=214.28,215.69");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=272.04,122.30");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=374.49,165.30");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=286.08,123.03");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=153.11,207.48");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=241.51,197.41");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=288.96,181.36");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=258.55,45.72");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=226.97,103.06");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=205.35,51.28");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=362.29,108.83");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=256.74,16.64");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=284.42,17.65");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=274.82,28.26");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=354.18,66.66");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=236.12,123.42");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=294.67,55.96");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=244.57,178.35");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=233.30,81.10");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=288.11,194.71");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=268.21,202.70");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=187.07,240.70");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=216.44,139.36");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=246.35,102.20");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=158.72,123.70");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=218.01,151.56");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=256.53,76.39");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=291.37,71.15");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=228.18,32.69");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=335.58,85.43");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=328.53,158.25");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=393.73,108.09");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=318.39,51.24");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=282.15,61.40");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=245.10,81.20");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=252.71,27.69");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=314.37,189.26");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=301.81,147.57");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=192.43,178.20");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=249.55,163.52");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=268.98,55.51");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=234.08,176.19");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=203.50,208.37");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=267.18,135.15");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=373.06,132.76");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=203.78,5.29");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=365.08,42.02");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=320.50,98.80");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=384.52,81.97");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=297.96,102.40");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=332.38,107.62");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=189.59,81.87");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=321.84,12.33");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=312.67,90.69");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=349.88,195.77");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=133.29,166.36");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=167.21,73.14");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=278.71,134.39");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=212.34,108.86");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=204.86,117.79");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=260.30,233.24");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=386.52,92.24");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=211.62,40.24");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=372.25,20.83");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=361.05,120.82");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=332.19,23.03");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=323.60,139.29");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=275.53,82.71");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=161.12,134.37");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=322.97,60.85");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=332.09,201.16");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=388.64,205.04");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=205.78,195.76");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=138.19,236.90");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=214.04,170.17");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=299.10,89.94");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=230.97,207.50");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=259.66,148.25");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=233.36,63.23");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=222.10,6.27");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=297.35,3.45");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=344.06,3.54");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=304.26,48.36");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=301.90,186.89");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=326.75,74.08");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=262.63,189.83");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=286.79,81.79");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=309.87,105.03");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=358.71,138.67");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=228.09,193.07");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=205.18,240.67");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=228.45,149.17");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=275.89,99.71");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=164.03,179.80");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=202.64,97.91");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=334.07,52.22");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=246.28,35.87");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=266.52,3.93");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=341.98,61.54");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=382.50,42.15");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=298.54,137.92");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=214.32,67.33");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=241.98,245.39");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=193.80,116.89");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=355.75,168.26");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=316.09,176.53");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=272.68,248.57");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=143.41,158.60");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=235.63,109.99");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=298.48,170.85");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=206.08,136.35");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=277.77,174.04");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=348.10,101.84");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=234.95,12.33");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=219.31,56.21");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=364.83,28.60");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=263.33,88.53");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=392.41,125.05");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=236.43,51.93");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=227.25,160.45");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=163.57,37.13");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=348.21,137.81");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=371.19,198.91");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=252.59,201.37");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=177.30,72.46");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=276.77,150.25");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=175.90,137.02");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=215.41,229.09");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=180.37,115.26");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=315.37,40.23");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=254.38,113.03");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=271.50,69.07");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=353.36,85.73");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=381.16,54.76");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=291.00,160.47");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=301.01,17.67");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=245.67,228.84");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=328.17,1.17");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=281.49,213.82");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=357.35,219.30");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=120.78,196.17");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=169.17,167.14");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=235.32,95.92");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=141.85,109.97");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=154.97,152.70");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=307.38,203.21");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=350.34,54.19");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=298.41,27.58");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=375.19,7.57");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=289.04,133.88");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=323.42,30.50");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=383.45,65.01");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=335.67,165.52");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=188.45,101.96");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=201.48,38.55");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=370.87,146.51");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=284.23,252.54");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=217.47,186.06");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=156.63,232.60");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=237.75,160.25");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=145.88,187.77");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=194.30,188.96");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=335.69,95.63");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=214.16,88.03");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=264.15,31.96");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=250.39,90.83");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=333.93,117.78");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=344.19,25.96");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=311.39,141.01");
    }

}

