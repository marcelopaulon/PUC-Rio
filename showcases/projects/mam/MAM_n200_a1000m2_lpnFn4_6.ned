
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn4_6
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
        @display("p=144.21,138.52");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=57.60,127.81");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=92.35,47.46");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=12.02,82.07");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=76.50,52.83");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=60.32,72.54");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=90.09,24.94");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=76.91,110.61");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=75.02,77.46");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=59.51,85.01");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=130.56,58.91");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=162.21,68.33");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=240.74,86.30");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=250.28,92.52");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=202.18,16.92");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=143.66,97.07");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=215.27,39.61");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=255.80,32.74");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=166.77,0.63");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=164.60,13.45");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=127.13,3.65");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=108.58,21.06");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=113.84,73.79");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=177.22,15.23");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=182.67,3.23");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=232.54,22.43");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=214.16,111.92");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=219.41,125.35");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=212.34,7.87");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=228.47,4.54");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=214.23,27.79");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=214.96,69.88");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=228.49,94.52");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=247.91,143.97");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=215.30,173.05");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=252.24,131.22");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=272.65,102.64");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=314.89,128.90");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=394.45,125.39");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=374.28,112.48");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=391.69,83.11");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=399.76,161.74");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=313.65,183.76");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=238.25,150.96");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=274.43,150.75");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=280.98,128.60");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=227.52,183.07");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=189.84,198.77");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=181.41,134.03");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=8.19,115.11");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=128.54,84.25");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=86.31,66.01");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=18.74,11.03");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=37.75,151.75");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=71.76,38.44");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=133.15,27.51");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=80.03,26.56");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=148.81,60.56");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=101.32,12.67");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=69.54,123.32");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=143.33,3.46");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=174.38,60.25");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=256.44,47.38");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=256.19,190.50");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=198.04,45.70");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=148.46,87.48");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=304.01,52.33");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=242.73,106.50");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=138.19,38.00");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=207.25,54.98");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=133.96,16.97");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=52.30,100.24");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=40.30,49.96");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=152.68,39.78");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=240.92,38.74");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=244.21,28.15");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=135.39,128.49");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=191.45,135.86");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=196.86,6.35");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=268.43,47.60");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=291.18,3.22");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=251.68,14.47");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=201.43,84.00");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=254.65,113.39");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=220.79,228.18");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=215.85,190.76");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=341.56,82.76");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=335.59,150.14");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=330.33,175.92");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=410.21,103.61");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=414.85,26.93");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=357.36,244.70");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=341.98,210.48");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=319.75,142.32");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=302.78,173.71");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=312.10,153.59");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=179.38,200.82");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=231.84,259.25");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=229.22,164.47");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=49.99,183.82");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=184.40,107.43");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=58.87,115.78");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=104.34,44.10");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=43.82,68.34");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=86.78,78.66");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=17.82,48.00");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=128.67,116.30");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=24.21,74.38");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=39.05,99.05");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=137.84,67.66");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=102.26,87.74");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=195.77,146.52");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=292.28,43.92");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=216.80,81.13");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=287.44,32.84");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=167.83,102.20");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=287.67,53.72");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=322.35,68.67");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=144.15,13.96");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=181.13,46.72");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=93.27,4.08");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=107.92,32.40");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=123.10,134.64");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=224.47,30.00");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=171.23,82.66");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=233.12,49.51");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=203.57,100.66");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=240.47,191.02");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=194.81,26.72");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=302.17,23.45");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=161.35,94.37");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=199.73,65.43");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=223.58,108.42");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=218.64,162.27");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=243.31,177.31");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=210.31,142.95");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=253.68,57.41");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=301.56,116.82");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=388.19,135.57");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=442.18,106.57");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=369.65,58.23");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=403.35,148.08");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=339.62,124.66");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=156.38,155.79");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=299.94,164.05");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=254.02,202.40");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=276.17,186.94");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=227.27,271.73");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=153.99,104.62");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=85.46,90.96");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=170.42,169.19");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=35.72,80.93");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=38.50,109.08");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=27.28,110.45");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=71.25,9.75");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=24.22,27.96");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=44.09,11.09");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=162.12,116.71");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=96.82,116.27");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=69.30,99.32");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=117.42,102.20");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=115.01,112.98");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=280.88,176.56");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=266.74,169.38");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=180.98,79.31");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=145.08,116.68");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=281.49,41.97");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=189.85,70.72");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=108.56,53.77");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=118.55,82.99");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=222.24,19.43");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=119.84,63.69");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=155.38,127.53");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=185.64,58.24");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=184.55,25.78");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=247.41,78.26");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=226.91,142.68");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=208.22,132.15");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=157.57,25.33");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=273.71,86.81");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=238.66,6.12");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=161.47,144.98");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=281.32,113.51");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=271.18,118.92");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=199.17,230.85");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=283.72,154.85");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=264.46,4.96");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=351.06,182.62");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=390.45,95.77");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=430.29,67.24");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=416.39,86.33");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=429.68,132.20");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=311.33,166.27");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=147.17,150.09");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=290.53,86.10");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=247.59,65.46");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=201.78,198.53");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=194.64,245.69");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=160.11,166.43");
    }

}

