
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn8_8
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=92.33,55.04");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=111.15,40.12");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=198.39,12.56");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=160.69,8.40");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=124.79,33.12");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=44.67,80.16");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=54.55,100.08");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=76.32,159.58");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=165.76,186.58");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=145.62,166.15");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=102.63,145.59");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=89.38,195.59");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=153.00,207.06");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=148.19,195.96");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=223.37,151.80");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=283.27,83.36");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=218.71,46.52");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=157.64,66.79");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=214.91,144.40");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=108.78,27.51");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=106.82,12.26");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=121.47,61.02");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=145.00,101.52");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=161.27,98.55");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=120.38,90.75");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=67.79,97.25");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=81.06,26.48");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=244.05,6.13");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=178.01,28.12");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=69.19,44.41");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=31.19,9.34");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=31.82,98.49");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=81.59,179.45");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=185.28,187.30");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=113.62,156.53");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=71.29,222.63");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=69.15,152.16");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=211.17,268.43");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=157.50,230.31");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=218.27,66.38");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=262.17,94.89");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=234.51,49.61");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=162.54,37.75");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=206.90,174.16");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=162.67,53.59");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=116.57,7.54");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=134.14,120.62");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=125.98,136.11");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=174.85,108.21");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=94.98,162.77");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=84.40,2.16");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=23.29,29.14");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=181.64,94.97");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=224.20,33.47");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=47.62,43.47");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=68.22,75.02");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=27.43,74.90");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=167.71,164.69");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=198.50,222.97");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=53.22,133.78");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=98.58,130.51");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=55.51,197.97");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=150.32,278.69");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=164.38,201.17");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=233.44,154.86");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=293.81,65.90");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=247.70,47.64");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=206.79,58.00");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=261.95,175.33");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=106.97,74.45");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=195.29,22.65");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=137.90,91.92");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=62.68,106.16");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=200.97,132.95");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=160.76,24.74");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=150.93,40.50");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=97.14,40.26");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=133.15,9.55");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=205.88,28.54");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=175.71,17.96");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=30.27,118.77");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=63.39,125.84");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=133.32,167.39");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=236.13,195.45");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=179.08,205.21");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=77.73,201.60");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=34.96,209.13");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=235.76,262.09");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=86.45,132.84");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=265.15,153.63");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=311.63,82.42");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=313.27,32.53");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=139.32,61.35");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=277.69,135.61");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=83.75,103.17");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=48.48,23.97");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=148.56,115.56");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=123.37,159.88");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=166.56,75.82");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=103.92,90.65");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=113.29,102.77");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=139.03,34.12");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=193.69,63.28");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=101.88,61.04");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=91.99,15.31");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=65.81,60.62");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=25.94,155.99");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=19.73,230.42");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=196.45,92.50");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=138.67,180.42");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=25.44,170.98");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=102.79,213.05");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=155.88,295.20");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=121.42,145.47");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=161.53,111.30");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=283.48,125.94");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=245.39,81.80");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=182.55,46.07");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=304.03,146.26");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=88.51,72.36");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=59.73,40.30");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=120.23,51.02");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=204.83,118.01");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=82.24,59.98");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=139.23,143.43");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=127.54,22.25");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=69.39,20.30");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=257.15,43.69");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=150.22,53.70");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=55.54,65.30");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=92.46,86.57");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=51.81,119.94");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=137.55,195.04");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=115.98,197.65");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=123.60,188.52");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=106.81,166.38");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=179.92,236.47");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=225.24,240.12");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=64.77,170.83");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=223.54,108.42");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=260.20,75.38");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=313.82,48.62");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=150.90,141.46");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=243.76,164.95");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=45.88,90.48");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=97.62,1.33");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=35.23,44.22");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=138.19,44.81");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=148.04,86.20");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=22.02,143.72");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=36.51,28.22");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=55.71,86.95");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=210.14,17.53");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=131.49,68.79");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=75.18,34.69");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=47.15,146.37");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=18.91,118.89");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=20.66,91.70");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=176.38,216.49");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=130.62,202.35");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=165.86,125.26");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=48.13,251.92");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=156.30,217.33");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=166.74,269.52");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=186.16,109.31");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=310.26,66.49");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=241.70,36.22");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=245.79,112.47");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=221.12,192.57");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=79.81,84.47");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=142.55,14.62");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=109.69,113.32");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=130.73,152.52");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=202.44,43.40");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=162.05,144.83");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=43.37,135.52");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=127.89,80.26");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=285.07,45.49");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=203.16,75.08");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=149.98,22.40");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=62.00,51.37");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=34.85,87.51");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=33.76,247.26");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=151.86,157.30");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=176.37,152.63");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=173.82,193.35");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=98.80,266.18");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=105.05,233.81");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=141.37,231.48");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=298.24,120.69");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=295.45,83.95");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=237.51,60.00");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=143.20,72.12");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=264.76,107.04");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=158.23,88.54");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=92.22,25.53");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=121.82,71.91");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=144.23,130.87");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=199.48,151.91");
    }

}

