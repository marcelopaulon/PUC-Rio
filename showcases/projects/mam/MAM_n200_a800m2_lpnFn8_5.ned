
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn8_5
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=52.68,57.20");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=34.91,43.09");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=26.75,133.01");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=10.23,180.13");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=33.30,167.53");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=16.03,159.72");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=15.38,103.96");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=20.45,66.54");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=62.18,25.01");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=41.32,120.67");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=50.77,207.59");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=85.52,149.75");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=108.07,127.45");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=159.77,212.74");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=132.48,168.25");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=117.59,189.64");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=55.06,258.10");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=68.69,337.89");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=97.63,365.39");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=151.68,318.51");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=122.13,380.26");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=174.69,449.57");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=209.83,535.23");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=140.62,592.58");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=38.32,139.98");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=51.65,151.04");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=21.16,28.82");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=90.40,168.05");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=16.78,196.16");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=45.02,178.68");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=74.70,202.99");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=44.72,46.18");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=74.32,57.19");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=94.68,43.57");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=55.20,100.44");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=103.79,192.14");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=63.01,141.99");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=135.50,141.77");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=136.31,194.73");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=102.99,143.76");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=90.00,195.48");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=77.02,239.63");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=17.09,298.39");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=138.19,292.28");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=123.62,245.36");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=147.10,349.35");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=154.17,465.21");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=188.41,521.09");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=112.75,565.48");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=113.12,75.32");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=80.33,132.55");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=4.65,102.59");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=27.12,113.16");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=8.32,218.41");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=61.26,165.18");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=53.10,238.00");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=48.41,108.48");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=29.64,7.24");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=86.72,10.11");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=83.87,117.36");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=19.05,229.64");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=85.39,183.51");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=97.86,114.25");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=158.86,200.41");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=142.79,159.86");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=132.16,204.85");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=62.28,233.64");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=79.45,342.90");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=160.50,387.69");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=130.50,353.01");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=158.12,293.35");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=161.61,505.18");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=191.58,538.52");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=174.24,569.30");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=88.10,83.84");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=0.41,64.85");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=50.70,17.08");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=99.92,70.12");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=16.78,248.48");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=60.36,222.31");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=86.74,96.16");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=76.93,75.83");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=10.38,79.33");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=141.90,30.24");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=61.50,119.18");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=99.35,207.38");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=110.37,224.79");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=49.91,162.43");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=126.39,221.19");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=173.09,114.13");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=70.03,127.73");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=6.17,246.43");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=76.95,317.80");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=112.30,363.76");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=123.21,316.65");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=75.43,300.35");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=194.42,412.43");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=224.33,597.46");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=156.06,673.24");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=72.32,116.49");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=90.10,21.35");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=9.63,46.59");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=119.92,139.85");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=86.82,233.16");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=18.45,142.62");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=37.42,152.14");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=23.43,88.38");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=61.66,39.33");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=42.85,25.06");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=11.70,130.44");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=32.06,244.36");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=34.12,188.77");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=33.86,101.73");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=146.81,198.12");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=189.59,191.05");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=146.14,117.74");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=82.82,284.23");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=50.92,319.29");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=64.65,384.97");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=197.98,234.15");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=131.21,385.66");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=88.46,454.31");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=273.10,462.67");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=59.27,587.83");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=26.79,52.47");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=6.80,118.38");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=111.84,39.95");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=0.26,127.23");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=31.14,211.25");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=7.24,166.66");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=1.05,152.35");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=31.03,80.30");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=103.14,55.12");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=120.17,52.86");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=78.60,160.06");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=62.62,306.22");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=121.63,174.26");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=172.48,92.94");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=169.11,180.11");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=176.55,233.20");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=212.90,177.80");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=19.74,344.02");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=112.39,396.71");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=164.74,339.65");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=156.25,333.25");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=120.56,390.47");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=234.54,415.78");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=260.21,544.76");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=142.96,612.08");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=118.46,66.68");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=139.65,91.52");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=44.00,1.16");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=51.77,68.40");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=23.06,276.62");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=2.84,192.68");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=44.72,217.77");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=1.07,84.14");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=41.92,78.34");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=128.42,41.42");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=47.16,131.19");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=57.87,198.63");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=92.32,142.30");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=150.37,63.14");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=159.23,144.24");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=103.03,180.01");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=131.41,258.38");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=121.13,301.31");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=112.98,373.75");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=97.43,337.07");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=190.21,313.89");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=60.46,364.98");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=222.43,387.30");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=276.64,574.26");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=158.04,593.75");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=126.30,74.97");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=101.87,24.19");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=68.40,99.03");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=18.94,121.20");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=28.73,157.12");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=114.20,153.30");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=21.38,180.52");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=45.91,191.57");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=97.47,126.54");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=117.06,104.13");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=51.14,87.58");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=45.44,229.43");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=137.54,131.72");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=196.96,160.14");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=144.54,209.86");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=122.85,93.24");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=75.33,170.76");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=60.38,278.28");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=127.87,333.02");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=47.22,434.69");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=231.45,358.02");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=189.33,402.05");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=171.22,424.34");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=200.83,527.77");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=104.68,541.02");
    }

}

