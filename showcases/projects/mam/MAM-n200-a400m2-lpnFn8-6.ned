
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn8-6
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
        @display("p=230.00,267.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=260.38,218.64");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=284.48,182.53");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=260.66,170.97");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=207.29,232.90");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=182.86,184.29");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=123.24,197.68");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=154.48,140.16");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=79.96,92.24");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=32.68,158.19");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=36.25,114.09");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=58.62,134.50");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=48.91,123.56");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=99.60,154.83");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=110.02,162.80");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=35.37,222.70");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=40.46,232.41");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=85.74,246.38");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=108.84,228.09");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=107.08,175.49");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=89.83,100.71");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=147.97,49.06");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=164.02,69.97");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=140.66,14.55");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=158.92,43.63");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=153.24,270.79");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=242.18,268.79");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=337.17,139.67");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=305.49,247.48");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=293.93,266.29");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=175.01,123.67");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=116.09,263.23");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=196.31,72.93");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=72.52,84.19");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=56.14,236.16");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=61.12,42.48");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=64.31,114.51");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=108.66,86.91");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=126.63,223.14");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=88.30,200.62");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=16.55,215.08");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=38.03,189.58");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=152.48,305.02");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=65.69,269.07");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=94.73,208.86");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=82.10,191.53");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=197.09,40.20");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=213.24,76.92");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=223.25,10.39");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=105.75,69.18");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=201.55,244.27");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=216.91,146.99");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=311.29,272.13");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=334.22,121.34");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=250.54,253.85");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=103.38,138.98");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=184.97,242.94");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=165.07,144.47");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=132.05,162.57");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=36.93,148.91");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=20.31,73.72");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=125.49,170.35");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=8.13,145.25");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=70.64,137.59");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=135.13,180.93");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=17.45,227.81");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=47.58,245.55");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=139.66,329.76");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=121.06,180.38");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=137.67,137.75");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=78.84,105.81");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=198.95,121.34");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=164.56,169.91");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=123.01,19.74");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=68.85,18.00");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=224.47,288.19");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=275.28,195.41");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=258.75,230.00");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=294.22,151.63");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=236.39,238.58");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=174.57,242.88");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=107.42,239.06");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=205.25,166.02");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=122.24,43.89");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=61.35,170.89");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=38.80,135.91");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=74.95,214.09");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=56.77,59.46");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=90.42,183.37");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=95.70,167.53");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=11.37,295.30");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=24.52,205.62");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=94.20,301.82");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=95.72,244.71");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=82.60,228.92");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=140.70,101.18");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=91.25,51.87");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=261.04,76.95");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=152.97,26.18");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=212.63,7.42");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=293.10,306.24");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=247.98,223.49");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=320.10,184.32");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=280.02,166.42");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=228.22,224.01");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=181.58,146.80");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=167.21,188.10");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=93.31,136.17");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=104.17,98.06");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=76.24,118.98");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=23.68,98.93");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=47.94,155.09");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=123.04,153.65");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=94.16,121.96");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=25.10,137.69");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=48.20,265.76");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=98.84,285.97");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=92.03,341.44");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=69.71,179.90");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=111.81,129.92");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=3.86,58.80");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=193.76,25.13");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=237.14,81.85");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=130.06,5.76");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=73.35,7.00");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=208.40,215.72");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=191.36,252.16");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=222.94,176.26");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=315.69,202.53");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=210.85,254.62");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=155.42,230.69");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=71.76,249.13");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=70.43,157.70");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=44.87,62.93");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=36.41,93.58");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=8.18,86.82");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=80.41,158.47");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=111.21,51.63");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=77.47,168.65");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=58.70,154.12");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=54.46,223.35");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=10.19,180.81");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=133.26,249.54");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=111.17,217.15");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=197.98,142.37");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=54.26,69.29");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=204.06,104.71");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=174.63,62.68");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=73.14,28.43");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=114.89,35.02");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=160.08,247.00");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=272.91,248.67");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=355.50,190.28");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=195.83,201.35");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=274.40,176.62");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=142.90,153.35");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=65.07,207.03");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=192.38,169.64");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=30.88,80.38");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=20.46,87.93");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=50.53,106.98");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=75.95,53.53");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=41.13,103.36");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=47.89,181.81");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=148.11,188.26");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=12.89,196.73");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=87.09,289.14");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=46.79,202.80");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=144.74,242.34");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=71.28,227.76");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=151.03,67.21");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=215.38,18.38");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=159.96,114.63");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=135.66,80.41");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=228.20,20.89");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=164.54,282.17");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=250.17,281.08");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=227.77,205.60");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=213.51,181.32");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=196.52,281.85");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=174.09,224.71");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=109.54,200.84");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=143.89,202.33");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=86.37,84.45");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=21.51,152.82");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=41.85,37.58");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=125.41,122.82");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=3.21,133.19");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=175.97,161.39");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=186.97,157.48");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=95.45,271.20");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=46.67,286.19");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=25.13,262.96");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=139.64,282.79");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=64.36,196.11");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=119.71,84.78");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=88.09,11.88");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=183.93,66.46");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=49.00,20.62");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=239.64,20.80");
    }

}

