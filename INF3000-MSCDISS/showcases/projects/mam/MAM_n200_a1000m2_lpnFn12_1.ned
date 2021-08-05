
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn12_1
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
        @display("p=51.04,20.60");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=64.56,71.12");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=12.84,99.55");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=23.66,87.89");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=37.64,26.98");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=31.41,80.79");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=2.82,69.65");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=31.52,125.20");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=12.99,130.61");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=20.18,117.91");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=103.87,164.63");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=95.63,221.44");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=105.33,213.45");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=123.13,150.99");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=101.61,197.54");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=134.37,284.95");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=48.72,132.93");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=35.00,5.27");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=71.11,49.41");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=65.92,105.09");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=50.95,170.32");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=8.77,78.89");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=57.99,96.80");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=26.17,19.90");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=95.59,177.24");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=6.55,118.87");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=7.83,150.47");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=90.44,129.36");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=144.97,298.37");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=31.97,268.32");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=85.96,156.80");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=41.66,183.63");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=78.90,351.38");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=120.51,43.67");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=93.31,16.55");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=96.84,41.41");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=36.80,16.69");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=62.73,146.96");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=71.76,2.94");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=126.58,68.61");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=20.47,70.42");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=30.72,187.72");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=17.35,162.68");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=25.40,170.14");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=167.71,137.20");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=84.95,196.06");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=117.66,249.62");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=127.86,239.63");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=116.49,185.92");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=145.42,247.33");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=105.05,116.95");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=136.70,14.77");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=142.60,98.65");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=83.31,33.62");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=39.71,108.74");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=33.27,38.61");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=22.43,152.71");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=60.42,56.58");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=129.11,111.87");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=8.71,201.71");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=116.13,107.47");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=80.00,95.92");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=64.99,219.98");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=187.33,220.55");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=113.60,157.73");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=123.85,265.97");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=174.25,352.27");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=80.50,106.68");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=13.10,28.91");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=49.03,50.92");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=78.57,164.62");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=48.40,87.78");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=14.54,3.56");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=124.71,87.77");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=22.15,139.02");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=42.85,209.99");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=12.23,184.39");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=28.13,111.72");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=131.12,197.20");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=18.46,229.88");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=99.27,134.42");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=164.32,123.82");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=198.74,173.88");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=162.31,192.99");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=132.92,160.10");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=84.60,55.19");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=22.77,56.00");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=36.42,91.09");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=46.63,70.44");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=1.28,36.15");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=71.90,133.02");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=32.99,70.23");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=87.70,73.13");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=1.12,130.65");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=48.80,146.67");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=160.93,227.32");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=82.22,216.50");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=76.09,253.91");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=99.14,238.65");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=81.36,228.77");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=152.66,335.60");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=179.76,91.33");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=101.30,24.93");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=90.22,109.77");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=14.68,40.31");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=45.30,118.37");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=69.25,82.71");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=40.34,172.64");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=32.42,154.58");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=62.19,114.67");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=6.72,164.75");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=79.86,121.29");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=64.92,244.71");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=86.95,271.18");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=113.44,219.76");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=137.56,135.70");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=47.57,241.56");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=183.72,355.97");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=108.02,80.09");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=135.04,37.75");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=83.24,144.30");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=59.81,39.70");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=25.04,101.61");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=100.34,70.90");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=36.70,53.06");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=60.14,3.30");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=33.25,140.56");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=61.03,163.43");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=52.97,208.48");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=115.36,206.06");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=77.50,291.16");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=132.33,229.68");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=140.99,149.04");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=176.81,172.69");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=200.70,306.81");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=154.02,180.27");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=86.32,85.12");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=110.16,50.35");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=4.08,108.69");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=53.58,106.15");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=123.18,56.71");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=13.46,62.00");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=10.50,15.99");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=0.47,209.60");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=0.44,143.35");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=112.42,94.63");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=159.93,147.20");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=48.23,261.79");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=199.14,233.34");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=116.75,134.68");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=133.73,121.32");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=117.26,349.31");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=70.28,156.59");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=66.23,17.67");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=78.21,76.59");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=61.50,131.42");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=78.48,24.63");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=7.22,53.84");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=1.27,90.29");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=47.71,31.44");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=68.36,186.24");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=30.80,201.27");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=101.84,88.37");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=156.99,109.15");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=127.69,218.93");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=186.26,270.08");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=181.29,105.88");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=168.32,215.32");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=224.80,266.60");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=86.26,43.61");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=140.11,55.84");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=114.44,35.17");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=68.74,28.78");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=106.15,142.38");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=47.84,9.85");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=81.61,8.67");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=72.46,61.79");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=1.14,192.77");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=11.54,215.25");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=61.91,194.18");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=148.65,163.33");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=122.57,164.15");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=181.02,190.65");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=105.85,185.86");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=32.11,216.24");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=117.02,320.81");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=104.10,12.16");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=126.97,11.59");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=133.88,79.88");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=55.71,179.62");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=93.31,143.24");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=98.32,60.33");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=112.96,64.38");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=68.67,123.39");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=81.85,176.26");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=49.34,194.39");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=22.53,210.60");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=69.13,174.17");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=71.28,204.46");
    }

}

