
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn4-5
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
        @display("p=146.00,340.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=76.99,358.59");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=57.41,358.82");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=71.14,419.11");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=35.36,384.38");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=46.60,471.77");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=30.70,458.59");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=121.47,463.10");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=102.04,495.26");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=133.07,464.77");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=100.49,382.19");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=63.33,384.89");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=136.80,385.60");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=141.98,414.94");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=115.51,432.44");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=104.50,421.22");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=131.56,439.77");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=161.55,466.24");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=227.61,467.69");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=162.46,477.15");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=161.33,429.09");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=107.82,454.22");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=65.29,453.77");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=45.66,414.94");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=19.66,424.00");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=100.97,371.79");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=95.95,400.20");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=144.96,326.40");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=97.30,278.42");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=113.19,338.46");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=143.39,304.76");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=145.51,273.75");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=221.21,235.03");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=189.19,242.02");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=182.42,234.60");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=261.59,235.24");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=271.76,230.76");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=297.87,227.36");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=149.88,221.14");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=123.25,149.86");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=112.93,56.49");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=66.19,108.34");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=58.67,142.16");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=38.02,93.77");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=56.06,66.42");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=71.52,54.13");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=43.12,6.06");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=22.98,62.96");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=100.81,85.74");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=94.44,10.64");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=138.85,369.56");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=93.38,451.03");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=61.04,284.83");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=66.58,404.36");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=48.42,389.93");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=9.79,438.31");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=22.48,466.03");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=59.84,498.37");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=117.94,490.99");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=179.39,495.89");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=5.18,385.34");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=5.03,319.62");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=90.71,340.91");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=158.48,411.90");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=41.35,497.68");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=113.71,353.87");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=58.58,435.41");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=171.92,422.44");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=162.20,535.00");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=245.30,480.92");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=84.59,425.08");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=77.39,474.56");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=67.83,481.81");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=16.31,372.07");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=84.72,369.41");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=124.18,316.73");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=152.74,366.30");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=222.52,389.11");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=90.22,246.43");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=123.76,331.86");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=49.56,272.88");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=102.16,303.13");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=247.10,253.86");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=206.62,185.05");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=160.77,208.27");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=220.26,316.34");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=330.17,287.15");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=269.96,213.00");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=113.62,201.25");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=46.37,183.89");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=67.39,122.51");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=34.71,115.28");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=119.76,75.32");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=13.67,76.89");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=61.65,29.90");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=155.58,26.31");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=37.56,40.29");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=90.42,98.71");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=82.45,178.66");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=147.87,4.47");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=86.42,324.05");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=7.15,401.24");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=70.24,347.20");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=93.06,415.30");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=69.98,435.06");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=116.36,511.26");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=29.23,441.50");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=196.24,488.99");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=104.04,511.22");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=83.56,385.63");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=189.70,407.08");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=64.69,371.75");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=150.24,385.12");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=221.65,438.16");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=105.75,408.79");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=185.02,397.52");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=163.48,388.06");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=202.21,432.02");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=254.23,467.81");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=139.14,511.65");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=172.94,444.33");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=190.27,441.97");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=21.47,504.24");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=25.34,400.63");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=16.43,394.03");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=145.05,316.06");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=142.95,478.58");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=155.71,353.14");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=179.51,244.89");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=78.47,298.12");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=203.96,356.14");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=72.63,277.87");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=162.49,299.36");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=160.34,328.72");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=124.85,191.77");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=228.96,262.86");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=275.99,325.10");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=293.34,211.26");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=167.44,200.54");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=94.77,189.98");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=161.11,93.80");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=41.46,139.31");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=101.43,153.49");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=39.92,124.62");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=132.88,18.02");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=112.21,114.33");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=84.35,57.93");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=106.02,100.26");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=138.52,147.09");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=124.45,65.91");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=52.88,315.98");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=44.55,353.58");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=54.23,373.83");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=158.91,441.41");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=39.10,366.98");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=53.00,506.33");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=123.80,447.97");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=132.25,427.69");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=70.50,521.26");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=178.05,483.00");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=27.63,354.36");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=32.46,415.38");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=133.70,327.66");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=129.62,364.89");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=148.30,429.70");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=45.60,440.18");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=218.18,411.01");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=182.19,466.02");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=155.97,510.69");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=204.60,449.48");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=180.06,351.55");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=156.54,401.10");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=84.68,495.21");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=3.96,446.60");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=3.27,509.07");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=135.77,286.25");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=161.05,372.06");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=168.38,334.88");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=119.49,279.22");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=208.15,312.54");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=144.87,253.45");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=240.78,287.43");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=308.19,198.60");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=213.30,295.99");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=107.48,288.13");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=267.83,251.47");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=294.39,133.80");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=323.92,134.22");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=184.49,275.82");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=103.98,167.85");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=100.58,45.77");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=7.60,189.18");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=111.10,137.03");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=85.35,120.95");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=69.99,137.64");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=163.81,52.57");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=118.75,24.26");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=81.45,42.73");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=122.04,124.86");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=45.14,85.91");
    }

}

