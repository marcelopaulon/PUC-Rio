
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn4-0
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
        @display("p=127.00,119.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=156.32,59.56");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=175.22,12.62");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=241.96,14.01");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=262.39,38.68");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=331.78,50.00");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=297.33,71.57");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=288.44,33.26");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=273.39,31.40");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=304.82,103.26");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=350.88,44.19");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=312.85,43.67");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=388.90,42.91");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=392.38,74.80");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=362.25,123.32");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=348.40,142.26");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=297.25,90.40");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=279.17,108.08");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=213.24,88.06");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=268.27,117.43");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=261.89,97.84");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=214.86,104.80");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=137.83,141.52");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=122.72,35.62");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=175.21,0.35");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=205.87,1.05");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=228.46,22.83");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=294.45,42.39");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=199.31,52.87");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=252.37,85.41");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=217.84,140.16");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=194.01,127.73");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=252.79,173.08");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=203.91,178.10");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=187.69,154.57");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=177.30,165.78");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=293.80,122.79");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=321.04,60.77");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=228.23,99.79");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=222.77,78.15");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=178.11,134.40");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=121.26,69.11");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=167.17,24.75");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=251.83,134.76");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=256.47,124.68");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=308.08,208.41");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=329.64,210.05");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=254.00,269.37");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=329.88,321.01");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=299.08,348.01");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=115.64,119.76");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=111.41,42.75");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=90.37,60.39");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=239.91,2.72");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=195.84,7.91");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=308.42,56.05");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=218.79,11.44");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=335.75,1.21");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=336.63,33.75");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=276.24,44.69");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=309.83,14.23");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=341.41,106.52");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=342.04,14.47");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=372.08,46.82");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=352.35,85.01");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=324.94,222.69");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=374.12,129.81");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=224.66,121.84");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=210.61,21.99");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=313.63,84.10");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=289.14,150.96");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=245.42,152.84");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=138.07,154.97");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=103.37,26.46");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=185.41,52.84");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=273.73,68.70");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=239.20,74.35");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=281.60,83.74");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=140.56,105.47");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=195.36,114.62");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=150.90,194.55");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=188.32,137.95");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=276.42,155.55");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=206.68,117.23");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=188.80,206.49");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=170.90,195.44");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=240.11,167.69");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=319.69,36.37");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=278.60,167.42");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=184.04,96.20");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=173.14,84.23");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=100.61,51.60");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=93.67,5.00");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=255.57,67.82");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=242.46,92.72");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=208.56,198.80");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=346.52,246.61");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=237.17,360.78");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=319.90,342.98");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=356.91,306.53");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=69.69,194.32");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=168.56,61.38");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=183.59,83.08");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=244.12,35.14");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=228.66,38.49");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=350.73,62.33");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=330.47,18.45");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=385.30,31.49");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=345.98,4.90");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=308.35,154.33");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=254.93,18.20");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=228.71,54.09");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=363.78,52.47");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=396.64,86.65");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=338.56,166.86");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=368.55,106.97");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=326.07,158.23");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=205.24,96.77");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=128.51,60.70");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=219.05,179.55");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=219.73,163.86");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=167.33,108.12");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=164.26,179.24");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=120.10,110.55");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=213.81,45.63");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=181.74,24.86");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=141.82,26.65");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=283.47,98.78");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=229.23,137.97");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=326.39,109.27");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=205.34,136.14");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=106.38,167.88");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=308.33,169.77");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=261.68,218.79");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=129.40,207.68");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=221.12,197.05");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=243.17,205.67");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=354.42,73.19");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=279.55,58.58");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=157.90,17.00");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=186.62,109.48");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=107.73,68.57");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=191.46,22.01");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=274.20,91.73");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=210.00,69.07");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=295.89,205.53");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=299.60,184.73");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=220.40,301.52");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=381.27,335.47");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=297.33,279.46");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=97.04,135.56");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=157.75,42.66");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=107.99,6.66");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=241.74,24.77");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=264.36,59.13");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=360.70,93.83");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=355.11,34.98");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=353.91,21.64");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=321.67,96.91");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=342.76,117.75");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=356.64,103.48");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=269.45,5.45");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=297.56,59.04");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=385.20,89.84");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=375.00,143.76");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=337.37,133.99");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=235.41,129.93");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=271.44,129.89");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=197.84,76.65");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=281.47,142.40");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=284.04,192.09");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=143.98,130.30");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=152.05,74.09");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=57.97,89.38");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=163.45,4.98");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=160.54,83.83");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=201.62,41.14");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=264.90,17.32");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=146.78,119.64");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=300.81,2.38");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=155.15,134.45");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=160.87,123.07");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=254.24,195.33");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=235.96,252.28");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=190.93,174.19");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=196.29,160.67");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=390.08,110.76");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=336.51,77.59");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=254.56,158.82");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=244.36,113.26");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=170.47,143.06");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=48.36,103.94");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=140.80,53.46");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=268.14,149.11");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=232.54,176.93");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=270.73,226.26");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=324.33,136.14");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=162.49,240.08");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=264.74,291.79");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=300.16,334.91");
    }

}

