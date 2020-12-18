
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn8-3
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
        @display("p=166.00,61.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=203.27,70.63");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=234.91,68.64");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=299.01,90.79");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=251.99,46.50");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=309.51,56.55");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=324.52,75.47");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=334.67,69.69");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=353.85,77.57");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=342.34,41.96");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=369.11,134.91");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=271.96,136.13");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=311.76,198.17");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=308.77,186.97");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=256.84,165.16");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=252.52,208.41");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=202.87,124.14");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=245.89,91.06");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=287.73,29.31");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=377.82,51.89");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=399.38,7.37");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=399.82,30.20");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=308.12,27.87");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=249.03,181.97");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=269.96,186.37");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=182.15,49.63");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=277.00,101.63");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=266.75,102.07");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=222.42,103.20");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=181.89,97.51");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=256.91,96.55");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=364.09,110.95");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=319.46,49.70");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=399.78,140.94");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=369.72,92.96");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=341.89,160.62");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=287.97,77.09");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=249.64,155.39");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=283.53,215.83");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=215.48,134.23");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=197.96,182.49");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=165.77,73.57");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=236.99,149.40");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=208.45,4.65");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=361.05,43.10");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=383.15,28.56");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=331.83,13.31");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=250.06,7.09");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=252.16,258.50");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=211.46,240.29");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=191.23,43.91");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=127.77,112.18");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=240.44,34.09");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=275.12,164.77");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=253.82,17.45");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=358.75,54.17");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=271.34,62.66");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=266.34,74.81");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=270.17,123.48");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=322.92,131.07");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=336.73,150.25");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=243.46,200.43");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=274.31,148.26");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=220.55,188.07");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=266.51,201.93");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=226.57,154.60");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=245.27,126.99");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=264.46,87.89");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=368.00,59.76");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=398.41,48.29");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=373.33,79.14");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=370.96,25.09");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=288.03,0.24");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=195.33,201.49");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=227.21,245.05");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=237.09,47.34");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=210.72,53.55");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=230.73,12.46");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=345.05,95.17");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=342.35,8.41");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=348.56,63.33");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=295.47,56.21");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=388.67,100.45");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=374.54,112.24");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=317.65,35.95");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=389.45,146.20");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=304.03,139.16");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=312.82,214.28");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=322.60,253.48");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=279.16,246.91");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=251.75,225.75");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=142.09,115.13");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=243.85,106.58");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=219.81,76.01");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=310.79,116.18");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=374.26,3.46");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=384.44,81.13");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=357.55,15.24");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=220.23,168.56");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=322.24,150.13");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=164.04,37.83");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=149.40,87.56");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=194.45,108.75");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=283.70,64.39");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=191.48,3.53");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=334.83,57.80");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=301.80,13.65");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=342.28,19.50");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=306.78,84.28");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=349.96,27.52");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=332.22,83.18");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=339.58,116.38");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=335.58,246.55");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=282.12,276.23");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=188.97,211.43");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=168.84,254.36");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=160.07,139.17");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=225.28,0.43");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=335.14,99.40");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=320.79,0.15");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=386.35,4.08");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=378.05,40.12");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=298.51,31.06");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=233.15,132.91");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=260.67,181.08");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=115.52,43.61");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=210.22,104.94");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=280.23,48.27");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=251.63,143.45");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=288.09,109.82");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=307.49,100.96");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=316.61,94.62");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=349.52,152.29");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=374.62,172.87");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=320.74,12.68");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=383.40,162.54");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=192.91,77.44");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=304.02,177.98");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=355.62,139.53");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=295.16,159.06");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=235.56,258.78");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=178.78,169.44");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=191.36,67.38");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=269.05,9.71");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=342.93,129.06");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=389.65,15.74");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=386.16,65.04");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=281.64,20.10");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=172.24,230.47");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=192.95,158.51");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=159.51,4.90");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=200.59,53.82");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=161.86,101.73");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=285.18,93.21");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=258.47,36.97");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=324.04,23.48");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=350.66,107.86");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=394.97,111.49");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=361.27,27.98");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=332.09,35.59");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=374.87,143.14");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=279.81,117.11");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=341.29,214.97");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=240.33,188.64");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=287.45,201.71");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=251.36,284.31");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=262.47,111.24");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=301.25,47.08");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=236.66,80.35");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=354.88,89.34");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=367.69,13.53");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=398.57,89.06");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=350.55,2.69");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=332.80,223.51");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=282.83,189.44");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=111.49,99.76");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=146.92,3.98");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=173.21,32.23");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=294.23,117.73");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=254.08,61.54");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=316.01,64.70");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=314.52,143.67");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=397.16,74.34");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=388.29,47.18");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=306.20,73.75");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=384.96,188.05");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=263.03,131.09");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=299.10,202.98");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=341.53,195.68");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=198.10,95.01");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=214.71,269.37");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=177.38,126.45");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=231.53,89.59");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=270.16,29.99");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=333.01,137.45");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=399.87,99.08");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=379.00,14.23");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=278.78,82.71");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=323.39,233.48");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=263.40,146.37");
    }

}

