
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn12_3
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
        @display("p=109.85,92.55");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=111.87,116.79");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=29.42,162.99");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=9.12,173.69");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=7.93,236.34");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=17.97,266.31");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=85.53,279.21");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=115.54,212.83");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=98.86,218.66");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=117.13,258.91");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=96.11,341.14");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=109.09,243.20");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=80.89,246.48");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=78.30,322.58");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=97.29,378.55");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=102.35,390.65");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=151.72,73.27");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=93.41,107.94");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=203.57,112.47");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=42.06,184.73");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=45.54,121.19");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=38.02,252.58");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=94.43,238.36");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=101.92,289.04");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=153.73,207.70");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=180.44,168.96");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=169.63,340.42");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=101.62,358.24");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=56.35,221.53");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=56.87,233.78");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=92.29,327.77");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=67.30,400.40");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=76.93,445.67");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=70.70,51.85");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=122.20,130.57");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=33.74,149.57");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=77.24,163.92");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=33.80,232.40");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=46.24,241.92");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=3.23,301.29");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=135.96,299.62");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=84.53,174.78");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=130.86,283.33");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=68.43,227.56");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=79.97,398.77");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=143.26,182.86");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=110.25,302.28");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=33.31,330.90");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=82.94,352.73");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=59.42,443.61");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=71.27,179.38");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=143.80,80.27");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=49.14,74.64");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=87.39,229.68");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=2.35,136.80");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=20.54,237.05");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=12.88,293.13");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=85.96,214.62");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=181.29,283.28");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=103.95,168.30");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=162.46,225.98");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=45.97,338.01");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=138.92,203.60");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=64.94,247.71");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=73.72,358.79");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=44.98,427.99");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=155.40,464.33");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=33.99,73.36");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=168.27,70.76");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=147.56,91.17");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=11.04,152.87");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=59.31,204.58");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=28.86,204.78");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=24.94,287.61");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=84.30,334.41");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=172.31,223.33");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=143.48,213.76");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=154.02,173.28");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=74.88,312.44");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=43.89,315.18");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=74.90,213.34");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=20.67,301.59");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=146.81,423.21");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=183.11,392.12");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=135.43,116.81");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=28.79,60.37");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=130.65,153.24");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=22.90,88.72");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=95.18,205.07");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=8.55,219.24");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=67.79,262.17");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=65.32,279.98");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=73.47,272.63");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=99.69,247.53");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=90.19,308.04");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=130.27,260.60");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=114.86,324.89");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=26.77,319.22");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=12.75,371.95");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=141.54,461.72");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=174.61,322.40");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=101.98,86.38");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=174.23,60.09");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=104.85,146.57");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=99.17,136.60");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=2.63,198.02");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=38.99,194.99");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=7.99,246.51");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=151.87,308.14");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=102.44,265.24");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=122.32,232.04");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=162.05,257.05");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=131.32,361.12");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=90.81,183.87");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=148.14,243.02");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=41.36,401.70");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=130.95,414.41");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=106.37,400.00");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=27.90,36.71");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=39.00,83.20");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=124.84,107.06");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=45.45,106.25");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=85.95,136.05");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=8.92,276.16");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=20.85,357.69");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=117.16,279.98");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=108.81,197.03");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=60.98,126.47");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=130.23,188.65");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=185.22,346.06");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=63.44,315.67");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=19.83,277.10");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=158.79,360.49");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=61.79,378.18");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=53.42,470.97");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=153.96,155.83");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=187.49,66.71");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=75.13,81.15");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=56.25,139.00");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=31.80,267.95");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=48.80,206.28");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=52.52,188.20");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=123.61,330.31");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=164.79,198.55");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=117.60,183.29");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=173.24,270.74");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=135.68,314.04");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=96.62,160.52");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=133.85,246.75");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=71.04,301.88");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=135.77,326.15");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=112.67,377.13");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=38.22,174.14");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=71.46,22.29");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=177.11,136.52");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=21.84,178.38");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=17.41,115.58");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=42.38,226.32");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=77.94,257.58");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=39.49,210.14");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=129.96,169.14");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=186.25,200.63");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=96.06,277.07");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=139.37,336.59");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=137.79,231.81");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=53.93,265.07");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=50.63,292.40");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=18.78,411.58");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=171.22,402.52");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=165.27,91.36");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=53.30,88.95");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=178.47,77.72");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=60.82,174.97");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=20.98,250.53");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=9.35,324.06");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=20.01,338.21");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=49.14,275.65");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=185.80,243.20");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=106.35,227.42");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=122.87,247.99");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=114.84,435.31");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=46.23,304.59");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=126.14,303.66");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=127.97,404.85");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=145.04,400.56");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=91.51,407.27");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=89.80,6.34");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=94.03,43.05");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=97.88,119.26");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=29.73,118.51");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=18.98,225.76");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=17.72,207.97");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=60.04,353.53");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=147.05,297.64");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=114.09,167.26");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=173.82,244.61");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=151.56,345.46");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=189.34,307.70");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=160.84,288.52");
    }

}

