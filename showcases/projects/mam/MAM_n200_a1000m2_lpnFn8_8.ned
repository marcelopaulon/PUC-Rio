
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn8_8
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
        @display("p=111.57,87.35");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=73.43,94.96");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=85.39,72.83");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=18.49,102.99");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=4.76,162.32");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=20.03,166.38");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=44.76,220.24");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=105.26,182.79");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=49.64,171.52");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=46.64,203.24");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=40.24,130.18");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=76.84,42.90");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=136.57,5.64");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=156.03,12.37");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=133.69,22.88");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=139.04,107.59");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=152.30,41.79");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=155.32,71.98");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=135.97,71.48");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=132.05,118.67");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=162.01,122.57");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=170.51,109.70");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=195.84,118.11");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=281.65,89.51");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=94.62,67.22");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=112.46,174.21");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=61.79,103.38");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=135.05,41.75");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=53.69,139.29");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=12.37,196.90");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=1.28,232.54");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=115.88,211.86");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=192.55,196.27");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=92.43,137.56");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=58.23,219.77");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=45.99,41.43");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=73.55,56.58");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=198.19,13.95");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=104.50,37.86");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=122.08,11.20");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=119.07,123.33");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=146.87,31.05");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=121.54,155.58");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=108.01,65.01");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=40.37,104.62");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=195.33,85.09");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=204.72,190.09");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=221.91,191.32");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=262.97,67.39");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=125.01,134.03");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=67.42,126.24");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=8.80,113.82");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=3.18,103.97");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=58.92,70.73");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=60.32,192.67");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=20.02,240.55");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=109.20,195.06");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=92.33,191.88");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=40.63,187.39");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=28.33,290.75");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=53.01,110.05");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=42.96,94.68");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=76.34,14.32");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=175.47,5.35");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=105.35,17.54");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=146.65,90.96");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=163.35,54.90");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=163.88,141.06");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=178.32,142.89");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=187.76,171.67");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=231.43,79.56");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=220.35,71.92");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=123.21,68.83");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=242.51,74.87");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=93.22,114.48");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=103.66,0.87");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=88.94,169.65");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=18.16,45.59");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=17.24,87.60");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=20.32,204.83");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=28.83,71.50");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=79.77,202.94");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=190.39,217.11");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=119.30,188.22");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=68.81,228.21");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=20.43,216.45");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=13.04,18.84");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=148.82,62.21");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=137.46,52.14");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=115.82,45.72");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=90.66,43.45");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=61.03,55.68");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=128.33,94.16");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=183.20,36.08");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=91.78,27.36");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=143.50,199.74");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=216.41,93.69");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=208.22,47.96");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=341.85,142.17");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=126.11,79.60");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=166.48,84.33");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=56.70,86.09");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=24.67,18.86");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=30.30,118.83");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=72.54,185.33");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=24.36,152.82");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=20.22,128.49");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=133.97,143.83");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=83.84,108.21");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=73.90,262.15");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=2.29,130.00");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=142.53,17.26");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=94.31,11.80");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=195.34,47.84");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=183.61,51.83");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=160.99,190.45");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=111.20,26.31");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=180.41,130.21");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=221.08,83.24");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=126.91,107.92");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=125.56,208.77");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=183.34,91.39");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=204.65,157.47");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=276.80,15.41");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=51.28,122.36");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=176.77,75.32");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=34.47,32.80");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=67.22,35.43");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=100.46,128.62");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=1.19,143.98");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=21.09,176.96");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=29.07,249.92");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=99.02,202.82");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=141.75,133.03");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=49.61,153.67");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=0.55,84.28");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=72.26,68.39");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=226.98,41.69");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=228.89,18.32");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=61.18,15.24");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=157.73,157.59");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=166.80,94.73");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=85.62,84.44");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=74.09,83.92");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=195.98,107.82");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=244.07,151.04");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=151.72,128.64");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=192.88,161.37");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=304.24,74.84");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=137.71,174.08");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=77.69,150.21");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=74.14,165.45");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=119.42,35.74");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=10.15,183.82");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=31.59,81.70");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=87.73,180.55");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=60.33,293.81");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=42.73,242.08");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=65.53,201.82");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=95.83,249.35");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=81.97,139.18");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=77.22,29.61");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=189.71,60.93");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=173.41,31.04");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=47.26,28.00");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=203.18,36.26");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=164.50,24.07");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=146.63,78.16");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=204.01,93.34");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=222.42,126.87");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=177.20,184.20");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=227.51,100.68");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=218.82,111.77");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=323.35,58.27");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=112.53,111.28");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=206.02,81.16");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=37.28,60.74");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=114.95,74.79");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=30.29,92.02");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=2.23,173.61");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=105.40,144.41");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=82.71,230.05");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=173.92,220.51");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=38.01,167.96");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=72.92,276.04");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=4.36,64.16");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=87.26,2.25");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=77.00,0.58");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=204.21,5.58");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=52.12,50.90");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=235.80,129.19");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=161.83,35.73");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=221.50,52.66");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=218.20,30.47");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=144.98,118.20");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=221.75,141.51");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=124.42,174.57");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=211.42,148.30");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=250.78,172.60");
    }

}

