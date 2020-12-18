
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn8_4
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
            @display("p=100,100");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=13.79,54.91");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=63.28,68.25");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=75.79,167.32");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=72.83,241.57");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=52.21,242.96");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=54.97,165.63");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=63.03,150.83");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=32.85,139.61");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=99.84,182.80");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=100.97,172.72");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=64.70,263.16");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=142.30,319.43");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=157.74,306.38");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=85.06,260.08");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=72.71,294.74");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=134.87,252.26");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=120.69,314.97");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=120.07,296.31");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=109.09,258.94");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=42.93,320.33");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=92.25,241.43");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=27.30,178.76");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=53.71,125.91");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=116.93,114.26");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=27.06,122.11");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=65.01,47.39");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=105.14,156.07");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=93.85,110.16");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=67.65,177.91");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=48.03,265.27");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=42.36,171.86");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=121.00,199.22");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=6.06,109.96");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=102.33,275.08");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=66.05,94.13");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=15.36,286.93");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=92.16,346.87");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=234.34,246.41");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=119.80,268.39");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=108.46,365.88");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=118.81,220.66");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=154.67,316.99");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=65.83,283.93");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=37.78,260.00");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=4.21,361.50");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=95.29,263.40");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=33.35,200.78");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=38.30,109.77");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=202.61,88.92");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=20.52,157.60");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=82.81,90.86");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=75.74,139.63");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=17.41,193.77");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=102.81,197.62");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=48.49,298.54");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=10.68,202.80");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=88.28,123.28");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=54.71,98.87");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=158.95,208.76");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=106.68,121.92");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=14.07,232.35");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=201.18,334.74");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=74.35,252.78");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=75.20,270.96");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=4.08,317.02");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=129.12,307.43");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=122.89,363.22");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=78.52,304.20");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=88.43,207.94");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=35.69,336.34");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=111.32,243.20");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=1.46,172.32");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=134.44,130.49");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=193.73,112.57");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=119.93,174.98");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=22.33,44.61");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=41.93,150.59");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=74.47,81.18");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=64.31,250.93");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=84.76,233.27");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=57.23,218.57");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=30.86,101.06");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=71.55,199.36");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=94.34,191.94");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=8.40,151.08");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=105.94,226.70");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=174.98,297.05");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=163.89,288.63");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=51.03,232.38");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=57.47,342.18");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=125.96,236.22");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=170.43,259.30");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=109.96,339.47");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=148.95,271.05");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=50.07,335.19");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=174.09,192.64");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=62.39,233.24");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=126.05,76.10");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=91.18,168.73");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=110.36,101.62");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=44.89,16.62");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=41.75,2.04");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=57.21,112.16");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=109.35,306.12");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=32.02,237.87");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=137.07,114.75");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=1.69,85.97");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=64.26,190.23");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=43.15,195.26");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=92.81,156.28");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=93.88,332.65");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=145.23,233.13");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=251.74,296.21");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=66.40,306.41");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=98.49,307.11");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=166.68,343.13");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=73.17,366.59");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=185.44,341.13");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=34.81,303.30");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=5.30,267.74");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=183.60,257.52");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=44.40,185.02");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=45.74,37.62");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=107.95,40.40");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=159.69,156.39");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=17.32,88.13");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=62.02,18.84");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=61.88,83.59");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=92.67,223.93");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=140.97,280.54");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=90.33,144.89");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=39.47,215.70");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=42.01,130.90");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=110.33,190.98");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=113.46,144.61");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=132.37,297.27");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=117.68,325.49");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=169.02,247.36");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=45.97,206.03");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=83.67,278.69");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=144.40,257.51");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=95.91,374.00");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=141.38,382.62");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=101.32,289.30");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=7.83,384.64");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=157.01,181.32");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=13.12,170.22");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=5.07,74.63");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=119.14,153.78");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=93.07,81.45");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=92.77,48.81");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=27.24,54.18");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=80.72,192.95");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=154.14,293.80");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=59.24,204.46");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=122.66,163.32");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=43.05,58.10");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=70.28,131.16");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=151.10,135.32");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=118.19,85.43");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=160.98,275.43");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=99.63,358.96");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=68.86,320.95");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=57.95,323.39");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=42.50,274.68");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=194.70,275.07");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=131.62,271.79");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=156.67,264.47");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=199.50,216.44");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=34.71,371.89");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=145.86,222.62");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=16.56,181.15");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=133.81,143.34");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=174.52,94.14");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=151.45,36.28");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=68.90,9.77");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=145.43,88.31");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=135.91,192.65");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=34.94,282.02");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=4.38,225.15");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=15.83,106.88");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=13.05,124.45");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=7.94,140.64");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=172.59,114.20");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=173.45,213.25");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=24.19,251.50");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=132.04,322.59");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=248.19,337.31");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=112.12,165.91");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=68.48,339.92");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=96.89,250.57");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=83.79,331.81");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=75.52,211.96");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=178.81,229.16");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=9.57,329.18");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=157.35,220.27");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=89.87,178.93");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=10.70,214.52");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=149.12,124.67");
    }

}

