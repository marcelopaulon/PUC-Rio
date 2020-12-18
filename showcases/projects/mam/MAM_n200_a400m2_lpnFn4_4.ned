
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn4_4
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
        @display("p=109.92,286.40");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=32.11,273.96");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=23.83,206.93");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=7.53,181.84");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=7.04,238.53");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=6.32,212.00");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=39.25,210.55");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=14.44,261.06");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=36.66,262.07");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=140.85,385.80");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=122.18,324.22");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=101.62,338.64");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=40.51,317.17");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=60.73,302.74");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=30.31,328.15");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=42.45,300.76");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=51.57,321.03");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=51.19,349.09");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=96.78,387.46");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=2.59,386.72");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=10.40,372.97");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=12.71,383.31");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=112.12,374.72");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=168.71,328.36");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=221.03,250.07");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=209.11,251.94");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=242.99,261.13");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=279.57,304.42");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=341.25,323.25");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=349.48,299.35");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=321.01,390.06");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=225.87,383.48");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=198.49,300.26");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=157.14,315.03");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=120.60,280.77");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=93.85,286.00");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=25.48,290.62");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=68.43,240.10");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=88.07,201.66");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=165.83,202.24");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=137.63,147.24");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=204.83,136.00");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=212.09,154.19");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=270.77,99.10");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=237.18,101.51");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=222.08,136.90");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=142.57,128.64");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=201.87,73.84");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=197.60,20.88");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=142.15,248.42");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=170.98,346.74");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=9.38,249.26");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=61.65,193.65");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=30.55,153.26");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=19.52,311.60");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=64.53,228.65");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=85.02,232.19");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=0.26,263.12");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=60.74,344.33");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=78.75,398.12");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=103.57,354.24");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=4.31,324.11");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=92.69,357.78");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=51.98,288.03");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=46.68,365.59");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=13.89,320.97");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=77.45,295.74");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=48.55,389.35");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=85.55,387.18");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=24.63,395.12");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=6.45,358.75");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=73.95,378.31");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=116.89,384.87");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=183.62,324.29");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=240.61,239.42");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=114.99,235.79");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=205.28,193.53");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=265.23,285.07");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=300.53,383.80");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=298.82,234.60");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=271.62,349.84");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=267.78,389.09");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=130.65,261.44");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=140.79,355.23");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=113.21,270.23");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=87.37,301.95");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=11.86,281.53");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=100.88,209.92");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=57.26,156.39");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=248.82,160.42");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=60.93,145.75");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=146.31,67.69");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=183.66,201.31");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=353.70,140.23");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=204.27,41.68");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=217.32,174.53");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=156.28,122.80");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=176.04,91.26");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=208.19,52.63");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=87.52,248.72");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=103.78,242.04");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=106.66,327.29");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=26.83,172.09");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=7.87,270.70");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=59.17,245.70");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=39.34,136.08");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=53.78,217.93");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=53.47,330.99");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=89.43,312.61");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=130.78,382.53");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=63.07,367.54");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=166.16,368.09");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=66.10,320.93");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=1.13,296.68");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=75.99,315.38");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=77.62,284.77");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=59.53,262.07");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=5.37,337.33");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=83.22,341.67");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=0.71,370.37");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=0.16,278.51");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=40.13,332.37");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=118.16,347.71");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=143.73,375.17");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=218.58,186.54");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=232.54,271.20");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=162.82,274.79");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=308.74,351.65");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=308.78,288.32");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=370.70,333.87");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=305.31,374.74");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=210.00,346.05");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=283.00,269.32");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=141.38,314.54");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=121.70,227.93");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=93.86,325.26");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=79.75,217.97");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=72.49,251.55");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=86.58,127.23");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=182.87,168.65");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=156.74,151.60");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=166.29,127.02");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=123.88,134.91");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=286.29,34.23");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=213.87,88.87");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=167.27,98.42");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=119.41,216.07");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=177.61,67.77");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=224.50,6.16");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=130.89,273.35");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=89.15,266.71");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=48.30,201.86");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=77.26,144.65");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=39.33,185.06");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=7.06,227.64");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=98.43,223.03");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=81.13,163.51");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=25.44,182.19");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=33.25,247.85");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=237.09,371.42");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=116.92,300.72");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=179.28,365.95");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=29.70,299.89");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=47.00,263.38");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=35.14,359.39");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=64.51,276.05");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=71.69,339.79");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=26.45,342.18");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=64.93,387.16");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=69.19,357.47");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=18.43,349.42");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=26.61,372.66");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=128.89,360.85");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=182.08,346.77");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=251.33,296.36");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=256.33,249.89");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=287.58,294.00");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=277.05,336.96");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=324.33,331.50");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=369.64,343.88");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=341.38,369.82");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=244.92,382.79");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=197.34,223.10");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=191.33,308.25");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=155.33,243.66");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=142.82,285.38");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=62.67,288.60");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=37.19,236.92");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=96.29,104.54");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=135.43,209.39");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=176.13,181.55");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=278.82,191.35");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=287.67,163.14");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=279.79,89.53");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=169.65,52.14");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=232.51,144.19");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=111.96,88.82");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=182.73,20.81");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=241.41,23.81");
    }

}

