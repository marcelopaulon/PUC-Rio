
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn4_7
{
    parameters:
        @display("bgb=1000,1000;bgg=100,1,grey95;bgu=m");
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
        @display("p=117.83,98.31");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=145.41,56.49");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=91.46,13.22");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=55.34,60.00");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=84.77,62.20");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=44.91,22.32");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=11.85,15.03");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=1.15,7.89");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=67.26,36.66");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=78.27,76.11");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=157.61,24.72");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=157.28,3.83");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=165.36,94.23");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=103.12,24.79");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=89.26,30.34");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=78.93,17.69");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=10.49,33.44");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=46.02,38.96");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=133.92,43.38");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=89.19,74.95");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=72.57,126.86");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=53.02,91.85");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=24.68,58.60");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=8.95,51.93");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=24.13,11.88");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=20.65,28.90");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=3.47,71.05");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=43.28,62.08");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=77.48,109.58");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=119.13,175.18");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=150.52,259.39");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=223.10,311.43");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=279.27,229.34");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=280.36,144.23");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=336.84,200.73");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=319.79,226.56");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=260.52,225.67");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=308.35,175.14");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=321.06,142.95");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=245.45,184.26");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=228.11,184.21");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=170.54,178.69");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=180.78,239.30");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=169.35,203.23");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=199.48,209.59");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=155.51,144.97");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=314.38,184.11");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=334.10,184.28");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=329.32,151.00");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=89.85,99.40");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=75.15,138.66");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=137.00,82.63");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=39.33,5.62");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=104.18,38.40");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=67.80,57.45");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=23.46,48.62");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=66.77,67.91");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=28.13,37.59");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=126.84,93.62");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=37.59,109.67");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=139.27,26.37");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=123.79,22.20");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=245.01,118.39");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=95.85,89.58");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=88.15,44.53");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=113.35,19.63");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=57.17,23.68");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=61.74,136.02");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=192.80,38.42");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=95.02,60.05");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=105.90,122.98");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=32.30,126.19");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=16.97,72.87");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=84.13,88.77");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=36.10,29.69");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=77.54,7.26");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=21.23,96.85");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=69.76,153.45");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=134.83,149.51");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=140.41,247.62");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=110.67,236.18");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=272.23,343.31");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=275.68,198.51");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=234.19,109.09");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=346.67,184.07");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=298.67,212.37");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=297.80,189.25");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=240.63,136.64");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=386.51,116.22");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=283.14,186.36");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=204.53,269.61");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=126.74,214.70");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=250.17,201.93");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=146.61,173.86");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=153.99,270.48");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=172.95,52.90");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=222.70,160.50");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=308.55,207.80");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=352.44,161.22");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=164.00,170.10");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=78.66,48.86");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=104.20,50.78");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=116.57,2.41");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=40.58,72.04");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=112.45,111.82");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=131.81,67.62");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=101.77,13.01");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=21.78,84.40");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=101.04,77.99");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=111.78,65.92");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=192.95,81.57");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=190.65,52.24");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=218.15,89.58");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=68.71,18.04");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=119.22,51.72");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=65.01,110.73");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=79.18,37.64");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=35.34,84.05");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=162.24,52.98");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=98.34,130.82");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=47.86,132.03");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=112.15,141.95");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=52.45,70.03");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=9.83,144.67");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=119.20,34.66");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=55.27,13.44");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=92.76,109.29");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=26.07,134.39");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=31.45,152.68");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=150.29,185.18");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=128.68,261.83");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=162.38,308.71");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=375.35,246.28");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=345.87,135.09");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=268.01,271.60");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=309.58,149.03");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=269.87,240.16");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=259.22,189.65");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=372.25,84.32");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=210.90,170.17");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=182.29,185.56");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=120.88,236.78");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=83.64,223.98");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=135.37,122.16");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=273.98,253.33");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=142.95,101.38");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=290.03,106.60");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=352.24,211.83");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=388.57,148.09");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=1.96,92.60");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=58.35,80.33");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=178.46,148.69");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=144.88,5.89");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=13.48,129.35");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=73.72,85.61");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=52.99,119.20");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=52.20,103.62");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=0.95,21.79");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=63.11,47.53");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=119.28,73.95");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=147.33,34.85");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=219.95,50.16");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=147.90,135.14");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=143.28,16.14");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=45.07,81.53");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=6.96,83.56");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=66.42,96.94");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=39.13,47.67");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=155.61,104.38");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=148.12,83.32");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=92.89,150.23");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=93.05,166.03");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=20.95,121.63");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=27.38,111.67");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=31.06,20.71");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=1.53,40.65");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=37.52,143.40");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=52.27,155.91");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=83.87,132.23");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=119.12,164.74");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=210.67,278.11");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=204.64,257.38");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=303.44,256.19");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=295.16,71.20");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=345.15,229.64");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=332.95,246.77");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=281.04,261.02");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=295.69,133.48");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=323.55,170.01");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=203.60,219.09");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=219.20,229.08");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=222.02,216.30");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=191.10,242.46");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=139.84,285.55");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=193.13,187.10");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=163.43,137.32");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=338.91,93.79");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=269.41,212.37");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=345.82,63.21");
    }

}

