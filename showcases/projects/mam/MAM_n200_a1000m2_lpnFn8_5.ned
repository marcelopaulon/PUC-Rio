
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn8_5
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
        @display("p=75.53,109.29");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=48.71,32.32");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=60.15,29.33");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=107.06,7.07");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=134.99,21.50");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=59.10,14.27");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=83.60,79.72");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=63.77,44.33");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=43.20,75.94");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=18.80,36.88");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=142.52,40.46");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=160.08,61.59");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=160.73,72.04");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=154.60,151.10");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=98.40,184.80");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=141.54,177.39");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=115.81,206.65");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=131.84,207.37");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=85.82,219.05");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=85.00,244.79");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=177.93,270.40");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=143.78,291.01");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=154.64,315.01");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=160.43,288.51");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=54.78,112.84");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=85.53,22.03");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=134.66,77.53");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=121.11,42.17");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=99.04,27.59");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=199.38,30.98");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=38.34,8.77");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=75.39,91.27");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=85.68,56.61");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=13.50,89.16");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=3.08,62.73");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=211.29,9.61");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=231.35,32.77");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=258.56,52.35");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=115.91,152.62");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=108.14,217.43");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=199.09,118.69");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=189.86,247.34");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=118.25,120.75");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=72.76,205.85");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=98.98,318.90");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=183.31,314.18");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=175.15,345.51");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=199.84,355.10");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=206.92,261.37");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=94.25,118.84");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=102.40,124.69");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=118.53,86.15");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=13.11,63.16");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=145.02,90.34");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=179.63,10.84");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=37.73,46.16");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=27.66,131.86");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=75.53,31.78");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=105.09,76.07");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=14.18,13.55");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=146.57,54.42");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=131.19,46.49");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=158.76,91.34");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=156.65,113.51");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=152.77,237.32");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=173.53,245.94");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=109.92,264.55");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=153.26,211.32");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=64.19,130.48");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=71.57,267.73");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=107.40,290.05");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=220.22,246.71");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=142.99,304.10");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=143.03,325.03");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=90.06,36.63");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=113.89,188.00");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=29.74,30.75");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=8.79,35.53");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=147.16,66.71");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=143.86,14.46");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=93.78,2.11");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=52.17,145.85");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=76.69,124.16");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=109.81,135.02");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=65.97,69.60");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=199.43,90.97");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=208.92,125.70");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=201.33,152.91");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=192.20,143.19");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=68.48,244.58");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=92.72,130.16");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=54.25,205.67");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=126.35,295.34");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=149.93,252.11");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=140.58,240.74");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=187.91,264.33");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=124.06,327.65");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=251.63,326.53");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=165.74,214.92");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=17.23,123.76");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=135.78,142.76");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=61.21,93.21");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=28.97,15.66");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=57.19,60.75");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=112.15,111.34");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=50.80,21.14");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=88.19,152.33");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=73.52,141.98");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=34.21,115.68");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=3.76,14.42");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=116.51,52.47");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=163.81,127.27");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=156.60,35.50");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=185.86,229.94");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=101.34,228.34");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=125.58,173.96");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=119.12,221.60");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=159.02,178.18");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=27.61,162.74");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=96.90,244.37");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=170.11,228.82");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=85.01,315.99");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=168.64,327.00");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=104.67,359.36");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=132.92,132.90");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=9.51,152.25");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=35.63,88.26");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=50.61,47.75");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=159.72,24.11");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=187.74,62.41");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=48.82,4.72");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=146.87,25.53");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=112.06,65.24");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=113.80,97.05");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=29.19,62.45");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=127.42,11.01");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=122.48,26.05");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=209.95,38.24");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=161.75,137.22");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=10.34,167.78");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=123.90,255.30");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=215.20,202.78");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=106.39,195.25");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=61.48,293.20");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=142.89,226.28");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=178.34,280.54");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=73.09,282.02");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=148.33,339.27");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=233.62,314.03");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=97.41,88.53");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=136.48,154.18");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=39.14,22.38");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=115.94,12.50");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=165.17,9.85");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=172.72,63.47");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=65.60,113.49");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=2.60,49.91");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=102.90,39.15");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=25.20,75.01");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=0.90,73.18");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=207.99,51.14");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=226.45,104.23");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=98.81,51.96");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=179.53,129.69");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=67.51,184.96");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=84.16,173.89");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=151.36,276.33");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=135.93,196.71");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=91.63,258.16");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=47.07,231.25");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=197.80,294.58");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=77.99,332.52");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=134.60,360.39");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=91.07,285.59");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=74.31,194.00");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=88.10,96.02");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=47.06,120.90");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=40.37,57.09");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=191.40,23.39");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=185.11,33.88");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=62.85,1.33");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=52.22,172.10");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=68.74,18.54");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=47.74,159.77");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=83.63,4.96");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=233.80,46.02");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=172.37,37.29");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=197.65,133.58");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=213.46,137.90");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=103.83,206.27");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=156.35,166.16");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=25.67,237.35");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=115.84,235.22");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=0.10,197.98");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=52.10,193.76");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=242.57,319.99");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=209.37,302.65");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=56.93,335.41");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=123.41,337.63");
    }

}

