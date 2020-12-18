
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM200-6
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
        @display("p=99.00,285.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=71.24,237.37");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=67.57,315.39");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=80.15,297.76");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=86.80,240.98");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=49.77,245.75");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=9.35,292.18");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=11.29,282.36");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=29.32,318.07");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=23.01,253.75");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=122.06,271.97");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=47.40,175.05");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=90.00,187.29");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=56.52,194.31");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=105.18,154.61");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=132.25,63.69");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=85.21,106.77");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=107.15,97.21");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=151.95,49.80");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=124.87,140.31");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=93.58,114.39");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=166.91,47.77");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=160.41,69.73");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=244.09,66.84");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=241.52,43.19");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=285.47,57.46");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=337.77,125.70");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=302.83,120.56");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=351.59,104.50");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=281.19,152.38");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=284.87,167.80");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=341.74,179.27");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=333.19,172.66");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=245.98,127.15");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=233.36,30.37");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=287.16,107.58");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=294.62,89.47");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=261.74,15.47");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=301.66,51.44");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=385.60,102.68");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=357.84,153.54");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=389.48,144.22");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=333.42,108.52");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=368.84,96.24");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=397.50,89.04");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=375.84,54.10");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=265.75,64.23");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=253.04,87.34");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=197.12,73.13");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=207.19,43.90");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=198.23,124.08");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=173.85,66.64");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=139.91,50.36");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=49.63,81.38");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=8.51,84.98");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=59.67,56.44");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=94.61,12.87");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=114.35,25.50");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=117.48,81.75");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=170.29,0.02");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=143.04,3.18");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=138.84,21.99");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=76.92,3.49");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=122.77,3.63");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=48.46,7.03");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=49.56,18.91");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=75.82,53.73");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=159.74,39.89");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=65.83,12.70");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=37.19,47.03");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=27.14,50.39");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=61.45,71.65");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=19.65,14.83");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=34.53,17.82");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=25.12,6.03");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=40.86,61.46");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=61.88,93.50");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=77.35,64.96");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=49.35,40.88");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=34.89,80.11");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=134.67,79.03");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=97.15,74.34");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=56.27,147.91");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=144.92,113.05");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=42.17,152.57");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=108.34,192.38");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=23.21,213.13");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=38.18,198.39");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=76.60,162.34");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=153.65,15.72");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=189.17,64.77");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=187.56,79.06");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=252.34,5.70");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=289.12,1.89");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=225.72,52.18");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=220.59,32.28");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=176.60,81.18");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=127.23,101.15");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=64.33,40.48");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=113.02,59.29");
    }

    host_fn_rly_101: <default("SensorNode")> like INetworkNode {
        @display("p=101.06,53.98");
    }

    host_fn_rly_102: <default("SensorNode")> like INetworkNode {
        @display("p=250.58,36.20");
    }

    host_fn_rly_103: <default("SensorNode")> like INetworkNode {
        @display("p=252.80,104.88");
    }

    host_fn_rly_104: <default("SensorNode")> like INetworkNode {
        @display("p=200.73,179.13");
    }

    host_fn_rly_105: <default("SensorNode")> like INetworkNode {
        @display("p=126.57,198.75");
    }

    host_fn_rly_106: <default("SensorNode")> like INetworkNode {
        @display("p=136.06,242.93");
    }

    host_fn_rly_107: <default("SensorNode")> like INetworkNode {
        @display("p=159.86,315.54");
    }

    host_fn_rly_108: <default("SensorNode")> like INetworkNode {
        @display("p=118.57,383.30");
    }

    host_fn_rly_109: <default("SensorNode")> like INetworkNode {
        @display("p=84.19,372.59");
    }

    host_fn_rly_110: <default("SensorNode")> like INetworkNode {
        @display("p=147.69,344.12");
    }

    host_fn_rly_111: <default("SensorNode")> like INetworkNode {
        @display("p=202.32,331.67");
    }

    host_fn_rly_112: <default("SensorNode")> like INetworkNode {
        @display("p=226.36,285.56");
    }

    host_fn_rly_113: <default("SensorNode")> like INetworkNode {
        @display("p=205.06,300.40");
    }

    host_fn_rly_114: <default("SensorNode")> like INetworkNode {
        @display("p=219.23,314.57");
    }

    host_fn_rly_115: <default("SensorNode")> like INetworkNode {
        @display("p=198.76,220.29");
    }

    host_fn_rly_116: <default("SensorNode")> like INetworkNode {
        @display("p=181.79,254.51");
    }

    host_fn_rly_117: <default("SensorNode")> like INetworkNode {
        @display("p=196.52,246.63");
    }

    host_fn_rly_118: <default("SensorNode")> like INetworkNode {
        @display("p=113.34,207.42");
    }

    host_fn_rly_119: <default("SensorNode")> like INetworkNode {
        @display("p=120.40,168.53");
    }

    host_fn_rly_120: <default("SensorNode")> like INetworkNode {
        @display("p=114.40,238.43");
    }

    host_fn_rly_121: <default("SensorNode")> like INetworkNode {
        @display("p=20.87,189.61");
    }

    host_fn_rly_122: <default("SensorNode")> like INetworkNode {
        @display("p=32.62,282.19");
    }

    host_fn_rly_123: <default("SensorNode")> like INetworkNode {
        @display("p=52.12,264.47");
    }

    host_fn_rly_124: <default("SensorNode")> like INetworkNode {
        @display("p=64.50,140.18");
    }

    host_fn_rly_125: <default("SensorNode")> like INetworkNode {
        @display("p=88.56,152.60");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=110.87,346.19");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=4.54,227.00");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=73.30,325.80");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=147.40,278.79");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=81.96,209.68");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=32.78,236.61");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=97.60,312.15");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=54.33,276.65");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=19.34,339.87");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=24.55,263.99");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=141.99,295.39");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=2.47,150.82");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=40.01,217.00");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=39.32,127.89");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=74.14,172.70");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=123.51,47.56");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=131.17,174.36");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=76.83,81.09");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=177.04,52.46");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=153.87,138.03");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=53.90,165.64");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=230.66,68.27");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=187.90,40.58");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=234.23,8.65");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=202.72,5.79");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=323.40,88.17");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=369.93,70.56");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=320.25,58.41");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=341.90,56.19");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=341.99,202.74");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=272.12,158.00");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=374.14,127.89");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=391.12,178.85");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=231.94,107.86");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=259.60,30.34");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=356.85,131.92");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=217.29,149.92");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=271.84,32.08");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=276.33,20.15");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=372.10,161.92");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=352.22,120.48");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=377.79,150.89");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=348.46,69.73");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=384.20,75.59");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=396.51,54.00");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=304.66,4.04");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=299.23,99.58");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=259.96,130.73");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=135.86,94.84");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=128.86,25.01");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=192.05,133.36");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=207.25,20.42");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=102.29,22.05");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=14.10,28.84");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=51.69,96.12");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=91.23,125.78");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=25.05,62.30");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=88.09,29.26");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=154.65,121.79");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=173.07,36.58");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=154.79,59.94");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=123.52,70.57");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=89.79,41.31");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=104.61,39.73");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=10.31,40.93");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=52.06,112.27");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=86.61,53.01");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=187.19,52.71");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=115.16,13.01");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=55.84,29.86");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=22.99,82.33");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=119.85,123.19");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=12.29,109.63");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=7.36,63.84");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=9.46,13.95");
    }

    host_lpn_201: <default("SensorNode")> like INetworkNode {
        @display("p=79.67,18.49");
    }

    host_lpn_202: <default("SensorNode")> like INetworkNode {
        @display("p=63.57,172.62");
    }

    host_lpn_203: <default("SensorNode")> like INetworkNode {
        @display("p=79.87,43.03");
    }

    host_lpn_204: <default("SensorNode")> like INetworkNode {
        @display("p=101.27,121.85");
    }

    host_lpn_205: <default("SensorNode")> like INetworkNode {
        @display("p=33.41,116.88");
    }

    host_lpn_206: <default("SensorNode")> like INetworkNode {
        @display("p=152.50,85.07");
    }

    host_lpn_207: <default("SensorNode")> like INetworkNode {
        @display("p=105.53,80.95");
    }

    host_lpn_208: <default("SensorNode")> like INetworkNode {
        @display("p=58.66,131.47");
    }

    host_lpn_209: <default("SensorNode")> like INetworkNode {
        @display("p=134.85,138.94");
    }

    host_lpn_210: <default("SensorNode")> like INetworkNode {
        @display("p=80.12,144.22");
    }

    host_lpn_211: <default("SensorNode")> like INetworkNode {
        @display("p=66.19,223.08");
    }

    host_lpn_212: <default("SensorNode")> like INetworkNode {
        @display("p=9.27,188.30");
    }

    host_lpn_213: <default("SensorNode")> like INetworkNode {
        @display("p=68.82,198.43");
    }

    host_lpn_214: <default("SensorNode")> like INetworkNode {
        @display("p=98.19,257.00");
    }

    host_lpn_215: <default("SensorNode")> like INetworkNode {
        @display("p=145.95,98.90");
    }

    host_lpn_216: <default("SensorNode")> like INetworkNode {
        @display("p=177.82,160.80");
    }

    host_lpn_217: <default("SensorNode")> like INetworkNode {
        @display("p=152.09,161.87");
    }

    host_lpn_218: <default("SensorNode")> like INetworkNode {
        @display("p=236.80,58.45");
    }

    host_lpn_219: <default("SensorNode")> like INetworkNode {
        @display("p=301.67,34.20");
    }

    host_lpn_220: <default("SensorNode")> like INetworkNode {
        @display("p=194.29,96.71");
    }

    host_lpn_221: <default("SensorNode")> like INetworkNode {
        @display("p=214.69,104.83");
    }

    host_lpn_222: <default("SensorNode")> like INetworkNode {
        @display("p=207.15,89.88");
    }

    host_lpn_223: <default("SensorNode")> like INetworkNode {
        @display("p=174.68,102.43");
    }

    host_lpn_224: <default("SensorNode")> like INetworkNode {
        @display("p=13.26,75.89");
    }

    host_lpn_225: <default("SensorNode")> like INetworkNode {
        @display("p=70.45,149.69");
    }

    host_lpn_226: <default("SensorNode")> like INetworkNode {
        @display("p=137.94,35.33");
    }

    host_lpn_227: <default("SensorNode")> like INetworkNode {
        @display("p=271.37,44.46");
    }

    host_lpn_228: <default("SensorNode")> like INetworkNode {
        @display("p=298.51,23.81");
    }

    host_lpn_229: <default("SensorNode")> like INetworkNode {
        @display("p=181.68,181.17");
    }

    host_lpn_230: <default("SensorNode")> like INetworkNode {
        @display("p=88.79,230.32");
    }

    host_lpn_231: <default("SensorNode")> like INetworkNode {
        @display("p=134.07,186.95");
    }

    host_lpn_232: <default("SensorNode")> like INetworkNode {
        @display("p=209.50,278.78");
    }

    host_lpn_233: <default("SensorNode")> like INetworkNode {
        @display("p=125.44,343.84");
    }

    host_lpn_234: <default("SensorNode")> like INetworkNode {
        @display("p=60.08,372.21");
    }

    host_lpn_235: <default("SensorNode")> like INetworkNode {
        @display("p=156.88,328.07");
    }

    host_lpn_236: <default("SensorNode")> like INetworkNode {
        @display("p=238.14,376.76");
    }

    host_lpn_237: <default("SensorNode")> like INetworkNode {
        @display("p=259.77,272.01");
    }

    host_lpn_238: <default("SensorNode")> like INetworkNode {
        @display("p=277.17,297.85");
    }

    host_lpn_239: <default("SensorNode")> like INetworkNode {
        @display("p=285.07,305.83");
    }

    host_lpn_240: <default("SensorNode")> like INetworkNode {
        @display("p=260.75,178.50");
    }

    host_lpn_241: <default("SensorNode")> like INetworkNode {
        @display("p=95.85,294.81");
    }

    host_lpn_242: <default("SensorNode")> like INetworkNode {
        @display("p=170.40,302.10");
    }

    host_lpn_243: <default("SensorNode")> like INetworkNode {
        @display("p=156.97,264.36");
    }

    host_lpn_244: <default("SensorNode")> like INetworkNode {
        @display("p=144.31,214.06");
    }

    host_lpn_245: <default("SensorNode")> like INetworkNode {
        @display("p=183.92,227.75");
    }

    host_lpn_246: <default("SensorNode")> like INetworkNode {
        @display("p=21.72,145.86");
    }

    host_lpn_247: <default("SensorNode")> like INetworkNode {
        @display("p=46.84,295.61");
    }

    host_lpn_248: <default("SensorNode")> like INetworkNode {
        @display("p=79.25,274.68");
    }

    host_lpn_249: <default("SensorNode")> like INetworkNode {
        @display("p=23.47,105.40");
    }

    host_lpn_250: <default("SensorNode")> like INetworkNode {
        @display("p=169.31,152.92");
    }

    host_lpn_251: <default("SensorNode")> like INetworkNode {
        @display("p=126.05,217.80");
    }

    host_lpn_252: <default("SensorNode")> like INetworkNode {
        @display("p=24.90,305.50");
    }

    host_lpn_253: <default("SensorNode")> like INetworkNode {
        @display("p=106.65,368.06");
    }

    host_lpn_254: <default("SensorNode")> like INetworkNode {
        @display("p=62.74,262.58");
    }

    host_lpn_255: <default("SensorNode")> like INetworkNode {
        @display("p=167.96,227.63");
    }

    host_lpn_256: <default("SensorNode")> like INetworkNode {
        @display("p=51.51,222.88");
    }

    host_lpn_257: <default("SensorNode")> like INetworkNode {
        @display("p=69.87,213.25");
    }

    host_lpn_258: <default("SensorNode")> like INetworkNode {
        @display("p=41.86,261.28");
    }

    host_lpn_259: <default("SensorNode")> like INetworkNode {
        @display("p=39.30,318.79");
    }

    host_lpn_260: <default("SensorNode")> like INetworkNode {
        @display("p=4.09,243.21");
    }

    host_lpn_261: <default("SensorNode")> like INetworkNode {
        @display("p=125.01,284.70");
    }

    host_lpn_262: <default("SensorNode")> like INetworkNode {
        @display("p=39.16,164.92");
    }

    host_lpn_263: <default("SensorNode")> like INetworkNode {
        @display("p=151.88,248.75");
    }

    host_lpn_264: <default("SensorNode")> like INetworkNode {
        @display("p=44.65,232.49");
    }

    host_lpn_265: <default("SensorNode")> like INetworkNode {
        @display("p=108.39,143.94");
    }

    host_lpn_266: <default("SensorNode")> like INetworkNode {
        @display("p=174.08,17.04");
    }

    host_lpn_267: <default("SensorNode")> like INetworkNode {
        @display("p=136.86,157.21");
    }

    host_lpn_268: <default("SensorNode")> like INetworkNode {
        @display("p=145.87,74.18");
    }

    host_lpn_269: <default("SensorNode")> like INetworkNode {
        @display("p=115.54,102.81");
    }

    host_lpn_270: <default("SensorNode")> like INetworkNode {
        @display("p=190.30,192.20");
    }

    host_lpn_271: <default("SensorNode")> like INetworkNode {
        @display("p=169.86,176.91");
    }

    host_lpn_272: <default("SensorNode")> like INetworkNode {
        @display("p=214.45,69.02");
    }

    host_lpn_273: <default("SensorNode")> like INetworkNode {
        @display("p=159.45,102.01");
    }

    host_lpn_274: <default("SensorNode")> like INetworkNode {
        @display("p=232.66,145.25");
    }

    host_lpn_275: <default("SensorNode")> like INetworkNode {
        @display("p=339.45,40.75");
    }

    host_lpn_276: <default("SensorNode")> like INetworkNode {
        @display("p=316.03,115.81");
    }

    host_lpn_277: <default("SensorNode")> like INetworkNode {
        @display("p=324.17,122.05");
    }

    host_lpn_278: <default("SensorNode")> like INetworkNode {
        @display("p=338.38,87.87");
    }

    host_lpn_279: <default("SensorNode")> like INetworkNode {
        @display("p=282.01,133.57");
    }

    host_lpn_280: <default("SensorNode")> like INetworkNode {
        @display("p=277.01,85.82");
    }

    host_lpn_281: <default("SensorNode")> like INetworkNode {
        @display("p=271.18,172.90");
    }

    host_lpn_282: <default("SensorNode")> like INetworkNode {
        @display("p=336.61,192.07");
    }

    host_lpn_283: <default("SensorNode")> like INetworkNode {
        @display("p=325.65,243.50");
    }

    host_lpn_284: <default("SensorNode")> like INetworkNode {
        @display("p=215.04,211.65");
    }

    host_lpn_285: <default("SensorNode")> like INetworkNode {
        @display("p=227.47,41.00");
    }

    host_lpn_286: <default("SensorNode")> like INetworkNode {
        @display("p=314.59,74.96");
    }

    host_lpn_287: <default("SensorNode")> like INetworkNode {
        @display("p=322.76,98.39");
    }

    host_lpn_288: <default("SensorNode")> like INetworkNode {
        @display("p=285.49,69.54");
    }

    host_lpn_289: <default("SensorNode")> like INetworkNode {
        @display("p=302.25,71.79");
    }

    host_lpn_290: <default("SensorNode")> like INetworkNode {
        @display("p=309.82,94.45");
    }

    host_lpn_291: <default("SensorNode")> like INetworkNode {
        @display("p=385.00,195.22");
    }

    host_lpn_292: <default("SensorNode")> like INetworkNode {
        @display("p=382.99,167.58");
    }

    host_lpn_293: <default("SensorNode")> like INetworkNode {
        @display("p=326.50,40.91");
    }

    host_lpn_294: <default("SensorNode")> like INetworkNode {
        @display("p=353.66,41.54");
    }

    host_lpn_295: <default("SensorNode")> like INetworkNode {
        @display("p=380.60,93.87");
    }

    host_lpn_296: <default("SensorNode")> like INetworkNode {
        @display("p=366.24,37.31");
    }

    host_lpn_297: <default("SensorNode")> like INetworkNode {
        @display("p=267.46,77.61");
    }

    host_lpn_298: <default("SensorNode")> like INetworkNode {
        @display("p=260.86,143.53");
    }

    host_lpn_299: <default("SensorNode")> like INetworkNode {
        @display("p=250.27,142.19");
    }

    host_lpn_300: <default("SensorNode")> like INetworkNode {
        @display("p=198.01,39.69");
    }

    host_lpn_301: <default("SensorNode")> like INetworkNode {
        @display("p=150.08,196.61");
    }

    host_lpn_302: <default("SensorNode")> like INetworkNode {
        @display("p=184.08,121.47");
    }

    host_lpn_303: <default("SensorNode")> like INetworkNode {
        @display("p=106.52,4.77");
    }

    host_lpn_304: <default("SensorNode")> like INetworkNode {
        @display("p=86.66,165.50");
    }

    host_lpn_305: <default("SensorNode")> like INetworkNode {
        @display("p=88.64,96.38");
    }

    host_lpn_306: <default("SensorNode")> like INetworkNode {
        @display("p=26.97,95.12");
    }

    host_lpn_307: <default("SensorNode")> like INetworkNode {
        @display("p=87.33,70.40");
    }

    host_lpn_308: <default("SensorNode")> like INetworkNode {
        @display("p=123.09,33.90");
    }

    host_lpn_309: <default("SensorNode")> like INetworkNode {
        @display("p=131.14,123.02");
    }

    host_lpn_310: <default("SensorNode")> like INetworkNode {
        @display("p=197.00,19.50");
    }

    host_lpn_311: <default("SensorNode")> like INetworkNode {
        @display("p=165.19,27.58");
    }

    host_lpn_312: <default("SensorNode")> like INetworkNode {
        @display("p=206.37,60.60");
    }

    host_lpn_313: <default("SensorNode")> like INetworkNode {
        @display("p=4.39,4.09");
    }

    host_lpn_314: <default("SensorNode")> like INetworkNode {
        @display("p=87.95,0.78");
    }

    host_lpn_315: <default("SensorNode")> like INetworkNode {
        @display("p=15.19,4.50");
    }

    host_lpn_316: <default("SensorNode")> like INetworkNode {
        @display("p=41.99,28.14");
    }

    host_lpn_317: <default("SensorNode")> like INetworkNode {
        @display("p=164.71,80.27");
    }

    host_lpn_318: <default("SensorNode")> like INetworkNode {
        @display("p=183.43,0.39");
    }

    host_lpn_319: <default("SensorNode")> like INetworkNode {
        @display("p=100.23,104.96");
    }

    host_lpn_320: <default("SensorNode")> like INetworkNode {
        @display("p=35.10,103.30");
    }

    host_lpn_321: <default("SensorNode")> like INetworkNode {
        @display("p=1.44,99.00");
    }

    host_lpn_322: <default("SensorNode")> like INetworkNode {
        @display("p=50.12,68.81");
    }

    host_lpn_323: <default("SensorNode")> like INetworkNode {
        @display("p=28.50,37.75");
    }

    host_lpn_324: <default("SensorNode")> like INetworkNode {
        @display("p=36.44,2.72");
    }

    host_lpn_325: <default("SensorNode")> like INetworkNode {
        @display("p=42.13,88.17");
    }

    host_lpn_326: <default("SensorNode")> like INetworkNode {
        @display("p=64.75,83.90");
    }

    host_lpn_327: <default("SensorNode")> like INetworkNode {
        @display("p=67.02,106.69");
    }

    host_lpn_328: <default("SensorNode")> like INetworkNode {
        @display("p=110.30,69.94");
    }

    host_lpn_329: <default("SensorNode")> like INetworkNode {
        @display("p=48.08,139.06");
    }

    host_lpn_330: <default("SensorNode")> like INetworkNode {
        @display("p=87.97,136.33");
    }

    host_lpn_331: <default("SensorNode")> like INetworkNode {
        @display("p=174.76,91.66");
    }

    host_lpn_332: <default("SensorNode")> like INetworkNode {
        @display("p=168.17,129.03");
    }

    host_lpn_333: <default("SensorNode")> like INetworkNode {
        @display("p=72.41,131.95");
    }

    host_lpn_334: <default("SensorNode")> like INetworkNode {
        @display("p=85.18,176.84");
    }

    host_lpn_335: <default("SensorNode")> like INetworkNode {
        @display("p=26.69,176.44");
    }

    host_lpn_336: <default("SensorNode")> like INetworkNode {
        @display("p=161.34,170.56");
    }

    host_lpn_337: <default("SensorNode")> like INetworkNode {
        @display("p=25.11,201.93");
    }

    host_lpn_338: <default("SensorNode")> like INetworkNode {
        @display("p=1.44,257.68");
    }

    host_lpn_339: <default("SensorNode")> like INetworkNode {
        @display("p=78.76,229.27");
    }

    host_lpn_340: <default("SensorNode")> like INetworkNode {
        @display("p=230.07,20.82");
    }

    host_lpn_341: <default("SensorNode")> like INetworkNode {
        @display("p=242.76,23.16");
    }

    host_lpn_342: <default("SensorNode")> like INetworkNode {
        @display("p=197.38,52.58");
    }

    host_lpn_343: <default("SensorNode")> like INetworkNode {
        @display("p=236.98,81.13");
    }

    host_lpn_344: <default("SensorNode")> like INetworkNode {
        @display("p=271.12,7.90");
    }

    host_lpn_345: <default("SensorNode")> like INetworkNode {
        @display("p=242.83,0.50");
    }

    host_lpn_346: <default("SensorNode")> like INetworkNode {
        @display("p=286.06,81.16");
    }

    host_lpn_347: <default("SensorNode")> like INetworkNode {
        @display("p=194.97,108.38");
    }

    host_lpn_348: <default("SensorNode")> like INetworkNode {
        @display("p=122.70,155.71");
    }

    host_lpn_349: <default("SensorNode")> like INetworkNode {
        @display("p=2.96,116.97");
    }

    host_lpn_350: <default("SensorNode")> like INetworkNode {
        @display("p=165.86,139.38");
    }

    host_lpn_351: <default("SensorNode")> like INetworkNode {
        @display("p=87.05,85.79");
    }

    host_lpn_352: <default("SensorNode")> like INetworkNode {
        @display("p=323.59,16.13");
    }

    host_lpn_353: <default("SensorNode")> like INetworkNode {
        @display("p=272.34,121.15");
    }

    host_lpn_354: <default("SensorNode")> like INetworkNode {
        @display("p=285.97,177.82");
    }

    host_lpn_355: <default("SensorNode")> like INetworkNode {
        @display("p=100.29,135.83");
    }

    host_lpn_356: <default("SensorNode")> like INetworkNode {
        @display("p=143.38,256.95");
    }

    host_lpn_357: <default("SensorNode")> like INetworkNode {
        @display("p=202.92,343.71");
    }

    host_lpn_358: <default("SensorNode")> like INetworkNode {
        @display("p=174.58,322.81");
    }

    host_lpn_359: <default("SensorNode")> like INetworkNode {
        @display("p=92.08,359.81");
    }

    host_lpn_360: <default("SensorNode")> like INetworkNode {
        @display("p=195.79,365.24");
    }

    host_lpn_361: <default("SensorNode")> like INetworkNode {
        @display("p=265.35,354.57");
    }

    host_lpn_362: <default("SensorNode")> like INetworkNode {
        @display("p=171.56,278.58");
    }

    host_lpn_363: <default("SensorNode")> like INetworkNode {
        @display("p=207.67,363.42");
    }

    host_lpn_364: <default("SensorNode")> like INetworkNode {
        @display("p=240.87,282.80");
    }

    host_lpn_365: <default("SensorNode")> like INetworkNode {
        @display("p=249.61,222.08");
    }

    host_lpn_366: <default("SensorNode")> like INetworkNode {
        @display("p=237.87,181.88");
    }

    host_lpn_367: <default("SensorNode")> like INetworkNode {
        @display("p=217.52,252.43");
    }

    host_lpn_368: <default("SensorNode")> like INetworkNode {
        @display("p=59.14,237.41");
    }

    host_lpn_369: <default("SensorNode")> like INetworkNode {
        @display("p=102.42,217.10");
    }

    host_lpn_370: <default("SensorNode")> like INetworkNode {
        @display("p=151.28,227.11");
    }

    host_lpn_371: <default("SensorNode")> like INetworkNode {
        @display("p=77.26,192.75");
    }

    host_lpn_372: <default("SensorNode")> like INetworkNode {
        @display("p=18.24,376.96");
    }

    host_lpn_373: <default("SensorNode")> like INetworkNode {
        @display("p=68.56,273.69");
    }

    host_lpn_374: <default("SensorNode")> like INetworkNode {
        @display("p=20.95,162.05");
    }

    host_lpn_375: <default("SensorNode")> like INetworkNode {
        @display("p=142.64,128.15");
    }

    host_lpn_376: <default("SensorNode")> like INetworkNode {
        @display("p=134.14,271.64");
    }

    host_lpn_377: <default("SensorNode")> like INetworkNode {
        @display("p=84.93,284.02");
    }

    host_lpn_378: <default("SensorNode")> like INetworkNode {
        @display("p=8.23,333.59");
    }

    host_lpn_379: <default("SensorNode")> like INetworkNode {
        @display("p=145.73,361.34");
    }

    host_lpn_380: <default("SensorNode")> like INetworkNode {
        @display("p=54.56,315.30");
    }

    host_lpn_381: <default("SensorNode")> like INetworkNode {
        @display("p=5.97,161.35");
    }

    host_lpn_382: <default("SensorNode")> like INetworkNode {
        @display("p=20.25,277.78");
    }

    host_lpn_383: <default("SensorNode")> like INetworkNode {
        @display("p=33.16,299.46");
    }

    host_lpn_384: <default("SensorNode")> like INetworkNode {
        @display("p=1.76,324.14");
    }

    host_lpn_385: <default("SensorNode")> like INetworkNode {
        @display("p=82.90,316.46");
    }

    host_lpn_386: <default("SensorNode")> like INetworkNode {
        @display("p=203.51,234.06");
    }

    host_lpn_387: <default("SensorNode")> like INetworkNode {
        @display("p=20.61,128.43");
    }

    host_lpn_388: <default("SensorNode")> like INetworkNode {
        @display("p=62.19,159.07");
    }

    host_lpn_389: <default("SensorNode")> like INetworkNode {
        @display("p=47.26,202.97");
    }

    host_lpn_390: <default("SensorNode")> like INetworkNode {
        @display("p=191.47,165.38");
    }

    host_lpn_391: <default("SensorNode")> like INetworkNode {
        @display("p=181.02,144.08");
    }

    host_lpn_392: <default("SensorNode")> like INetworkNode {
        @display("p=108.10,175.49");
    }

    host_lpn_393: <default("SensorNode")> like INetworkNode {
        @display("p=151.80,151.83");
    }

    host_lpn_394: <default("SensorNode")> like INetworkNode {
        @display("p=77.76,114.40");
    }

    host_lpn_395: <default("SensorNode")> like INetworkNode {
        @display("p=211.30,169.33");
    }

    host_lpn_396: <default("SensorNode")> like INetworkNode {
        @display("p=95.40,176.75");
    }

    host_lpn_397: <default("SensorNode")> like INetworkNode {
        @display("p=204.85,135.86");
    }

    host_lpn_398: <default("SensorNode")> like INetworkNode {
        @display("p=229.28,120.98");
    }

    host_lpn_399: <default("SensorNode")> like INetworkNode {
        @display("p=283.21,44.97");
    }

    host_lpn_400: <default("SensorNode")> like INetworkNode {
        @display("p=253.99,70.60");
    }

    host_lpn_401: <default("SensorNode")> like INetworkNode {
        @display("p=237.21,99.36");
    }

    host_lpn_402: <default("SensorNode")> like INetworkNode {
        @display("p=338.11,140.20");
    }

    host_lpn_403: <default("SensorNode")> like INetworkNode {
        @display("p=386.77,129.79");
    }

    host_lpn_404: <default("SensorNode")> like INetworkNode {
        @display("p=393.95,31.18");
    }

    host_lpn_405: <default("SensorNode")> like INetworkNode {
        @display("p=280.10,226.84");
    }

    host_lpn_406: <default("SensorNode")> like INetworkNode {
        @display("p=265.06,226.58");
    }

    host_lpn_407: <default("SensorNode")> like INetworkNode {
        @display("p=376.19,114.10");
    }

    host_lpn_408: <default("SensorNode")> like INetworkNode {
        @display("p=321.65,174.02");
    }

    host_lpn_409: <default("SensorNode")> like INetworkNode {
        @display("p=297.50,111.16");
    }

    host_lpn_410: <default("SensorNode")> like INetworkNode {
        @display("p=190.53,30.06");
    }

    host_lpn_411: <default("SensorNode")> like INetworkNode {
        @display("p=306.81,180.01");
    }

    host_lpn_412: <default("SensorNode")> like INetworkNode {
        @display("p=282.54,10.85");
    }

    host_lpn_413: <default("SensorNode")> like INetworkNode {
        @display("p=224.58,2.82");
    }

    host_lpn_414: <default("SensorNode")> like INetworkNode {
        @display("p=336.20,11.82");
    }

    host_lpn_415: <default("SensorNode")> like INetworkNode {
        @display("p=376.42,16.26");
    }

    host_lpn_416: <default("SensorNode")> like INetworkNode {
        @display("p=365.03,178.24");
    }

    host_lpn_417: <default("SensorNode")> like INetworkNode {
        @display("p=395.27,109.49");
    }

    host_lpn_418: <default("SensorNode")> like INetworkNode {
        @display("p=385.34,118.81");
    }

    host_lpn_419: <default("SensorNode")> like INetworkNode {
        @display("p=289.21,117.49");
    }

    host_lpn_420: <default("SensorNode")> like INetworkNode {
        @display("p=395.66,123.21");
    }

    host_lpn_421: <default("SensorNode")> like INetworkNode {
        @display("p=307.57,105.45");
    }

    host_lpn_422: <default("SensorNode")> like INetworkNode {
        @display("p=330.96,59.33");
    }

    host_lpn_423: <default("SensorNode")> like INetworkNode {
        @display("p=268.60,104.38");
    }

    host_lpn_424: <default("SensorNode")> like INetworkNode {
        @display("p=184.28,98.35");
    }

    host_lpn_425: <default("SensorNode")> like INetworkNode {
        @display("p=213.06,2.63");
    }

    host_lpn_426: <default("SensorNode")> like INetworkNode {
        @display("p=176.30,194.74");
    }

    host_lpn_427: <default("SensorNode")> like INetworkNode {
        @display("p=223.20,88.43");
    }

    host_lpn_428: <default("SensorNode")> like INetworkNode {
        @display("p=144.23,60.31");
    }

    host_lpn_429: <default("SensorNode")> like INetworkNode {
        @display("p=67.09,27.10");
    }

    host_lpn_430: <default("SensorNode")> like INetworkNode {
        @display("p=24.91,27.99");
    }

    host_lpn_431: <default("SensorNode")> like INetworkNode {
        @display("p=75.85,32.17");
    }

    host_lpn_432: <default("SensorNode")> like INetworkNode {
        @display("p=156.80,4.80");
    }

    host_lpn_433: <default("SensorNode")> like INetworkNode {
        @display("p=110.56,112.09");
    }

    host_lpn_434: <default("SensorNode")> like INetworkNode {
        @display("p=124.05,89.67");
    }

    host_lpn_435: <default("SensorNode")> like INetworkNode {
        @display("p=165.40,59.08");
    }

    host_lpn_436: <default("SensorNode")> like INetworkNode {
        @display("p=188.23,14.47");
    }

    host_lpn_437: <default("SensorNode")> like INetworkNode {
        @display("p=150.39,25.54");
    }

    host_lpn_438: <default("SensorNode")> like INetworkNode {
        @display("p=133.56,10.36");
    }

    host_lpn_439: <default("SensorNode")> like INetworkNode {
        @display("p=58.74,0.70");
    }

    host_lpn_440: <default("SensorNode")> like INetworkNode {
        @display("p=3.22,21.93");
    }

    host_lpn_441: <default("SensorNode")> like INetworkNode {
        @display("p=14.49,54.99");
    }

    host_lpn_442: <default("SensorNode")> like INetworkNode {
        @display("p=114.66,39.41");
    }

    host_lpn_443: <default("SensorNode")> like INetworkNode {
        @display("p=214.86,79.79");
    }

    host_lpn_444: <default("SensorNode")> like INetworkNode {
        @display("p=0.03,53.04");
    }

    host_lpn_445: <default("SensorNode")> like INetworkNode {
        @display("p=0.29,76.12");
    }

    host_lpn_446: <default("SensorNode")> like INetworkNode {
        @display("p=4.89,131.20");
    }

    host_lpn_447: <default("SensorNode")> like INetworkNode {
        @display("p=70.19,122.02");
    }

    host_lpn_448: <default("SensorNode")> like INetworkNode {
        @display("p=0.22,32.24");
    }

    host_lpn_449: <default("SensorNode")> like INetworkNode {
        @display("p=50.81,50.85");
    }

    host_lpn_450: <default("SensorNode")> like INetworkNode {
        @display("p=16.44,95.26");
    }

    host_lpn_451: <default("SensorNode")> like INetworkNode {
        @display("p=110.70,132.50");
    }

    host_lpn_452: <default("SensorNode")> like INetworkNode {
        @display("p=124.89,112.71");
    }

    host_lpn_453: <default("SensorNode")> like INetworkNode {
        @display("p=72.21,97.89");
    }

    host_lpn_454: <default("SensorNode")> like INetworkNode {
        @display("p=147.22,39.55");
    }

    host_lpn_455: <default("SensorNode")> like INetworkNode {
        @display("p=13.40,152.67");
    }

    host_lpn_456: <default("SensorNode")> like INetworkNode {
        @display("p=181.14,133.08");
    }

    host_lpn_457: <default("SensorNode")> like INetworkNode {
        @display("p=180.43,28.99");
    }

    host_lpn_458: <default("SensorNode")> like INetworkNode {
        @display("p=13.91,206.15");
    }

    host_lpn_459: <default("SensorNode")> like INetworkNode {
        @display("p=226.14,164.85");
    }

    host_lpn_460: <default("SensorNode")> like INetworkNode {
        @display("p=36.57,140.51");
    }

    host_lpn_461: <default("SensorNode")> like INetworkNode {
        @display("p=159.54,200.47");
    }

    host_lpn_462: <default("SensorNode")> like INetworkNode {
        @display("p=2.03,276.58");
    }

    host_lpn_463: <default("SensorNode")> like INetworkNode {
        @display("p=53.32,211.21");
    }

    host_lpn_464: <default("SensorNode")> like INetworkNode {
        @display("p=90.40,198.80");
    }

    host_lpn_465: <default("SensorNode")> like INetworkNode {
        @display("p=163.93,13.48");
    }

    host_lpn_466: <default("SensorNode")> like INetworkNode {
        @display("p=168.93,110.84");
    }

    host_lpn_467: <default("SensorNode")> like INetworkNode {
        @display("p=196.43,84.15");
    }

    host_lpn_468: <default("SensorNode")> like INetworkNode {
        @display("p=348.37,15.34");
    }

    host_lpn_469: <default("SensorNode")> like INetworkNode {
        @display("p=309.23,60.93");
    }

    host_lpn_470: <default("SensorNode")> like INetworkNode {
        @display("p=316.01,35.70");
    }

    host_lpn_471: <default("SensorNode")> like INetworkNode {
        @display("p=289.69,32.63");
    }

    host_lpn_472: <default("SensorNode")> like INetworkNode {
        @display("p=204.44,102.30");
    }

    host_lpn_473: <default("SensorNode")> like INetworkNode {
        @display("p=97.61,90.26");
    }

    host_lpn_474: <default("SensorNode")> like INetworkNode {
        @display("p=55.57,121.77");
    }

    host_lpn_475: <default("SensorNode")> like INetworkNode {
        @display("p=95.92,62.67");
    }

    host_lpn_476: <default("SensorNode")> like INetworkNode {
        @display("p=179.41,112.03");
    }

    host_lpn_477: <default("SensorNode")> like INetworkNode {
        @display("p=255.99,51.09");
    }

    host_lpn_478: <default("SensorNode")> like INetworkNode {
        @display("p=318.90,142.75");
    }

    host_lpn_479: <default("SensorNode")> like INetworkNode {
        @display("p=215.70,125.56");
    }

    host_lpn_480: <default("SensorNode")> like INetworkNode {
        @display("p=176.24,205.19");
    }

    host_lpn_481: <default("SensorNode")> like INetworkNode {
        @display("p=110.27,250.06");
    }

    host_lpn_482: <default("SensorNode")> like INetworkNode {
        @display("p=189.74,291.74");
    }

    host_lpn_483: <default("SensorNode")> like INetworkNode {
        @display("p=56.26,382.52");
    }

    host_lpn_484: <default("SensorNode")> like INetworkNode {
        @display("p=40.41,359.98");
    }

    host_lpn_485: <default("SensorNode")> like INetworkNode {
        @display("p=164.12,364.03");
    }

    host_lpn_486: <default("SensorNode")> like INetworkNode {
        @display("p=157.14,392.31");
    }

    host_lpn_487: <default("SensorNode")> like INetworkNode {
        @display("p=288.53,296.22");
    }

    host_lpn_488: <default("SensorNode")> like INetworkNode {
        @display("p=217.11,292.19");
    }

    host_lpn_489: <default("SensorNode")> like INetworkNode {
        @display("p=159.82,238.49");
    }

    host_lpn_490: <default("SensorNode")> like INetworkNode {
        @display("p=198.07,279.92");
    }

    host_lpn_491: <default("SensorNode")> like INetworkNode {
        @display("p=166.58,248.23");
    }

    host_lpn_492: <default("SensorNode")> like INetworkNode {
        @display("p=280.76,256.62");
    }

    host_lpn_493: <default("SensorNode")> like INetworkNode {
        @display("p=146.14,179.07");
    }

    host_lpn_494: <default("SensorNode")> like INetworkNode {
        @display("p=65.05,183.51");
    }

    host_lpn_495: <default("SensorNode")> like INetworkNode {
        @display("p=35.59,252.35");
    }

    host_lpn_496: <default("SensorNode")> like INetworkNode {
        @display("p=117.75,188.21");
    }

    host_lpn_497: <default("SensorNode")> like INetworkNode {
        @display("p=41.64,346.95");
    }

    host_lpn_498: <default("SensorNode")> like INetworkNode {
        @display("p=121.01,321.03");
    }

    host_lpn_499: <default("SensorNode")> like INetworkNode {
        @display("p=6.06,198.60");
    }

    host_lpn_500: <default("SensorNode")> like INetworkNode {
        @display("p=23.77,228.72");
    }

}

