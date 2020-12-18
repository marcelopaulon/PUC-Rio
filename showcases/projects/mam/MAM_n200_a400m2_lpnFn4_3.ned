
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn4_3
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
        @display("p=162.77,125.94");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=163.30,53.07");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=146.45,107.75");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=106.06,155.57");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=62.29,154.85");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=38.95,169.23");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=21.89,169.53");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=102.46,166.03");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=200.29,180.76");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=217.35,231.38");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=276.33,225.28");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=206.22,278.63");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=217.87,299.29");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=234.90,263.06");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=167.48,228.30");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=232.22,202.99");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=231.78,188.22");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=214.75,252.50");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=165.07,254.96");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=95.02,207.29");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=56.65,115.90");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=138.50,93.25");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=89.73,83.20");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=30.44,8.14");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=33.50,35.94");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=25.28,48.51");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=4.24,116.61");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=44.76,28.80");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=43.66,65.13");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=32.72,57.49");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=61.61,32.42");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=98.36,35.46");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=134.96,143.90");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=128.69,134.44");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=117.65,120.79");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=106.58,129.67");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=67.74,65.88");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=57.02,79.99");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=57.42,4.13");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=52.76,92.62");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=113.71,63.51");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=74.33,50.74");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=77.98,103.98");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=62.87,20.30");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=152.55,55.88");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=179.70,175.60");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=180.35,158.49");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=136.37,116.95");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=218.24,144.13");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=32.08,98.36");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=153.19,137.65");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=84.37,44.06");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=119.72,183.11");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=129.09,220.09");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=32.13,235.37");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=53.78,253.41");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=26.35,138.74");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=117.89,223.89");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=222.34,155.24");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=188.63,320.06");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=293.61,278.86");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=219.13,272.37");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=206.77,309.03");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=179.95,269.36");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=161.40,269.62");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=199.14,213.71");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=241.77,284.71");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=149.69,297.26");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=177.87,220.59");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=48.52,208.13");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=37.98,109.13");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=179.91,76.26");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=110.79,95.60");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=42.91,2.78");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=118.07,47.80");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=25.28,128.29");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=32.00,211.92");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=9.18,23.75");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=8.93,59.21");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=28.05,88.63");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=148.65,36.82");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=138.61,22.45");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=121.39,99.21");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=143.71,179.24");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=86.80,67.40");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=70.46,178.34");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=56.96,54.67");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=44.49,81.16");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=138.68,40.55");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=40.89,90.80");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=116.08,74.55");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=69.46,98.72");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=82.88,164.00");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=130.50,8.37");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=86.56,117.90");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=105.09,175.82");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=145.54,168.61");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=131.33,61.83");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=229.49,74.41");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=75.65,122.94");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=161.82,157.64");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=117.75,29.50");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=199.06,94.81");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=17.58,193.01");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=134.46,187.94");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=32.04,156.46");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=50.89,165.24");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=80.47,89.76");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=201.50,133.97");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=206.79,158.16");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=190.10,202.66");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=179.72,284.15");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=238.00,308.97");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=266.68,268.14");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=120.64,255.84");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=221.21,209.30");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=326.00,161.79");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=133.35,264.01");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=105.98,203.32");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=108.90,266.58");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=148.19,117.60");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=144.44,83.87");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=76.05,138.68");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=117.25,8.35");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=71.42,1.45");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=6.44,45.63");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=19.86,147.69");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=85.00,28.96");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=104.60,83.33");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=16.45,113.39");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=45.43,120.53");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=17.47,33.60");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=127.84,152.13");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=42.19,151.43");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=104.85,192.13");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=160.92,178.47");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=54.70,64.58");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=53.12,147.38");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=53.33,103.74");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=57.07,188.53");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=68.64,41.03");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=109.40,110.63");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=125.38,113.85");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=50.44,13.47");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=104.46,51.60");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=149.01,154.53");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=244.73,139.36");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=102.05,65.76");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=244.50,225.35");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=190.21,133.90");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=161.64,108.44");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=152.19,23.64");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=237.53,124.41");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=90.93,178.75");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=140.41,202.31");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=81.12,243.58");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=1.76,140.14");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=42.19,138.50");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=189.38,164.48");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=300.76,194.37");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=195.73,276.33");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=232.21,280.49");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=281.73,331.65");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=184.30,250.99");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=120.46,299.25");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=281.86,150.28");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=160.88,168.01");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=196.37,346.37");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=152.09,229.07");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=173.41,261.42");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=83.13,189.61");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=167.16,20.22");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=106.11,28.51");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=96.54,25.59");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=53.37,126.84");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=2.23,36.23");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=7.21,156.02");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=27.59,18.19");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=11.42,75.71");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=22.56,61.48");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=78.29,11.34");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=167.24,30.41");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=183.24,104.76");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=117.24,159.48");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=94.14,108.57");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=108.04,142.83");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=88.31,12.38");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=43.25,45.97");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=3.62,13.38");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=86.43,128.03");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=111.77,17.83");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=78.57,76.35");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=152.32,127.03");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=136.01,51.47");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=241.27,49.83");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=186.44,229.16");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=261.42,195.48");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=171.31,140.95");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=226.59,90.86");
    }

}

