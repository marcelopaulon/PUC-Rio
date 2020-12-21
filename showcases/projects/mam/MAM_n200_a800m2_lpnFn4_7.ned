
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn4_7
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
        @display("p=139.28,66.30");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=138.90,87.13");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=98.41,33.56");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=60.37,15.24");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=74.50,4.67");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=124.49,13.75");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=144.28,6.71");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=160.53,8.54");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=173.24,81.67");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=174.07,51.70");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=196.69,62.24");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=173.76,116.19");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=211.21,25.07");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=188.76,34.36");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=176.39,26.89");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=183.76,19.72");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=230.17,17.30");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=271.12,42.30");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=191.25,74.03");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=248.71,119.79");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=159.40,95.68");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=208.37,120.10");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=208.84,65.35");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=208.01,43.91");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=240.16,28.46");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=218.99,66.69");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=223.18,41.96");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=208.65,152.87");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=264.83,74.54");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=246.83,74.76");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=174.63,104.16");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=201.89,93.18");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=161.92,139.79");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=144.36,130.21");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=181.92,43.59");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=259.40,48.84");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=240.99,137.07");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=309.98,154.67");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=337.51,234.47");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=398.01,305.71");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=376.70,214.36");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=365.28,180.30");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=410.48,153.17");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=369.11,147.45");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=455.99,142.20");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=460.99,128.60");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=463.54,116.89");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=484.67,121.27");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=478.54,63.59");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=97.19,155.74");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=109.05,1.26");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=127.90,88.75");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=90.94,25.89");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=31.33,53.72");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=29.77,71.78");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=153.55,51.97");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=220.92,2.44");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=149.51,81.09");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=162.67,64.69");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=121.57,56.43");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=186.79,95.06");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=125.22,150.42");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=145.51,95.36");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=200.77,20.56");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=118.74,4.74");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=141.84,46.93");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=212.56,79.12");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=299.23,29.39");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=238.95,10.46");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=226.20,200.19");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=121.78,173.95");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=183.79,156.76");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=168.21,149.44");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=289.04,23.68");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=232.00,125.71");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=250.43,29.95");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=230.26,57.69");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=164.29,167.37");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=251.50,147.06");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=180.21,128.15");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=227.60,81.56");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=266.72,116.58");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=195.71,194.72");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=126.31,99.22");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=111.82,24.13");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=276.43,81.40");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=241.53,201.46");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=320.95,82.32");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=388.38,171.98");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=347.06,365.82");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=360.08,300.13");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=301.10,197.83");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=322.71,111.83");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=349.16,208.05");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=497.69,82.94");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=459.97,106.93");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=496.65,66.06");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=499.72,110.17");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=439.00,36.23");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=24.90,108.66");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=101.29,119.49");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=216.42,95.07");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=62.56,43.51");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=19.68,21.61");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=115.32,33.84");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=75.29,43.65");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=128.19,73.44");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=149.31,31.94");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=245.91,106.68");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=180.84,61.00");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=188.37,51.45");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=197.20,124.77");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=273.72,68.37");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=198.92,34.71");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=163.97,21.31");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=105.50,71.44");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=277.36,31.69");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=297.98,52.59");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=241.98,59.01");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=263.18,133.83");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=92.83,84.50");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=173.80,162.87");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=193.81,86.09");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=242.13,41.24");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=256.11,60.66");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=225.15,103.34");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=288.60,35.47");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=147.86,168.07");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=297.95,141.01");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=340.79,98.19");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=230.42,68.05");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=188.33,105.45");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=89.54,145.13");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=94.10,49.44");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=125.38,119.18");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=303.74,129.73");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=279.19,217.03");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=398.53,165.76");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=324.15,252.00");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=403.91,287.39");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=458.63,222.91");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=303.54,243.34");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=436.98,183.42");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=296.30,214.98");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=474.16,91.70");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=481.16,162.52");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=400.50,118.83");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=533.54,182.20");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=486.17,54.18");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=89.84,119.48");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=155.09,41.11");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=68.56,106.71");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=105.63,44.44");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=64.71,30.59");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=79.71,22.06");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=66.49,86.39");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=175.73,10.41");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=125.29,26.90");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=160.09,106.92");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=107.25,85.58");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=264.42,21.45");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=150.80,206.48");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=200.51,4.70");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=259.74,99.91");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=164.27,54.34");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=105.58,12.93");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=290.16,61.15");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=249.88,10.08");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=270.57,56.25");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=309.72,164.98");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=151.49,140.49");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=213.47,169.91");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=141.67,110.02");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=282.27,11.55");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=312.50,46.78");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=294.77,106.29");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=295.75,75.89");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=271.68,166.56");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=283.22,101.70");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=286.46,122.90");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=226.94,168.63");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=166.43,124.25");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=124.31,137.04");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=72.87,172.48");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=163.05,34.78");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=319.51,61.92");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=213.30,221.41");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=351.41,237.07");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=329.03,228.89");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=429.12,311.28");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=410.71,214.88");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=354.50,167.94");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=356.09,146.22");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=376.12,243.04");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=459.74,189.62");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=552.25,161.56");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=488.17,176.06");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=489.34,102.38");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=480.26,38.75");
    }

}

