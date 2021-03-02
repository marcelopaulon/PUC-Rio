
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn8_8
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
        @display("p=147.34,114.89");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=111.67,77.94");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=115.49,110.02");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=129.55,102.18");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=124.85,46.95");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=85.77,46.11");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=31.94,58.54");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=18.90,65.10");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=13.98,6.81");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=24.13,5.10");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=64.81,31.92");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=70.07,71.72");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=44.61,97.21");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=76.69,113.70");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=141.14,189.99");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=145.20,177.88");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=77.86,175.08");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=96.47,181.59");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=168.23,167.08");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=111.21,236.97");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=106.30,215.34");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=81.07,218.38");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=60.27,181.18");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=39.32,241.91");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=91.23,117.83");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=183.33,41.94");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=58.24,119.51");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=145.16,81.99");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=71.59,50.27");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=119.40,131.22");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=3.52,97.63");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=7.85,144.23");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=22.99,87.65");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=0.84,38.96");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=89.50,59.18");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=128.77,19.15");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=25.47,34.21");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=48.98,64.85");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=96.74,159.88");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=125.70,140.40");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=124.56,182.37");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=110.09,162.67");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=134.27,116.19");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=230.09,160.81");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=139.57,248.44");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=30.33,280.32");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=176.91,215.64");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=89.81,270.41");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=60.66,325.94");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=177.56,159.70");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=160.54,112.26");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=91.72,128.97");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=29.46,128.54");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=75.63,34.56");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=43.32,37.47");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=68.15,61.06");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=85.01,7.57");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=113.43,55.65");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=52.78,1.36");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=33.44,11.64");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=38.23,25.43");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=113.56,43.42");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=66.38,151.19");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=11.51,125.33");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=209.38,219.72");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=66.66,219.84");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=30.97,140.56");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=105.39,189.31");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=187.50,202.81");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=127.19,314.99");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=30.24,151.86");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=93.52,259.45");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=88.56,90.62");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=97.88,304.47");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=78.49,143.29");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=149.40,140.00");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=96.02,45.44");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=119.30,100.00");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=142.96,66.99");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=157.40,23.91");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=3.51,20.17");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=96.27,33.56");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=47.00,84.47");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=52.13,51.50");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=23.35,47.57");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=63.72,43.00");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=164.04,82.79");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=81.13,25.25");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=13.24,76.63");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=141.25,202.31");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=186.65,236.38");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=99.76,230.24");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=129.22,169.15");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=170.47,91.59");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=23.61,266.88");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=30.41,187.56");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=108.28,248.84");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=17.43,193.08");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=62.39,238.85");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=47.43,161.47");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=176.22,125.21");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=200.28,74.80");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=166.09,136.83");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=209.77,87.70");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=151.96,72.89");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=106.44,3.29");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=61.09,17.94");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=8.04,107.89");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=11.74,37.65");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=34.42,0.25");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=49.14,112.29");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=143.37,8.39");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=46.35,196.74");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=80.87,103.69");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=195.48,146.20");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=145.18,164.39");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=17.31,137.70");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=163.27,178.07");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=230.55,144.91");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=81.36,241.02");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=155.83,288.65");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=167.67,205.67");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=79.71,274.63");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=92.93,283.87");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=134.61,55.94");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=81.23,156.47");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=74.75,127.39");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=48.78,140.78");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=189.41,60.73");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=129.91,76.65");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=60.26,85.48");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=77.36,92.44");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=100.87,70.17");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=15.11,27.27");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=0.36,53.09");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=103.36,18.00");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=22.98,100.60");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=38.29,117.55");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=26.10,178.36");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=192.59,184.92");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=107.31,143.80");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=63.82,273.32");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=10.71,170.04");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=206.43,145.34");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=114.81,275.33");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=139.21,220.48");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=75.73,202.45");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=60.25,199.96");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=37.99,266.90");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=28.57,165.97");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=136.58,135.76");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=167.37,38.10");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=211.10,115.78");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=120.80,84.66");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=147.91,57.42");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=137.44,89.99");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=68.49,3.49");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=60.28,107.61");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=5.20,1.68");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=49.64,23.80");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=120.90,67.00");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=162.95,70.78");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=26.61,110.90");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=123.24,29.54");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=164.69,259.68");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=130.11,126.61");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=95.82,211.04");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=29.88,227.53");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=188.73,92.61");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=104.92,281.11");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=105.49,205.16");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=35.62,201.78");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=149.05,210.86");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=50.34,265.76");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=42.53,180.08");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=155.85,38.16");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=182.40,83.12");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=95.64,197.71");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=72.14,82.14");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=171.54,103.23");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=137.09,0.56");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=90.33,75.85");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=44.24,74.33");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=3.47,66.32");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=122.04,0.56");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=154.76,6.89");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=27.18,71.64");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=63.29,137.82");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=103.39,118.32");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=219.99,224.86");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=197.32,218.62");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=130.28,231.30");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=79.94,253.61");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=219.69,168.65");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=138.81,325.59");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=201.09,243.51");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=40.04,307.60");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=21.70,120.30");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=1.14,167.02");
    }

}

