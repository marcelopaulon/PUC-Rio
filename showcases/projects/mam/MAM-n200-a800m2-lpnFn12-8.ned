
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn12-8
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
        @display("p=11.00,490.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=53.52,452.15");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=88.12,378.68");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=113.14,367.69");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=95.88,412.73");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=115.72,445.32");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=97.73,497.45");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=39.35,482.83");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=64.45,489.69");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=37.15,407.08");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=24.24,420.11");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=8.25,418.08");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=43.71,392.42");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=22.55,305.43");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=28.50,329.83");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=12.03,361.09");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=9.55,326.03");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=0.13,409.67");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=67.91,454.60");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=122.66,356.95");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=155.18,282.22");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=77.80,368.17");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=136.65,528.96");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=63.68,530.70");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=15.07,574.73");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=51.78,486.72");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=25.01,400.78");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=82.62,452.94");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=82.10,399.86");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=95.76,362.56");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=12.64,258.40");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=60.43,339.30");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=65.04,402.23");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=68.15,272.99");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=25.20,444.56");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=12.63,428.23");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=123.78,462.47");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=110.13,357.37");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=50.79,350.42");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=192.21,471.10");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=107.73,509.57");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=0.80,391.45");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=124.38,473.00");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=36.82,440.04");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=70.83,353.41");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=64.99,469.06");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=46.03,365.52");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=41.19,295.85");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=6.05,277.91");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=14.55,347.04");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=34.91,307.87");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=5.87,515.46");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=85.98,509.25");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=99.15,345.12");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=194.27,425.40");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=107.99,390.89");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=133.46,449.21");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=132.68,483.64");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=28.49,515.41");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=81.05,493.47");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=52.46,420.32");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=9.99,398.83");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=42.09,337.27");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=78.68,301.13");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=14.57,313.12");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=21.09,321.76");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=11.05,371.77");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=68.53,311.23");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=7.91,479.42");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=61.24,501.91");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=100.02,423.91");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=86.58,314.33");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=165.17,357.69");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=111.06,432.82");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=61.36,546.71");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=75.58,506.43");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=34.43,422.19");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=50.79,430.46");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=25.14,461.70");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=80.87,417.54");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=136.44,369.15");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=18.76,280.68");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=31.67,237.70");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=17.42,295.86");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=7.81,240.28");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=16.75,510.47");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=88.67,539.35");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=109.18,340.91");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=152.83,389.22");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=169.20,465.71");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=96.25,455.96");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=42.29,563.46");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=8.83,544.78");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=120.20,570.08");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=46.97,402.99");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=107.29,403.87");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=87.76,464.39");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=110.06,420.63");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=1.13,288.81");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=0.01,335.68");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=104.11,374.77");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=26.82,345.55");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=47.95,500.29");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=61.06,364.51");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=67.76,379.31");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=155.57,347.62");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=140.76,387.87");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=176.06,409.64");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=176.48,552.01");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=43.28,510.33");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=158.35,460.91");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=8.94,454.19");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=78.83,479.61");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=30.69,385.74");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=40.77,457.86");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=47.04,313.56");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=94.97,328.12");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=53.74,291.26");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=78.30,331.55");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=4.57,556.91");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=135.58,403.06");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=94.96,390.94");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=136.65,350.14");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=19.55,391.82");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=197.49,484.34");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=51.50,462.51");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=4.99,504.60");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=44.92,541.23");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=24.82,474.36");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=27.01,357.30");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=68.27,392.13");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=48.33,378.85");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=43.79,215.49");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=94.87,284.14");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=1.81,264.13");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=69.22,321.81");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=23.54,494.50");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=65.53,427.89");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=152.01,302.58");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=189.51,403.46");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=127.68,434.29");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=161.65,429.76");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=121.28,502.07");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=42.80,472.74");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=105.30,556.47");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=69.11,413.68");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=29.61,372.06");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=57.30,440.12");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=87.70,437.85");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=88.45,335.75");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=84.69,263.17");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=55.74,395.43");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=24.87,266.80");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=46.80,573.35");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=53.74,476.01");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=162.48,382.04");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=125.22,384.64");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=146.85,439.72");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=107.44,539.94");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=144.02,499.94");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=115.91,491.66");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=82.65,521.20");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=107.05,476.51");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=77.41,436.12");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=16.41,409.95");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=36.94,346.87");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=36.32,284.05");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=39.85,326.28");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=20.93,366.35");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=4.32,347.77");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=40.43,550.90");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=33.52,537.93");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=145.19,374.28");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=102.42,467.00");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=24.20,433.03");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=205.96,436.32");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=182.53,524.68");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=71.20,560.07");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=96.69,532.31");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=88.81,349.88");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=0.07,432.84");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=3.02,465.78");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=95.29,444.62");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=5.72,251.05");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=57.72,318.46");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=0.02,372.47");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=64.03,297.14");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=95.76,484.79");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=143.52,465.25");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=165.05,317.20");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=130.11,315.28");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=97.18,434.19");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=151.32,486.50");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=141.10,510.93");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=109.31,527.63");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=34.95,502.54");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=79.58,358.27");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=107.36,454.97");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=11.86,439.48");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=30.99,295.32");
    }

}

