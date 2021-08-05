
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn8_8
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=64.24,99.33");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=35.53,150.90");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=89.47,153.37");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=60.00,142.60");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=37.53,132.21");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=85.28,119.12");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=61.56,128.42");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=42.03,119.26");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=79.93,63.48");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=160.03,68.45");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=184.81,49.22");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=173.55,6.02");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=141.95,1.53");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=142.43,39.79");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=155.35,77.33");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=156.50,89.40");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=113.24,78.89");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=194.75,74.54");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=229.94,89.04");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=222.95,128.22");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=237.51,63.18");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=303.91,80.08");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=284.72,99.26");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=255.47,12.11");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=133.32,119.72");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=5.98,134.75");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=61.28,68.34");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=81.34,161.33");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=48.22,90.39");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=50.47,125.92");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=53.95,56.37");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=33.97,160.88");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=79.28,137.64");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=66.48,47.16");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=170.01,70.03");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=170.44,54.88");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=223.71,21.71");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=214.92,2.22");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=130.60,34.27");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=76.12,33.24");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=134.32,81.51");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=119.56,104.05");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=200.15,36.34");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=234.64,50.36");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=177.79,82.45");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=222.84,73.50");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=322.34,24.31");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=281.75,151.16");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=199.38,6.45");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=138.70,108.22");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=1.72,160.03");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=107.35,208.15");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=132.13,147.11");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=103.33,80.82");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=92.44,195.91");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=92.79,92.07");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=68.00,77.35");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=41.50,24.72");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=126.17,89.05");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=141.46,51.36");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=235.03,18.08");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=193.76,55.73");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=127.13,49.03");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=94.29,6.93");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=224.31,6.34");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=190.21,12.74");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=82.55,50.16");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=134.34,67.70");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=243.09,95.75");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=245.08,135.87");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=228.03,102.19");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=349.75,81.63");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=320.03,192.26");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=278.38,42.62");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=160.19,46.70");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=110.34,19.89");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=76.31,103.92");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=90.52,131.57");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=6.03,79.88");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=103.08,64.52");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=103.46,144.55");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=63.26,152.41");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=49.39,103.25");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=155.41,106.06");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=90.18,38.48");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=186.91,109.99");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=183.57,1.31");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=61.67,7.54");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=166.01,127.74");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=126.36,133.03");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=177.74,95.23");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=112.04,92.03");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=268.95,38.15");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=204.70,53.35");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=134.92,174.19");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=206.16,71.17");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=321.81,55.67");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=289.03,121.84");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=280.50,16.67");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=119.77,115.27");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=91.45,107.04");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=38.30,208.64");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=139.06,130.76");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=82.17,89.47");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=37.41,82.88");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=173.36,146.74");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=75.86,186.24");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=68.52,111.06");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=78.03,77.63");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=197.14,102.40");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=138.02,12.47");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=138.74,28.07");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=90.84,80.97");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=159.40,7.08");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=197.03,150.37");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=144.01,87.17");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=46.73,138.22");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=228.83,143.94");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=174.24,107.47");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=178.81,118.96");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=246.42,46.73");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=322.28,110.65");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=306.84,13.98");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=282.56,66.51");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=78.39,10.54");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=17.39,100.58");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=39.32,72.67");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=14.96,171.44");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=78.36,220.32");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=37.35,221.82");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=29.15,109.30");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=48.81,187.97");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=55.12,174.29");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=68.90,87.92");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=224.25,48.23");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=171.92,22.41");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=144.28,65.76");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=121.56,8.47");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=104.94,47.44");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=101.78,120.84");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=116.45,36.71");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=49.88,67.83");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=163.61,141.82");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=272.17,119.16");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=263.94,102.25");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=250.67,81.85");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=377.98,131.10");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=310.09,88.74");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=304.83,29.92");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=17.15,78.10");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=35.99,38.69");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=72.60,176.12");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=14.01,141.79");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=26.96,131.43");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=27.07,225.23");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=75.47,207.35");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=37.50,179.83");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=47.05,47.16");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=72.91,129.85");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=150.19,132.21");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=207.38,26.70");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=186.20,25.53");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=151.28,26.91");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=85.80,28.22");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=206.30,112.21");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=237.86,110.98");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=67.17,23.02");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=220.83,38.15");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=131.33,100.30");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=148.30,96.75");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=246.02,69.77");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=362.63,153.07");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=321.55,181.78");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=289.60,79.39");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=159.80,32.86");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=162.23,113.58");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=52.26,152.20");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=8.09,197.99");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=12.15,87.89");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=43.99,166.40");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=56.30,81.45");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=119.70,170.46");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=12.71,52.42");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=17.39,114.94");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=113.18,60.64");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=155.04,55.61");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=197.10,25.48");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=222.59,60.35");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=97.77,18.73");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=192.50,121.55");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=118.87,149.07");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=108.75,172.37");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=196.02,89.52");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=245.81,30.16");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=227.89,118.61");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=263.18,63.36");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=344.65,126.60");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=210.25,90.75");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=256.36,24.65");
    }

}

