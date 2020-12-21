
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn8_1
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
        @display("p=151.82,83.29");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=143.09,75.58");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=125.54,171.66");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=205.92,158.36");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=148.68,130.58");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=120.59,103.37");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=26.53,108.66");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=73.22,184.95");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=85.94,218.69");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=91.09,190.12");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=109.80,195.94");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=139.24,117.90");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=159.47,180.46");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=159.58,207.66");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=187.63,231.74");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=166.51,221.93");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=142.56,220.88");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=60.86,202.29");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=99.72,134.32");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=64.32,127.48");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=132.72,102.86");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=70.80,223.11");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=5.05,273.73");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=37.73,265.02");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=58.62,19.39");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=174.43,166.97");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=121.37,83.37");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=106.20,178.96");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=192.48,141.38");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=202.38,73.28");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=44.68,165.30");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=9.08,45.81");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=78.22,277.96");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=9.90,224.55");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=158.84,163.95");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=48.59,210.74");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=193.92,123.48");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=130.22,237.85");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=153.80,195.44");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=169.01,244.53");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=166.32,254.64");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=77.49,163.18");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=104.46,204.57");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=21.33,146.71");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=4.18,65.83");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=116.52,141.62");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=120.12,238.56");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=49.41,286.66");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=40.88,202.44");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=158.33,64.22");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=96.94,54.44");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=149.82,38.14");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=180.66,95.12");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=193.56,174.18");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=152.86,114.24");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=85.19,85.47");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=32.39,133.55");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=11.26,252.24");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=53.93,184.58");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=98.67,238.25");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=170.23,193.79");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=62.35,166.35");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=181.53,108.14");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=83.25,202.50");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=189.96,284.06");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=238.92,188.42");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=158.85,262.72");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=67.26,241.11");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=47.20,73.18");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=64.90,140.29");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=153.02,98.76");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=116.65,182.59");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=38.48,222.44");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=31.69,277.36");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=80.23,107.32");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=142.74,174.99");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=130.76,145.24");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=152.33,147.16");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=268.79,131.83");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=127.94,211.11");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=112.33,31.11");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=64.47,66.65");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=73.09,197.95");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=109.17,223.17");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=61.66,284.51");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=30.57,206.63");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=40.58,111.59");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=149.39,249.14");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=218.22,242.28");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=233.64,239.79");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=142.19,192.46");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=152.59,233.00");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=12.79,205.13");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=97.31,120.53");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=118.11,47.66");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=136.71,154.51");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=119.30,263.12");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=19.31,325.43");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=92.78,254.24");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=107.18,107.73");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=171.03,150.02");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=168.09,121.09");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=112.52,170.68");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=228.24,108.15");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=167.88,137.71");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=135.47,135.33");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=77.94,67.42");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=69.59,175.51");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=87.51,158.43");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=93.46,282.00");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=69.94,209.99");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=110.99,93.46");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=178.33,180.76");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=201.22,233.39");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=120.07,282.14");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=171.18,274.10");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=148.01,160.17");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=74.42,248.38");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=57.89,57.97");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=114.67,155.57");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=94.74,91.15");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=37.46,291.54");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=4.29,318.61");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=40.73,247.59");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=87.57,114.13");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=109.81,54.30");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=55.27,29.52");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=82.48,145.49");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=218.47,173.31");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=205.34,196.11");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=99.63,40.93");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=22.20,36.20");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=130.01,248.54");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=155.29,286.05");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=95.16,199.65");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=53.04,226.39");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=180.27,80.65");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=188.26,221.11");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=100.83,156.82");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=278.04,242.70");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=154.90,316.41");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=172.39,206.79");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=46.68,238.26");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=102.62,80.74");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=29.21,172.37");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=61.30,104.10");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=0.96,152.64");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=30.50,326.68");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=25.84,265.69");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=59.10,82.52");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=159.48,33.62");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=74.32,53.80");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=165.30,90.81");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=287.16,152.78");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=130.02,221.96");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=92.25,78.28");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=8.85,79.50");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=15.88,138.08");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=93.22,172.34");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=113.82,120.85");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=16.34,175.17");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=207.15,138.42");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=194.39,93.28");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=228.60,163.42");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=252.53,302.64");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=232.93,266.13");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=141.78,202.78");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=67.54,153.12");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=14.97,114.31");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=22.60,83.86");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=124.76,132.71");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=109.98,257.14");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=56.17,265.65");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=41.03,177.59");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=45.66,83.79");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=159.27,74.71");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=129.28,77.13");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=148.70,184.56");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=221.45,150.68");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=189.13,186.34");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=132.17,66.49");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=40.12,36.82");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=6.27,189.35");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=63.95,300.51");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=77.01,119.82");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=40.94,125.81");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=216.10,106.80");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=183.27,133.57");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=243.78,242.03");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=280.32,212.31");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=242.11,279.53");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=145.23,267.68");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=55.60,254.98");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=107.00,145.82");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=69.57,110.05");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=127.52,91.80");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=76.58,303.76");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=3.54,363.59");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=103.55,283.58");
    }

}

