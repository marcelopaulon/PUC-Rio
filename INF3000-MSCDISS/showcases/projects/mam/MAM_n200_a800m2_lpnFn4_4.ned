
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn4_4
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
        @display("p=93.71,68.17");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=43.85,50.56");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=81.37,131.98");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=66.33,155.37");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=51.90,133.89");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=32.66,132.47");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=19.59,150.29");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=38.15,143.64");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=8.86,134.98");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=36.80,118.01");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=17.37,72.00");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=61.75,102.79");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=93.65,136.10");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=100.82,161.90");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=84.03,194.15");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=48.99,201.31");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=120.62,181.44");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=138.38,171.65");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=95.34,220.73");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=78.44,283.57");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=85.01,274.02");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=85.95,257.99");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=110.04,311.81");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=162.01,314.76");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=226.63,324.77");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=235.39,355.41");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=241.50,365.22");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=222.18,356.67");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=219.58,378.92");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=268.94,441.73");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=285.36,478.79");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=299.46,488.27");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=264.49,544.10");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=251.51,537.82");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=272.84,522.16");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=326.77,527.51");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=375.02,463.71");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=358.15,444.36");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=370.15,502.18");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=394.24,509.37");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=381.44,568.63");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=339.75,602.92");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=326.23,572.43");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=422.89,566.47");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=396.23,484.92");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=382.27,435.30");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=389.43,461.29");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=409.26,413.03");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=433.27,450.27");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=128.89,11.19");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=110.17,79.94");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=32.43,52.06");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=115.91,137.74");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=44.13,162.21");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=81.78,153.28");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=0.04,128.48");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=25.87,139.91");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=64.46,168.20");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=5.91,108.68");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=40.51,195.32");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=48.59,60.36");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=68.88,119.90");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=104.40,112.83");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=186.30,119.87");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=105.81,229.15");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=56.29,216.01");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=93.05,150.34");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=194.44,155.54");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=84.47,235.55");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=145.12,253.76");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=109.09,246.80");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=55.03,230.80");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=90.24,320.95");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=230.09,309.85");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=288.09,392.18");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=148.02,394.24");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=257.27,446.54");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=236.06,377.01");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=252.48,423.59");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=349.55,406.46");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=313.83,552.95");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=309.74,572.64");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=222.71,606.05");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=257.05,477.64");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=276.70,610.34");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=344.65,592.04");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=421.77,520.80");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=346.31,505.59");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=419.71,462.78");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=375.40,514.33");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=327.04,632.37");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=405.91,654.95");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=367.40,610.45");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=418.01,511.31");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=404.92,464.90");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=390.57,444.43");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=347.96,450.45");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=396.52,410.45");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=472.61,380.08");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=117.99,73.45");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=125.17,92.50");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=109.05,40.63");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=26.95,86.12");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=127.73,157.35");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=81.87,177.66");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=9.00,89.06");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=47.04,173.13");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=47.67,119.18");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=9.00,184.24");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=20.49,115.08");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=32.65,65.01");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=79.55,74.34");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=145.45,124.92");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=142.48,112.13");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=98.64,193.57");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=87.22,120.42");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=75.59,186.62");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=137.67,81.23");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=136.44,233.55");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=105.07,201.63");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=118.17,236.60");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=80.20,220.00");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=176.23,340.32");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=212.80,321.92");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=182.61,289.28");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=252.74,393.15");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=262.16,396.91");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=211.29,353.68");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=204.17,314.93");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=181.08,400.63");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=217.45,493.27");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=322.76,510.52");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=183.75,547.60");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=218.02,525.64");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=293.31,465.43");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=297.93,570.99");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=327.48,551.23");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=315.00,435.48");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=451.41,523.22");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=384.65,489.08");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=408.12,493.81");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=309.64,608.37");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=354.57,488.73");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=445.34,586.33");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=368.94,488.79");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=315.83,412.86");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=386.89,501.68");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=479.45,435.15");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=450.52,453.83");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=77.58,20.19");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=118.54,127.98");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=120.53,55.99");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=65.38,130.97");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=87.55,161.97");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=61.85,187.25");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=34.51,75.73");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=88.05,88.21");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=29.02,155.47");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=4.29,74.08");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=5.23,162.30");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=11.60,33.17");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=131.31,31.13");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=45.78,94.68");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=76.41,142.73");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=141.03,203.19");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=11.05,280.30");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=153.36,182.94");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=150.39,165.25");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=41.78,213.07");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=81.80,345.94");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=129.41,256.39");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=92.45,265.72");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=16.18,340.13");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=196.20,306.78");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=182.88,323.12");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=192.82,296.58");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=275.95,304.54");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=150.94,314.88");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=261.80,379.79");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=296.63,400.67");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=288.80,522.76");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=373.32,528.48");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=227.27,496.39");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=306.47,561.98");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=215.12,589.87");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=362.88,530.87");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=414.74,381.40");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=355.77,471.35");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=388.58,521.65");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=409.41,443.62");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=395.81,649.25");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=278.14,633.58");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=270.74,594.80");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=460.99,576.44");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=378.86,554.62");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=328.84,355.52");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=424.21,370.19");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=394.79,380.35");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=432.38,404.73");
    }

}

