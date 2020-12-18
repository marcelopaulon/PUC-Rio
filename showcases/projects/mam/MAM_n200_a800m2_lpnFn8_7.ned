
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn8_7
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=161.98,52.16");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=98.14,89.95");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=16.74,132.61");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=44.55,201.17");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=30.20,212.33");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=34.98,223.52");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=68.16,284.59");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=164.23,306.53");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=128.86,284.37");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=78.97,313.58");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=85.51,400.64");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=123.83,460.26");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=102.83,398.42");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=121.43,373.54");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=146.40,460.05");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=172.92,468.42");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=205.54,430.43");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=200.03,413.63");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=179.48,356.53");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=209.83,367.35");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=140.43,341.52");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=80.48,292.96");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=91.38,336.25");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=161.78,366.38");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=55.79,116.63");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=143.32,57.51");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=67.00,152.76");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=38.89,74.43");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=30.38,103.11");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=67.64,232.37");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=104.01,223.14");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=82.39,325.09");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=190.10,301.84");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=130.63,257.57");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=85.08,302.41");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=30.62,321.01");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=151.55,393.08");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=30.12,408.50");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=128.15,346.95");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=185.24,412.49");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=121.06,447.69");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=207.92,347.36");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=186.56,376.23");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=259.73,409.55");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=190.66,276.83");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=76.32,265.93");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=145.36,292.65");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=105.01,326.84");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=153.69,359.57");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=101.50,111.13");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=172.59,54.75");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=120.48,121.52");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=28.72,172.69");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=66.55,219.60");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=30.91,198.50");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=6.94,186.91");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=114.45,249.78");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=117.25,275.08");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=36.53,304.23");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=90.39,280.84");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=65.32,408.67");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=179.04,517.99");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=48.28,454.32");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=46.83,393.43");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=167.36,478.12");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=165.29,458.18");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=243.94,422.76");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=238.64,341.16");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=202.83,400.76");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=304.52,342.39");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=131.90,399.40");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=68.86,371.11");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=105.19,296.43");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=128.42,360.53");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=73.90,110.03");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=139.73,70.88");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=159.11,81.83");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=0.92,137.84");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=16.83,188.92");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=13.23,154.01");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=7.28,255.87");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=93.37,317.04");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=157.15,275.14");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=174.24,319.15");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=12.10,331.01");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=84.20,416.38");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=162.56,381.52");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=89.27,382.66");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=111.22,344.79");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=144.62,406.41");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=176.82,421.25");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=163.75,405.94");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=190.67,424.33");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=210.50,378.94");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=286.27,342.35");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=113.01,436.97");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=159.89,233.41");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=49.13,288.94");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=250.05,322.55");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=115.67,89.66");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=124.50,26.88");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=14.07,59.45");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=62.68,89.31");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=94.97,151.64");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=86.40,234.54");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=23.49,249.43");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=36.53,246.46");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=92.18,263.03");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=108.38,191.80");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=58.21,299.41");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=94.92,440.66");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=103.03,460.51");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=38.86,447.22");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=141.28,451.43");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=180.44,534.36");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=191.29,441.75");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=233.90,429.29");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=213.37,499.45");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=198.31,367.13");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=265.94,306.80");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=113.56,402.66");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=139.96,266.21");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=73.17,348.93");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=227.92,308.59");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=92.45,167.82");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=123.71,71.84");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=126.45,99.26");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=91.47,107.18");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=140.95,185.58");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=51.54,236.57");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=16.91,200.25");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=69.89,306.97");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=216.04,324.76");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=157.73,318.07");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=73.20,390.61");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=16.91,368.42");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=72.83,485.05");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=104.59,376.89");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=87.66,355.42");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=106.12,488.40");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=212.92,537.35");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=210.66,521.75");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=218.68,476.58");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=206.26,318.11");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=218.01,280.61");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=164.60,339.63");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=38.72,338.58");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=122.61,264.18");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=184.33,327.77");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=142.99,98.29");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=154.52,28.78");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=38.15,33.20");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=2.15,103.38");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=49.03,188.76");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=29.71,139.21");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=41.27,213.75");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=139.37,309.02");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=179.51,277.90");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=34.93,276.09");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=3.29,356.69");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=86.71,482.89");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=209.80,417.07");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=56.26,403.93");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=120.87,416.89");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=145.33,552.44");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=151.11,533.03");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=215.60,395.15");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=202.21,444.31");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=106.48,387.17");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=264.39,316.82");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=116.00,312.65");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=45.53,314.04");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=44.75,373.37");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=92.76,346.71");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=72.86,84.95");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=207.37,104.47");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=65.35,77.22");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=53.22,74.78");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=79.23,206.28");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=103.70,258.92");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=86.37,223.93");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=25.23,297.35");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=240.92,280.45");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=191.70,355.95");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=58.99,279.70");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=103.15,363.16");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=78.68,456.02");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=56.19,332.81");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=134.95,416.69");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=167.56,445.19");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=171.54,560.58");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=222.27,416.94");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=250.52,405.11");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=133.35,293.76");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=283.65,378.19");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=138.92,357.07");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=35.42,256.86");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=27.14,358.33");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=186.89,340.79");
    }

}

