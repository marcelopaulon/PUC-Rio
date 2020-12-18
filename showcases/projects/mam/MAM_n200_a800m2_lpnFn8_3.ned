
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn8_3
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=50.63,72.66");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=75.58,21.88");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=77.09,36.77");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=59.53,30.30");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=53.99,39.20");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=59.45,48.19");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=106.68,79.92");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=38.86,18.12");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=78.23,48.87");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=118.85,11.61");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=193.19,62.34");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=146.36,56.21");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=184.65,22.89");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=187.55,36.87");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=200.51,1.01");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=174.41,34.22");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=226.19,37.38");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=267.90,25.66");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=239.14,71.11");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=256.95,147.28");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=218.92,206.37");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=299.60,202.84");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=350.61,155.12");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=320.61,189.21");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=152.26,79.40");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=61.08,100.65");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=68.19,2.93");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=111.29,103.88");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=96.10,82.31");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=20.19,15.47");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=26.01,44.99");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=93.97,12.42");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=29.51,62.47");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=97.34,49.67");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=120.61,36.88");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=218.64,3.66");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=172.28,71.28");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=159.34,60.64");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=205.56,24.61");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=170.89,9.25");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=183.36,94.87");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=272.32,81.41");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=284.81,49.52");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=246.49,116.15");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=202.73,147.20");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=167.30,218.54");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=374.22,148.29");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=313.45,175.18");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=229.48,185.91");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=169.07,165.13");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=13.87,63.08");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=27.67,74.35");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=6.50,44.30");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=74.60,107.92");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=22.38,55.29");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=40.10,49.29");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=105.54,19.05");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=63.08,73.22");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=84.84,66.32");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=187.76,4.74");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=248.88,17.30");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=118.22,74.67");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=159.85,16.50");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=275.76,13.55");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=236.77,13.57");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=261.78,58.58");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=229.11,23.50");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=323.70,66.11");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=295.95,78.00");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=256.58,239.41");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=200.10,234.32");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=359.80,190.05");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=340.43,151.50");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=408.39,234.69");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=69.98,130.09");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=67.24,167.09");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=50.31,53.87");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=81.71,87.34");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=129.18,19.72");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=87.18,53.84");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=34.76,100.08");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=136.38,45.26");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=40.34,36.05");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=54.74,2.18");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=58.07,12.81");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=249.14,55.28");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=114.39,51.94");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=174.67,60.20");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=186.65,111.28");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=201.73,39.63");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=214.80,67.11");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=236.42,40.40");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=322.18,45.13");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=224.28,61.67");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=272.80,168.14");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=213.92,159.07");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=370.92,265.62");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=383.59,143.85");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=367.85,205.43");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=124.38,60.50");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=41.04,64.77");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=62.96,111.69");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=133.88,81.57");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=121.11,108.91");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=87.09,106.77");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=121.29,124.89");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=71.17,117.56");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=35.97,3.59");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=110.80,33.37");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=138.93,9.07");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=165.12,45.15");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=171.07,129.04");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=235.80,83.82");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=214.38,40.06");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=208.56,98.75");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=177.20,50.28");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=286.06,93.19");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=265.81,41.18");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=202.81,53.54");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=300.47,131.31");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=271.47,149.08");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=313.71,225.40");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=414.80,147.29");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=336.47,104.21");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=75.80,97.36");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=94.43,29.31");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=160.31,5.96");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=10.03,85.44");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=145.84,27.76");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=48.64,30.40");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=29.44,86.28");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=52.53,131.95");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=75.20,77.22");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=150.74,37.06");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=132.37,34.99");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=275.74,35.92");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=142.22,107.31");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=170.73,117.01");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=251.91,74.11");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=233.75,55.03");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=141.30,66.86");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=303.39,42.26");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=300.99,16.73");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=274.94,135.77");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=262.77,125.05");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=226.50,242.12");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=280.79,174.91");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=269.50,191.02");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=324.05,126.62");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=57.87,181.93");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=107.97,122.37");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=80.90,120.81");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=115.23,23.52");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=68.34,57.74");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=52.63,91.71");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=96.90,133.64");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=81.76,170.50");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=39.20,79.15");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=110.18,1.84");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=81.35,11.07");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=227.19,76.79");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=164.83,90.51");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=177.09,0.02");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=175.54,18.73");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=188.89,51.95");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=187.55,77.26");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=203.66,116.02");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=328.33,83.06");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=308.21,63.64");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=250.55,88.02");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=212.15,196.01");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=217.61,222.74");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=352.70,86.45");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=327.64,157.26");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=153.78,91.92");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=28.96,30.09");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=68.97,42.80");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=97.42,0.85");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=48.34,101.29");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=116.05,91.82");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=90.77,125.47");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=85.82,149.42");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=8.81,16.58");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=114.46,138.14");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=216.67,25.95");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=198.80,84.31");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=105.57,61.69");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=196.36,14.15");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=259.41,14.90");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=245.57,6.17");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=159.97,28.94");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=224.20,47.83");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=256.27,33.10");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=224.93,110.55");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=244.45,144.21");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=244.58,206.06");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=358.56,140.87");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=390.53,165.84");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=338.74,165.13");
    }

}

