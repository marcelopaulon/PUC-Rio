
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn12_0
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
        @display("p=21.60,105.38");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=11.65,110.17");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=7.82,186.71");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=21.58,253.28");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=94.56,319.25");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=96.57,398.51");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=87.32,352.09");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=101.58,308.52");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=126.15,293.86");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=105.03,350.42");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=109.98,331.86");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=91.35,297.27");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=49.03,244.76");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=58.23,249.55");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=107.87,256.66");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=36.60,256.04");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=174.78,92.49");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=63.68,95.55");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=42.41,166.30");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=99.21,157.78");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=36.07,245.16");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=180.92,310.38");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=141.41,380.12");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=61.85,359.23");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=56.38,274.75");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=81.82,221.57");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=145.04,337.05");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=96.48,234.90");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=104.12,293.53");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=36.62,227.54");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=65.31,310.06");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=158.03,285.18");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=21.80,186.83");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=112.93,130.67");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=13.34,70.28");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=52.44,127.36");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=36.66,268.52");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=8.90,249.18");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=45.49,381.45");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=61.74,394.32");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=17.67,349.06");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=147.32,317.91");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=157.76,295.60");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=13.25,363.61");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=71.36,390.50");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=75.53,317.08");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=59.63,344.15");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=44.89,282.53");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=161.22,250.57");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=9.38,204.41");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=88.21,112.12");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=23.63,93.28");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=35.42,102.32");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=51.19,186.74");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=55.84,334.32");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=38.03,295.13");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=110.67,313.29");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=79.87,256.29");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=109.87,226.47");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=183.87,224.64");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=193.52,390.94");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=136.30,360.94");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=96.34,270.35");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=45.22,213.66");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=63.75,236.42");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=113.89,278.96");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=72.34,349.33");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=72.95,12.08");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=2.63,117.50");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=12.70,132.96");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=56.10,115.24");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=13.03,259.11");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=91.83,281.19");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=22.04,383.46");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=82.03,374.55");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=85.74,234.61");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=126.31,252.92");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=116.77,342.96");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=116.89,358.00");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=41.64,357.27");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=107.00,185.93");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=18.64,166.47");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=103.43,244.96");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=127.23,272.85");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=35.61,55.88");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=52.79,49.58");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=73.71,67.95");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=21.46,150.53");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=15.10,217.96");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=36.97,387.02");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=102.26,377.30");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=127.02,328.39");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=184.65,361.21");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=171.96,344.96");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=67.25,272.87");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=136.56,313.99");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=90.56,253.76");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=77.64,244.60");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=96.22,177.47");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=160.25,268.37");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=35.86,324.70");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=71.21,146.55");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=85.64,100.50");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=22.95,119.25");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=26.19,196.39");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=50.54,197.72");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=82.24,326.71");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=178.32,387.92");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=60.79,375.75");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=49.39,370.33");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=122.54,222.35");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=154.39,381.49");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=203.63,304.19");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=165.72,309.98");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=111.90,195.87");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=39.76,204.13");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=204.86,280.41");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=59.84,211.64");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=36.32,129.30");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=66.62,85.85");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=25.51,37.38");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=38.45,180.01");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=6.98,230.79");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=64.03,282.92");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=22.37,358.55");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=24.51,326.28");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=80.72,282.94");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=137.44,231.88");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=104.50,365.06");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=29.71,343.81");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=146.40,272.13");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=100.27,212.02");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=70.11,225.99");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=138.51,190.05");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=22.24,229.17");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=134.59,136.52");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=3.09,37.88");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=77.60,122.07");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=12.54,177.17");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=71.23,332.04");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=94.28,332.78");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=117.76,389.37");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=92.51,370.78");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=177.69,259.93");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=29.42,306.31");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=188.25,346.28");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=12.54,339.92");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=175.48,285.21");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=86.54,267.68");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=62.96,160.01");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=167.03,200.93");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=69.69,256.93");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=116.84,140.88");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=52.16,86.47");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=62.70,133.68");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=10.45,272.80");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=50.44,228.02");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=96.98,386.00");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=85.74,395.09");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=154.21,359.06");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=23.26,268.80");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=134.71,336.92");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=101.69,340.89");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=106.42,389.86");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=64.32,293.40");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=110.27,205.77");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=95.00,195.79");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=117.17,238.80");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=32.57,278.44");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=126.95,89.10");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=76.08,135.25");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=44.94,68.77");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=42.81,151.32");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=20.86,297.84");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=79.10,303.17");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=169.90,373.75");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=86.05,340.91");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=145.39,298.88");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=122.02,312.97");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=193.97,319.13");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=49.63,260.79");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=108.19,268.33");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=145.12,256.30");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=0.24,308.23");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=131.69,205.20");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=31.55,218.01");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=89.35,26.61");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=1.94,57.96");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=82.44,154.48");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=91.15,164.00");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=25.23,207.90");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=116.54,321.77");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=130.23,398.98");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=81.96,363.09");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=167.11,360.90");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=104.05,322.78");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=160.26,340.10");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=102.48,279.31");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=144.39,347.70");
    }

}

