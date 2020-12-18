
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn4_2
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
        @display("p=77.31,297.21");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=39.04,249.98");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=60.69,305.97");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=101.13,224.32");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=82.98,243.03");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=98.01,261.84");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=168.75,248.32");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=176.98,220.96");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=158.71,283.11");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=150.28,243.00");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=209.34,201.17");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=201.65,215.85");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=233.84,248.62");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=228.88,259.96");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=190.88,309.51");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=146.53,322.12");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=201.60,298.00");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=277.03,339.72");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=290.06,334.83");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=284.17,324.96");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=233.49,282.15");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=299.59,216.49");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=350.60,189.97");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=337.84,181.91");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=314.85,232.46");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=341.85,140.62");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=320.68,136.21");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=316.14,184.86");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=375.86,123.34");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=288.05,100.50");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=294.42,110.87");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=289.10,134.75");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=376.25,86.30");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=355.85,90.27");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=356.70,129.50");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=327.23,77.56");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=286.90,76.24");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=260.16,94.15");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=225.02,114.52");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=185.71,95.30");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=186.60,147.23");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=151.60,62.99");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=104.21,88.70");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=134.38,37.49");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=57.36,93.18");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=26.65,57.43");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=20.86,115.23");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=37.31,73.10");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=63.86,12.78");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=134.91,252.85");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=64.81,332.12");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=67.32,241.16");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=68.83,312.12");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=76.42,210.72");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=84.44,164.29");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=14.69,306.84");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=263.65,257.73");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=194.53,240.22");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=179.58,248.05");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=188.41,166.26");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=235.78,187.00");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=237.78,292.29");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=215.29,270.78");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=154.72,264.80");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=245.71,300.24");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=118.31,243.46");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=234.71,306.26");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=247.94,346.60");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=258.06,358.91");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=249.95,394.27");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=226.31,198.48");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=301.60,205.66");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=285.58,161.41");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=337.84,166.46");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=375.23,213.89");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=346.08,122.47");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=374.78,135.26");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=242.20,237.11");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=323.81,168.89");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=252.94,51.63");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=273.39,110.47");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=371.47,163.91");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=382.70,96.10");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=359.55,71.49");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=347.32,107.59");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=327.39,94.97");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=198.13,38.77");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=192.46,64.35");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=169.09,108.22");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=158.90,18.22");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=203.31,137.56");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=93.72,90.51");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=125.38,176.69");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=56.94,3.64");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=128.47,26.67");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=72.10,1.83");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=32.00,111.26");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=18.34,68.60");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=88.26,35.57");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=127.71,323.47");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=90.28,278.98");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=0.96,167.95");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=81.00,369.65");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=132.86,221.25");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=103.47,207.16");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=121.19,313.13");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=187.74,221.47");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=203.93,248.74");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=143.49,279.33");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=148.94,151.32");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=259.54,221.26");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=190.66,260.80");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=263.74,304.87");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=253.24,250.95");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=210.80,306.06");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=190.68,362.94");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=198.76,268.65");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=278.72,299.47");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=295.23,350.30");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=346.92,297.84");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=207.17,287.46");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=244.40,220.66");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=314.66,153.79");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=361.85,184.67");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=380.19,179.80");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=309.14,121.90");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=395.03,125.83");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=309.08,110.16");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=382.40,115.46");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=278.62,124.26");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=270.39,196.93");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=349.26,68.73");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=358.23,59.35");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=301.88,135.92");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=359.18,110.29");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=270.07,31.24");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=373.19,56.71");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=328.25,57.36");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=234.57,151.58");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=172.50,58.22");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=199.34,120.72");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=131.56,65.44");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=58.27,149.79");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=172.12,44.29");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=49.00,79.96");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=72.20,89.10");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=72.18,163.75");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=13.08,81.71");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=41.57,22.70");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=99.16,311.69");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=133.60,288.70");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=52.85,343.41");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=3.17,296.05");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=26.79,180.59");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=76.91,263.91");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=181.46,301.36");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=143.09,229.04");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=181.81,230.01");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=223.70,306.98");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=89.98,191.30");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=166.16,182.58");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=154.41,224.37");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=223.49,164.73");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=256.98,291.02");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=166.10,332.42");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=157.43,252.17");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=136.62,328.18");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=234.48,328.42");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=318.12,325.66");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=301.84,227.03");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=157.34,294.09");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=246.07,205.02");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=384.16,150.73");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=366.64,219.06");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=277.51,234.37");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=365.96,88.68");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=325.26,151.02");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=326.12,183.27");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=338.46,79.70");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=238.66,20.92");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=200.54,88.50");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=300.08,173.63");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=339.30,99.09");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=275.27,56.32");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=323.20,116.00");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=298.81,0.40");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=288.46,24.31");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=212.57,101.20");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=243.91,68.60");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=200.06,73.84");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=207.72,50.39");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=113.90,149.05");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=74.73,131.84");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=129.82,3.20");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=133.92,148.97");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=55.76,51.28");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=60.42,137.55");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=96.76,4.90");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=82.49,19.53");
    }

}

