
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn12_5
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
        @display("p=48.01,84.08");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=1.07,94.74");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=10.20,82.74");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=31.18,82.61");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=81.66,100.94");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=22.16,133.89");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=28.57,124.55");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=51.87,93.84");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=138.22,116.92");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=131.44,41.18");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=124.78,49.05");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=131.90,73.70");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=109.65,73.44");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=135.80,153.53");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=170.10,139.53");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=255.78,164.61");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=140.48,28.82");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=3.03,139.68");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=0.15,74.70");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=25.05,95.97");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=85.01,146.94");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=106.92,32.08");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=7.02,53.07");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=32.74,106.31");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=98.88,171.44");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=154.11,112.10");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=125.31,108.38");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=187.78,88.51");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=93.01,75.74");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=121.56,152.51");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=109.23,191.78");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=227.65,95.66");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=291.70,186.96");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=61.97,167.64");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=72.09,80.71");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=17.65,27.71");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=15.54,117.88");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=80.24,45.07");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=111.12,115.82");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=71.07,162.16");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=40.79,167.75");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=65.80,102.85");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=108.60,105.85");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=142.24,133.66");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=122.54,66.07");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=92.62,86.37");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=130.05,90.24");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=127.12,201.81");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=187.82,62.68");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=230.50,206.85");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=14.04,62.22");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=102.89,41.40");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=12.09,169.64");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=60.90,71.09");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=87.72,159.59");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=99.58,66.41");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=77.81,139.51");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=45.31,193.07");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=92.90,34.22");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=140.54,45.88");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=123.00,27.28");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=84.97,122.42");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=133.66,15.94");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=172.44,19.79");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=155.42,153.87");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=155.96,74.85");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=209.65,209.37");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=186.15,120.10");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=49.45,51.35");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=2.90,116.26");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=37.62,53.65");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=103.25,148.61");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=61.21,155.40");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=45.07,103.17");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=31.56,172.03");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=74.79,150.36");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=115.99,199.96");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=146.91,4.91");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=117.20,0.48");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=150.22,95.37");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=106.57,88.30");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=208.21,146.94");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=174.63,230.02");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=246.67,139.93");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=108.07,163.26");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=44.07,74.88");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=50.46,62.40");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=44.62,151.97");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=119.77,84.03");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=98.34,112.19");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=78.13,177.87");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=72.07,198.56");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=59.21,83.26");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=175.98,156.09");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=168.34,1.15");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=143.50,68.62");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=159.69,129.68");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=62.67,28.79");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=127.61,185.54");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=213.97,124.29");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=197.14,239.78");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=137.81,181.47");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=38.79,123.47");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=2.81,126.41");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=1.34,24.67");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=3.48,151.47");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=24.33,49.90");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=118.48,136.12");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=18.04,37.87");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=95.39,134.90");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=155.43,30.30");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=220.01,2.88");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=98.44,53.65");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=83.76,27.97");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=118.42,39.29");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=140.43,143.55");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=162.63,117.91");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=270.72,121.73");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=96.09,124.78");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=8.88,107.78");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=2.92,41.50");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=40.44,65.30");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=66.26,113.38");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=79.33,9.69");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=38.19,136.18");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=71.67,209.27");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=54.81,124.80");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=52.67,161.56");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=187.11,13.24");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=112.29,16.58");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=138.09,57.89");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=121.79,119.65");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=98.34,201.96");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=241.85,109.19");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=284.25,151.38");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=78.57,112.54");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=64.41,55.51");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=47.86,31.79");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=48.54,134.19");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=35.12,95.92");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=64.13,92.98");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=31.76,206.68");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=55.37,183.72");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=34.00,10.45");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=206.94,101.90");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=148.37,83.37");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=178.32,6.78");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=114.34,94.74");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=68.92,40.18");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=157.98,183.81");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=230.13,161.31");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=244.00,177.62");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=118.05,178.22");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=76.46,59.16");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=26.00,150.64");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=25.80,63.76");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=43.47,21.35");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=68.96,127.04");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=98.29,159.39");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=15.13,97.51");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=41.06,181.82");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=200.01,179.38");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=154.74,44.60");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=99.86,6.27");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=81.72,86.41");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=202.89,59.65");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=168.39,99.13");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=213.88,170.02");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=190.77,100.88");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=194.01,112.99");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=22.58,9.26");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=8.68,4.09");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=23.32,75.10");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=108.96,139.95");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=56.13,143.46");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=2.65,223.36");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=34.39,158.61");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=81.35,187.91");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=155.18,168.33");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=114.45,55.90");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=166.67,74.23");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=199.04,85.78");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=196.37,35.36");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=129.14,171.81");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=179.04,77.76");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=271.37,195.89");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=145.41,157.74");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=11.22,72.31");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=21.95,187.55");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=89.22,66.46");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=52.41,10.08");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=108.80,129.80");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=89.09,176.88");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=54.98,108.91");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=88.39,54.82");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=160.38,61.96");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=182.27,44.87");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=213.56,46.87");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=80.75,71.98");
    }

}

