
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn8_0
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
        @display("p=38.52,129.71");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=116.66,132.69");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=54.77,115.04");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=103.03,51.87");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=126.90,109.92");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=50.44,63.46");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=64.38,104.38");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=174.15,128.87");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=178.81,137.72");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=152.85,53.45");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=140.87,45.37");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=133.37,62.06");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=167.33,40.92");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=148.17,86.88");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=128.66,168.41");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=139.83,242.51");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=206.02,180.43");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=204.92,231.02");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=183.30,257.72");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=185.21,280.64");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=105.43,288.52");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=200.75,274.54");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=197.27,304.37");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=133.91,267.02");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=31.77,115.45");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=28.13,32.63");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=162.52,128.35");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=20.97,126.31");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=87.69,37.65");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=102.60,80.75");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=51.94,43.15");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=40.10,22.74");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=123.12,143.34");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=269.99,176.94");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=59.97,82.70");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=167.76,65.91");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=112.01,56.50");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=101.89,19.41");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=71.41,136.40");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=146.07,126.13");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=159.06,232.48");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=188.68,190.06");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=196.90,223.72");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=182.88,239.10");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=144.90,335.74");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=108.60,273.04");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=204.27,262.67");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=154.13,346.46");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=79.15,346.53");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=38.38,86.34");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=112.01,93.13");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=163.50,216.64");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=91.54,184.32");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=87.18,72.64");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=197.07,69.32");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=84.10,142.25");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=118.81,44.76");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=211.68,65.88");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=221.50,106.42");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=112.71,113.09");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=197.46,53.48");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=67.79,2.68");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=260.56,70.75");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=101.06,6.14");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=130.67,207.69");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=205.42,168.00");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=199.83,191.56");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=206.80,241.50");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=252.63,295.11");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=242.71,343.45");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=51.75,255.71");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=232.49,286.11");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=249.86,351.32");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=217.83,302.60");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=66.10,34.46");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=9.71,156.81");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=85.89,157.91");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=54.43,187.45");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=130.13,7.05");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=78.08,46.38");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=59.35,70.09");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=5.71,67.02");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=136.47,122.10");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=226.01,166.16");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=168.79,6.95");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=79.11,28.37");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=145.85,114.07");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=134.04,79.57");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=107.11,69.09");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=99.90,225.21");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=114.46,260.89");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=245.96,124.58");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=243.32,210.70");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=153.62,223.03");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=187.22,331.51");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=73.58,334.81");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=192.43,288.92");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=201.17,351.81");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=122.76,318.21");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=89.32,21.01");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=90.59,195.26");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=187.98,116.49");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=51.21,140.94");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=183.18,40.86");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=106.53,182.64");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=49.62,73.86");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=108.10,141.02");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=163.50,93.87");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=251.71,106.81");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=137.97,33.89");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=77.34,84.13");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=131.92,51.97");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=91.39,83.08");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=184.69,82.08");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=136.93,182.13");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=90.63,232.82");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=244.52,190.26");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=219.37,201.20");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=228.28,322.93");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=212.89,277.66");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=83.80,278.51");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=156.75,252.83");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=157.93,266.59");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=64.05,225.92");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=90.42,61.87");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=113.58,82.82");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=62.71,202.34");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=61.82,18.85");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=158.28,27.32");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=89.69,108.94");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=135.43,89.71");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=88.53,93.74");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=166.86,180.06");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=142.07,152.35");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=213.31,84.11");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=173.96,115.40");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=229.28,37.55");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=179.43,71.57");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=173.77,83.28");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=148.64,163.60");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=179.60,290.37");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=256.04,200.85");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=174.86,213.18");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=132.74,309.13");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=172.64,193.37");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=104.04,364.62");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=183.43,363.73");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=287.49,270.73");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=172.08,245.64");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=107.26,33.89");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=24.70,72.24");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=161.68,152.19");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=27.49,150.37");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=27.71,4.34");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=101.39,121.59");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=25.47,17.56");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=13.61,107.19");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=173.00,167.96");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=186.83,214.29");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=125.26,94.06");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=151.46,40.06");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=165.15,51.72");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=223.95,17.76");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=174.13,150.62");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=122.50,177.35");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=193.57,261.64");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=184.30,150.95");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=201.03,325.36");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=168.38,336.56");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=140.23,291.23");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=71.05,273.24");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=218.77,256.34");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=126.81,343.67");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=85.09,250.15");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=85.14,123.79");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=74.16,173.39");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=121.22,212.69");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=42.21,174.92");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=40.20,44.40");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=140.97,13.90");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=86.94,10.48");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=119.84,102.82");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=139.49,102.05");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=122.40,59.53");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=214.42,12.14");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=154.30,14.43");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=180.69,98.86");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=125.87,31.20");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=181.74,8.47");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=115.83,246.48");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=164.21,311.97");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=232.73,92.09");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=119.62,229.41");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=91.33,286.97");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=229.65,273.99");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=142.77,278.12");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=160.95,276.30");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=228.60,222.58");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=93.85,320.53");
    }

}

