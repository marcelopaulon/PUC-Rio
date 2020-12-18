
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn8_0
{
    parameters:
        @display("bgb=400,400;bgg=100,1,grey95;bgu=m");
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
        @display("p=119.24,103.73");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=49.28,154.95");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=43.04,145.83");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=33.58,139.76");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=2.36,90.12");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=10.18,97.27");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=41.03,127.33");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=69.25,45.61");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=138.66,62.11");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=149.49,77.91");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=141.12,88.64");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=138.49,21.82");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=132.77,6.58");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=130.29,36.49");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=105.22,8.29");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=100.86,73.38");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=108.80,140.79");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=180.02,86.01");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=190.65,27.94");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=15.94,125.04");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=107.95,151.54");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=131.80,130.58");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=56.10,72.88");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=40.10,21.33");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=71.46,91.07");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=139.26,121.35");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=79.94,207.85");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=118.04,189.67");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=27.33,110.09");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=19.52,68.24");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=106.17,85.73");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=5.09,73.32");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=60.49,22.82");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=192.86,114.69");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=201.96,61.15");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=132.05,156.18");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=117.97,77.25");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=94.11,47.62");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=160.69,38.84");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=126.99,16.59");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=83.53,38.97");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=122.03,143.38");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=149.83,52.97");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=201.57,13.78");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=59.23,196.70");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=84.20,246.44");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=153.63,130.83");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=9.82,5.20");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=106.86,33.47");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=83.44,145.29");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=102.22,126.23");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=76.79,159.08");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=80.75,95.93");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=9.89,218.78");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=0.71,11.37");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=0.37,101.23");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=12.38,190.57");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=25.82,9.12");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=147.44,6.64");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=219.45,92.40");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=168.38,93.62");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=118.29,6.18");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=50.51,55.58");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=167.86,66.59");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=59.46,6.61");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=44.49,74.31");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=91.81,134.63");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=145.55,109.04");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=170.98,28.62");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=3.46,118.60");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=165.76,132.24");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=193.91,97.80");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=48.50,87.10");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=35.75,31.56");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=141.89,181.46");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=63.88,113.18");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=68.22,234.40");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=118.20,117.15");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=1.93,58.86");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=25.55,177.14");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=72.88,63.12");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=78.17,50.86");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=72.69,74.01");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=117.52,55.98");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=207.62,38.53");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=60.24,98.56");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=106.84,21.53");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=187.87,50.86");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=182.35,0.80");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=95.81,30.07");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=90.78,105.26");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=78.96,125.94");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=178.15,11.13");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=204.63,51.33");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=87.89,78.17");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=67.35,207.50");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=55.30,138.93");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=32.30,46.88");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=79.06,2.71");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=124.27,94.55");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=216.29,118.31");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=92.53,150.70");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=53.86,232.90");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=51.18,210.60");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=25.97,146.89");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=13.08,56.51");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=93.03,89.24");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=35.07,69.48");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=237.50,47.09");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=183.43,67.86");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=141.79,43.92");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=55.88,33.35");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=166.66,19.32");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=129.79,82.74");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=101.69,55.88");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=51.94,108.07");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=106.91,200.96");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=215.05,70.38");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=201.49,73.44");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=7.79,47.75");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=191.50,135.34");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=163.93,50.26");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=131.41,72.76");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=27.96,80.57");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=28.40,57.77");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=38.22,159.79");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=36.56,219.64");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=38.62,106.26");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=17.00,140.62");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=45.08,97.61");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=3.95,134.85");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=128.32,110.46");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=80.78,14.29");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=85.56,115.37");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=205.41,113.27");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=129.74,172.06");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=178.00,100.00");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=89.49,2.13");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=139.55,100.79");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=144.85,33.89");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=85.26,26.41");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=168.12,142.84");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=236.44,126.14");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=233.46,35.04");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=1.04,190.52");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=122.73,164.61");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=164.09,161.13");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=16.49,38.07");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=43.69,3.79");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=80.94,185.61");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=199.58,85.25");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=25.84,245.00");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=29.95,193.11");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=13.33,110.33");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=32.14,91.85");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=1.67,35.21");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=43.73,198.31");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=155.60,67.63");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=171.62,122.92");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=246.54,83.72");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=163.94,5.99");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=47.69,39.49");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=148.41,16.89");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=160.10,84.94");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=68.91,16.24");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=111.31,69.75");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=118.75,127.73");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=239.88,17.93");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=266.03,35.99");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=26.35,125.87");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=153.34,147.90");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=187.03,160.34");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=61.35,156.69");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=130.48,48.70");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=157.10,110.97");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=73.44,117.37");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=66.73,172.47");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=18.27,201.04");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=113.54,171.17");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=34.14,170.62");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=10.79,149.64");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=68.20,144.87");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=62.71,59.35");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=180.55,34.13");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=83.93,68.60");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=136.27,141.06");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=172.81,55.98");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=217.86,16.42");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=196.13,43.94");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=95.08,14.51");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=146.38,158.20");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=62.23,130.69");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=210.99,101.74");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=231.05,1.77");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=15.88,166.13");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=148.97,168.04");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=173.30,172.48");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=26.27,25.93");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=19.55,88.18");
    }

}

