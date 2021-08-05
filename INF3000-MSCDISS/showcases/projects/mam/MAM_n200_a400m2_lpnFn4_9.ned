
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn4_9
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
        @display("p=113.54,82.78");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=107.41,66.15");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=49.42,61.15");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=103.71,51.14");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=114.45,2.34");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=85.90,3.69");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=53.45,5.83");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=15.24,90.98");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=19.94,53.38");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=15.29,23.43");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=27.03,74.99");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=26.56,101.02");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=69.80,135.35");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=75.11,109.05");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=136.42,176.38");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=136.39,274.66");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=140.98,263.97");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=153.94,286.66");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=158.39,305.00");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=149.78,310.08");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=66.54,349.13");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=100.23,334.26");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=129.26,334.89");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=126.04,310.19");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=143.13,347.92");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=97.12,345.47");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=82.80,340.84");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=96.93,250.55");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=12.50,228.55");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=30.40,224.93");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=85.49,189.30");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=84.73,168.09");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=144.73,198.77");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=132.40,193.63");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=152.75,173.39");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=142.19,223.37");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=227.48,237.88");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=229.19,248.30");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=215.53,230.35");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=212.10,274.32");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=194.01,241.77");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=133.25,205.61");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=107.99,173.54");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=184.80,156.19");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=116.42,210.17");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=99.86,261.90");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=170.79,217.91");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=173.35,146.91");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=115.25,125.90");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=34.24,143.50");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=139.51,82.26");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=105.02,19.37");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=50.85,87.74");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=74.83,77.90");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=129.07,18.08");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=14.06,66.34");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=33.42,35.96");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=43.94,178.30");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=79.42,46.32");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=4.61,30.16");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=2.43,143.56");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=21.62,139.51");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=79.63,181.10");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=66.87,152.94");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=197.96,156.08");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=205.15,334.00");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=107.55,350.74");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=208.57,295.82");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=87.83,259.11");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=168.77,268.24");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=73.71,267.23");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=85.21,331.09");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=194.72,344.92");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=150.87,321.82");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=166.06,282.92");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=83.37,359.56");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=31.97,256.07");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=157.68,268.88");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=19.65,320.45");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=23.49,161.50");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=17.28,169.87");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=179.50,193.45");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=189.38,128.94");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=169.41,188.91");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=182.02,171.73");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=132.42,140.38");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=225.54,279.94");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=276.74,186.68");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=217.58,261.61");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=196.18,257.45");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=243.34,218.81");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=88.12,155.82");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=152.60,154.37");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=204.73,191.81");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=152.05,212.57");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=96.88,232.90");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=242.66,237.69");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=182.81,120.92");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=181.27,55.76");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=103.77,89.68");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=46.01,133.60");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=48.57,76.41");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=2.84,3.71");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=123.06,60.15");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=59.67,18.10");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=79.33,57.72");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=39.64,12.46");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=39.23,167.20");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=45.66,105.56");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=62.26,54.45");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=64.58,120.55");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=79.17,129.84");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=90.25,47.70");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=121.64,39.07");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=159.15,134.96");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=64.62,289.60");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=137.76,318.05");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=188.88,265.14");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=198.21,288.63");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=145.44,296.34");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=60.82,319.35");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=126.93,361.97");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=166.91,365.57");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=90.28,305.99");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=133.17,346.19");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=49.31,399.42");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=116.45,332.50");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=97.37,296.71");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=69.71,187.28");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=44.44,270.10");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=20.55,212.73");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=139.25,120.57");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=136.90,104.07");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=127.17,227.66");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=167.24,111.72");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=135.84,286.95");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=283.62,165.51");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=294.36,295.58");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=196.96,215.13");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=124.53,253.84");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=186.12,254.40");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=86.64,234.76");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=114.87,157.68");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=204.28,99.79");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=97.10,192.16");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=58.45,230.88");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=123.83,134.05");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=116.72,103.09");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=100.71,137.34");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=50.16,24.94");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=149.46,69.66");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=91.42,60.19");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=56.89,111.99");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=79.10,16.04");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=162.57,45.12");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=89.65,78.42");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=88.32,89.99");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=40.17,25.98");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=39.07,62.22");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=66.09,103.85");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=70.73,35.96");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=16.92,152.13");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=69.38,221.81");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=145.88,111.86");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=115.28,240.83");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=172.37,242.27");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=66.09,255.35");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=172.26,297.87");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=204.35,236.60");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=147.64,236.98");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=0.21,287.45");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=45.96,315.40");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=116.75,355.81");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=38.54,324.24");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=173.33,351.82");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=121.76,398.95");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=13.87,344.64");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=76.10,242.37");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=57.92,186.92");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=4.59,270.21");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=86.74,209.24");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=50.73,213.63");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=222.98,186.12");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=159.12,246.50");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=251.92,171.74");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=114.63,268.64");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=267.85,276.71");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=307.25,299.56");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=216.53,243.17");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=205.54,252.39");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=242.24,291.37");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=159.69,197.57");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=116.07,188.56");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=240.36,190.96");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=148.57,138.11");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=139.41,306.32");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=157.31,183.10");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=201.83,136.06");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=93.83,108.87");
    }

}

