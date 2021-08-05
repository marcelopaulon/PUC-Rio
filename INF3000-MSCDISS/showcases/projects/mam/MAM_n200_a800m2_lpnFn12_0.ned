
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn12_0
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
        @display("p=40.39,113.01");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=122.36,59.81");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=111.21,46.78");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=148.21,101.77");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=161.53,69.20");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=181.84,149.22");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=149.99,151.26");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=151.71,180.39");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=185.90,161.00");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=124.05,92.07");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=130.77,109.22");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=82.60,76.70");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=84.04,120.39");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=119.13,123.16");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=62.00,132.48");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=42.36,54.15");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=63.86,64.71");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=20.97,75.04");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=69.00,123.58");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=89.56,32.69");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=182.71,105.80");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=160.50,54.67");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=176.26,120.99");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=167.27,172.34");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=241.05,167.43");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=236.86,107.39");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=112.34,100.44");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=143.33,43.50");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=148.96,10.83");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=107.52,82.84");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=110.72,155.80");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=32.82,119.88");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=56.99,117.78");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=148.45,54.65");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=77.03,47.39");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=144.36,1.72");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=141.48,32.87");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=179.40,94.38");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=93.96,51.57");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=269.52,123.28");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=186.61,69.32");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=224.14,215.82");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=89.59,165.78");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=94.25,139.51");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=143.77,116.05");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=52.48,38.32");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=97.82,121.78");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=109.99,131.63");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=69.67,164.92");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=64.40,87.76");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=15.18,116.01");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=60.66,100.14");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=192.07,93.71");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=189.70,12.87");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=179.57,58.40");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=133.96,4.44");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=177.89,190.21");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=142.82,232.82");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=109.73,250.05");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=199.46,170.31");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=204.16,62.61");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=184.17,42.89");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=83.22,101.81");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=118.37,138.05");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=144.51,140.24");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=118.22,108.97");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=45.75,69.89");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=80.82,178.96");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=16.18,144.41");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=49.42,4.01");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=69.01,73.98");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=183.29,175.27");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=228.13,70.41");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=126.99,160.80");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=205.61,87.04");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=206.65,181.17");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=235.71,178.86");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=136.41,166.29");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=172.19,49.70");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=35.61,86.94");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=38.51,100.73");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=133.48,61.93");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=34.56,39.40");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=27.06,49.74");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=43.46,158.23");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=3.94,171.86");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=92.88,9.40");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=133.41,84.04");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=166.83,82.97");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=164.84,18.76");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=237.30,153.88");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=203.19,206.40");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=133.97,195.20");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=116.74,214.32");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=196.91,124.08");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=118.37,71.52");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=18.90,126.50");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=151.14,74.43");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=105.47,183.92");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=98.39,153.47");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=72.48,98.94");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=148.39,24.51");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=20.60,193.09");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=141.75,69.25");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=165.21,0.97");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=223.81,55.18");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=113.87,15.74");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=221.53,144.28");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=224.87,157.02");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=124.27,181.94");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=161.72,241.43");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=68.02,24.85");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=135.79,127.06");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=52.13,108.16");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=162.13,110.50");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=189.59,81.67");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=46.08,142.24");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=4.07,27.74");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=149.35,170.25");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=52.08,201.71");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=189.89,28.56");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=69.83,9.71");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=242.42,75.06");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=237.73,26.03");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=182.10,131.91");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=171.73,144.21");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=70.00,232.55");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=177.62,225.79");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=142.46,186.36");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=91.78,69.42");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=14.14,42.37");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=68.83,198.61");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=73.87,133.96");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=91.48,83.43");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=31.62,142.41");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=57.43,79.49");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=49.43,91.86");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=34.95,19.82");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=109.31,35.81");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=206.30,118.71");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=204.22,77.13");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=256.32,132.68");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=173.36,156.36");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=68.99,182.56");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=261.49,157.60");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=127.38,171.06");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=42.26,128.14");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=20.83,93.56");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=62.86,153.25");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=167.49,193.26");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=97.68,110.58");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=84.11,2.97");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=62.80,51.99");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=104.95,142.22");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=77.75,35.42");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=206.96,31.44");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=239.67,130.62");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=169.65,98.89");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=163.56,223.34");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=107.01,170.98");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=128.35,271.92");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=237.37,216.70");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=143.72,84.13");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=118.43,198.31");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=156.75,84.26");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=84.01,62.40");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=213.76,98.29");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=7.12,95.97");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=107.14,66.69");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=121.63,32.93");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=38.46,196.82");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=71.38,112.02");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=79.67,17.35");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=196.75,138.10");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=153.22,35.37");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=260.40,101.07");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=171.70,65.07");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=161.04,204.67");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=232.78,231.18");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=167.08,35.90");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=125.16,11.13");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=7.76,58.90");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=135.29,177.71");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=130.83,141.32");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=24.29,214.89");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=9.33,84.81");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=79.55,167.25");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=1.77,42.59");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=218.47,85.16");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=138.27,18.03");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=134.98,51.74");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=173.28,25.77");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=221.51,105.85");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=135.75,150.46");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=197.88,112.88");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=191.57,229.88");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=203.99,51.21");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=136.81,96.21");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=153.63,131.72");
    }

}

