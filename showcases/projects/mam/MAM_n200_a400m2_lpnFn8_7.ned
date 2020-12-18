
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn8_7
{
    parameters:
        @display("bgb=400,400;bgg=100,1,grey95;bgu=m");
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
        @display("p=105.88,81.97");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=109.23,93.00");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=187.03,140.40");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=186.59,158.72");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=149.61,226.23");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=228.11,184.88");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=227.26,170.86");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=229.11,238.21");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=201.93,267.37");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=252.74,239.66");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=260.76,178.32");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=262.30,108.71");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=292.88,45.67");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=243.64,39.06");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=168.36,55.79");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=91.86,59.57");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=62.29,33.39");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=54.58,42.37");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=42.81,50.40");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=42.32,89.07");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=28.12,103.41");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=3.68,79.87");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=15.21,91.43");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=27.65,160.63");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=71.51,134.50");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=109.05,127.39");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=106.00,151.69");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=211.18,102.91");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=227.80,196.53");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=158.56,254.36");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=324.65,162.83");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=255.91,136.04");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=174.48,161.37");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=229.16,340.71");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=327.51,231.26");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=314.23,150.26");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=239.11,108.40");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=300.09,24.98");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=260.26,20.18");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=229.23,55.32");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=174.19,7.59");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=120.47,68.92");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=32.03,48.44");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=20.16,73.46");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=27.99,59.96");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=64.57,59.44");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=9.93,5.57");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=3.64,61.16");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=24.04,139.46");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=169.85,109.79");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=139.36,78.32");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=70.69,81.92");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=215.12,174.02");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=118.78,120.61");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=147.79,163.06");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=267.12,167.88");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=196.43,183.66");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=269.54,204.98");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=166.45,282.49");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=343.58,273.50");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=302.51,125.85");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=228.21,105.62");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=304.83,62.04");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=255.83,37.25");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=214.72,85.84");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=149.99,76.21");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=60.34,22.53");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=112.94,9.17");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=84.62,84.85");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=94.20,44.65");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=51.04,17.37");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=48.42,98.81");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=57.98,174.24");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=42.70,171.70");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=68.84,42.75");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=123.79,56.37");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=82.86,17.90");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=184.04,129.72");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=145.58,149.49");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=131.48,250.54");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=210.69,221.67");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=135.15,166.88");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=247.01,194.20");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=195.82,221.93");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=263.09,248.77");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=214.31,234.72");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=199.42,88.95");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=309.75,90.02");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=230.89,75.98");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=215.57,18.66");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=102.56,11.93");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=77.91,100.34");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=89.26,121.40");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=76.70,8.35");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=62.87,74.83");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=50.23,148.93");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=12.77,49.96");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=51.85,57.34");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=74.93,216.32");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=23.50,120.82");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=44.84,8.12");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=176.40,79.70");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=142.38,110.30");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=172.77,195.81");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=165.45,220.75");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=240.83,181.67");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=187.43,196.48");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=295.93,185.07");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=252.94,264.29");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=282.98,157.24");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=340.98,154.85");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=322.91,133.38");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=346.86,12.66");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=202.14,31.58");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=187.65,33.29");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=109.50,46.89");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=144.62,38.20");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=50.09,122.36");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=91.00,6.82");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=2.09,20.73");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=31.05,131.73");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=4.60,125.75");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=3.45,91.68");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=32.29,91.48");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=137.78,56.39");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=153.23,59.43");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=147.99,182.11");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=251.40,97.47");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=229.80,160.33");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=139.68,214.39");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=241.99,204.70");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=186.24,180.46");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=205.41,284.11");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=196.10,210.79");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=214.84,189.31");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=251.40,171.41");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=258.76,124.98");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=273.02,118.70");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=227.44,66.07");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=244.02,89.57");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=80.72,74.01");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=75.47,55.99");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=51.92,72.26");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=63.32,94.62");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=10.13,137.67");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=2.96,181.18");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=3.61,155.19");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=43.61,111.95");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=105.18,193.51");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=151.38,30.12");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=109.35,171.45");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=137.47,122.22");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=175.69,142.08");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=98.92,117.50");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=195.79,249.64");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=212.89,130.90");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=261.33,84.84");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=272.27,219.40");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=296.76,273.29");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=232.78,227.36");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=324.02,200.57");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=306.44,115.98");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=265.38,73.98");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=169.32,44.78");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=160.69,154.92");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=105.88,63.06");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=98.15,23.22");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=30.11,37.06");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=127.35,18.56");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=60.57,109.37");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=17.26,15.80");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=44.00,36.61");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=71.19,152.84");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=56.70,249.16");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=123.26,81.19");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=125.07,7.76");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=129.63,98.18");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=184.27,119.26");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=195.46,71.85");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=114.97,184.44");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=257.94,195.27");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=310.11,140.86");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=238.53,167.03");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=214.93,305.84");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=248.04,226.57");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=268.16,233.37");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=274.51,94.97");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=358.39,66.06");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=271.36,49.34");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=196.00,11.00");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=75.30,33.12");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=41.28,23.96");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=122.63,38.28");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=84.81,28.90");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=35.05,74.18");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=87.84,170.97");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=0.22,108.24");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=17.21,104.87");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=85.38,207.77");
    }

}

