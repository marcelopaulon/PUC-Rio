
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
            @display("p=100,100");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=35.22,147.88");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=104.21,138.12");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=37.39,63.06");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=65.60,69.59");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=110.58,86.40");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=82.05,111.22");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=64.06,123.08");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=36.87,121.66");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=64.69,207.58");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=34.99,178.70");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=92.46,165.93");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=76.68,146.33");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=86.43,179.18");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=121.71,117.56");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=93.33,72.46");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=51.87,54.41");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=128.39,109.39");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=116.52,71.35");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=114.60,56.55");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=23.69,24.51");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=88.14,46.62");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=80.13,35.26");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=59.10,103.61");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=18.21,168.65");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=140.97,163.49");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=34.15,101.74");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=107.80,187.61");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=43.67,156.71");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=26.79,70.92");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=92.44,83.22");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=158.23,107.39");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=77.70,189.68");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=13.41,126.93");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=21.31,228.17");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=0.37,161.46");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=108.42,233.55");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=4.51,111.06");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=44.38,218.04");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=127.38,179.24");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=77.67,78.88");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=55.05,72.53");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=118.75,173.57");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=142.22,103.64");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=75.29,56.89");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=41.02,21.45");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=131.49,0.41");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=71.62,20.57");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=129.85,80.45");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=4.69,174.44");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=33.22,86.36");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=10.08,157.32");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=148.49,201.94");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=27.31,42.20");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=115.79,36.53");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=120.82,147.15");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=178.02,96.76");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=61.21,170.64");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=9.91,137.76");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=78.00,224.17");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=50.78,178.75");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=86.90,99.49");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=24.35,155.81");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=142.43,248.06");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=196.38,125.80");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=46.39,129.57");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=120.10,100.31");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=163.77,137.33");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=114.84,10.66");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=92.37,4.28");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=17.12,63.15");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=51.13,8.15");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=68.26,31.83");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=37.99,36.08");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=114.57,164.04");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=173.69,57.24");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=15.64,190.16");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=148.44,125.70");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=133.92,63.14");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=128.74,44.76");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=43.06,76.25");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=48.66,107.98");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=53.48,89.65");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=45.63,195.53");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=49.00,241.60");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=64.05,196.27");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=147.45,174.68");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=96.16,175.58");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=69.56,137.16");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=213.56,153.10");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=13.11,31.44");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=9.12,74.03");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=125.76,135.46");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=193.07,22.73");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=99.74,62.75");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=33.88,10.72");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=173.38,72.81");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=67.39,48.66");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=65.52,87.67");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=5.72,98.65");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=110.03,126.01");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=58.78,136.86");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=154.80,84.00");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=3.57,148.00");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=63.48,58.57");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=180.88,86.98");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=141.90,81.97");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=32.56,133.43");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=68.74,163.83");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=82.77,274.70");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=86.37,195.12");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=129.98,213.27");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=168.97,170.59");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=81.57,168.32");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=205.94,80.27");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=167.77,87.75");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=77.09,128.46");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=145.67,147.16");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=143.49,66.12");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=104.26,11.62");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=94.48,34.69");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=175.84,6.91");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=56.64,39.97");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=5.93,52.39");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=44.22,230.28");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=134.18,120.01");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=45.45,143.82");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=160.68,188.42");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=8.12,40.16");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=88.37,60.45");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=136.95,132.94");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=56.24,153.41");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=71.33,113.87");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=14.50,114.35");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=118.50,225.38");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=87.73,220.89");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=178.16,166.21");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=74.97,210.59");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=101.41,157.87");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=169.29,109.25");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=156.63,25.61");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=46.35,45.55");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=158.15,155.92");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=151.85,36.70");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=77.87,11.15");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=34.16,49.74");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=122.06,25.33");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=59.74,18.95");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=25.54,112.34");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=32.50,258.59");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=33.91,166.95");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=23.07,217.31");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=72.71,179.61");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=21.32,6.19");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=86.75,149.01");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=195.71,51.17");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=125.44,189.49");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=33.00,199.12");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=3.14,196.65");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=87.80,265.70");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=43.27,259.60");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=77.96,200.98");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=131.74,152.20");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=77.06,244.30");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=171.23,204.11");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=94.17,118.93");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=93.10,108.26");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=166.41,125.77");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=194.87,93.02");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=104.11,31.93");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=61.39,6.05");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=110.48,20.19");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=152.48,53.28");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=18.36,83.22");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=25.47,145.47");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=158.13,119.56");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=77.93,94.37");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=99.16,51.13");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=69.75,101.98");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=84.43,25.85");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=180.33,107.29");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=105.86,114.42");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=57.60,115.25");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=0.30,130.48");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=29.76,188.83");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=15.21,102.85");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=127.33,167.57");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=98.60,201.88");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=97.34,258.67");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=182.42,122.43");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=118.90,1.03");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=2.84,27.02");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=193.58,158.94");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=120.63,88.03");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=166.49,33.39");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=21.70,53.51");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=150.09,16.56");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=160.92,61.79");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=6.07,85.24");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=60.43,222.05");
    }

}

