
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn8_5
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
        @display("p=99.13,62.78");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=80.86,146.89");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=58.86,139.59");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=43.07,196.75");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=39.81,179.80");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=63.50,177.87");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=70.13,277.07");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=117.55,353.75");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=77.48,345.17");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=44.43,396.05");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=20.78,314.48");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=26.15,303.61");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=40.92,303.48");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=36.27,285.70");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=14.42,249.40");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=42.22,261.96");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=26.19,279.22");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=30.16,252.88");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=24.10,241.69");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=43.14,166.12");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=86.19,82.60");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=81.30,36.57");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=61.09,39.76");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=36.19,62.04");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=127.31,164.21");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=120.81,53.76");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=151.81,171.60");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=54.30,123.73");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=32.35,204.59");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=7.73,194.01");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=85.40,237.83");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=75.34,309.73");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=142.27,333.23");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=45.79,360.11");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=86.88,411.02");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=77.60,386.42");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=31.82,316.62");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=84.85,272.97");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=81.24,290.23");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=79.44,212.93");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=17.30,261.40");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=4.87,274.38");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=56.94,280.38");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=1.07,259.28");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=90.72,224.16");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=76.98,100.05");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=102.60,77.50");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=66.94,27.98");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=88.77,6.33");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=115.80,68.80");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=194.41,52.49");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=104.82,137.66");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=157.08,135.53");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=60.27,166.62");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=131.88,216.70");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=35.76,273.59");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=63.37,289.30");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=124.90,424.65");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=87.52,350.10");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=101.59,400.26");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=27.18,414.15");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=2.74,311.35");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=8.33,384.06");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=123.36,326.78");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=39.08,240.08");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=90.25,182.45");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=47.46,342.89");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=51.22,257.38");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=72.12,256.56");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=16.39,129.17");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=93.30,73.66");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=72.25,46.16");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=93.10,29.21");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=66.07,110.66");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=145.77,97.12");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=95.04,46.83");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=136.03,183.13");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=69.36,141.90");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=102.61,171.99");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=132.09,202.86");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=121.58,239.29");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=158.44,269.28");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=155.87,353.25");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=25.22,344.23");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=48.34,376.75");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=4.26,237.12");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=55.88,303.05");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=121.79,312.54");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=3.42,290.86");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=5.68,226.32");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=100.68,212.56");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=111.81,285.97");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=103.32,186.93");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=23.98,176.05");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=88.42,156.67");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=172.01,77.41");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=42.77,74.22");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=24.73,74.24");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=18.71,65.07");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=118.97,93.93");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=88.28,57.72");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=92.13,130.95");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=2.04,141.35");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=52.45,243.95");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=48.85,149.32");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=60.85,196.31");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=125.35,249.71");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=170.79,364.60");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=34.27,377.44");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=131.75,403.83");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=30.59,226.04");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=21.34,372.95");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=4.85,211.78");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=93.03,328.94");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=24.47,190.11");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=101.87,306.15");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=65.30,236.50");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=20.07,294.63");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=42.78,226.85");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=76.32,181.71");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=140.59,72.67");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=124.42,117.28");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=142.40,59.92");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=68.81,68.47");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=140.69,121.18");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=68.91,10.48");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=63.28,154.88");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=41.17,118.24");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=60.07,213.38");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=53.86,102.59");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=15.66,232.80");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=109.00,267.43");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=129.90,336.94");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=89.51,442.67");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=122.30,376.02");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=94.10,318.53");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=40.00,368.91");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=68.16,370.90");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=47.04,311.69");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=95.21,257.83");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=56.25,268.61");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=108.64,318.32");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=72.11,162.86");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=17.23,145.76");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=55.52,112.76");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=43.70,48.17");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=105.90,20.56");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=72.56,83.08");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=78.90,113.22");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=114.56,120.62");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=162.90,122.18");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=123.45,225.84");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=46.49,134.20");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=44.85,208.50");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=111.31,163.58");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=18.25,107.82");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=45.32,291.39");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=150.27,436.85");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=31.76,330.01");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=6.66,450.81");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=13.61,392.69");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=66.47,324.78");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=81.44,367.72");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=22.30,354.52");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=80.88,227.33");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=10.72,300.38");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=0.38,360.60");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=36.46,214.48");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=45.27,278.47");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=112.33,205.58");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=108.86,91.74");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=123.78,26.45");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=19.36,94.64");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=10.84,48.46");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=53.76,187.10");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=135.27,112.25");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=136.64,149.95");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=45.34,84.78");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=67.72,131.54");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=8.26,183.74");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=87.61,192.75");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=109.30,328.44");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=79.29,442.21");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=60.60,382.88");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=64.12,439.31");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=63.90,359.95");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=8.73,369.44");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=99.99,274.92");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=25.24,215.40");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=0.08,325.33");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=10.96,325.02");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=107.61,231.41");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=96.12,284.86");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=61.58,250.28");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=118.30,144.24");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=50.20,32.67");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=21.60,10.42");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=61.60,57.06");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=24.95,34.85");
    }

}

