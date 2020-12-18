
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn12_2
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
        @display("p=184.45,151.33");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=225.81,82.91");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=228.30,72.31");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=156.64,136.58");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=204.06,82.74");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=164.48,111.71");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=179.55,177.74");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=167.72,177.84");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=159.39,162.20");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=166.10,149.08");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=203.17,121.89");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=193.89,140.84");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=135.50,139.02");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=251.14,191.90");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=189.10,265.12");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=198.55,275.74");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=69.65,170.20");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=245.92,204.60");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=238.43,84.26");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=254.59,97.16");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=193.44,156.19");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=222.41,53.45");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=188.11,116.38");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=165.65,100.72");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=142.81,177.19");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=156.42,194.13");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=120.07,156.09");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=270.88,124.96");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=236.91,159.41");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=143.27,236.07");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=232.32,140.08");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=131.04,337.11");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=144.65,307.57");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=45.30,162.06");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=249.52,126.29");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=285.90,87.66");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=309.71,100.41");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=213.35,73.13");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=256.16,118.20");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=112.51,146.68");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=104.40,196.45");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=191.58,218.47");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=183.60,244.44");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=207.53,220.51");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=283.58,123.95");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=125.68,172.47");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=121.16,129.40");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=217.37,215.12");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=130.78,261.11");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=217.00,269.06");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=116.90,57.29");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=201.44,232.50");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=213.00,103.55");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=177.47,93.67");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=137.54,65.24");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=283.24,25.19");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=148.62,151.19");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=198.09,185.87");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=172.14,187.70");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=156.32,183.17");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=138.90,197.77");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=215.43,120.17");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=276.53,175.25");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=77.67,199.89");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=267.76,192.70");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=209.94,299.96");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=172.93,245.56");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=120.26,27.17");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=199.90,206.13");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=179.29,55.19");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=254.94,40.02");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=245.79,172.66");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=197.19,70.18");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=146.33,122.88");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=179.77,203.28");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=96.23,131.46");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=102.57,112.46");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=116.49,106.65");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=169.72,45.09");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=191.76,171.40");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=102.83,141.61");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=270.69,207.43");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=155.45,269.95");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=197.40,242.11");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=132.33,12.00");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=233.64,207.18");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=276.38,135.48");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=162.48,90.17");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=231.94,175.98");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=285.91,53.76");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=242.31,142.58");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=176.57,227.09");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=212.07,196.80");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=241.22,112.08");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=175.53,164.59");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=191.43,127.17");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=203.29,167.41");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=211.31,175.54");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=215.92,151.95");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=239.03,295.98");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=265.34,312.54");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=186.35,73.44");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=116.81,85.68");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=301.76,24.25");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=230.58,100.88");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=105.33,76.07");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=217.88,94.70");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=145.35,110.72");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=273.91,152.02");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=95.60,237.91");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=223.10,188.00");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=123.95,115.59");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=254.31,80.02");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=287.48,158.17");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=176.70,83.42");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=315.80,203.71");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=192.27,292.01");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=200.66,368.83");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=93.16,51.50");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=200.10,98.88");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=192.87,58.26");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=238.77,12.10");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=166.54,57.10");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=271.97,42.40");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=174.50,109.22");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=207.68,136.60");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=155.88,172.20");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=148.63,219.74");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=99.89,205.66");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=213.51,43.36");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=139.59,99.96");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=55.63,96.93");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=322.00,177.02");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=252.86,312.47");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=130.07,281.06");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=96.06,35.32");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=231.73,197.10");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=159.40,64.99");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=241.03,2.32");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=114.11,209.99");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=193.44,2.69");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=71.19,99.55");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=105.80,160.47");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=218.26,140.64");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=160.87,229.88");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=175.60,132.98");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=238.35,66.04");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=124.13,99.86");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=134.56,152.28");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=221.71,244.77");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=190.37,354.52");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=268.40,282.97");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=74.07,112.19");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=226.66,114.30");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=235.85,32.20");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=192.85,20.00");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=88.96,154.78");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=294.89,102.90");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=205.06,53.94");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=259.03,179.10");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=256.62,201.34");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=231.07,123.86");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=89.20,120.66");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=121.31,68.94");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=108.06,172.24");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=133.60,214.33");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=310.87,226.09");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=153.32,242.81");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=123.85,320.04");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=136.78,86.54");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=164.32,205.33");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=214.50,25.20");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=167.75,21.97");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=125.58,45.48");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=137.58,25.45");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=184.54,42.69");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=203.51,111.33");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=68.37,188.55");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=217.69,130.15");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=153.62,51.86");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=220.52,161.01");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=186.71,88.38");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=128.25,184.19");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=294.67,200.27");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=246.71,287.18");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=173.82,294.49");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=17.19,146.23");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=135.00,123.45");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=235.68,51.29");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=303.25,40.85");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=160.62,123.56");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=294.99,49.09");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=85.47,93.31");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=181.77,190.74");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=112.97,185.63");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=206.05,250.60");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=149.59,75.32");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=184.90,105.30");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=264.95,101.02");
    }

}

