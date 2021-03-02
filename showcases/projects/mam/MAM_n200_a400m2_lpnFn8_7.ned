
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn8_7
{
    parameters:
        @display("bgb=400,400;bgg=100,1,grey95;bgu=m");
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
        @display("p=108.95,105.79");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=81.32,107.75");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=56.35,108.45");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=137.19,137.63");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=175.38,166.06");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=229.48,107.40");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=212.37,117.78");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=292.28,70.26");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=373.39,89.90");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=383.59,73.40");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=366.81,65.67");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=279.29,94.60");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=260.27,52.16");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=269.15,2.12");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=181.31,34.06");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=176.90,45.41");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=208.28,10.11");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=182.70,102.62");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=160.06,64.77");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=120.54,79.42");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=72.78,43.35");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=45.58,49.02");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=22.91,88.51");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=74.06,122.46");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=175.89,95.03");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=110.96,164.32");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=74.29,99.73");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=4.17,32.95");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=126.40,136.56");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=160.93,169.17");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=229.15,147.41");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=182.83,140.80");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=333.30,126.39");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=307.94,63.28");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=331.95,68.50");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=345.24,100.36");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=339.51,135.35");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=239.31,52.95");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=288.05,26.64");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=213.42,61.03");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=235.91,42.13");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=235.82,0.72");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=187.68,89.45");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=153.71,36.90");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=210.82,104.59");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=105.09,90.17");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=78.17,62.36");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=29.05,63.06");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=145.65,55.86");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=92.87,128.87");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=104.96,12.27");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=51.11,88.95");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=83.99,24.82");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=102.52,52.52");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=169.40,149.21");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=231.86,73.95");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=252.71,120.40");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=318.77,61.65");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=366.74,55.13");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=379.33,29.54");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=363.66,150.41");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=267.19,184.33");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=290.44,109.17");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=346.86,14.63");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=209.62,32.44");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=163.18,29.60");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=147.12,66.04");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=185.66,115.90");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=155.63,46.86");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=161.48,91.22");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=75.84,135.84");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=72.14,19.38");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=11.98,144.27");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=68.56,178.09");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=56.79,179.92");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=111.30,130.22");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=16.21,101.13");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=77.12,163.17");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=94.43,178.27");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=196.72,255.58");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=287.70,87.98");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=297.44,99.21");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=313.66,90.24");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=374.03,76.77");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=371.05,112.92");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=372.28,11.55");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=252.62,185.50");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=263.99,131.78");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=281.78,75.23");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=96.08,43.41");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=201.42,137.50");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=274.93,52.66");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=106.99,148.18");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=172.75,60.69");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=139.81,159.55");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=54.67,53.59");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=20.56,50.88");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=36.05,55.83");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=6.69,94.80");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=83.45,44.59");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=143.71,109.74");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=42.05,162.80");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=1.30,55.11");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=150.31,118.69");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=113.10,206.89");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=206.51,161.07");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=284.14,168.90");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=280.33,4.53");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=388.04,50.78");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=362.95,104.50");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=353.46,110.99");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=286.19,43.52");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=251.01,146.43");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=255.61,66.74");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=168.55,10.98");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=147.62,7.65");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=239.83,14.40");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=213.34,92.92");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=209.35,47.35");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=100.88,78.67");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=101.22,34.48");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=54.65,76.41");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=75.77,85.80");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=28.13,136.99");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=135.63,21.40");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=139.45,95.87");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=56.31,127.17");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=25.31,74.74");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=97.28,62.16");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=230.02,235.46");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=136.42,75.41");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=224.90,95.88");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=298.05,2.13");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=355.25,183.30");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=327.64,14.36");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=372.01,42.89");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=225.20,159.65");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=312.64,48.67");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=261.03,34.36");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=142.41,35.97");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=182.03,10.61");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=267.37,15.85");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=169.54,113.09");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=151.08,154.91");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=92.13,10.51");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=66.35,90.92");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=46.76,8.35");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=44.44,78.71");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=94.44,87.67");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=23.87,110.39");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=140.71,197.41");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=31.84,94.72");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=40.84,28.66");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=47.23,112.57");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=219.33,200.78");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=278.61,183.64");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=197.57,147.09");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=245.84,26.30");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=335.04,95.45");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=355.86,90.90");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=351.45,59.07");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=354.62,68.58");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=348.38,45.24");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=258.58,90.42");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=198.43,45.46");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=248.06,45.81");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=201.09,94.60");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=217.16,140.45");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=130.20,30.30");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=142.77,127.64");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=39.31,15.69");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=75.90,33.42");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=42.58,68.76");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=55.21,143.99");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=117.01,55.23");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=164.89,124.78");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=120.28,23.62");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=87.04,98.16");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=104.48,183.01");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=189.30,132.21");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=238.45,134.31");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=155.95,107.23");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=317.45,78.19");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=390.30,164.07");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=392.51,68.35");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=301.08,47.88");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=264.84,100.81");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=186.04,56.60");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=222.27,25.39");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=140.32,47.02");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=254.02,108.60");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=242.19,69.35");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=133.92,60.64");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=219.38,40.64");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=162.75,75.34");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=117.11,39.35");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=31.96,22.90");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=95.69,148.34");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=128.07,123.57");
    }

}

