
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn8-7
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
        @display("p=250.00,45.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=223.38,64.81");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=143.37,9.76");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=156.70,38.32");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=153.38,24.78");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=169.97,28.50");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=130.05,24.52");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=132.32,61.78");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=124.45,116.99");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=64.96,99.86");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=110.51,93.17");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=149.74,117.98");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=127.31,84.86");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=153.03,81.51");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=111.39,40.47");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=159.54,131.12");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=117.10,85.01");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=167.48,78.62");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=191.41,101.57");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=224.37,146.00");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=242.23,134.94");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=253.50,61.66");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=235.86,41.98");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=183.31,40.99");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=218.62,159.96");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=227.91,55.17");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=260.85,119.16");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=89.98,24.91");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=169.07,42.95");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=167.91,17.72");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=148.48,54.21");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=70.46,25.11");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=154.89,91.41");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=187.15,155.68");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=26.87,54.31");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=134.28,108.59");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=213.19,116.61");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=41.25,60.65");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=86.89,45.94");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=60.80,58.90");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=178.77,126.40");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=116.19,70.77");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=250.37,88.79");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=148.85,69.41");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=310.42,142.73");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=236.53,104.87");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=210.61,43.94");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=209.18,32.07");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=114.83,53.20");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=237.33,164.35");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=251.39,17.79");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=225.05,79.57");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=85.25,7.69");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=165.92,59.43");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=97.39,86.93");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=197.00,9.68");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=84.86,67.11");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=161.76,3.57");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=106.41,213.24");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=47.65,68.52");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=27.15,80.08");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=118.55,33.32");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=94.16,103.08");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=204.57,127.03");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=20.44,9.04");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=98.62,154.07");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=94.40,35.76");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=188.97,21.73");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=267.83,63.86");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=255.44,149.84");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=288.66,172.40");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=180.78,69.04");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=233.68,85.04");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=235.43,24.55");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=297.93,137.43");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=319.09,84.63");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=283.66,62.73");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=199.52,37.07");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=140.70,30.76");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=122.74,16.35");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=193.91,50.66");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=66.90,87.90");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=138.34,72.76");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=104.59,173.83");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=34.53,86.91");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=72.16,118.34");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=208.23,197.49");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=97.46,48.20");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=176.86,103.75");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=129.81,35.40");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=64.07,149.02");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=118.34,104.68");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=213.92,96.48");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=270.18,133.67");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=166.30,142.39");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=236.10,126.73");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=255.79,73.60");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=200.90,58.59");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=178.50,83.00");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=204.46,157.42");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=214.15,72.71");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=194.40,70.44");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=154.53,105.63");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=179.98,11.37");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=92.76,58.51");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=103.41,14.37");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=153.14,12.54");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=48.15,87.46");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=112.07,113.96");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=25.70,97.48");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=105.63,57.47");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=113.69,152.68");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=60.09,30.37");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=223.12,36.27");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=107.20,78.09");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=145.12,135.53");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=91.15,129.48");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=194.22,129.39");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=150.52,189.70");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=185.03,182.98");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=260.49,107.55");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=273.93,101.66");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=274.37,44.11");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=258.37,28.75");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=280.06,235.61");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=242.17,58.41");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=200.93,145.13");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=105.60,30.38");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=226.30,98.55");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=103.21,107.65");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=267.44,16.50");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=139.88,19.88");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=129.74,96.11");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=51.31,100.56");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=32.25,107.53");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=192.11,115.54");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=177.97,146.93");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=104.97,139.21");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=73.33,78.31");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=202.00,20.53");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=193.10,81.44");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=60.84,126.53");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=103.34,119.21");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=202.76,96.51");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=170.85,178.58");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=223.75,193.29");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=325.85,62.30");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=280.93,110.00");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=246.43,1.45");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=243.00,173.50");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=243.10,72.16");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=270.06,80.71");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=181.20,0.82");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=216.49,9.53");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=131.81,3.90");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=163.75,98.42");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=76.15,16.00");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=36.86,72.87");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=84.39,106.63");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=23.75,159.23");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=33.49,140.93");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=127.13,184.05");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=165.95,109.27");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=64.09,110.79");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=59.54,69.67");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=218.33,180.29");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=91.67,173.80");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=176.36,93.14");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=129.47,143.55");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=206.19,214.66");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=228.39,169.69");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=336.67,114.47");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=264.38,47.46");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=180.68,55.30");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=137.40,125.77");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=212.86,20.13");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=275.66,56.13");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=73.25,46.43");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=225.56,18.50");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=220.90,0.17");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=220.37,88.50");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=120.15,0.74");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=155.89,158.12");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=122.91,129.72");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=4.39,92.57");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=94.84,139.65");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=199.29,188.16");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=81.08,125.46");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=139.90,82.78");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=60.07,6.30");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=125.28,218.72");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=82.74,88.37");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=184.20,30.58");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=125.54,158.03");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=278.47,144.55");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=253.34,130.02");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=309.86,104.67");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=327.24,78.11");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=203.15,86.32");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=227.14,209.53");
    }

}

