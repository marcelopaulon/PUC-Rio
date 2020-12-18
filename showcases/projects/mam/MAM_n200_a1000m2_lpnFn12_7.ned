
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn12_7
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
        @display("p=152.80,175.51");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=210.16,239.68");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=147.84,195.05");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=139.37,219.50");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=158.23,287.24");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=157.88,297.99");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=170.63,218.62");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=184.65,307.72");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=123.50,287.47");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=76.23,283.17");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=131.46,337.20");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=132.12,322.93");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=180.00,259.75");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=87.02,132.37");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=74.92,148.65");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=139.57,103.64");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=64.50,133.03");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=223.97,140.29");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=262.14,239.12");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=79.08,189.82");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=156.77,154.98");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=166.97,308.66");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=205.48,343.70");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=114.41,230.98");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=192.35,340.40");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=152.30,252.84");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=31.88,331.92");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=121.78,255.99");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=202.75,328.69");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=126.57,200.04");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=103.68,120.51");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=32.01,130.30");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=148.84,85.97");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=102.73,88.01");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=153.27,138.17");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=158.01,321.74");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=101.76,175.89");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=126.95,267.33");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=157.66,377.38");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=140.05,305.30");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=97.88,164.62");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=215.29,336.00");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=91.55,334.48");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=60.18,307.72");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=133.14,353.76");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=127.38,403.10");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=219.63,320.89");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=38.29,97.22");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=45.68,171.93");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=79.94,95.33");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=142.92,41.21");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=141.57,142.95");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=188.39,160.17");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=124.95,178.11");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=164.36,185.86");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=101.60,357.41");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=146.87,374.93");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=138.56,207.36");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=98.93,293.35");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=71.24,209.24");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=76.49,326.30");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=72.85,386.95");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=118.20,398.33");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=177.49,195.75");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=99.82,142.88");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=57.48,143.00");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=131.42,94.51");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=127.46,27.78");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=158.06,211.64");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=251.13,211.54");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=161.79,103.09");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=187.03,184.33");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=126.64,369.35");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=145.78,293.09");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=177.72,207.63");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=237.65,298.58");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=82.41,273.23");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=87.80,304.81");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=93.39,420.34");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=119.25,317.18");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=139.35,269.79");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=114.70,139.36");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=110.09,165.68");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=79.46,36.54");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=126.22,115.31");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=220.66,238.74");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=222.10,200.38");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=126.41,219.41");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=86.61,230.15");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=225.16,290.51");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=217.11,271.71");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=209.55,228.96");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=164.37,272.02");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=95.20,319.31");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=67.47,294.01");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=52.50,385.25");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=142.39,323.48");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=189.79,246.72");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=166.45,115.64");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=120.13,167.12");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=108.11,79.01");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=83.46,106.09");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=231.38,127.68");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=190.95,285.66");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=193.25,130.39");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=201.74,288.12");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=117.23,359.21");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=180.77,288.63");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=192.27,259.43");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=190.12,322.53");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=141.11,280.93");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=43.42,320.06");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=157.75,357.50");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=223.40,306.80");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=102.00,237.48");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=93.83,123.33");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=51.99,111.75");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=189.73,70.06");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=147.46,96.57");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=168.83,162.36");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=246.60,272.03");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=126.56,144.30");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=78.36,238.06");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=228.17,328.34");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=209.17,307.02");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=156.80,221.98");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=172.85,398.70");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=104.88,346.44");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=24.65,264.77");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=221.56,372.22");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=91.49,395.73");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=185.33,220.92");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=3.99,91.37");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=13.05,166.76");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=157.71,22.05");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=160.67,77.05");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=201.21,164.69");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=140.04,247.41");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=244.37,180.65");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=198.60,224.48");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=122.83,237.60");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=230.28,357.97");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=129.94,158.17");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=271.74,335.15");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=59.66,214.27");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=28.77,291.83");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=73.16,373.62");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=111.28,282.02");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=173.04,281.21");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=18.20,151.90");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=38.60,212.89");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=154.42,64.51");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=114.00,114.73");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=85.17,147.01");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=168.86,260.08");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=101.13,279.14");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=43.70,199.57");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=237.86,330.87");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=202.26,298.79");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=196.99,237.34");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=251.86,358.45");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=106.87,263.66");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=108.29,213.74");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=107.55,305.09");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=196.27,371.41");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=160.55,242.36");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=114.08,103.39");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=133.74,124.75");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=131.95,42.78");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=71.92,75.95");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=231.63,233.04");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=278.53,174.94");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=149.38,114.40");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=153.11,267.81");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=84.36,256.21");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=208.23,259.13");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=225.52,210.65");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=277.86,322.83");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=104.81,203.49");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=52.67,267.49");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=118.65,349.01");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=74.31,306.76");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=91.13,243.36");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=65.16,160.33");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=82.20,117.76");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=175.85,90.79");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=79.83,84.95");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=205.12,216.32");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=282.25,290.87");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=175.44,144.15");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=159.26,197.21");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=136.20,365.17");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=248.30,290.39");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=231.47,162.28");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=199.76,317.10");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=55.96,326.44");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=15.79,286.13");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=167.49,373.96");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=219.77,360.01");
    }

}

