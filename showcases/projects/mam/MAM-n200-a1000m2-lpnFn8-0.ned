
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn8-0
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
        @display("p=126.00,150.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=135.60,92.44");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=67.27,81.89");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=100.39,85.28");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=87.91,165.83");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=209.15,131.71");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=113.28,152.18");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=125.94,101.40");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=86.96,116.49");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=44.88,128.64");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=55.73,154.89");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=80.22,250.75");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=61.34,260.02");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=92.03,273.93");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=123.32,253.60");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=83.47,280.21");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=42.46,240.96");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=106.92,228.21");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=56.16,300.39");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=68.29,241.51");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=91.24,126.45");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=55.35,83.62");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=74.76,126.99");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=12.86,153.94");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=112.36,79.09");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=143.69,164.50");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=109.04,12.28");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=77.06,94.70");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=21.62,139.07");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=104.38,159.30");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=208.12,103.33");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=173.71,84.16");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=128.00,73.58");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=46.47,69.15");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=38.86,184.29");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=125.34,205.53");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=126.09,278.50");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=101.31,287.03");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=155.98,207.48");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=115.40,170.52");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=111.03,299.08");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=32.43,200.11");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=112.27,130.39");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=36.43,322.51");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=15.69,229.83");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=56.79,165.27");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=46.56,50.27");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=132.59,170.85");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=33.15,155.73");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=84.44,55.86");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=168.53,161.63");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=191.60,89.10");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=90.34,106.40");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=35.51,80.03");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=156.40,168.16");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=227.45,136.54");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=169.31,128.19");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=66.37,95.42");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=153.78,89.44");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=44.23,155.64");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=47.26,224.14");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=19.80,265.35");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=104.55,182.35");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=109.80,315.38");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=141.04,279.52");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=84.62,345.87");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=60.61,288.10");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=188.78,176.21");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=48.36,365.08");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=5.30,218.01");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=119.84,63.70");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=58.11,54.42");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=109.05,46.41");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=23.34,125.61");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=87.31,25.82");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=163.92,92.66");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=137.89,36.41");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=23.48,102.72");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=101.62,119.06");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=55.68,208.31");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=227.79,58.65");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=183.84,166.18");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=134.57,62.77");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=123.29,140.20");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=4.63,190.53");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=70.24,203.50");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=152.87,182.93");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=132.66,238.22");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=127.08,326.88");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=218.86,257.90");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=39.26,275.50");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=70.26,169.58");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=81.66,205.79");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=56.85,332.28");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=135.41,207.33");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=156.69,140.15");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=140.99,133.46");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=60.45,133.94");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=95.63,138.20");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=96.29,67.05");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=165.82,198.48");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=214.61,86.68");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=15.20,109.07");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=193.64,60.04");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=145.80,107.50");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=232.92,154.98");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=91.53,212.55");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=138.04,150.99");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=87.33,196.89");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=45.49,141.63");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=59.91,179.57");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=148.11,195.98");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=78.05,327.21");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=74.62,265.78");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=178.54,286.72");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=134.89,249.51");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=93.51,188.34");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=176.10,266.81");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=111.09,263.60");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=18.25,292.36");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=188.36,129.30");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=35.90,97.26");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=64.04,109.70");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=29.96,178.20");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=121.44,27.86");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=207.85,141.97");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=203.65,113.11");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=36.05,64.75");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=36.56,39.14");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=77.94,189.14");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=245.27,151.00");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=97.98,169.68");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=155.72,102.58");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=120.83,196.14");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=18.19,179.61");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=48.70,193.82");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=71.33,228.87");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=27.09,309.92");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=154.84,317.27");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=127.68,268.34");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=74.38,368.88");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=19.05,219.43");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=153.11,221.26");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=11.95,310.48");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=3.84,174.01");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=159.04,57.72");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=17.71,86.99");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=167.94,116.27");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=28.92,210.31");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=171.14,62.45");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=166.84,230.15");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=160.12,80.04");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=22.24,47.01");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=125.58,50.27");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=172.60,171.55");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=222.11,122.12");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=199.48,199.31");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=147.36,174.52");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=2.39,158.92");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=82.08,137.56");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=12.55,126.39");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=166.76,246.01");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=11.13,274.17");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=114.68,273.15");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=163.42,285.17");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=90.38,329.36");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=57.39,230.51");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=51.98,276.56");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=40.88,287.22");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=85.45,225.73");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=95.57,152.78");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=52.94,97.00");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=91.71,96.39");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=42.58,171.34");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=103.31,33.54");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=180.81,145.27");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=156.47,42.77");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=82.33,41.71");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=96.93,17.09");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=131.93,183.12");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=275.45,125.70");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=80.24,177.71");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=201.05,156.67");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=143.97,50.20");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=47.04,114.83");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=9.41,142.27");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=73.18,309.61");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=146.24,252.60");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=70.84,213.54");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=148.34,266.55");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=26.87,229.02");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=79.43,236.80");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=177.15,203.62");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=17.51,250.73");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=0.29,281.88");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=69.18,156.78");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=59.28,13.50");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=149.95,151.65");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=64.09,122.09");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=105.91,107.78");
    }

}

