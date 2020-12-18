
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn4_9
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
        @display("p=65.78,101.83");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=125.02,97.25");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=181.96,39.61");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=218.45,39.58");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=240.06,3.52");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=236.54,20.22");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=323.48,0.97");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=255.05,33.82");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=313.97,84.99");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=273.74,31.56");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=258.64,82.72");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=244.90,79.31");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=231.69,44.98");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=177.33,13.05");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=154.57,47.43");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=186.08,101.52");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=208.37,61.30");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=175.99,140.53");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=154.63,133.68");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=122.98,224.75");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=102.18,180.83");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=128.07,153.43");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=146.43,177.08");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=116.36,146.38");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=111.46,165.18");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=109.30,214.35");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=75.99,177.31");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=87.97,210.23");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=66.29,173.34");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=50.80,179.45");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=74.82,212.56");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=14.22,234.63");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=72.18,238.41");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=141.03,285.62");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=153.76,293.67");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=173.23,227.96");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=174.71,261.63");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=154.23,276.36");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=82.86,250.72");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=1.78,272.56");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=56.49,293.15");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=45.00,308.95");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=58.52,314.05");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=59.32,251.87");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=73.13,258.61");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=94.30,221.19");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=130.88,190.88");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=182.76,311.28");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=195.40,308.93");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=59.87,68.94");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=97.03,116.69");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=151.37,121.31");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=207.99,35.03");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=224.28,94.11");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=289.55,28.53");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=170.31,30.76");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=355.38,51.72");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=224.70,55.21");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=352.13,158.93");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=294.16,61.89");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=268.78,89.10");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=274.84,66.93");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=258.28,59.51");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=187.35,2.93");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=227.97,15.01");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=278.48,76.62");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=216.07,71.07");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=192.67,157.28");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=204.49,116.46");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=140.33,309.62");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=65.63,118.23");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=101.18,196.04");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=205.06,231.21");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=49.15,190.00");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=83.87,120.06");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=132.88,211.14");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=86.12,141.64");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=40.05,222.67");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=124.48,166.90");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=64.20,213.86");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=91.13,286.14");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=74.08,228.07");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=66.97,273.66");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=96.29,256.73");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=243.40,263.21");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=235.11,275.09");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=250.03,298.31");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=114.48,256.81");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=154.58,312.97");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=26.44,320.34");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=35.88,197.06");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=45.44,320.57");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=65.90,300.62");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=95.60,296.74");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=21.06,296.15");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=100.92,237.50");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=194.27,236.82");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=192.25,356.69");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=142.85,333.47");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=103.42,60.70");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=34.79,129.44");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=159.56,150.54");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=160.66,5.05");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=174.74,97.36");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=301.74,9.27");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=194.31,16.04");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=340.23,31.09");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=305.46,95.88");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=396.17,45.67");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=232.16,76.38");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=262.00,125.73");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=227.23,161.68");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=248.99,104.41");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=95.61,42.07");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=146.40,39.13");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=242.43,33.59");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=238.66,93.39");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=161.32,233.17");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=147.83,142.73");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=61.66,190.41");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=114.57,178.94");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=126.26,121.62");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=90.62,151.99");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=116.68,56.91");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=153.00,227.61");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=119.04,197.52");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=166.34,161.54");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=111.24,247.07");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=96.44,87.53");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=5.48,142.49");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=106.55,153.34");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=29.83,207.13");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=110.96,305.11");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=186.25,200.26");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=167.47,315.69");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=163.77,284.07");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=178.79,249.08");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=161.34,210.03");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=38.38,239.35");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=20.29,335.43");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=70.83,319.24");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=91.68,355.92");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=38.63,356.84");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=12.84,275.72");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=101.34,350.96");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=82.13,197.95");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=201.19,139.64");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=204.84,325.88");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=214.19,388.23");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=130.41,82.59");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=2.91,76.01");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=150.52,71.19");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=99.21,28.27");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=250.13,123.87");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=229.49,31.61");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=272.64,44.77");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=252.87,8.86");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=248.05,22.88");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=380.24,145.84");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=328.39,86.32");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=333.35,16.83");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=302.30,150.75");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=281.34,104.30");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=121.13,6.10");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=142.71,12.27");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=190.67,123.37");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=180.70,84.66");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=164.69,139.34");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=81.29,160.85");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=135.74,226.83");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=124.10,236.44");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=38.00,156.03");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=238.42,162.37");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=37.66,89.56");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=192.92,210.63");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=203.63,187.57");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=73.46,128.81");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=41.69,290.20");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=54.52,158.26");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=88.77,110.37");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=128.72,263.28");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=26.13,233.94");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=146.50,235.35");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=123.23,323.17");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=159.83,336.58");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=221.87,229.42");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=241.16,197.67");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=123.43,341.09");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=34.91,258.11");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=4.02,212.00");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=24.80,385.01");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=122.62,310.56");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=79.48,398.87");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=123.08,248.15");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=133.24,301.97");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=21.49,249.85");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=160.05,185.26");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=263.14,271.52");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=204.81,298.56");
    }

}

