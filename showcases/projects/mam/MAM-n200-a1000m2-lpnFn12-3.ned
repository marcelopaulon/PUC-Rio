
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn12-3
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
        @display("p=226.00,300.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=225.73,212.06");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=209.71,246.76");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=228.94,239.51");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=174.65,299.16");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=212.97,355.73");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=202.79,440.93");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=216.21,440.52");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=227.60,491.67");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=160.59,522.50");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=163.83,558.78");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=164.99,504.07");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=152.80,547.67");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=188.42,468.86");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=174.64,495.51");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=109.56,491.65");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=213.46,540.95");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=198.30,250.38");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=199.83,220.11");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=137.94,200.70");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=219.20,174.78");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=201.92,308.22");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=191.58,321.16");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=241.17,447.45");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=221.82,477.63");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=253.82,538.85");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=172.48,440.27");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=182.37,556.32");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=228.98,526.91");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=229.54,580.52");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=175.62,454.17");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=142.63,417.78");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=61.98,552.32");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=172.80,521.71");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=151.97,356.19");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=213.37,228.59");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=223.36,200.28");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=215.49,268.70");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=93.78,326.34");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=286.23,321.12");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=203.49,425.10");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=225.34,464.43");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=146.63,442.09");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=79.52,530.27");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=191.09,521.36");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=162.85,601.74");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=62.03,569.25");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=126.99,481.37");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=96.62,488.64");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=95.30,472.02");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=198.71,612.90");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=226.91,274.87");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=179.45,213.04");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=161.15,285.61");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=231.00,186.14");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=180.78,248.47");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=162.52,314.49");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=136.72,389.17");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=249.03,465.52");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=245.76,506.23");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=132.68,546.93");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=114.66,584.00");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=138.20,533.79");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=134.16,521.34");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=202.17,472.39");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=157.38,468.07");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=109.59,565.48");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=295.46,487.53");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=251.50,383.47");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=177.84,231.15");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=232.23,151.77");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=268.08,259.74");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=186.77,311.76");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=236.32,359.36");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=290.29,443.30");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=190.93,495.33");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=322.98,465.28");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=168.64,567.59");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=193.23,591.27");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=174.57,481.79");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=123.55,577.66");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=143.90,500.50");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=121.07,459.85");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=126.65,533.73");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=247.92,574.64");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=211.61,335.12");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=171.48,166.97");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=171.87,184.50");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=215.68,286.51");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=175.69,310.57");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=120.04,378.72");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=217.39,394.43");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=193.35,354.03");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=240.02,545.08");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=151.76,512.28");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=113.67,643.10");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=252.17,455.42");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=189.91,570.96");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=171.91,390.01");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=239.17,566.50");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=139.25,556.19");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=169.38,617.84");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=189.86,341.60");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=305.76,167.92");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=150.89,216.99");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=166.46,228.89");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=228.58,343.90");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=188.15,426.46");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=211.49,499.96");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=186.02,377.72");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=236.19,479.65");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=180.16,538.92");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=88.04,565.09");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=257.15,527.80");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=142.12,607.06");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=126.76,433.13");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=179.24,509.75");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=98.88,438.25");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=170.26,466.77");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=245.68,338.76");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=281.76,216.85");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=294.99,198.83");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=157.15,249.85");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=173.29,278.29");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=179.27,405.42");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=192.45,437.42");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=191.16,402.56");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=225.01,545.95");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=90.99,579.95");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=112.14,514.07");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=246.09,521.91");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=226.28,567.02");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=191.37,456.85");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=151.73,574.25");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=52.39,457.46");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=267.97,617.27");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=257.37,265.92");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=290.79,285.34");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=282.45,266.76");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=260.12,158.70");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=146.62,298.79");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=254.61,349.79");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=284.80,454.47");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=179.20,472.87");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=277.13,426.89");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=148.86,462.79");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=187.47,616.77");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=255.12,473.59");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=143.78,644.20");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=261.47,437.84");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=164.04,479.17");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=140.33,481.01");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=271.99,587.22");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=223.97,310.39");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=307.15,247.24");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=246.69,300.29");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=254.83,249.45");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=189.75,214.00");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=129.31,406.33");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=117.44,415.13");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=276.78,438.51");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=292.98,540.07");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=113.96,481.59");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=119.88,500.72");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=192.50,553.33");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=201.89,542.87");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=234.58,468.50");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=229.45,449.16");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=92.27,538.07");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=273.83,538.82");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=314.76,308.09");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=239.55,201.06");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=221.50,248.05");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=166.61,200.46");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=256.16,280.22");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=292.22,357.52");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=218.36,456.82");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=159.40,488.88");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=201.35,500.28");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=208.08,553.32");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=144.27,520.88");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=92.44,461.41");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=99.55,529.12");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=236.90,395.53");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=155.83,434.02");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=41.28,521.77");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=263.67,536.93");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=286.09,370.70");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=308.25,156.80");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=150.98,309.17");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=188.17,241.23");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=114.41,304.54");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=222.76,361.10");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=138.94,453.45");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=220.65,427.21");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=212.05,489.66");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=120.44,544.10");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=103.77,629.88");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=173.16,582.19");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=107.96,609.85");
    }

}

