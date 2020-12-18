
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn4-2
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
        @display("p=414.00,302.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=469.17,268.21");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=447.51,277.91");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=397.93,241.20");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=445.30,293.73");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=401.05,297.98");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=353.73,218.26");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=257.21,195.75");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=294.02,200.97");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=280.28,108.24");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=267.64,153.60");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=217.90,173.10");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=203.59,171.67");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=153.54,144.24");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=226.76,90.66");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=179.49,75.43");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=162.63,150.37");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=135.56,124.58");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=194.74,70.45");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=209.01,53.64");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=176.92,13.88");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=107.08,64.91");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=71.30,19.07");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=77.75,2.94");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=73.12,81.99");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=20.57,38.96");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=7.36,36.16");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=12.05,59.01");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=32.00,50.50");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=7.14,104.66");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=10.89,94.79");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=31.20,40.07");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=42.92,50.04");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=4.81,75.54");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=44.77,69.48");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=103.41,103.05");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=64.47,38.12");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=139.88,55.30");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=24.09,67.72");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=56.93,21.44");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=55.25,51.89");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=104.77,12.30");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=102.60,0.89");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=185.03,32.34");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=147.81,74.40");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=122.10,62.30");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=98.18,140.74");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=63.29,174.75");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=63.87,108.55");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=99.32,197.06");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=461.90,349.85");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=475.74,280.11");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=463.81,288.40");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=385.83,226.57");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=531.28,281.22");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=364.17,373.32");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=380.57,196.54");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=250.31,290.03");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=273.87,208.53");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=269.49,54.99");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=279.96,143.21");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=178.99,226.16");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=231.09,144.31");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=184.87,128.16");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=299.84,150.33");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=187.49,57.10");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=179.08,143.37");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=39.12,130.04");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=204.94,75.28");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=219.41,67.56");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=169.41,57.12");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=123.21,120.79");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=46.48,16.64");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=46.35,3.94");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=115.20,163.26");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=48.65,84.52");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=88.61,55.70");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=68.35,66.41");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=58.68,78.20");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=49.01,138.12");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=19.53,115.76");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=7.10,16.80");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=36.27,2.33");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=80.91,125.68");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=63.85,98.03");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=101.13,81.04");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=53.74,34.16");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=150.04,60.41");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=56.95,64.50");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=80.21,23.97");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=131.76,34.82");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=125.20,1.74");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=115.68,46.23");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=130.81,107.18");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=187.99,88.94");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=84.34,98.05");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=91.21,121.50");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=75.29,112.56");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=84.01,77.49");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=89.68,183.22");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=504.91,263.49");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=513.60,350.07");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=368.58,313.74");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=422.97,251.89");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=412.23,270.40");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=331.29,260.87");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=373.80,240.78");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=276.48,166.20");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=233.66,190.09");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=232.15,128.42");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=290.56,100.91");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=239.65,158.20");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=138.06,139.22");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=198.76,103.94");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=224.37,43.30");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=224.79,103.19");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=144.48,243.14");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=167.01,46.71");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=233.54,57.73");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=269.59,109.18");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=249.71,24.78");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=111.18,75.86");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=92.60,29.20");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=29.48,28.77");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=65.36,49.35");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=31.49,95.52");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=16.48,48.77");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=35.78,114.84");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=24.76,142.89");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=46.28,182.82");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=109.51,92.22");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=43.72,31.41");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=7.90,119.80");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=32.24,76.29");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=59.50,131.95");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=76.28,49.62");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=53.12,102.95");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=139.48,83.95");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=10.63,139.71");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=130.34,51.42");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=18.99,26.09");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=126.90,97.93");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=109.56,21.50");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=272.09,43.54");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=200.90,144.37");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=160.14,94.32");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=109.84,206.97");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=78.02,235.87");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=81.33,142.26");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=100.76,222.19");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=410.06,257.08");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=389.88,313.70");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=474.58,190.16");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=456.03,222.36");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=448.45,391.71");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=377.16,283.34");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=401.50,205.45");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=240.41,274.27");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=314.14,163.00");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=326.80,191.97");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=288.93,169.35");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=259.39,208.64");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=185.21,175.18");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=162.02,115.78");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=157.86,81.34");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=158.07,126.86");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=239.69,118.43");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=109.46,151.93");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=205.01,121.26");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=229.46,68.79");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=192.08,15.12");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=157.87,8.69");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=88.23,4.25");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=66.59,9.04");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=52.02,166.94");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=15.55,11.26");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=94.11,43.51");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=34.83,143.14");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=2.49,51.39");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=22.41,84.66");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=35.50,156.66");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=0.25,2.00");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=0.51,89.27");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=20.71,159.78");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=107.58,40.26");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=160.69,170.67");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=58.97,89.06");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=137.13,19.68");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=46.58,118.44");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=29.36,105.97");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=141.88,96.00");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=123.71,86.66");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=95.53,17.33");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=165.69,34.06");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=154.22,105.80");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=92.07,86.21");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=61.23,228.80");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=9.68,204.17");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=113.12,56.41");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=99.80,155.86");
    }

}

