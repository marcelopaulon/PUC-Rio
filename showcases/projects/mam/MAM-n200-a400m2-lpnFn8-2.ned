
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn8-2
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
        @display("p=197.00,183.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=233.01,230.37");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=298.73,248.50");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=254.04,240.14");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=221.03,161.50");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=228.69,78.67");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=197.88,1.34");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=203.35,12.23");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=212.55,61.30");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=172.39,88.24");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=119.89,13.04");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=190.57,18.65");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=199.09,30.57");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=192.41,74.46");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=199.90,88.28");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=251.30,16.14");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=307.14,48.34");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=267.77,74.33");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=235.49,49.80");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=177.50,6.10");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=143.75,54.98");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=73.05,116.85");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=81.30,144.95");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=102.60,141.70");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=138.42,167.12");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=177.65,146.53");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=279.60,142.54");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=282.22,227.39");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=260.74,255.01");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=287.82,171.46");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=204.72,171.86");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=200.09,58.78");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=163.93,29.13");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=136.32,12.62");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=175.83,107.86");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=64.69,87.96");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=120.19,86.33");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=140.13,27.54");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=150.27,88.61");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=148.33,8.19");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=252.36,36.12");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=262.49,48.36");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=317.62,148.65");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=246.49,100.02");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=105.89,8.04");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=175.53,123.60");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=41.54,69.04");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=32.90,106.62");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=99.18,164.55");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=85.59,167.30");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=191.02,104.03");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=228.83,148.77");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=297.45,263.37");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=251.61,264.46");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=301.35,214.83");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=281.83,64.59");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=275.24,48.44");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=155.13,38.66");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=222.90,64.18");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=179.59,25.19");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=104.29,20.67");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=226.19,6.50");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=214.23,21.46");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=178.58,72.68");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=243.22,79.06");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=250.35,3.18");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=353.51,18.81");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=282.32,93.95");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=220.78,84.82");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=157.64,64.52");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=128.56,79.07");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=20.11,104.35");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=48.65,117.93");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=72.29,218.73");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=58.93,141.40");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=192.33,128.85");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=219.98,203.17");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=285.42,259.21");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=263.71,224.61");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=289.67,148.28");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=251.63,111.80");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=223.50,27.30");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=270.48,1.27");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=305.05,31.21");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=257.40,127.64");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=80.41,20.91");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=187.46,42.26");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=165.42,75.11");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=149.97,101.79");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=189.99,52.98");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=326.91,29.32");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=372.67,62.24");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=335.74,129.10");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=231.94,97.02");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=178.07,58.44");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=201.90,105.45");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=37.71,80.65");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=91.93,89.80");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=125.78,134.76");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=107.36,188.39");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=169.33,140.33");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=318.77,205.17");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=324.48,194.28");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=217.18,287.10");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=189.14,243.99");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=200.20,148.02");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=154.61,53.10");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=148.07,71.15");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=204.12,43.18");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=160.48,89.49");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=84.42,38.69");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=123.03,53.06");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=264.99,27.46");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=148.66,122.35");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=119.76,101.21");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=242.71,28.35");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=334.26,72.56");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=277.42,106.93");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=287.05,116.32");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=107.36,46.68");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=68.92,76.51");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=112.77,135.69");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=37.60,139.47");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=52.36,203.68");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=157.43,135.68");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=155.27,172.88");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=272.55,248.03");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=276.28,335.09");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=255.21,275.32");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=257.04,96.96");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=255.79,73.84");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=149.37,23.37");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=127.96,43.24");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=230.07,111.79");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=218.96,46.82");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=55.92,0.47");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=218.09,102.97");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=170.99,51.10");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=218.45,121.27");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=210.07,83.51");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=284.73,80.67");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=355.64,31.31");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=237.65,119.55");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=287.22,16.79");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=137.67,40.32");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=183.25,96.43");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=11.62,87.31");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=67.94,152.19");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=70.93,132.11");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=100.33,235.64");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=194.52,197.25");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=231.13,256.91");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=337.15,230.99");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=232.49,285.42");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=156.58,185.65");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=165.16,122.52");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=259.86,9.43");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=210.11,1.65");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=248.23,151.30");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=118.99,161.48");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=119.53,24.61");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=110.80,65.60");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=160.09,14.06");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=270.84,60.49");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=138.58,121.96");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=303.47,0.92");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=336.03,23.25");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=247.10,132.04");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=216.45,36.84");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=90.43,21.26");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=111.31,80.51");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=48.47,153.37");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=50.49,85.46");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=95.40,149.99");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=110.15,220.25");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=191.04,208.73");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=206.08,222.66");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=228.28,267.44");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=283.85,303.38");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=164.13,206.40");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=248.13,52.46");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=186.61,0.29");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=296.99,25.12");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=236.51,142.29");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=167.66,97.56");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=71.19,37.47");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=199.10,116.40");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=134.31,65.43");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=135.47,89.37");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=204.08,73.89");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=315.06,68.06");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=335.54,59.20");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=274.70,116.74");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=324.27,12.88");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=85.51,1.74");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=57.40,43.42");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=70.57,173.46");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=11.83,156.12");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=65.20,233.22");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=210.28,192.11");
    }

}

