
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn8_6
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
            @display("p=100,100");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=90.98,158.68");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=114.37,231.98");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=158.07,265.97");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=122.10,264.89");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=143.68,255.30");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=98.98,300.47");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=139.57,301.64");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=67.66,309.79");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=41.67,400.27");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=1.55,425.42");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=35.48,498.09");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=118.86,505.53");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=108.27,502.50");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=88.47,421.61");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=62.01,409.86");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=115.28,407.26");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=156.58,410.04");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=145.85,403.32");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=176.71,415.48");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=203.32,438.95");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=214.79,414.67");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=164.24,369.59");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=139.57,444.21");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=180.23,445.02");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=121.49,75.33");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=141.94,152.51");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=124.19,241.80");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=164.91,177.68");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=86.84,260.26");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=194.19,265.62");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=145.41,288.35");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=105.14,242.25");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=8.69,358.48");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=102.72,393.09");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=44.40,435.64");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=12.79,590.99");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=178.13,482.40");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=134.06,521.26");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=154.07,437.41");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=8.56,379.37");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=59.90,392.38");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=83.54,378.33");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=146.10,413.96");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=171.71,424.59");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=237.58,473.94");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=205.60,427.96");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=225.29,384.78");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=216.91,456.09");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=138.89,530.62");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=63.00,179.71");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=45.94,161.16");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=63.20,256.78");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=96.75,253.52");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=101.81,222.18");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=168.54,308.68");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=133.90,329.10");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=69.55,328.91");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=113.20,316.34");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=65.69,422.87");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=6.42,393.64");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=82.15,524.15");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=178.07,565.41");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=27.48,477.14");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=77.03,434.28");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=74.87,464.26");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=164.90,356.92");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=171.49,396.60");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=164.33,446.58");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=182.77,388.42");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=254.91,495.63");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=268.90,345.51");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=173.81,383.50");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=88.78,444.67");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=190.32,463.29");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=125.34,65.13");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=167.61,143.45");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=112.14,277.15");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=89.42,315.77");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=103.70,338.08");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=215.53,268.57");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=54.33,248.15");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=107.33,264.79");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=130.27,309.56");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=35.20,412.01");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=52.94,482.63");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=39.31,529.71");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=66.59,554.92");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=45.78,465.51");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=80.03,513.86");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=135.99,426.29");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=199.64,409.24");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=106.91,447.28");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=85.51,407.22");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=207.08,465.86");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=167.75,499.77");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=206.35,509.17");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=239.22,316.12");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=187.77,473.85");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=164.90,434.37");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=47.72,106.02");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=182.99,155.07");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=73.29,224.39");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=196.35,287.06");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=113.49,185.62");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=173.43,195.46");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=95.37,235.15");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=79.25,362.17");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=38.88,347.13");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=37.01,391.19");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=16.12,389.61");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=45.64,511.45");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=118.77,515.90");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=71.73,532.61");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=129.65,350.08");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=102.95,429.31");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=59.22,363.03");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=194.43,328.50");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=146.15,386.61");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=158.54,325.47");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=234.18,354.21");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=243.96,454.62");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=176.04,358.38");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=70.59,392.47");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=185.42,521.36");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=52.88,133.66");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=17.05,128.11");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=43.56,213.82");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=247.57,274.11");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=54.17,232.78");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=175.09,226.82");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=91.99,288.43");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=199.78,351.78");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=12.10,339.38");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=48.01,351.90");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=19.46,329.65");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=17.93,455.35");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=141.44,513.34");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=156.27,524.17");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=128.25,434.00");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=9.48,482.49");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=66.23,435.33");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=109.94,375.58");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=120.75,368.89");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=141.35,483.41");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=191.40,445.63");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=227.53,438.03");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=205.09,399.35");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=129.78,467.91");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=186.19,411.98");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=35.64,115.69");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=111.60,98.99");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=206.12,225.02");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=103.16,289.20");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=60.54,204.28");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=163.81,281.64");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=95.48,273.77");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=140.48,272.31");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=14.02,270.20");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=20.74,399.49");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=20.28,423.39");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=110.54,539.02");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=105.92,462.12");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=18.64,466.38");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=145.49,432.13");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=16.39,445.04");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=119.62,339.97");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=109.98,476.29");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=136.39,398.31");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=133.13,386.50");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=112.38,424.87");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=234.11,341.93");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=156.52,342.69");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=140.05,456.69");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=152.00,483.13");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=9.12,116.93");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=62.55,152.98");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=119.73,218.18");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=252.80,261.58");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=56.57,300.14");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=149.06,201.63");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=80.63,305.97");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=57.53,336.70");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=114.45,355.12");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=41.83,382.04");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=30.66,371.70");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=47.27,496.53");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=68.08,510.05");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=76.41,495.25");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=65.80,456.07");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=34.48,356.66");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=57.27,467.15");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=204.44,377.04");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=156.87,399.37");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=170.87,457.69");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=258.54,479.22");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=255.53,329.59");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=125.18,413.77");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=54.91,443.54");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=263.19,423.40");
    }

}

