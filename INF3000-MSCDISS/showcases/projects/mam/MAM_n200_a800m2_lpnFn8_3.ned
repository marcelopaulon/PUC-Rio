
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn8_3
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
        @display("p=109.57,155.35");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=144.50,234.64");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=228.76,257.38");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=180.75,209.68");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=202.78,237.92");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=286.53,272.70");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=308.31,251.03");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=356.17,219.55");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=423.77,166.21");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=398.16,97.57");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=490.87,117.15");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=491.67,132.89");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=490.80,95.62");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=568.53,87.47");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=546.84,82.96");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=516.69,26.50");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=544.47,6.72");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=547.00,17.80");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=498.41,14.73");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=416.17,13.17");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=390.35,49.11");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=349.06,95.82");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=473.23,108.36");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=404.00,121.89");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=62.22,82.33");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=116.47,198.59");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=127.79,147.64");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=183.53,276.81");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=250.38,233.99");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=208.62,297.83");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=235.40,326.75");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=265.93,301.44");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=432.44,223.04");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=411.61,143.83");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=430.49,103.42");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=514.00,66.12");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=464.39,190.36");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=500.93,192.10");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=563.69,103.58");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=512.62,105.01");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=532.99,89.14");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=568.57,49.15");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=512.58,2.54");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=465.81,9.56");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=396.74,59.21");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=450.74,59.18");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=318.04,56.15");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=500.26,92.13");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=361.11,183.50");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=81.71,123.58");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=119.74,243.00");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=190.58,307.98");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=217.23,246.87");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=272.39,214.60");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=266.68,205.58");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=287.57,332.19");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=346.38,197.63");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=378.34,210.62");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=452.55,127.29");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=378.81,124.60");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=502.97,127.58");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=546.38,159.97");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=459.20,96.45");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=623.68,84.70");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=577.13,43.73");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=469.10,61.63");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=530.78,21.50");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=526.10,12.23");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=513.17,39.80");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=371.97,48.19");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=360.65,75.83");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=314.28,114.89");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=557.39,77.74");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=441.57,131.91");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=117.16,108.56");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=116.79,121.19");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=160.08,249.39");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=256.35,270.11");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=141.38,141.95");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=140.34,283.17");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=292.70,259.89");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=325.82,251.31");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=350.33,260.93");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=463.75,210.03");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=359.31,122.85");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=531.12,71.83");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=508.17,146.45");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=455.37,74.94");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=614.87,118.68");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=552.18,111.26");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=489.63,8.50");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=557.78,40.02");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=582.65,58.51");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=479.56,10.71");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=389.06,21.08");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=308.33,42.83");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=322.78,43.74");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=470.09,97.79");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=392.33,127.91");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=77.92,158.66");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=167.96,203.36");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=163.92,239.06");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=239.38,199.37");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=131.46,245.29");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=283.53,283.78");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=315.27,211.04");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=297.89,220.21");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=384.80,239.88");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=409.17,167.85");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=441.90,78.06");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=450.18,101.46");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=479.12,134.04");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=454.64,179.15");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=610.19,132.51");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=586.35,131.92");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=590.09,90.20");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=567.05,34.57");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=540.18,27.56");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=497.13,57.58");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=367.68,11.96");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=402.78,2.55");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=372.27,79.74");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=409.11,103.81");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=395.18,71.41");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=45.09,27.02");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=174.46,183.88");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=110.94,322.10");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=286.56,233.22");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=156.42,286.25");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=190.02,195.50");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=312.72,328.35");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=281.27,156.38");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=355.07,237.36");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=387.57,114.38");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=330.19,137.08");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=448.80,115.63");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=478.94,42.92");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=486.98,189.26");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=546.29,147.92");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=568.89,16.32");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=506.89,31.43");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=624.67,43.79");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=531.72,53.93");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=501.00,4.14");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=481.62,24.06");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=382.74,90.43");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=357.17,23.00");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=539.92,122.51");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=421.98,143.66");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=154.83,151.51");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=128.53,135.27");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=230.33,205.38");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=170.77,272.31");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=155.50,223.56");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=184.11,231.67");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=264.11,258.84");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=334.62,259.60");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=413.33,277.61");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=446.92,142.23");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=410.31,70.25");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=504.23,69.69");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=530.56,147.70");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=576.48,94.00");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=602.80,102.29");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=554.25,137.34");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=486.21,34.52");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=640.09,9.73");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=479.73,82.86");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=561.98,64.79");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=338.85,7.35");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=368.01,27.43");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=374.51,112.96");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=428.04,54.47");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=357.84,141.21");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=160.79,26.60");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=54.94,120.92");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=60.98,218.05");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=309.89,222.17");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=234.24,231.18");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=168.87,284.50");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=307.90,281.87");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=322.87,203.16");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=299.29,137.95");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=454.54,225.46");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=370.17,1.60");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=545.53,62.72");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=573.91,78.84");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=555.29,92.79");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=653.25,104.28");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=536.69,40.65");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=496.84,47.32");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=458.79,41.89");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=610.67,91.58");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=462.60,84.14");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=433.13,5.75");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=422.61,114.94");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=314.95,104.70");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=460.90,113.91");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=388.80,147.83");
    }

}

