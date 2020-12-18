
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn8_0
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
        @display("p=173.95,246.98");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=214.36,174.20");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=146.68,218.75");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=80.24,152.27");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=56.42,117.11");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=30.87,129.06");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=96.20,136.45");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=39.88,120.22");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=72.47,111.38");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=137.73,123.94");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=121.95,25.20");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=72.87,13.38");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=78.42,4.06");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=106.83,23.75");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=91.91,1.01");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=8.25,12.60");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=21.30,68.15");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=35.33,93.27");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=55.50,94.23");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=70.81,81.96");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=123.24,102.82");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=155.25,92.50");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=161.66,19.07");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=223.49,14.57");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=82.87,289.21");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=193.30,235.28");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=222.10,270.59");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=119.04,242.17");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=52.26,141.22");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=63.12,212.50");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=101.90,73.07");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=104.92,187.71");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=20.84,197.99");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=63.09,144.20");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=187.90,164.45");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=40.27,17.79");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=85.42,40.19");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=8.15,61.29");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=99.89,41.15");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=63.44,53.99");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=8.13,24.96");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=47.07,71.44");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=16.89,127.84");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=58.88,83.05");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=42.49,177.70");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=112.78,116.51");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=188.91,96.33");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=156.64,37.94");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=231.33,29.22");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=88.85,333.68");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=264.16,253.60");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=254.76,119.09");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=189.39,256.65");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=175.44,146.59");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=45.58,156.24");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=5.91,91.42");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=166.06,78.47");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=29.03,143.03");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=140.69,171.74");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=145.80,156.68");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=179.38,35.37");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=44.90,58.41");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=75.28,30.60");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=80.85,21.70");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=148.75,26.39");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=13.92,37.65");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=6.34,74.17");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=0.08,159.79");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=40.99,102.58");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=84.51,78.51");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=110.85,62.37");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=155.12,146.14");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=258.34,35.66");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=281.35,32.53");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=168.82,264.78");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=171.59,313.83");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=299.80,128.58");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=192.11,203.56");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=9.11,137.26");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=117.13,89.15");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=111.17,155.99");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=127.50,179.34");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=90.41,155.32");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=18.64,169.08");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=68.77,134.48");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=85.13,99.72");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=63.35,21.96");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=126.18,7.67");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=125.85,120.62");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=92.26,14.87");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=19.24,1.65");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=23.83,57.29");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=8.16,147.48");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=81.80,65.09");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=73.14,96.27");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=115.32,39.72");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=158.52,164.19");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=172.73,11.12");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=287.44,55.61");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=71.41,256.26");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=189.16,274.86");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=181.10,85.13");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=97.02,223.08");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=10.86,215.39");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=62.75,103.42");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=4.38,112.82");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=100.21,171.38");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=13.68,50.68");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=144.69,78.91");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=146.95,99.20");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=162.04,100.91");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=140.86,33.26");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=25.52,40.60");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=197.08,40.18");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=99.68,91.45");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=21.17,28.31");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=102.88,120.63");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=18.62,96.06");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=52.18,171.56");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=12.94,118.13");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=207.46,56.36");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=167.74,35.80");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=81.85,55.03");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=301.99,73.03");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=50.98,334.57");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=195.89,302.88");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=215.02,142.22");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=225.75,202.93");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=79.55,141.01");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=96.54,105.84");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=31.03,49.66");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=75.18,187.85");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=24.15,83.76");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=132.25,156.10");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=157.41,213.47");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=133.65,18.81");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=144.20,3.68");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=105.02,8.03");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=113.74,15.27");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=133.79,85.22");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=45.22,38.08");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=31.62,4.24");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=38.70,146.75");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=118.66,169.86");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=66.07,70.84");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=182.72,68.50");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=166.94,65.08");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=256.93,12.22");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=246.39,2.31");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=126.45,299.49");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=206.38,314.82");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=229.13,260.81");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=185.39,308.54");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=71.18,162.11");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=77.96,122.61");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=35.29,68.17");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=132.50,192.42");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=39.94,78.51");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=90.10,181.51");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=110.07,201.04");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=179.26,47.89");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=113.26,0.12");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=21.40,13.09");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=145.41,59.88");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=104.74,50.54");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=35.17,37.92");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=22.80,111.87");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=39.27,135.16");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=57.81,44.80");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=94.28,81.96");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=186.10,110.43");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=109.89,100.57");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=198.36,26.61");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=229.30,1.78");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=77.70,306.75");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=116.60,286.34");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=233.44,139.91");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=187.47,213.88");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=39.20,208.64");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=36.55,193.09");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=30.28,227.33");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=105.29,144.85");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=5.60,176.36");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=9.32,103.15");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=224.74,88.00");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=182.10,23.75");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=54.89,31.56");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=92.34,50.36");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=68.85,41.90");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=186.88,1.42");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=30.39,24.17");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=92.39,120.96");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=3.27,34.25");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=49.32,128.34");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=146.77,112.10");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=124.66,79.00");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=196.51,8.68");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=211.54,29.72");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=305.85,54.95");
    }

}

