
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn12_0
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
        @display("p=148.05,313.06");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=133.27,330.34");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=171.48,260.30");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=160.90,370.25");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=196.90,365.23");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=105.24,342.36");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=102.94,328.61");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=123.75,371.91");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=63.48,397.51");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=60.76,346.14");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=59.07,379.86");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=44.40,376.12");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=69.64,312.72");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=83.80,317.53");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=57.61,290.81");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=68.92,271.67");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=64.06,233.08");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=212.03,367.22");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=193.79,348.12");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=129.22,216.80");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=175.95,320.01");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=251.62,300.77");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=125.94,254.75");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=144.01,389.26");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=37.56,352.62");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=156.55,386.54");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=47.29,347.77");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=35.08,393.02");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=5.19,294.06");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=98.46,247.87");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=83.00,301.41");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=0.76,311.09");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=137.27,203.36");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=165.50,334.10");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=158.78,302.22");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=183.49,311.23");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=141.03,237.15");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=163.54,279.13");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=196.48,331.17");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=142.89,322.80");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=106.73,264.50");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=210.85,328.58");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=54.36,392.46");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=99.68,360.90");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=118.48,320.30");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=133.11,343.07");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=57.42,300.86");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=76.79,325.42");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=91.17,219.24");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=75.88,234.75");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=152.21,351.95");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=222.89,307.51");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=172.18,395.70");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=196.06,311.42");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=145.01,376.74");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=265.60,373.05");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=155.24,272.70");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=138.82,284.58");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=134.95,306.89");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=41.34,334.61");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=36.08,310.39");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=88.63,334.69");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=109.25,310.61");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=113.37,350.79");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=27.94,296.05");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=21.94,215.73");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=47.20,250.37");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=29.68,248.28");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=244.52,317.74");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=68.11,295.23");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=181.83,164.10");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=184.77,332.48");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=233.81,303.12");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=105.20,278.42");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=121.22,279.65");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=111.64,375.50");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=74.31,378.48");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=78.56,290.31");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=85.77,366.29");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=16.72,391.14");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=100.24,316.92");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=109.49,230.46");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=14.06,338.27");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=122.40,196.75");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=97.30,230.09");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=145.09,335.92");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=72.43,360.44");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=174.27,219.97");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=178.98,359.72");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=227.67,371.29");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=98.60,286.90");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=22.99,322.47");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=117.53,384.57");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=17.59,363.73");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=3.91,333.83");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=45.90,297.66");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=80.44,345.49");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=112.27,298.50");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=96.69,377.14");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=118.37,289.46");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=40.81,231.07");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=54.26,330.82");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=154.46,324.80");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=136.46,366.31");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=169.38,245.73");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=160.15,344.22");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=204.26,347.48");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=192.28,296.50");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=27.94,344.09");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=55.63,366.58");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=0.44,349.27");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=95.65,391.65");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=30.89,372.77");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=84.10,356.16");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=115.54,249.23");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=13.10,280.16");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=55.67,242.68");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=89.03,283.02");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=73.87,258.87");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=67.18,283.28");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=125.79,391.73");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=200.69,210.92");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=182.11,370.65");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=285.57,393.65");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=86.89,251.09");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=72.94,337.68");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=124.00,311.83");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=75.69,391.35");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=16.43,375.74");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=92.70,350.22");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=26.88,359.19");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=61.91,320.99");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=33.04,277.41");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=20.34,311.82");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=36.45,321.95");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=40.61,268.32");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=172.51,305.47");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=117.14,270.18");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=255.89,275.62");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=207.66,291.15");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=268.49,360.12");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=175.88,272.77");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=135.74,353.02");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=55.85,355.23");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=1.44,383.10");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=120.09,358.28");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=45.65,365.20");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=28.92,384.72");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=84.37,380.18");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=13.81,300.10");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=0.37,251.59");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=56.88,265.63");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=123.45,298.19");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=150.69,291.46");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=229.14,358.56");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=189.00,226.88");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=221.57,396.19");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=209.16,357.08");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=121.84,340.97");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=168.08,290.45");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=66.47,370.56");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=134.43,382.83");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=9.43,354.09");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=111.20,395.32");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=9.10,318.13");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=126.86,264.96");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=172.24,350.93");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=147.66,253.42");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=78.49,172.94");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=164.30,224.15");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=218.36,380.84");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=223.18,291.77");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=112.95,331.20");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=169.37,381.87");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=230.72,383.36");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=62.17,254.51");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=21.87,271.47");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=177.60,294.17");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=45.38,399.30");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=24.22,282.76");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=50.84,315.67");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=31.02,334.46");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=55.45,224.53");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=88.45,268.34");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=14.74,229.80");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=143.72,224.94");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=129.83,235.10");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=148.79,398.76");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=218.34,336.88");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=188.00,275.50");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=179.42,381.21");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=194.57,376.55");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=39.63,289.15");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=142.19,265.75");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=104.10,384.63");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=5.46,371.88");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=3.22,394.50");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=148.68,362.53");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=19.76,350.54");
    }

}

