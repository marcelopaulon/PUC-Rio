
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn4_1
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
        @display("p=116.38,51.72");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=87.68,78.58");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=112.27,124.23");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=123.88,169.87");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=69.04,122.82");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=52.06,157.22");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=47.33,180.20");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=86.82,126.61");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=90.87,194.87");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=115.29,192.24");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=106.76,224.40");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=45.37,279.77");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=110.80,306.80");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=108.15,320.73");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=100.16,375.04");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=22.72,392.53");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=10.27,321.88");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=30.27,224.74");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=36.15,249.01");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=54.57,235.79");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=68.36,199.34");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=71.42,184.17");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=14.03,160.63");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=47.80,194.54");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=13.53,262.99");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=82.96,227.81");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=83.25,250.47");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=67.35,343.61");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=27.62,424.56");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=49.41,457.41");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=4.16,401.30");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=16.34,402.97");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=75.51,354.15");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=122.91,347.77");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=61.43,270.20");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=57.26,199.17");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=38.26,150.68");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=83.88,100.25");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=89.12,90.45");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=78.83,49.02");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=75.59,31.09");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=113.67,69.82");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=163.18,111.39");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=93.25,175.95");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=180.82,145.20");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=207.10,154.52");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=199.85,174.34");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=170.77,204.33");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=124.56,228.67");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=169.55,130.73");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=152.19,10.65");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=164.51,50.33");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=191.86,111.26");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=126.38,120.69");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=49.53,111.48");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=129.40,192.32");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=30.41,182.91");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=104.33,110.23");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=70.83,150.52");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=182.60,234.71");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=116.91,238.18");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=0.66,298.14");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=99.33,332.40");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=122.19,359.87");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=61.89,384.28");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=45.22,386.09");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=77.84,326.66");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=17.85,233.79");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=62.09,280.93");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=35.37,234.08");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=136.51,212.12");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=144.16,177.89");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=47.30,168.18");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=38.30,289.09");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=6.16,218.58");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=39.39,315.44");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=133.69,222.15");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=86.90,343.26");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=16.73,467.24");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=85.21,366.32");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=54.45,350.61");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=50.66,372.04");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=120.74,268.53");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=146.51,296.34");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=1.13,334.55");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=101.65,238.64");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=72.31,168.18");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=26.97,61.80");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=140.04,62.80");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=96.91,54.33");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=54.78,57.52");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=169.94,96.26");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=187.20,89.38");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=65.63,132.35");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=192.97,137.40");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=174.23,115.59");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=296.37,197.26");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=235.73,175.21");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=28.87,208.17");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=50.75,68.38");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=73.06,13.59");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=89.53,29.12");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=97.69,118.07");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=30.46,164.43");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=28.88,95.26");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=84.72,113.69");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=18.01,219.50");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=114.60,102.08");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=99.40,208.22");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=104.74,167.52");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=61.70,301.42");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=27.57,255.93");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=37.29,326.60");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=91.42,311.44");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=118.40,325.70");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=4.38,430.08");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=36.81,357.74");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=96.74,260.83");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=1.90,191.29");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=47.99,253.33");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=20.04,171.28");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=157.68,225.61");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=25.39,127.71");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=73.21,242.89");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=61.86,251.06");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=118.08,294.20");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=29.99,296.90");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=155.67,316.19");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=89.38,424.59");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=43.51,465.61");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=5.96,413.15");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=73.38,400.17");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=97.40,418.54");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=61.74,368.06");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=157.42,251.97");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=104.74,279.47");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=39.06,133.07");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=145.27,156.07");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=95.06,140.50");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=59.38,40.54");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=152.96,55.86");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=148.07,97.56");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=258.09,101.08");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=130.35,161.23");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=173.54,155.78");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=177.60,67.93");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=215.28,210.72");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=188.09,198.31");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=190.84,302.01");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=86.47,161.18");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=202.33,97.63");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=123.48,36.86");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=113.06,143.98");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=214.35,180.68");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=72.35,216.09");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=49.95,98.59");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=53.48,213.02");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=126.72,138.71");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=41.02,208.38");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=141.58,256.40");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=24.75,271.41");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=44.90,267.98");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=54.43,314.62");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=153.70,376.21");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=120.98,413.01");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=52.31,397.71");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=98.75,343.88");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=23.45,288.66");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=38.29,302.57");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=18.59,194.41");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=145.68,220.35");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=133.71,173.45");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=11.48,140.72");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=1.64,121.00");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=78.93,311.40");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=165.18,235.48");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=61.31,227.97");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=80.44,274.14");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=29.47,375.82");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=30.38,401.16");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=30.07,489.64");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=0.40,364.19");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=132.75,364.09");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=112.64,366.16");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=130.39,333.82");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=67.36,103.95");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=36.63,68.56");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=79.04,133.80");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=60.37,174.10");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=110.74,41.66");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=31.99,18.00");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=114.50,1.78");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=234.97,109.08");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=87.76,217.85");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=211.19,92.12");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=181.57,100.97");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=270.38,221.01");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=239.48,147.79");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=130.32,247.53");
    }

}

