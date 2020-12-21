
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn4_0
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
        @display("p=121.85,121.03");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=162.74,33.12");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=227.10,16.50");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=209.10,13.85");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=180.33,11.26");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=201.79,81.39");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=209.75,110.90");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=254.87,84.13");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=192.58,156.24");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=161.73,197.96");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=84.78,196.66");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=112.31,162.75");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=74.43,165.69");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=62.18,226.64");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=83.13,284.50");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=72.25,274.27");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=128.18,271.24");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=136.02,183.45");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=83.82,155.75");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=34.81,136.63");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=118.45,136.40");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=160.35,163.10");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=126.02,231.99");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=125.66,220.78");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=196.08,233.19");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=233.74,238.42");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=145.67,205.39");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=207.95,229.26");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=159.30,250.10");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=142.11,241.41");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=135.48,141.70");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=170.40,79.15");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=258.81,38.11");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=191.90,46.28");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=198.61,96.30");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=134.97,123.25");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=147.22,27.32");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=179.34,48.67");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=149.78,76.23");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=149.41,134.45");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=56.26,139.99");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=90.03,134.55");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=86.31,118.31");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=39.90,108.40");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=49.76,84.70");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=110.44,50.03");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=66.30,18.32");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=81.61,101.72");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=103.73,37.61");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=47.51,53.00");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=112.05,62.75");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=248.93,17.90");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=307.61,18.94");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=199.19,4.45");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=193.84,22.50");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=160.54,23.37");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=140.51,113.95");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=312.27,103.44");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=205.36,171.36");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=185.52,142.35");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=93.87,278.23");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=147.71,99.29");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=78.18,237.80");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=56.79,241.93");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=97.09,320.65");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=154.36,230.30");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=139.65,291.52");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=173.70,223.37");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=94.90,149.90");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=57.53,164.93");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=100.27,185.50");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=165.43,233.44");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=105.61,247.58");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=126.49,193.05");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=218.18,191.64");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=222.05,309.09");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=121.57,204.00");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=155.52,218.65");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=189.44,249.30");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=230.03,221.54");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=51.67,186.19");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=247.89,35.41");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=355.94,41.82");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=129.46,108.99");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=181.96,114.89");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=158.11,175.11");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=167.32,1.75");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=206.02,69.04");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=131.28,78.80");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=170.78,203.24");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=17.31,74.21");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=78.45,213.53");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=26.52,176.77");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=70.34,189.58");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=0.29,83.54");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=90.96,68.51");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=123.90,5.54");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=72.12,88.61");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=78.03,0.39");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=83.01,48.52");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=151.05,188.87");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=173.54,33.43");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=224.41,6.04");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=228.48,38.36");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=217.58,71.81");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=245.16,119.62");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=193.69,109.62");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=275.88,63.93");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=181.17,158.04");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=161.73,273.20");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=61.39,205.75");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=120.16,75.30");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=61.94,131.15");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=91.83,295.90");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=140.11,276.14");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=56.83,270.21");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=211.69,239.99");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=203.57,198.97");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=105.87,176.51");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=40.93,72.20");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=160.16,103.75");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=243.52,135.34");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=59.19,291.30");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=201.56,282.49");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=256.32,235.66");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=271.55,278.00");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=215.36,205.06");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=245.93,215.26");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=193.39,293.83");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=72.38,290.58");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=92.28,54.86");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=160.51,59.45");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=310.07,59.20");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=153.30,52.46");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=189.20,129.57");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=107.77,112.23");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=118.99,41.39");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=221.40,48.64");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=73.83,41.56");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=111.95,123.66");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=27.69,98.18");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=43.80,195.32");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=6.47,143.16");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=79.43,80.60");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=33.89,59.34");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=142.13,16.49");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=53.39,1.26");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=63.56,69.29");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=45.55,23.52");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=92.92,4.75");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=126.57,157.17");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=89.20,37.45");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=258.31,61.37");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=121.38,54.26");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=155.96,11.13");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=209.82,159.25");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=215.82,83.87");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=275.47,174.49");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=184.37,212.83");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=122.00,171.88");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=85.47,170.01");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=108.59,139.89");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=132.26,204.31");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=89.18,227.82");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=41.09,250.29");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=137.04,307.77");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=189.51,280.77");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=74.40,251.01");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=38.73,87.11");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=11.24,85.15");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=199.56,145.07");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=174.26,167.60");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=164.82,143.33");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=164.42,287.95");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=193.04,222.94");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=265.31,315.02");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=234.24,203.39");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=229.45,252.56");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=115.37,255.30");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=199.61,242.79");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=107.65,199.69");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=111.93,102.31");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=315.90,81.10");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=183.56,91.97");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=169.18,116.83");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=159.47,121.85");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=132.97,32.97");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=194.34,61.62");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=170.10,128.94");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=99.99,166.28");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=0.65,110.54");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=75.49,140.99");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=106.52,80.19");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=31.57,30.82");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=7.38,167.18");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=203.82,51.47");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=69.46,28.50");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=72.50,122.07");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=145.41,39.29");
    }

}

