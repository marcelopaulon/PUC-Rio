
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn1-6
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
        @display("p=145.00,136.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=119.75,75.92");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=114.69,88.14");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=169.00,141.35");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=83.70,106.65");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=27.01,36.59");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=36.80,53.77");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=75.48,87.14");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=23.30,11.41");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=57.28,15.03");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=98.09,34.59");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=147.93,80.12");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=168.68,123.37");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=185.68,216.52");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=208.40,141.03");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=226.35,150.21");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=272.53,107.34");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=281.57,132.19");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=298.93,125.45");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=377.19,146.60");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=349.05,196.63");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=310.55,192.31");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=254.23,200.76");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=277.11,265.40");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=322.83,274.24");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=297.18,216.36");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=290.67,136.44");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=375.50,112.24");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=295.88,97.16");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=318.17,123.91");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=265.96,81.87");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=245.43,99.12");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=230.77,104.36");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=154.16,123.95");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=161.80,44.31");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=162.67,18.87");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=82.28,17.45");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=23.97,70.22");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=100.78,70.74");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=34.71,43.68");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=77.54,44.36");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=163.72,112.02");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=149.70,32.36");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=73.56,34.32");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=70.78,17.68");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=88.93,67.90");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=86.44,140.47");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=80.50,187.13");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=134.01,223.92");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=114.89,294.83");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=50.82,306.34");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=10.51,274.87");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=10.27,317.88");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=14.98,307.32");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=48.08,337.75");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=69.89,316.54");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=81.92,247.37");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=22.98,206.48");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=94.40,189.36");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=98.16,200.47");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=132.27,144.49");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=190.58,74.48");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=231.57,33.54");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=184.84,20.18");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=181.70,45.73");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=89.89,93.21");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=89.34,176.34");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=109.80,247.82");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=96.60,237.04");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=19.78,228.45");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=0.54,311.82");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=92.97,307.39");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=30.42,264.85");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=58.61,232.30");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=24.62,177.09");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=106.37,215.21");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=175.25,150.22");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=138.03,160.31");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=219.38,118.38");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=303.00,167.67");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=298.97,152.37");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=328.50,133.40");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=253.18,80.61");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=145.67,115.84");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=189.12,53.70");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=256.51,135.15");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=120.82,16.00");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=144.47,59.31");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=129.57,86.55");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=126.11,111.62");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=157.07,100.95");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=151.76,11.74");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=108.83,52.85");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=177.17,32.59");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=246.44,17.31");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=232.04,76.75");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=240.46,89.20");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=199.69,83.74");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=168.66,90.89");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=214.07,32.18");
    }

    host_fn_rly_101: <default("SensorNode")> like INetworkNode {
        @display("p=290.82,59.35");
    }

    host_fn_rly_102: <default("SensorNode")> like INetworkNode {
        @display("p=241.62,108.80");
    }

    host_fn_rly_103: <default("SensorNode")> like INetworkNode {
        @display("p=188.58,131.92");
    }

    host_fn_rly_104: <default("SensorNode")> like INetworkNode {
        @display("p=260.58,183.05");
    }

    host_fn_rly_105: <default("SensorNode")> like INetworkNode {
        @display("p=263.33,223.11");
    }

    host_fn_rly_106: <default("SensorNode")> like INetworkNode {
        @display("p=318.54,246.67");
    }

    host_fn_rly_107: <default("SensorNode")> like INetworkNode {
        @display("p=337.38,228.15");
    }

    host_fn_rly_108: <default("SensorNode")> like INetworkNode {
        @display("p=278.87,185.43");
    }

    host_fn_rly_109: <default("SensorNode")> like INetworkNode {
        @display("p=292.93,166.77");
    }

    host_fn_rly_110: <default("SensorNode")> like INetworkNode {
        @display("p=291.74,114.00");
    }

    host_fn_rly_111: <default("SensorNode")> like INetworkNode {
        @display("p=264.72,46.95");
    }

    host_fn_rly_112: <default("SensorNode")> like INetworkNode {
        @display("p=300.20,4.39");
    }

    host_fn_rly_113: <default("SensorNode")> like INetworkNode {
        @display("p=296.79,83.43");
    }

    host_fn_rly_114: <default("SensorNode")> like INetworkNode {
        @display("p=328.81,8.60");
    }

    host_fn_rly_115: <default("SensorNode")> like INetworkNode {
        @display("p=266.05,142.96");
    }

    host_fn_rly_116: <default("SensorNode")> like INetworkNode {
        @display("p=257.12,109.25");
    }

    host_fn_rly_117: <default("SensorNode")> like INetworkNode {
        @display("p=210.18,178.96");
    }

    host_fn_rly_118: <default("SensorNode")> like INetworkNode {
        @display("p=232.62,214.44");
    }

    host_fn_rly_119: <default("SensorNode")> like INetworkNode {
        @display("p=245.19,210.73");
    }

    host_fn_rly_120: <default("SensorNode")> like INetworkNode {
        @display("p=160.14,169.73");
    }

    host_fn_rly_121: <default("SensorNode")> like INetworkNode {
        @display("p=150.07,166.48");
    }

    host_fn_rly_122: <default("SensorNode")> like INetworkNode {
        @display("p=117.66,238.78");
    }

    host_fn_rly_123: <default("SensorNode")> like INetworkNode {
        @display("p=48.11,191.93");
    }

    host_fn_rly_124: <default("SensorNode")> like INetworkNode {
        @display("p=17.79,246.46");
    }

    host_fn_rly_125: <default("SensorNode")> like INetworkNode {
        @display("p=56.26,181.18");
    }

    host_fn_rly_126: <default("SensorNode")> like INetworkNode {
        @display("p=38.52,159.50");
    }

    host_fn_rly_127: <default("SensorNode")> like INetworkNode {
        @display("p=98.42,104.01");
    }

    host_fn_rly_128: <default("SensorNode")> like INetworkNode {
        @display("p=124.60,50.56");
    }

    host_fn_rly_129: <default("SensorNode")> like INetworkNode {
        @display("p=168.00,159.44");
    }

    host_fn_rly_130: <default("SensorNode")> like INetworkNode {
        @display("p=177.87,187.10");
    }

    host_fn_rly_131: <default("SensorNode")> like INetworkNode {
        @display("p=211.19,280.10");
    }

    host_fn_rly_132: <default("SensorNode")> like INetworkNode {
        @display("p=243.91,314.54");
    }

    host_fn_rly_133: <default("SensorNode")> like INetworkNode {
        @display("p=200.43,334.93");
    }

    host_fn_rly_134: <default("SensorNode")> like INetworkNode {
        @display("p=226.26,329.76");
    }

    host_fn_rly_135: <default("SensorNode")> like INetworkNode {
        @display("p=290.04,316.90");
    }

    host_fn_rly_136: <default("SensorNode")> like INetworkNode {
        @display("p=217.31,342.77");
    }

    host_fn_rly_137: <default("SensorNode")> like INetworkNode {
        @display("p=249.92,271.49");
    }

    host_fn_rly_138: <default("SensorNode")> like INetworkNode {
        @display("p=259.50,293.89");
    }

    host_fn_rly_139: <default("SensorNode")> like INetworkNode {
        @display("p=262.88,277.12");
    }

    host_fn_rly_140: <default("SensorNode")> like INetworkNode {
        @display("p=315.08,297.55");
    }

    host_fn_rly_141: <default("SensorNode")> like INetworkNode {
        @display("p=300.42,310.94");
    }

    host_fn_rly_142: <default("SensorNode")> like INetworkNode {
        @display("p=307.06,376.83");
    }

    host_fn_rly_143: <default("SensorNode")> like INetworkNode {
        @display("p=278.66,385.37");
    }

    host_fn_rly_144: <default("SensorNode")> like INetworkNode {
        @display("p=268.39,373.53");
    }

    host_fn_rly_145: <default("SensorNode")> like INetworkNode {
        @display("p=331.54,375.68");
    }

    host_fn_rly_146: <default("SensorNode")> like INetworkNode {
        @display("p=295.62,352.22");
    }

    host_fn_rly_147: <default("SensorNode")> like INetworkNode {
        @display("p=271.88,315.26");
    }

    host_fn_rly_148: <default("SensorNode")> like INetworkNode {
        @display("p=221.02,392.21");
    }

    host_fn_rly_149: <default("SensorNode")> like INetworkNode {
        @display("p=187.63,366.38");
    }

    host_fn_rly_150: <default("SensorNode")> like INetworkNode {
        @display("p=124.49,388.37");
    }

    host_fn_rly_151: <default("SensorNode")> like INetworkNode {
        @display("p=111.81,376.05");
    }

    host_fn_rly_152: <default("SensorNode")> like INetworkNode {
        @display("p=47.51,327.25");
    }

    host_fn_rly_153: <default("SensorNode")> like INetworkNode {
        @display("p=91.14,327.37");
    }

    host_fn_rly_154: <default("SensorNode")> like INetworkNode {
        @display("p=38.73,365.43");
    }

    host_fn_rly_155: <default("SensorNode")> like INetworkNode {
        @display("p=41.52,378.38");
    }

    host_fn_rly_156: <default("SensorNode")> like INetworkNode {
        @display("p=130.56,296.17");
    }

    host_fn_rly_157: <default("SensorNode")> like INetworkNode {
        @display("p=69.09,202.60");
    }

    host_fn_rly_158: <default("SensorNode")> like INetworkNode {
        @display("p=10.22,122.85");
    }

    host_fn_rly_159: <default("SensorNode")> like INetworkNode {
        @display("p=110.08,26.97");
    }

    host_fn_rly_160: <default("SensorNode")> like INetworkNode {
        @display("p=147.79,44.36");
    }

    host_fn_rly_161: <default("SensorNode")> like INetworkNode {
        @display("p=65.46,27.71");
    }

    host_fn_rly_162: <default("SensorNode")> like INetworkNode {
        @display("p=87.60,33.52");
    }

    host_fn_rly_163: <default("SensorNode")> like INetworkNode {
        @display("p=45.83,121.55");
    }

    host_fn_rly_164: <default("SensorNode")> like INetworkNode {
        @display("p=135.59,125.16");
    }

    host_fn_rly_165: <default("SensorNode")> like INetworkNode {
        @display("p=182.57,84.44");
    }

    host_fn_rly_166: <default("SensorNode")> like INetworkNode {
        @display("p=226.41,89.97");
    }

    host_fn_rly_167: <default("SensorNode")> like INetworkNode {
        @display("p=238.73,65.57");
    }

    host_fn_rly_168: <default("SensorNode")> like INetworkNode {
        @display("p=190.98,104.68");
    }

    host_fn_rly_169: <default("SensorNode")> like INetworkNode {
        @display("p=158.36,56.28");
    }

    host_fn_rly_170: <default("SensorNode")> like INetworkNode {
        @display("p=125.24,67.11");
    }

    host_fn_rly_171: <default("SensorNode")> like INetworkNode {
        @display("p=207.26,122.55");
    }

    host_fn_rly_172: <default("SensorNode")> like INetworkNode {
        @display("p=192.48,148.76");
    }

    host_fn_rly_173: <default("SensorNode")> like INetworkNode {
        @display("p=197.78,160.29");
    }

    host_fn_rly_174: <default("SensorNode")> like INetworkNode {
        @display("p=176.24,75.80");
    }

    host_fn_rly_175: <default("SensorNode")> like INetworkNode {
        @display("p=219.61,6.78");
    }

    host_fn_rly_176: <default("SensorNode")> like INetworkNode {
        @display("p=185.60,196.32");
    }

    host_fn_rly_177: <default("SensorNode")> like INetworkNode {
        @display("p=147.41,219.79");
    }

    host_fn_rly_178: <default("SensorNode")> like INetworkNode {
        @display("p=144.55,191.75");
    }

    host_fn_rly_179: <default("SensorNode")> like INetworkNode {
        @display("p=145.17,91.76");
    }

    host_fn_rly_180: <default("SensorNode")> like INetworkNode {
        @display("p=157.87,133.51");
    }

    host_fn_rly_181: <default("SensorNode")> like INetworkNode {
        @display("p=83.57,160.14");
    }

    host_fn_rly_182: <default("SensorNode")> like INetworkNode {
        @display("p=112.31,174.26");
    }

    host_fn_rly_183: <default("SensorNode")> like INetworkNode {
        @display("p=203.41,53.28");
    }

    host_fn_rly_184: <default("SensorNode")> like INetworkNode {
        @display("p=172.50,50.10");
    }

    host_fn_rly_185: <default("SensorNode")> like INetworkNode {
        @display("p=170.98,65.99");
    }

    host_fn_rly_186: <default("SensorNode")> like INetworkNode {
        @display("p=266.36,60.11");
    }

    host_fn_rly_187: <default("SensorNode")> like INetworkNode {
        @display("p=226.64,132.72");
    }

    host_fn_rly_188: <default("SensorNode")> like INetworkNode {
        @display("p=323.81,87.39");
    }

    host_fn_rly_189: <default("SensorNode")> like INetworkNode {
        @display("p=332.22,67.47");
    }

    host_fn_rly_190: <default("SensorNode")> like INetworkNode {
        @display("p=35.84,197.70");
    }

    host_fn_rly_191: <default("SensorNode")> like INetworkNode {
        @display("p=79.70,277.51");
    }

    host_fn_rly_192: <default("SensorNode")> like INetworkNode {
        @display("p=54.83,399.51");
    }

    host_fn_rly_193: <default("SensorNode")> like INetworkNode {
        @display("p=71.52,359.77");
    }

    host_fn_rly_194: <default("SensorNode")> like INetworkNode {
        @display("p=81.88,354.44");
    }

    host_fn_rly_195: <default("SensorNode")> like INetworkNode {
        @display("p=113.98,399.62");
    }

    host_fn_rly_196: <default("SensorNode")> like INetworkNode {
        @display("p=130.34,398.00");
    }

    host_fn_rly_197: <default("SensorNode")> like INetworkNode {
        @display("p=142.62,348.18");
    }

    host_fn_rly_198: <default("SensorNode")> like INetworkNode {
        @display("p=133.74,330.81");
    }

    host_fn_rly_199: <default("SensorNode")> like INetworkNode {
        @display("p=139.24,322.30");
    }

    host_fn_rly_200: <default("SensorNode")> like INetworkNode {
        @display("p=174.36,378.99");
    }

}

