
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn8-5
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
        @display("p=321.00,169.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=295.64,167.52");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=240.63,90.59");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=302.31,78.81");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=268.05,80.20");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=276.32,149.75");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=215.79,162.61");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=258.78,164.71");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=177.45,129.59");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=242.85,64.92");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=161.35,43.60");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=90.01,94.86");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=26.46,85.45");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=23.47,119.18");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=115.76,111.20");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=66.54,82.17");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=52.88,72.47");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=48.46,100.32");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=45.68,80.94");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=36.12,60.75");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=11.80,0.30");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=60.35,36.26");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=72.90,21.97");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=14.29,42.59");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=8.69,81.35");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=287.73,122.80");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=264.09,129.73");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=311.89,27.78");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=262.46,94.07");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=253.29,78.84");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=185.77,147.84");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=201.29,159.67");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=310.70,228.75");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=216.96,192.76");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=201.47,15.02");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=175.54,53.13");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=88.71,160.69");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=105.78,79.03");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=32.64,149.39");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=118.96,37.95");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=150.36,31.50");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=138.99,72.20");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=12.93,191.37");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=80.45,135.50");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=24.18,29.02");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=36.81,9.07");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=72.25,50.14");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=62.05,16.22");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=26.53,39.12");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=11.35,67.37");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=368.98,231.56");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=310.27,69.68");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=200.01,58.52");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=239.19,154.60");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=224.14,33.22");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=201.92,178.61");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=178.18,174.89");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=191.33,229.73");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=210.55,212.64");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=221.19,123.50");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=212.40,88.67");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=164.64,146.95");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=0.58,105.52");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=5.46,174.37");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=147.80,118.65");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=65.33,67.60");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=47.25,62.22");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=45.79,167.11");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=87.76,78.66");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=101.62,65.68");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=32.10,70.18");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=83.29,105.58");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=89.23,30.42");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=57.71,119.27");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=6.21,129.40");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=290.92,181.92");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=216.38,221.85");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=327.37,129.54");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=286.34,57.52");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=295.93,152.76");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=317.45,240.14");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=189.20,135.64");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=200.95,106.50");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=168.29,108.86");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=212.48,108.93");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=172.98,74.67");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=118.75,74.36");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=68.06,146.60");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=20.74,56.78");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=129.85,108.17");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=38.44,100.61");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=32.74,124.50");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=125.93,97.55");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=33.45,21.89");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=57.91,57.26");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=52.69,25.79");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=65.90,126.77");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=127.19,52.11");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=92.03,59.04");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=4.42,31.24");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=386.62,128.46");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=360.51,237.32");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=234.36,105.69");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=306.59,89.41");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=298.19,47.89");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=264.58,155.81");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=138.52,202.70");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=284.63,98.20");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=252.73,174.51");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=237.18,54.77");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=163.45,26.70");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=103.87,119.67");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=54.22,137.94");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=30.35,49.44");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=85.77,144.09");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=135.94,126.79");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=96.95,144.75");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=72.41,176.73");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=78.04,84.75");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=12.56,23.51");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=50.63,41.54");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=78.24,11.28");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=8.25,57.58");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=27.59,1.62");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=38.68,43.59");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=348.90,189.17");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=321.65,154.26");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=230.01,73.01");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=298.96,101.99");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=251.93,139.99");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=278.58,135.12");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=246.33,107.33");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=255.71,187.30");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=172.33,196.66");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=247.62,55.15");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=133.68,23.50");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=99.13,187.65");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=115.56,122.90");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=44.98,146.23");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=156.35,93.08");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=68.84,6.47");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=42.20,129.92");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=136.90,141.81");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=76.68,126.23");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=20.31,107.24");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=15.55,11.86");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=111.97,19.88");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=75.84,59.70");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=43.92,33.01");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=6.31,148.27");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=260.51,202.38");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=290.97,196.64");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=230.36,185.29");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=326.64,102.81");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=297.14,9.31");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=258.75,58.50");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=202.68,146.62");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=303.95,132.32");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=165.40,118.85");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=169.05,1.95");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=216.49,62.83");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=127.47,165.42");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=90.86,113.31");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=10.14,98.60");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=135.87,171.98");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=71.43,109.04");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=122.16,87.73");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=57.48,159.60");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=0.73,91.81");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=112.28,90.83");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=51.78,89.62");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=133.65,63.17");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=101.04,20.35");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=43.94,110.60");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=25.86,98.45");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=332.13,120.58");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=313.92,198.90");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=151.01,53.49");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=269.03,110.73");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=274.31,67.27");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=281.40,171.70");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=228.57,234.85");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=239.46,167.18");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=169.29,161.17");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=291.53,19.68");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=226.10,47.43");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=155.30,130.69");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=31.44,175.63");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=104.31,98.41");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=142.40,150.83");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=86.63,179.49");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=121.46,61.75");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=22.47,154.46");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=5.71,118.66");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=22.09,72.59");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=48.44,6.61");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=111.03,7.02");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=121.37,28.18");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=14.72,89.36");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=20.31,137.10");
    }

}

