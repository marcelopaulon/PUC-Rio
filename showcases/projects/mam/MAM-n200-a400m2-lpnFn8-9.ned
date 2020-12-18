
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn8-9
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
        @display("p=356.00,180.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=357.38,191.45");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=320.35,122.25");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=302.10,120.21");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=304.46,99.11");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=291.33,180.12");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=267.27,87.44");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=190.99,106.66");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=238.83,70.31");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=240.58,53.60");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=278.81,66.42");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=334.71,132.75");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=312.85,139.19");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=244.38,209.40");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=228.35,128.91");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=203.92,40.59");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=160.43,47.17");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=149.56,54.71");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=165.51,1.06");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=179.31,33.69");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=184.08,15.89");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=198.52,26.33");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=211.61,19.84");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=172.97,95.30");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=183.67,1.35");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=369.57,195.09");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=337.56,286.89");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=282.96,147.55");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=321.64,106.97");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=222.66,79.78");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=215.75,125.19");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=218.14,57.95");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=185.13,96.30");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=206.95,83.89");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=294.26,75.15");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=307.91,43.46");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=253.48,121.74");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=329.88,160.90");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=168.35,246.08");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=200.65,130.56");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=148.61,6.55");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=117.25,30.73");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=148.78,44.17");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=126.88,22.74");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=229.76,57.69");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=132.57,92.34");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=226.33,41.92");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=209.21,103.19");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=132.82,169.21");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=104.16,13.77");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=384.13,152.51");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=303.33,238.56");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=306.93,203.84");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=293.10,166.81");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=375.76,51.95");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=204.78,142.18");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=262.68,78.06");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=154.03,110.81");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=199.91,57.92");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=215.46,44.87");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=294.92,144.68");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=387.19,118.46");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=351.24,221.53");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=180.81,181.95");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=230.56,176.98");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=142.33,62.45");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=98.05,104.84");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=81.52,22.25");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=237.75,31.34");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=268.95,38.98");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=195.99,12.79");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=234.69,114.04");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=265.07,9.18");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=174.34,18.20");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=215.21,68.20");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=382.53,213.10");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=312.77,162.59");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=348.85,98.97");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=326.77,24.02");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=311.16,127.55");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=233.44,227.68");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=302.20,7.30");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=245.35,131.65");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=159.08,87.74");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=177.88,118.65");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=269.02,118.80");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=341.28,121.70");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=305.93,109.40");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=322.36,254.73");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=233.41,162.69");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=131.78,63.66");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=192.62,76.23");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=114.19,78.78");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=157.76,29.33");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=153.67,18.85");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=248.87,78.04");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=162.56,99.71");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=179.86,106.32");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=158.78,77.27");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=170.21,81.93");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=345.70,136.01");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=374.61,275.59");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=274.98,167.30");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=312.42,175.11");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=371.81,97.22");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=255.57,215.12");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=320.68,132.80");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=180.98,155.62");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=303.38,25.13");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=241.39,90.00");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=369.37,60.74");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=266.66,146.23");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=391.69,100.69");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=251.49,183.26");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=155.28,180.39");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=157.59,120.80");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=183.57,69.98");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=140.77,76.55");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=129.00,48.53");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=164.57,61.03");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=220.65,29.16");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=226.83,20.17");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=270.00,55.66");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=118.75,144.16");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=195.07,0.34");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=374.16,174.53");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=372.63,144.31");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=350.70,114.90");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=288.72,217.79");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=295.60,91.38");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=247.46,227.25");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=263.32,97.89");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=182.87,135.26");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=326.53,79.46");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=286.43,127.12");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=290.90,103.28");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=320.16,58.11");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=305.81,53.35");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=270.98,224.83");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=194.15,139.93");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=283.09,41.08");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=235.96,103.77");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=51.33,38.67");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=120.93,2.56");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=190.07,60.90");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=96.01,47.53");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=163.04,11.32");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=225.54,1.28");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=136.62,180.98");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=187.79,27.60");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=355.29,153.73");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=341.21,175.15");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=378.02,126.42");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=351.64,57.88");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=351.77,21.65");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=333.02,183.84");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=337.25,18.09");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=176.10,169.63");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=166.81,134.92");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=256.28,32.24");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=299.11,37.90");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=341.07,74.56");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=271.83,209.50");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=211.01,197.80");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=223.69,142.90");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=246.03,17.16");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=79.82,97.19");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=178.60,50.21");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=80.97,32.51");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=100.45,26.54");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=86.63,9.84");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=136.11,2.32");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=277.71,14.27");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=200.58,112.56");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=119.18,12.59");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=318.84,231.84");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=302.52,214.21");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=275.18,99.81");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=317.63,91.55");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=324.55,14.09");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=292.41,207.56");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=219.49,89.50");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=231.39,149.50");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=198.50,152.20");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=289.47,0.61");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=224.37,104.99");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=363.49,51.72");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=348.67,162.98");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=240.33,298.61");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=301.56,133.24");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=109.74,58.71");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=177.36,60.23");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=143.30,125.61");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=147.45,95.31");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=189.71,49.03");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=266.38,67.46");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=210.90,8.49");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=253.09,1.68");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=101.16,134.03");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=251.81,67.11");
    }

}

