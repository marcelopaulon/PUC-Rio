
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn4_8
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
        @display("p=165.12,278.66");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=173.97,295.68");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=121.70,329.80");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=45.96,339.71");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=20.84,351.10");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=15.49,366.12");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=90.46,397.85");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=130.39,356.16");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=55.11,361.85");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=101.07,362.50");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=60.09,347.47");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=81.26,316.58");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=88.94,270.07");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=41.17,268.10");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=79.48,292.70");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=59.96,323.43");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=57.64,268.43");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=2.44,202.51");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=50.92,212.32");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=43.23,282.68");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=55.58,288.68");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=31.33,289.65");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=87.71,370.16");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=68.66,337.71");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=69.47,315.88");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=42.92,323.80");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=104.45,392.47");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=163.34,381.03");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=163.83,322.54");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=155.18,397.83");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=123.19,379.30");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=33.30,387.98");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=46.28,367.23");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=85.24,245.79");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=43.40,305.17");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=59.80,302.89");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=22.37,276.90");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=107.60,257.42");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=111.69,217.90");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=30.21,177.55");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=23.26,222.30");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=14.05,246.68");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=96.60,238.87");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=11.83,227.06");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=35.32,312.69");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=126.69,314.15");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=142.79,330.45");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=207.25,297.16");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=196.19,306.25");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=88.28,334.59");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=201.14,271.38");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=231.75,298.29");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=190.71,321.93");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=27.98,305.16");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=69.03,267.08");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=20.74,332.89");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=40.50,396.79");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=141.04,389.23");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=32.13,345.81");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=176.08,381.69");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=22.33,381.58");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=66.93,227.96");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=119.55,289.60");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=20.74,257.94");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=119.25,253.19");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=106.38,334.88");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=22.00,321.44");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=13.45,214.77");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=54.75,156.05");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=42.86,200.90");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=95.97,346.79");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=124.00,263.62");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=67.87,361.25");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=112.81,274.63");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=51.81,331.20");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=1.03,356.60");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=185.48,376.57");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=225.94,339.75");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=140.53,275.01");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=133.12,370.97");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=149.59,366.87");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=21.08,399.21");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=30.33,356.21");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=85.17,228.61");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=97.53,318.80");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=45.31,354.82");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=59.07,241.00");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=141.87,228.48");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=79.39,218.65");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=37.32,230.65");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=51.00,252.62");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=10.25,258.95");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=144.20,185.61");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=83.90,188.97");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=18.06,300.77");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=182.80,357.35");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=152.57,378.20");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=200.51,284.40");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=209.08,260.51");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=80.54,393.90");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=189.78,278.16");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=229.96,264.49");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=55.79,389.76");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=132.45,346.35");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=9.40,330.95");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=2.99,274.27");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=60.05,379.94");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=168.87,397.03");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=5.22,310.47");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=88.00,381.79");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=117.07,362.86");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=133.15,240.60");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=65.07,196.24");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=123.89,300.56");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=120.19,344.27");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=148.25,310.91");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=114.69,312.66");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=4.76,289.44");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=61.14,218.43");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=71.48,207.83");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=104.65,206.61");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=27.11,190.78");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=3.55,397.24");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=106.54,375.63");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=100.57,282.72");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=91.37,307.39");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=6.66,380.80");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=159.68,370.03");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=150.49,352.37");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=169.56,372.53");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=74.70,348.46");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=34.16,328.62");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=70.64,379.67");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=98.08,263.81");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=84.89,353.22");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=136.50,296.80");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=30.01,249.31");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=15.62,290.39");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=131.56,255.91");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=32.32,132.45");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=34.23,215.89");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=24.81,159.40");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=150.82,171.43");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=63.09,185.52");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=77.81,331.43");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=189.44,244.34");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=180.01,342.17");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=198.17,356.10");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=216.09,371.76");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=124.76,392.35");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=169.01,248.45");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=138.93,264.97");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=138.57,315.36");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=113.96,302.03");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=107.06,323.16");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=42.97,378.15");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=142.38,376.47");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=173.69,318.87");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=59.37,278.89");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=158.46,304.08");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=68.91,294.15");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=67.07,249.19");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=22.97,204.50");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=33.78,274.86");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=1.46,244.12");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=77.22,303.31");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=2.65,213.88");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=80.69,177.58");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=44.03,238.35");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=87.91,282.46");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=130.59,227.36");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=24.70,238.26");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=163.58,347.29");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=140.23,352.84");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=47.81,222.59");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=87.17,259.98");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=169.36,357.83");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=194.19,399.52");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=215.95,239.70");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=226.93,349.86");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=213.25,349.07");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=0.47,301.58");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=1.69,324.01");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=155.82,249.80");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=77.94,272.94");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=92.08,214.72");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=2.34,185.76");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=152.29,266.44");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=194.65,164.46");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=42.15,125.28");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=67.88,176.61");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=54.28,202.71");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=120.90,235.95");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=2.79,161.95");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=75.09,243.15");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=151.21,279.70");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=162.14,334.51");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=287.56,252.47");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=236.24,284.64");
    }

}

