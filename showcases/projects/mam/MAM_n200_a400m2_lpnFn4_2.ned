
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn4_2
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
        @display("p=100.00,300.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=133.93,304.06");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=120.27,300.57");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=146.34,313.41");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=65.42,271.20");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=53.76,256.18");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=99.99,217.66");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=121.86,251.05");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=122.55,341.44");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=137.91,332.42");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=211.41,297.84");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=198.22,262.53");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=197.55,232.84");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=223.65,260.90");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=187.03,296.48");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=190.59,367.28");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=157.00,373.71");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=202.63,385.85");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=229.93,391.12");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=218.54,379.40");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=171.52,337.74");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=152.26,246.63");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=147.93,255.95");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=78.68,241.88");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=101.13,240.13");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=106.84,255.54");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=177.68,323.50");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=232.93,320.83");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=247.74,330.46");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=277.32,352.72");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=221.72,358.78");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=158.09,345.04");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=145.04,347.38");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=140.18,394.14");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=169.68,399.32");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=54.12,376.57");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=49.56,389.64");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=115.73,356.14");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=79.95,338.77");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=149.12,323.61");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=160.57,318.31");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=98.49,176.12");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=81.54,183.26");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=54.17,160.22");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=6.03,209.31");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=22.31,124.28");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=48.44,177.87");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=29.64,230.24");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=15.92,149.40");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=28.38,160.54");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=135.84,269.64");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=77.83,371.10");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=98.62,270.65");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=85.58,252.89");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=86.86,210.99");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=74.34,226.77");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=170.40,188.87");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=124.02,195.68");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=116.59,329.64");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=110.15,320.58");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=226.11,303.31");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=212.37,335.79");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=219.65,244.40");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=299.35,290.57");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=234.92,294.44");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=179.73,283.78");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=169.94,351.19");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=227.47,332.22");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=254.93,358.00");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=260.60,329.49");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=207.21,365.94");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=169.44,215.66");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=176.21,247.44");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=32.26,289.93");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=5.51,228.63");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=147.31,219.23");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=183.30,307.39");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=312.57,356.81");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=285.55,244.10");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=319.46,368.04");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=264.39,385.23");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=257.86,342.05");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=63.36,338.56");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=178.92,370.76");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=161.71,363.71");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=41.02,377.21");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=81.28,396.61");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=96.20,381.41");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=121.28,267.32");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=156.83,275.21");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=196.71,394.24");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=50.43,210.18");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=108.23,153.90");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=145.83,183.21");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=58.61,233.07");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=31.27,68.26");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=0.78,258.39");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=40.57,267.75");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=8.11,127.88");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=13.54,171.22");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=17.87,274.95");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=139.23,382.63");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=167.79,228.44");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=94.58,343.63");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=17.10,327.59");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=114.78,231.02");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=24.96,179.67");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=41.72,252.18");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=105.07,354.36");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=84.12,308.36");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=289.95,320.52");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=179.04,196.21");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=200.38,213.99");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=287.76,281.94");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=174.36,298.14");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=177.83,273.37");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=80.93,322.05");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=213.72,325.63");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=233.91,369.41");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=246.90,394.44");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=244.65,369.84");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=239.12,223.26");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=185.82,173.02");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=86.04,264.92");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=192.63,246.84");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=132.44,227.23");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=239.55,350.46");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=255.83,292.25");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=265.87,284.66");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=202.19,311.79");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=272.47,365.99");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=187.88,343.10");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=149.82,335.41");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=144.70,367.35");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=248.82,381.91");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=25.56,391.01");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=25.31,305.45");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=125.69,355.19");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=30.13,370.21");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=90.52,326.16");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=75.11,350.95");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=116.13,163.28");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=92.25,104.01");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=144.48,163.68");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=82.61,164.14");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=40.16,97.41");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=1.49,185.97");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=48.76,148.95");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=32.58,89.95");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=53.35,241.66");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=164.76,329.66");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=76.82,284.16");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=111.10,290.45");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=121.26,220.12");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=61.66,204.98");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=43.34,231.59");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=101.18,286.50");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=80.23,194.35");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=195.37,290.42");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=57.76,327.31");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=218.65,277.30");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=259.17,221.05");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=278.43,204.40");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=251.87,262.15");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=272.62,302.32");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=241.23,339.06");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=63.03,351.13");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=264.39,397.02");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=293.23,366.23");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=219.27,392.08");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=133.99,282.73");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=127.37,184.17");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=64.69,241.96");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=110.03,184.96");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=126.63,165.92");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=153.72,171.90");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=137.78,243.09");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=275.59,328.71");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=249.13,272.72");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=268.72,318.25");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=162.91,381.80");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=113.67,280.10");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=161.68,258.64");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=115.48,374.70");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=157.11,393.54");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=66.23,386.39");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=108.59,397.92");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=86.69,359.69");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=19.79,362.40");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=122.00,319.78");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=163.35,295.69");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=94.62,152.18");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=39.43,111.96");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=107.43,80.85");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=53.98,131.02");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=15.06,36.26");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=94.51,203.91");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=33.08,138.29");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=10.11,160.43");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=98.06,137.28");
    }

}

