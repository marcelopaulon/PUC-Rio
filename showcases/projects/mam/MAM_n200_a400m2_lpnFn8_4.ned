
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn8_4
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
        @display("p=100.00,300.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=72.48,310.01");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=0.68,241.92");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=15.16,239.20");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=31.43,210.32");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=20.27,199.78");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=85.93,249.54");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=70.22,169.76");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=107.40,146.70");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=89.59,133.99");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=77.01,140.05");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=75.96,43.32");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=75.45,17.51");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=117.25,45.64");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=128.88,27.79");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=71.54,31.49");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=21.86,75.90");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=86.59,67.74");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=111.79,122.33");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=159.70,203.04");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=232.35,157.73");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=276.14,138.54");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=247.29,137.26");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=198.41,158.78");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=210.31,136.51");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=149.08,328.48");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=115.86,397.67");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=43.72,192.64");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=45.37,204.00");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=40.80,282.53");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=65.08,217.67");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=67.76,186.57");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=54.32,181.95");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=153.03,117.55");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=91.46,101.35");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=139.17,195.85");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=64.54,120.62");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=74.90,78.04");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=177.54,31.53");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=168.40,54.74");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=90.92,5.51");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=52.56,132.92");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=108.67,71.83");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=139.36,185.09");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=173.40,181.77");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=231.92,126.41");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=282.27,151.00");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=207.64,117.47");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=159.56,181.36");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=229.59,45.14");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=180.81,338.58");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=63.69,299.78");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=57.94,261.07");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=35.25,221.37");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=8.21,160.87");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=1.32,132.68");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=127.17,188.73");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=137.94,146.42");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=101.74,100.14");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=88.98,218.50");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=30.14,129.90");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=59.58,83.92");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=94.24,47.28");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=63.23,104.05");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=109.18,32.01");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=1.18,89.95");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=39.01,35.94");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=168.33,105.66");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=123.11,122.27");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=122.42,198.71");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=168.96,121.54");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=319.51,155.00");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=189.79,153.48");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=194.23,142.77");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=192.19,168.07");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=91.95,318.07");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=77.99,325.96");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=11.28,219.43");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=26.97,250.43");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=15.34,172.16");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=78.29,203.51");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=97.31,255.50");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=93.05,148.19");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=151.32,218.29");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=53.65,107.05");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=115.26,224.14");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=139.01,105.02");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=57.53,41.88");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=128.43,3.19");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=63.81,55.94");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=42.02,83.56");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=95.98,27.91");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=39.24,116.04");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=61.87,206.23");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=140.50,254.94");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=241.63,100.65");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=304.42,138.17");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=258.73,119.62");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=185.29,104.53");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=263.56,72.57");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=15.58,257.53");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=81.03,270.98");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=36.26,264.84");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=32.63,178.05");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=87.15,177.88");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=14.09,145.75");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=131.62,238.07");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=24.01,226.67");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=160.91,150.22");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=135.57,80.60");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=62.99,148.51");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=75.33,54.15");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=50.93,54.41");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=78.38,97.90");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=154.17,103.73");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=159.34,33.01");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=10.69,58.27");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=131.07,15.82");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=175.66,129.25");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=223.04,245.15");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=286.87,80.98");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=225.90,140.83");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=236.31,82.69");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=184.43,221.69");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=227.31,187.83");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=143.70,293.12");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=81.86,346.22");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=79.91,239.98");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=96.61,235.46");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=42.69,253.22");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=64.69,288.83");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=27.03,236.40");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=31.25,103.02");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=74.98,228.48");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=96.95,182.47");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=5.52,113.18");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=36.42,6.25");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=63.02,17.68");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=185.08,11.99");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=168.21,12.04");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=49.97,16.01");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=3.09,79.39");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=99.16,17.55");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=13.77,120.80");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=151.61,166.70");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=265.49,146.87");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=298.12,182.13");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=268.82,187.71");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=247.09,181.58");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=211.60,151.95");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=66.29,366.61");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=117.63,366.34");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=18.67,326.07");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=70.94,248.34");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=1.51,184.19");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=75.17,216.89");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=80.07,257.70");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=112.64,101.88");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=167.51,66.85");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=109.61,160.93");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=77.74,157.21");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=98.17,86.92");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=142.89,89.11");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=104.81,55.41");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=143.42,12.64");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=79.85,116.79");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=10.38,98.97");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=19.18,4.68");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=139.15,115.58");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=213.64,252.46");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=242.50,161.08");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=297.72,171.17");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=181.38,167.57");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=219.42,128.16");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=219.00,217.74");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=117.10,297.24");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=127.23,341.78");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=1.41,296.81");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=11.05,194.62");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=18.25,276.16");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=7.45,204.54");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=147.74,177.00");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=68.14,92.26");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=138.35,135.42");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=30.69,141.96");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=89.85,198.67");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=4.76,38.84");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=22.38,57.52");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=144.88,48.96");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=144.39,124.80");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=83.33,33.96");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=10.54,71.21");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=45.47,92.98");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=170.96,85.13");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=211.96,204.90");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=280.91,168.15");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=278.57,120.62");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=262.23,57.06");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=260.57,137.91");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=204.13,104.19");
    }

}

