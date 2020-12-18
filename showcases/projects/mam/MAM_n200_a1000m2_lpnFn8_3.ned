
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn8_3
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
        @display("p=152.17,102.25");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=82.53,118.60");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=80.18,94.84");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=42.09,101.25");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=30.42,40.88");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=53.20,42.26");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=116.51,94.43");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=153.36,22.69");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=239.90,9.44");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=189.37,35.73");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=212.42,37.17");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=146.85,55.05");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=189.11,75.52");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=219.49,123.06");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=302.32,125.08");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=285.35,104.04");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=279.45,197.39");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=330.15,165.06");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=391.62,172.19");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=402.66,128.03");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=358.63,194.38");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=304.98,239.76");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=311.62,151.32");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=337.57,134.03");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=107.15,116.91");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=178.57,56.38");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=98.88,177.78");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=82.16,151.31");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=29.61,113.39");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=24.00,65.46");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=98.82,44.46");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=135.01,28.29");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=78.31,77.15");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=317.29,16.27");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=212.05,66.22");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=204.42,46.78");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=200.52,5.81");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=115.06,124.36");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=239.56,88.99");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=215.39,92.60");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=299.18,93.15");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=242.45,162.87");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=326.57,153.17");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=441.15,225.18");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=403.24,115.00");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=391.93,281.65");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=322.90,265.17");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=297.62,210.62");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=322.54,138.66");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=122.16,62.40");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=149.93,65.68");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=76.29,105.80");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=118.97,152.78");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=88.26,15.35");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=2.55,133.95");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=50.09,129.85");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=110.77,38.21");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=131.33,108.33");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=203.41,31.69");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=228.98,92.68");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=264.82,110.45");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=188.32,65.34");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=257.95,35.49");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=220.40,108.37");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=369.37,193.20");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=248.94,127.18");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=336.39,219.26");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=382.70,178.69");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=365.80,139.21");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=348.11,110.24");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=306.77,203.92");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=236.53,179.68");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=384.93,206.58");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=339.25,70.31");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=73.86,131.02");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=65.80,99.13");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=77.19,24.19");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=120.53,8.66");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=39.76,115.74");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=68.94,36.96");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=55.81,9.95");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=108.12,73.11");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=229.81,72.59");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=242.42,43.85");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=270.50,33.98");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=195.60,86.75");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=159.92,9.68");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=165.34,110.66");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=185.97,123.61");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=299.09,113.67");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=276.78,94.93");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=278.37,211.01");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=388.50,94.59");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=369.26,151.19");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=438.09,90.07");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=348.02,203.57");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=253.93,286.79");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=306.60,191.66");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=376.05,142.20");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=9.62,118.68");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=167.14,77.11");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=91.76,33.64");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=114.53,24.25");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=1.46,89.12");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=40.29,56.77");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=28.61,21.71");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=66.86,151.60");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=213.89,78.43");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=162.03,47.39");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=250.47,71.36");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=223.07,34.89");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=133.14,77.28");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=253.02,138.63");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=226.25,164.65");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=317.26,121.94");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=311.35,104.62");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=261.69,252.93");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=298.21,252.79");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=467.22,138.54");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=357.49,117.84");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=409.21,217.54");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=298.76,231.81");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=372.74,89.21");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=319.30,165.15");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=118.46,52.95");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=169.92,97.13");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=23.31,170.95");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=63.16,85.42");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=40.89,87.27");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=14.29,38.98");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=4.37,98.85");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=112.69,83.39");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=178.03,13.85");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=168.97,0.51");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=198.19,21.26");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=121.59,74.77");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=158.13,140.49");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=275.78,83.46");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=203.52,98.29");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=277.67,134.00");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=290.57,163.06");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=334.80,185.85");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=418.57,172.90");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=445.53,110.23");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=388.95,152.00");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=357.48,236.17");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=291.21,238.84");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=367.37,219.39");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=365.68,170.62");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=86.30,132.72");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=143.95,121.69");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=93.18,116.54");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=55.03,117.85");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=109.92,158.15");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=8.40,62.21");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=69.84,0.25");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=150.39,80.72");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=105.69,58.96");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=286.65,57.27");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=146.98,41.92");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=299.35,58.90");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=93.92,70.31");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=282.04,43.95");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=142.08,154.28");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=305.83,138.80");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=236.33,149.11");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=237.41,253.18");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=383.14,193.99");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=322.48,223.48");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=362.97,53.40");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=342.33,151.75");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=285.42,181.61");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=372.42,183.22");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=343.71,91.84");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=136.39,170.70");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=162.65,162.28");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=153.24,115.55");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=81.00,52.54");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=11.37,152.52");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=68.17,15.46");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=15.78,72.12");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=96.14,1.02");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=134.88,47.06");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=308.75,50.70");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=195.74,108.56");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=186.57,113.21");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=186.68,49.87");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=185.58,1.53");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=219.53,205.64");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=260.10,163.08");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=230.67,134.01");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=274.32,171.39");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=314.84,255.95");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=357.02,160.85");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=440.98,168.01");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=343.73,256.42");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=367.46,261.46");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=290.66,152.15");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=419.08,137.35");
    }

}

