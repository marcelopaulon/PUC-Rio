
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn8_4
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=100.72,74.99");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=111.06,10.00");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=133.11,0.19");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=155.55,12.12");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=65.25,27.74");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=68.82,4.71");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=174.17,82.84");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=122.24,59.91");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=38.51,93.85");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=37.88,144.49");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=102.47,187.36");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=102.47,173.34");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=152.27,166.34");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=176.44,186.83");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=145.34,246.09");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=166.11,168.08");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=123.48,159.72");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=81.84,157.54");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=113.63,162.70");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=66.00,188.15");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=34.48,217.60");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=57.05,306.57");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=77.45,391.63");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=66.93,343.67");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=126.89,76.84");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=127.72,49.42");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=77.23,55.87");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=140.06,25.17");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=206.32,35.50");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=135.39,39.40");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=80.46,31.10");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=218.12,142.40");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=84.72,85.81");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=55.15,84.46");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=27.30,57.30");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=69.90,207.44");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=144.29,206.17");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=198.95,193.43");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=255.33,145.91");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=177.39,277.57");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=176.74,161.76");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=111.12,205.57");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=127.97,122.10");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=73.31,250.41");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=79.28,224.87");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=55.48,192.72");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=52.71,355.15");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=158.48,427.32");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=82.04,432.83");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=181.19,105.89");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=73.27,83.63");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=78.23,13.29");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=203.41,53.02");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=211.83,11.27");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=45.65,109.70");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=5.87,55.43");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=123.03,26.67");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=117.24,90.39");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=69.07,138.23");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=2.39,135.30");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=97.37,271.82");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=139.38,163.69");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=114.95,247.00");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=209.77,211.10");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=129.04,224.81");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=157.35,148.99");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=151.46,129.02");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=163.45,140.12");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=127.65,137.59");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=108.91,106.77");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=41.91,265.09");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=13.86,252.02");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=99.93,397.33");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=67.47,424.94");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=119.97,113.08");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=95.20,53.11");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=192.26,13.41");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=148.93,77.94");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=184.47,34.94");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=44.78,74.62");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=127.85,12.22");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=171.89,93.21");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=116.09,122.76");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=109.76,27.05");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=19.07,158.07");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=84.69,138.60");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=56.93,141.23");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=189.69,118.96");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=166.29,196.39");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=182.47,257.68");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=177.74,132.46");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=69.31,158.20");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=69.69,127.33");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=110.68,148.27");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=73.22,177.34");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=24.59,257.33");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=37.85,283.61");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=83.95,406.13");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=77.66,340.23");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=92.36,113.53");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=146.99,33.09");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=53.81,16.09");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=219.43,0.97");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=111.48,78.44");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=68.03,39.34");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=92.82,21.90");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=247.75,26.83");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=114.60,51.30");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=94.39,142.11");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=56.83,68.01");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=29.21,202.75");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=87.57,235.64");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=218.86,225.89");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=205.64,148.05");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=213.66,268.27");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=174.92,214.16");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=138.25,194.72");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=84.22,167.78");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=191.41,166.64");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=162.94,182.06");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=27.27,242.02");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=120.37,316.97");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=33.81,416.56");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=108.21,324.95");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=4.38,124.92");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=76.31,113.74");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=90.76,36.63");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=92.07,9.62");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=183.92,5.39");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=29.31,7.93");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=39.70,24.05");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=138.21,91.38");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=138.30,58.67");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=24.22,43.05");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=11.69,74.59");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=51.20,237.30");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=120.02,186.55");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=218.13,166.53");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=188.25,195.62");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=131.97,240.55");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=161.05,241.01");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=123.21,101.42");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=82.97,208.50");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=149.06,196.22");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=6.44,223.38");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=79.05,263.51");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=43.11,347.93");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=29.93,315.15");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=23.32,298.92");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=41.34,174.25");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=24.58,72.32");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=166.36,18.85");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=157.43,1.71");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=201.86,8.50");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=145.33,6.39");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=118.37,39.26");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=165.76,63.76");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=142.82,49.33");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=58.88,99.83");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=76.45,148.88");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=154.01,254.11");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=67.76,107.49");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=164.04,121.20");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=147.64,109.18");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=138.67,281.01");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=218.66,180.38");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=145.62,235.93");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=45.36,201.35");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=198.32,209.46");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=116.58,218.70");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=22.87,223.26");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=34.17,384.09");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=71.72,403.26");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=133.08,356.36");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=44.93,135.51");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=138.04,76.59");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=103.26,87.84");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=169.94,5.89");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=160.68,31.41");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=15.26,96.79");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=17.15,84.21");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=182.42,88.97");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=117.47,69.72");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=34.19,113.21");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=38.79,159.27");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=12.68,203.63");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=76.88,191.89");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=137.92,146.47");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=223.16,201.64");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=133.42,305.10");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=154.31,230.16");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=144.42,181.89");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=123.17,204.44");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=102.86,234.28");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=16.24,274.75");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=56.26,252.61");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=129.10,332.48");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=51.12,339.63");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=121.49,261.29");
    }

}

