
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn8_1
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=145.40,116.37");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=178.21,146.34");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=175.42,191.23");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=132.18,244.69");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=110.43,253.19");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=103.34,193.73");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=61.33,122.04");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=119.57,87.28");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=109.03,92.78");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=179.04,107.15");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=153.94,96.50");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=87.21,110.35");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=138.93,195.11");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=43.64,191.98");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=65.98,209.18");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=63.31,275.77");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=44.07,263.68");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=28.59,345.09");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=10.56,349.58");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=91.09,389.74");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=143.66,387.38");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=176.01,401.14");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=163.46,392.55");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=193.63,387.57");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=13.19,147.65");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=171.39,35.82");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=195.27,205.12");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=212.00,133.79");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=162.13,272.39");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=90.53,183.06");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=78.56,268.16");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=69.27,134.55");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=182.81,61.79");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=108.34,111.33");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=149.57,148.54");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=172.58,123.03");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=160.20,138.99");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=135.99,175.77");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=16.16,185.48");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=66.41,231.02");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=2.42,299.09");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=76.05,253.87");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=67.98,324.67");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=63.39,377.86");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=131.32,326.60");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=116.73,411.42");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=154.70,421.76");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=207.14,369.02");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=180.90,366.95");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=53.13,65.87");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=241.73,136.34");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=223.92,155.20");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=239.66,199.51");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=95.59,164.48");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=187.85,256.46");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=83.11,202.85");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=87.82,33.93");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=106.67,176.10");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=102.06,79.20");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=188.05,171.69");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=145.67,30.11");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=1.33,112.59");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=126.39,202.58");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=97.27,145.36");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=158.42,239.66");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=57.67,260.27");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=83.59,224.15");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=83.80,340.48");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=34.41,355.13");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=149.58,437.53");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=228.45,339.10");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=245.67,349.89");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=70.26,396.33");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=202.61,455.24");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=69.63,70.77");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=179.58,94.79");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=209.16,123.01");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=148.35,169.47");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=137.67,231.60");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=19.36,266.44");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=78.73,121.21");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=131.35,156.27");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=118.98,97.74");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=160.05,21.89");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=243.34,56.50");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=206.17,80.86");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=164.24,117.01");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=190.14,271.73");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=57.94,180.26");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=39.49,247.17");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=11.17,280.85");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=9.85,335.24");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=19.89,406.32");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=79.54,353.51");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=55.03,400.87");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=95.13,415.45");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=221.91,379.42");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=215.38,314.76");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=228.34,427.26");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=36.39,127.12");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=150.66,127.92");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=219.02,77.24");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=94.12,213.51");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=189.70,240.28");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=183.89,213.96");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=118.26,187.90");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=39.08,153.49");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=43.10,116.69");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=191.83,37.69");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=171.12,56.54");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=148.41,75.66");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=86.31,141.58");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=159.30,175.52");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=59.15,192.32");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=74.71,279.68");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=100.20,226.23");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=22.10,224.23");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=29.73,365.40");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=80.71,322.54");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=20.45,429.28");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=168.13,325.79");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=275.41,396.00");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=123.99,356.61");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=183.05,337.78");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=127.55,134.44");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=66.50,90.67");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=115.18,165.29");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=204.84,282.26");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=86.11,259.91");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=111.55,241.24");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=48.34,161.65");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=26.07,90.50");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=110.44,73.63");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=64.10,41.96");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=93.07,60.32");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=192.07,96.10");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=18.01,70.84");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=104.12,128.52");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=99.78,205.25");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=137.77,263.44");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=29.47,313.64");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=11.65,252.40");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=31.65,255.08");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=9.06,383.65");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=94.83,378.34");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=167.43,355.01");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=153.40,330.48");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=111.36,354.88");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=178.77,468.50");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=134.67,55.49");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=156.35,107.23");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=192.96,109.90");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=165.49,189.45");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=177.17,246.26");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=116.37,318.57");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=54.47,248.77");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=49.27,148.94");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=112.07,21.92");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=104.43,37.43");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=258.44,159.70");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=154.46,53.67");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=87.36,74.00");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=183.81,185.26");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=64.38,164.58");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=18.06,213.85");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=33.37,297.81");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=67.88,289.74");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=12.53,360.65");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=80.75,310.73");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=84.17,373.67");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=145.50,362.87");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=193.08,488.26");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=162.30,406.14");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=197.00,297.90");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=83.24,23.69");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=181.65,36.35");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=182.48,159.76");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=190.07,128.77");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=163.10,259.17");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=141.03,279.77");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=13.74,167.44");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=21.31,111.31");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=180.86,17.60");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=174.98,72.04");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=194.18,14.86");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=172.54,162.34");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=79.79,99.58");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=178.78,286.82");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=37.07,174.86");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=34.07,200.39");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=59.55,315.81");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=50.27,199.66");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=60.03,344.78");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=47.77,375.91");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=96.47,354.37");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=77.91,364.47");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=134.07,434.58");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=179.78,384.92");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=153.72,388.67");
    }

}

