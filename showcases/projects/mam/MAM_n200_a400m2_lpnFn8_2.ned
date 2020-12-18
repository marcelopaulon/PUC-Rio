
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn8_2
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
        @display("p=83.47,302.72");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=94.81,348.42");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=115.73,373.92");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=90.93,370.63");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=26.15,325.77");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=77.88,372.66");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=66.52,383.44");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=155.76,369.12");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=170.64,312.61");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=154.54,311.56");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=190.47,357.31");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=181.29,363.71");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=133.33,394.40");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=108.89,349.64");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=127.23,286.84");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=63.11,282.41");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=76.24,260.48");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=103.18,244.30");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=106.91,261.23");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=144.22,310.92");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=103.19,338.15");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=25.02,285.11");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=13.57,194.93");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=47.18,185.37");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=6.92,298.58");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=62.94,204.93");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=69.33,396.86");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=85.25,340.61");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=68.83,363.98");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=32.07,346.20");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=13.19,396.09");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=66.05,295.52");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=181.62,322.80");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=166.25,328.92");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=78.80,280.28");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=194.32,339.79");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=213.01,390.47");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=144.18,385.82");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=96.57,327.81");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=137.08,357.98");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=125.23,259.20");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=16.08,338.12");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=132.10,324.08");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=72.95,325.70");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=163.24,247.08");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=174.50,272.69");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=32.64,297.72");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=19.89,183.56");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=85.57,212.45");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=112.34,287.00");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=70.89,272.43");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=111.63,311.94");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=134.54,306.43");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=105.43,381.97");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=53.50,352.28");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=43.32,280.15");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=43.93,326.36");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=192.54,326.31");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=201.81,293.65");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=242.77,348.76");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=147.11,341.59");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=169.68,345.42");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=121.51,391.79");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=185.97,308.08");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=69.05,233.35");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=101.76,270.16");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=122.63,228.34");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=130.32,194.20");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=41.28,251.76");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=182.23,333.87");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=134.25,346.53");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=66.38,340.89");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=86.88,151.75");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=41.24,214.69");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=5.94,313.23");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=72.90,313.32");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=50.47,366.49");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=120.53,353.06");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=61.76,322.43");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=41.11,353.26");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=83.67,361.89");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=31.59,310.41");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=158.42,381.77");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=144.87,291.81");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=118.52,298.05");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=209.74,300.37");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=281.04,362.90");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=149.15,353.05");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=41.22,304.17");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=73.03,204.61");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=53.13,286.16");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=12.70,278.27");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=106.14,168.85");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=28.74,224.66");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=117.95,277.62");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=92.67,393.56");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=13.18,289.08");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=54.19,168.40");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=81.75,239.59");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=98.37,290.05");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=106.26,234.30");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=27.75,376.58");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=106.21,359.75");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=85.64,272.48");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=35.75,332.39");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=7.06,372.23");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=88.43,381.15");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=176.58,373.86");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=176.63,296.13");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=238.34,307.96");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=219.17,268.27");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=264.42,360.07");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=191.69,385.10");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=106.12,324.55");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=150.62,282.55");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=45.42,265.30");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=18.95,300.20");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=93.22,230.04");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=132.09,219.44");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=188.79,372.11");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=123.80,336.53");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=56.35,307.74");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=22.77,100.62");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=26.93,168.50");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=111.58,396.72");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=164.74,296.40");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=94.52,360.97");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=42.83,399.97");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=18.57,354.45");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=50.34,385.91");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=145.84,363.31");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=125.56,377.79");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=148.24,324.75");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=209.60,315.04");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=191.48,296.17");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=261.19,394.30");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=224.73,338.71");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=161.86,359.02");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=148.90,394.75");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=133.82,294.52");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=56.17,272.61");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=121.45,317.58");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=58.54,228.02");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=156.35,208.68");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=206.93,271.96");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=85.34,325.53");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=50.74,237.88");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=39.78,161.20");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=39.20,195.51");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=128.01,365.12");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=98.34,313.82");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=132.28,271.15");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=188.63,394.91");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=45.42,337.34");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=2.23,326.28");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=14.89,382.02");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=79.76,389.21");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=147.59,374.92");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=253.72,338.85");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=130.08,246.82");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=228.69,390.17");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=213.93,342.60");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=179.61,386.72");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=32.59,393.86");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=194.91,246.88");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=82.11,350.70");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=90.88,252.42");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=152.59,252.94");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=121.60,240.22");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=178.18,243.55");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=181.62,281.28");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=37.50,288.95");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=25.04,203.22");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=36.30,185.08");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=153.33,242.80");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=113.52,331.61");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=42.15,315.37");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=206.20,374.41");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=28.71,365.22");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=25.27,236.37");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=39.45,364.88");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=82.54,291.35");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=173.24,357.30");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=181.38,221.57");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=240.11,333.08");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=166.43,368.32");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=185.03,347.93");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=55.22,340.50");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=161.67,318.78");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=192.54,267.01");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=6.27,265.04");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=63.04,177.39");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=115.29,341.79");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=151.80,190.11");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=146.54,229.93");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=155.01,267.54");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=62.43,261.19");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=4.26,166.97");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=2.16,151.90");
    }

}

