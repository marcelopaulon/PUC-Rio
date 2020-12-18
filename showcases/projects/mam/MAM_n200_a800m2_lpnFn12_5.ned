
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn12_5
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
        @display("p=70.36,81.65");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=18.17,129.42");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=21.66,105.48");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=56.15,23.06");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=38.86,21.66");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=71.02,13.41");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=67.33,56.07");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=39.59,95.15");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=48.52,161.02");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=43.42,185.74");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=50.89,120.26");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=27.37,91.61");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=21.48,161.97");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=12.14,98.34");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=4.17,107.34");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=54.58,66.88");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=191.48,90.21");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=60.03,76.40");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=14.08,151.70");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=61.61,132.78");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=95.89,19.28");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=123.90,15.42");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=111.73,26.97");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=90.78,83.44");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=50.08,1.52");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=24.15,178.87");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=13.83,229.91");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=51.89,215.17");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=15.59,86.33");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=64.81,152.17");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=46.50,37.69");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=13.36,118.60");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=84.85,42.15");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=110.35,51.51");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=27.45,24.33");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=87.02,171.91");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=52.40,84.76");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=61.20,2.80");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=3.57,38.75");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=58.89,42.86");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=33.61,76.50");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=77.98,123.32");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=8.52,241.67");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=27.95,144.54");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=43.75,129.67");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=90.12,134.74");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=87.49,103.02");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=36.31,10.61");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=19.25,52.38");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=73.10,112.91");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=181.58,51.30");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=162.20,55.02");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=109.99,133.64");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=103.17,143.05");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=78.35,20.88");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=13.28,0.40");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=38.10,58.52");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=73.96,69.57");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=39.94,114.24");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=92.88,121.45");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=75.82,101.11");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=39.75,166.39");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=61.68,121.94");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=26.45,195.19");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=56.64,109.59");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=11.05,188.72");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=143.22,109.52");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=60.19,176.75");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=106.93,74.89");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=28.04,120.93");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=29.51,51.57");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=102.30,39.38");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=8.79,18.65");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=105.66,2.93");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=100.18,88.23");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=94.37,72.96");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=27.84,222.14");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=69.32,251.48");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=133.80,152.73");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=74.86,147.03");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=0.03,129.51");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=13.45,174.75");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=50.89,147.98");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=4.53,86.46");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=135.32,47.65");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=5.64,55.97");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=94.61,163.60");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=73.51,39.92");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=79.48,56.84");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=9.21,72.03");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=125.04,76.21");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=80.17,87.33");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=39.19,149.18");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=70.28,163.14");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=107.74,116.11");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=36.24,136.89");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=36.94,31.84");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=3.40,146.98");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=25.17,63.44");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=34.21,202.35");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=63.31,99.03");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=179.99,103.23");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=44.85,76.41");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=10.41,161.72");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=1.38,173.68");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=125.35,87.40");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=137.77,21.79");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=123.04,31.76");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=154.15,92.86");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=93.69,33.87");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=59.49,258.72");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=103.12,153.70");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=143.77,85.27");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=1.74,3.38");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=14.32,199.40");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=16.55,25.04");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=32.40,103.28");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=50.94,101.02");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=123.35,113.35");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=45.92,48.06");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=49.26,195.98");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=50.65,172.76");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=146.55,32.80");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=33.00,1.07");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=91.71,0.62");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=68.33,28.03");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=24.20,41.51");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=87.09,155.65");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=79.99,198.94");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=103.68,178.67");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=113.16,83.04");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=71.85,181.37");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=96.82,61.00");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=36.88,43.28");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=127.75,60.05");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=132.89,130.17");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=84.18,70.17");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=23.81,210.72");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=62.87,194.98");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=124.61,49.15");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=53.28,13.20");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=155.42,13.73");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=24.32,12.26");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=115.74,157.28");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=90.90,238.92");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=119.09,214.86");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=127.69,140.15");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=13.69,62.27");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=0.40,118.83");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=32.16,186.65");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=58.77,160.45");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=84.05,7.58");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=109.67,94.54");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=104.40,12.90");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=14.68,217.19");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=113.78,103.76");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=81.52,31.91");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=132.53,2.08");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=90.50,51.25");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=23.18,74.99");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=8.86,136.92");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=139.49,139.73");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=132.14,184.31");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=134.93,91.08");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=112.98,65.18");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=113.11,147.18");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=73.31,133.55");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=53.73,184.45");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=55.11,52.12");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=178.65,84.53");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=147.70,74.00");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=94.01,189.83");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=3.85,27.60");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=135.02,80.18");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=15.07,36.44");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=166.56,7.94");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=158.31,29.81");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=71.73,1.55");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=121.82,193.53");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=30.16,170.19");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=0.57,201.24");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=18.16,141.80");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=21.17,250.60");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=0.40,96.41");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=76.03,171.50");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=94.07,148.41");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=193.85,120.94");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=140.68,61.91");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=51.22,137.87");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=91.29,93.60");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=149.69,22.85");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=131.92,36.55");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=163.56,41.90");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=153.77,62.09");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=125.65,98.93");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=81.56,185.09");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=117.52,121.59");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=62.75,208.26");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=31.94,159.22");
    }

}

