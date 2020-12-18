
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn1-8
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
        @display("p=41.00,376.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=62.67,382.64");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=125.37,327.51");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=146.89,365.04");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=100.96,342.45");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=89.31,366.87");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=66.85,365.86");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=88.05,350.76");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=83.51,335.33");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=58.57,333.07");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=94.80,384.13");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=165.30,423.59");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=237.80,368.87");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=170.70,344.57");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=107.33,312.11");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=39.24,310.93");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=59.58,355.78");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=70.90,258.06");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=12.39,225.34");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=7.48,296.83");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=73.14,346.63");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=64.97,298.22");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=92.01,208.59");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=106.10,217.96");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=17.32,193.81");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=63.40,134.17");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=64.86,151.25");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=46.07,71.70");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=42.41,113.05");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=107.22,74.96");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=102.76,136.65");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=131.29,56.42");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=126.27,151.26");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=186.12,130.66");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=178.75,80.00");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=188.41,70.65");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=167.69,20.72");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=177.72,49.07");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=197.41,27.19");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=155.35,64.95");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=168.99,66.48");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=133.98,126.85");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=104.86,42.73");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=73.99,130.79");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=61.86,116.32");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=142.14,111.75");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=209.22,99.67");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=215.07,120.36");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=234.26,191.25");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=256.01,209.79");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=241.20,212.09");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=205.26,211.55");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=144.12,213.24");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=52.38,179.20");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=33.91,178.36");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=102.55,187.73");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=92.96,129.30");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=184.17,163.24");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=177.99,184.90");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=191.60,111.24");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=190.06,19.87");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=191.87,5.21");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=122.24,34.80");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=185.89,39.63");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=173.90,36.52");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=247.02,20.81");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=238.23,30.54");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=215.55,36.58");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=267.04,63.87");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=257.16,57.93");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=284.35,131.13");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=343.80,166.47");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=288.13,83.93");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=306.79,87.69");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=212.92,16.91");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=307.90,21.61");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=299.51,28.66");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=243.18,45.08");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=256.60,5.99");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=254.05,78.70");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=255.84,89.89");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=284.00,150.59");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=231.07,77.09");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=322.44,109.93");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=323.00,156.73");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=161.98,166.25");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=188.68,82.01");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=237.54,100.20");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=270.96,102.99");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=257.33,115.48");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=269.81,163.93");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=373.07,237.76");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=362.83,142.16");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=365.27,105.71");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=426.89,43.89");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=470.71,90.53");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=431.86,101.25");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=340.81,133.94");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=349.77,141.83");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=384.28,169.63");
    }

    host_fn_rly_101: <default("SensorNode")> like INetworkNode {
        @display("p=450.35,142.20");
    }

    host_fn_rly_102: <default("SensorNode")> like INetworkNode {
        @display("p=478.97,192.80");
    }

    host_fn_rly_103: <default("SensorNode")> like INetworkNode {
        @display("p=439.61,209.31");
    }

    host_fn_rly_104: <default("SensorNode")> like INetworkNode {
        @display("p=485.99,165.95");
    }

    host_fn_rly_105: <default("SensorNode")> like INetworkNode {
        @display("p=546.36,165.66");
    }

    host_fn_rly_106: <default("SensorNode")> like INetworkNode {
        @display("p=539.35,204.84");
    }

    host_fn_rly_107: <default("SensorNode")> like INetworkNode {
        @display("p=548.66,233.37");
    }

    host_fn_rly_108: <default("SensorNode")> like INetworkNode {
        @display("p=533.81,164.00");
    }

    host_fn_rly_109: <default("SensorNode")> like INetworkNode {
        @display("p=528.13,213.54");
    }

    host_fn_rly_110: <default("SensorNode")> like INetworkNode {
        @display("p=492.74,216.73");
    }

    host_fn_rly_111: <default("SensorNode")> like INetworkNode {
        @display("p=585.36,213.59");
    }

    host_fn_rly_112: <default("SensorNode")> like INetworkNode {
        @display("p=618.71,189.58");
    }

    host_fn_rly_113: <default("SensorNode")> like INetworkNode {
        @display("p=580.60,223.56");
    }

    host_fn_rly_114: <default("SensorNode")> like INetworkNode {
        @display("p=593.91,225.81");
    }

    host_fn_rly_115: <default("SensorNode")> like INetworkNode {
        @display("p=625.14,253.33");
    }

    host_fn_rly_116: <default("SensorNode")> like INetworkNode {
        @display("p=579.56,169.87");
    }

    host_fn_rly_117: <default("SensorNode")> like INetworkNode {
        @display("p=616.07,158.28");
    }

    host_fn_rly_118: <default("SensorNode")> like INetworkNode {
        @display("p=601.93,70.28");
    }

    host_fn_rly_119: <default("SensorNode")> like INetworkNode {
        @display("p=517.86,24.33");
    }

    host_fn_rly_120: <default("SensorNode")> like INetworkNode {
        @display("p=578.75,95.07");
    }

    host_fn_rly_121: <default("SensorNode")> like INetworkNode {
        @display("p=529.75,109.41");
    }

    host_fn_rly_122: <default("SensorNode")> like INetworkNode {
        @display("p=535.67,117.52");
    }

    host_fn_rly_123: <default("SensorNode")> like INetworkNode {
        @display("p=513.78,118.96");
    }

    host_fn_rly_124: <default("SensorNode")> like INetworkNode {
        @display("p=569.60,135.71");
    }

    host_fn_rly_125: <default("SensorNode")> like INetworkNode {
        @display("p=570.82,199.47");
    }

    host_fn_rly_126: <default("SensorNode")> like INetworkNode {
        @display("p=666.60,183.50");
    }

    host_fn_rly_127: <default("SensorNode")> like INetworkNode {
        @display("p=654.90,246.85");
    }

    host_fn_rly_128: <default("SensorNode")> like INetworkNode {
        @display("p=563.57,230.70");
    }

    host_fn_rly_129: <default("SensorNode")> like INetworkNode {
        @display("p=491.46,187.89");
    }

    host_fn_rly_130: <default("SensorNode")> like INetworkNode {
        @display("p=396.60,209.46");
    }

    host_fn_rly_131: <default("SensorNode")> like INetworkNode {
        @display("p=322.28,201.43");
    }

    host_fn_rly_132: <default("SensorNode")> like INetworkNode {
        @display("p=307.68,182.47");
    }

    host_fn_rly_133: <default("SensorNode")> like INetworkNode {
        @display("p=248.90,237.23");
    }

    host_fn_rly_134: <default("SensorNode")> like INetworkNode {
        @display("p=237.22,249.71");
    }

    host_fn_rly_135: <default("SensorNode")> like INetworkNode {
        @display("p=163.73,259.11");
    }

    host_fn_rly_136: <default("SensorNode")> like INetworkNode {
        @display("p=207.47,240.05");
    }

    host_fn_rly_137: <default("SensorNode")> like INetworkNode {
        @display("p=200.91,183.28");
    }

    host_fn_rly_138: <default("SensorNode")> like INetworkNode {
        @display("p=134.71,86.57");
    }

    host_fn_rly_139: <default("SensorNode")> like INetworkNode {
        @display("p=112.77,27.56");
    }

    host_fn_rly_140: <default("SensorNode")> like INetworkNode {
        @display("p=82.27,55.96");
    }

    host_fn_rly_141: <default("SensorNode")> like INetworkNode {
        @display("p=63.76,88.33");
    }

    host_fn_rly_142: <default("SensorNode")> like INetworkNode {
        @display("p=85.08,21.29");
    }

    host_fn_rly_143: <default("SensorNode")> like INetworkNode {
        @display("p=69.06,9.79");
    }

    host_fn_rly_144: <default("SensorNode")> like INetworkNode {
        @display("p=33.99,17.51");
    }

    host_fn_rly_145: <default("SensorNode")> like INetworkNode {
        @display("p=49.40,42.64");
    }

    host_fn_rly_146: <default("SensorNode")> like INetworkNode {
        @display("p=82.52,34.06");
    }

    host_fn_rly_147: <default("SensorNode")> like INetworkNode {
        @display("p=65.81,48.23");
    }

    host_fn_rly_148: <default("SensorNode")> like INetworkNode {
        @display("p=101.84,22.97");
    }

    host_fn_rly_149: <default("SensorNode")> like INetworkNode {
        @display("p=56.33,5.01");
    }

    host_fn_rly_150: <default("SensorNode")> like INetworkNode {
        @display("p=26.92,4.91");
    }

    host_fn_rly_151: <default("SensorNode")> like INetworkNode {
        @display("p=127.02,46.33");
    }

    host_fn_rly_152: <default("SensorNode")> like INetworkNode {
        @display("p=144.26,24.13");
    }

    host_fn_rly_153: <default("SensorNode")> like INetworkNode {
        @display("p=141.36,36.60");
    }

    host_fn_rly_154: <default("SensorNode")> like INetworkNode {
        @display("p=142.80,51.67");
    }

    host_fn_rly_155: <default("SensorNode")> like INetworkNode {
        @display("p=77.73,92.07");
    }

    host_fn_rly_156: <default("SensorNode")> like INetworkNode {
        @display("p=94.01,57.02");
    }

    host_fn_rly_157: <default("SensorNode")> like INetworkNode {
        @display("p=127.70,106.52");
    }

    host_fn_rly_158: <default("SensorNode")> like INetworkNode {
        @display("p=119.17,76.98");
    }

    host_fn_rly_159: <default("SensorNode")> like INetworkNode {
        @display("p=75.45,74.76");
    }

    host_fn_rly_160: <default("SensorNode")> like INetworkNode {
        @display("p=98.78,89.75");
    }

    host_fn_rly_161: <default("SensorNode")> like INetworkNode {
        @display("p=9.37,26.18");
    }

    host_fn_rly_162: <default("SensorNode")> like INetworkNode {
        @display("p=45.82,83.85");
    }

    host_fn_rly_163: <default("SensorNode")> like INetworkNode {
        @display("p=32.63,31.47");
    }

    host_fn_rly_164: <default("SensorNode")> like INetworkNode {
        @display("p=5.01,110.96");
    }

    host_fn_rly_165: <default("SensorNode")> like INetworkNode {
        @display("p=31.42,107.18");
    }

    host_fn_rly_166: <default("SensorNode")> like INetworkNode {
        @display("p=29.85,129.01");
    }

    host_fn_rly_167: <default("SensorNode")> like INetworkNode {
        @display("p=82.82,143.60");
    }

    host_fn_rly_168: <default("SensorNode")> like INetworkNode {
        @display("p=15.17,151.89");
    }

    host_fn_rly_169: <default("SensorNode")> like INetworkNode {
        @display("p=82.95,187.55");
    }

    host_fn_rly_170: <default("SensorNode")> like INetworkNode {
        @display("p=178.48,215.29");
    }

    host_fn_rly_171: <default("SensorNode")> like INetworkNode {
        @display("p=163.13,203.85");
    }

    host_fn_rly_172: <default("SensorNode")> like INetworkNode {
        @display("p=197.79,132.43");
    }

    host_fn_rly_173: <default("SensorNode")> like INetworkNode {
        @display("p=211.68,132.43");
    }

    host_fn_rly_174: <default("SensorNode")> like INetworkNode {
        @display("p=222.55,211.79");
    }

    host_fn_rly_175: <default("SensorNode")> like INetworkNode {
        @display("p=130.54,176.16");
    }

    host_fn_rly_176: <default("SensorNode")> like INetworkNode {
        @display("p=170.79,106.58");
    }

    host_fn_rly_177: <default("SensorNode")> like INetworkNode {
        @display("p=0.44,37.29");
    }

    host_fn_rly_178: <default("SensorNode")> like INetworkNode {
        @display("p=11.24,47.26");
    }

    host_fn_rly_179: <default("SensorNode")> like INetworkNode {
        @display("p=62.02,73.55");
    }

    host_fn_rly_180: <default("SensorNode")> like INetworkNode {
        @display("p=19.77,21.71");
    }

    host_fn_rly_181: <default("SensorNode")> like INetworkNode {
        @display("p=158.67,11.54");
    }

    host_fn_rly_182: <default("SensorNode")> like INetworkNode {
        @display("p=116.55,97.75");
    }

    host_fn_rly_183: <default("SensorNode")> like INetworkNode {
        @display("p=84.47,123.71");
    }

    host_fn_rly_184: <default("SensorNode")> like INetworkNode {
        @display("p=116.33,54.98");
    }

    host_fn_rly_185: <default("SensorNode")> like INetworkNode {
        @display("p=184.37,102.62");
    }

    host_fn_rly_186: <default("SensorNode")> like INetworkNode {
        @display("p=170.32,90.13");
    }

    host_fn_rly_187: <default("SensorNode")> like INetworkNode {
        @display("p=171.61,128.40");
    }

    host_fn_rly_188: <default("SensorNode")> like INetworkNode {
        @display("p=243.80,137.29");
    }

    host_fn_rly_189: <default("SensorNode")> like INetworkNode {
        @display("p=217.36,145.84");
    }

    host_fn_rly_190: <default("SensorNode")> like INetworkNode {
        @display("p=213.40,177.59");
    }

    host_fn_rly_191: <default("SensorNode")> like INetworkNode {
        @display("p=140.24,241.92");
    }

    host_fn_rly_192: <default("SensorNode")> like INetworkNode {
        @display("p=171.09,234.48");
    }

    host_fn_rly_193: <default("SensorNode")> like INetworkNode {
        @display("p=86.21,265.10");
    }

    host_fn_rly_194: <default("SensorNode")> like INetworkNode {
        @display("p=118.97,253.66");
    }

    host_fn_rly_195: <default("SensorNode")> like INetworkNode {
        @display("p=125.00,241.41");
    }

    host_fn_rly_196: <default("SensorNode")> like INetworkNode {
        @display("p=162.17,226.70");
    }

    host_fn_rly_197: <default("SensorNode")> like INetworkNode {
        @display("p=125.03,206.21");
    }

    host_fn_rly_198: <default("SensorNode")> like INetworkNode {
        @display("p=95.08,177.99");
    }

    host_fn_rly_199: <default("SensorNode")> like INetworkNode {
        @display("p=131.12,140.47");
    }

    host_fn_rly_200: <default("SensorNode")> like INetworkNode {
        @display("p=163.27,139.30");
    }

}

