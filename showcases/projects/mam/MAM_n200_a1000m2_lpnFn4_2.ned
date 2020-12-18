
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn4_2
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
        @display("p=46.99,29.50");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=6.02,62.48");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=2.03,17.64");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=66.98,6.90");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=52.98,91.38");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=46.51,104.25");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=134.19,148.94");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=164.53,146.12");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=121.43,144.62");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=135.08,114.50");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=153.38,128.93");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=82.36,58.00");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=41.49,60.43");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=96.14,69.75");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=19.10,113.40");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=4.37,138.85");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=10.50,107.81");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=72.10,41.09");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=61.22,36.21");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=102.60,12.93");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=121.02,54.31");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=25.73,66.14");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=94.39,27.92");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=104.83,46.10");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=123.99,65.66");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=212.16,59.89");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=240.69,24.65");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=298.70,8.59");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=255.57,12.81");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=296.79,50.60");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=250.79,1.88");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=338.38,22.02");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=258.80,79.77");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=271.79,71.86");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=266.37,107.19");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=270.16,151.82");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=346.39,195.62");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=433.04,196.75");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=463.68,190.11");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=457.68,144.88");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=451.78,156.17");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=468.28,204.80");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=526.18,242.28");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=604.61,303.35");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=564.90,376.25");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=579.26,303.62");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=593.13,288.71");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=535.86,321.41");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=527.68,309.00");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=185.27,97.91");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=60.11,115.69");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=20.42,79.00");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=46.41,41.15");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=63.35,24.32");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=103.99,119.68");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=142.42,132.11");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=159.17,186.22");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=175.30,86.36");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=23.55,124.55");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=206.11,140.62");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=191.35,143.07");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=15.53,51.23");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=49.79,74.72");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=115.26,0.31");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=38.53,118.83");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=22.07,236.75");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=102.48,80.95");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=63.77,129.33");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=49.48,51.55");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=149.27,9.60");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=80.24,98.89");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=29.58,54.33");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=92.54,48.24");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=79.67,7.65");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=152.03,98.84");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=147.26,47.23");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=228.15,47.18");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=293.44,32.67");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=282.46,43.58");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=207.05,75.91");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=311.42,25.14");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=308.78,57.22");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=330.03,91.41");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=282.84,81.67");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=205.70,48.04");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=180.98,110.47");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=271.83,188.40");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=466.13,155.75");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=459.52,268.68");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=457.21,120.67");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=437.99,154.13");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=427.25,228.51");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=474.38,258.82");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=678.68,242.29");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=586.06,385.05");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=578.38,287.56");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=644.04,357.88");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=524.26,319.61");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=536.72,289.95");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=78.22,83.57");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=41.88,7.66");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=70.32,66.96");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=0.99,6.09");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=37.91,20.61");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=128.99,103.20");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=118.57,126.52");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=109.14,148.18");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=142.92,163.74");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=178.63,132.75");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=187.83,50.98");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=182.14,148.66");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=114.23,91.77");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=72.06,56.92");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=89.28,85.73");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=38.79,129.01");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=23.44,137.02");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=67.00,166.78");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=125.64,78.69");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=80.96,33.26");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=132.71,43.47");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=146.75,82.07");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=20.55,91.65");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=171.74,34.40");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=107.80,66.30");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=61.19,100.04");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=162.52,15.97");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=239.17,78.25");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=285.18,24.28");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=242.58,59.15");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=281.01,67.06");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=261.98,39.79");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=358.20,25.66");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=298.97,108.69");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=250.37,162.36");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=296.15,120.68");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=256.63,208.56");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=320.03,180.32");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=524.77,169.29");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=492.54,186.16");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=502.65,76.40");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=450.23,176.65");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=494.64,222.63");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=540.24,254.16");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=555.40,309.81");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=506.99,334.86");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=546.55,316.13");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=621.14,276.35");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=499.25,400.12");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=564.02,301.00");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=32.28,152.24");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=29.06,12.30");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=4.75,42.91");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=17.89,29.76");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=56.17,8.51");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=66.58,83.50");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=35.29,83.02");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=67.77,208.26");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=171.16,163.65");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=64.11,223.68");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=150.21,33.69");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=147.47,206.33");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=90.78,6.89");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=89.20,147.46");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=61.09,71.60");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=48.14,197.09");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=12.91,168.30");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=1.72,158.56");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=10.66,94.76");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=19.34,41.89");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=166.91,0.64");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=85.54,108.71");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=76.01,120.31");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=105.72,28.87");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=160.19,78.46");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=172.00,55.75");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=166.10,115.56");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=245.98,44.23");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=315.49,84.11");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=219.04,11.79");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=199.10,35.43");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=237.08,8.90");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=284.58,2.79");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=334.76,133.58");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=216.83,117.60");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=217.10,30.56");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=282.34,180.13");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=316.70,141.01");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=395.06,136.68");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=410.07,182.00");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=475.63,186.30");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=483.54,213.19");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=512.15,240.64");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=586.71,319.74");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=594.34,301.80");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=526.00,397.91");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=524.61,361.71");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=654.11,292.83");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=499.58,256.35");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=531.62,344.99");
    }

}

