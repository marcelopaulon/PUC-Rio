
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn4-6
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
        @display("p=35.00,158.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=6.36,234.24");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=21.11,180.11");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=48.70,88.23");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=55.68,102.52");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=121.94,60.10");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=163.08,123.15");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=156.20,113.18");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=216.62,120.06");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=187.59,31.45");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=243.03,2.51");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=173.33,55.79");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=162.82,60.83");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=92.27,44.59");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=105.82,46.50");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=144.63,75.13");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=149.38,60.52");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=161.50,1.83");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=145.56,45.84");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=116.12,69.36");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=76.74,118.68");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=102.86,178.03");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=135.56,226.82");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=113.60,233.18");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=138.17,248.64");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=104.54,288.48");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=186.91,313.94");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=150.29,278.78");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=218.00,264.65");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=278.66,259.10");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=258.88,256.51");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=178.90,239.86");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=216.44,280.19");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=195.11,258.32");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=286.05,241.72");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=336.77,208.21");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=341.06,145.40");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=388.52,194.72");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=384.17,177.53");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=367.42,163.80");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=371.40,153.68");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=326.20,129.04");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=333.36,158.96");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=408.38,157.09");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=398.17,152.85");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=456.92,186.45");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=440.18,167.41");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=424.12,165.50");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=472.96,118.37");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=566.63,106.27");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=22.37,240.07");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=45.95,270.16");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=64.96,175.72");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=64.26,51.47");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=27.66,91.63");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=44.98,74.39");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=185.73,125.65");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=166.02,135.77");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=208.55,151.10");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=265.83,60.62");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=306.86,6.82");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=211.73,129.87");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=103.91,97.48");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=57.42,65.10");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=63.98,134.91");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=234.48,87.47");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=200.19,143.18");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=123.77,43.95");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=104.22,86.30");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=108.50,155.05");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=23.27,46.75");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=83.72,103.65");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=53.27,195.25");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=26.89,227.19");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=99.90,266.15");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=107.71,253.63");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=144.69,353.09");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=161.79,256.18");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=240.03,354.70");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=346.37,254.82");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=270.05,270.34");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=179.33,323.76");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=194.73,221.44");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=226.76,305.23");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=329.13,199.40");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=258.30,150.21");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=401.48,187.76");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=367.88,183.51");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=347.18,108.40");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=364.87,125.66");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=319.47,228.58");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=319.56,153.82");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=365.76,233.15");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=444.35,200.41");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=448.40,237.74");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=457.89,109.43");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=461.06,93.06");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=427.30,191.95");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=511.35,153.32");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=605.47,125.47");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=17.77,146.91");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=42.07,212.61");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=84.12,160.95");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=6.91,52.94");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=24.75,17.62");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=100.97,74.37");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=208.81,170.67");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=185.38,46.44");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=122.81,131.72");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=154.21,91.24");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=151.26,32.89");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=118.00,29.77");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=206.99,44.13");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=25.46,67.74");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=46.29,12.81");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=223.76,20.68");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=174.21,87.81");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=141.05,96.57");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=75.30,18.71");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=159.64,45.40");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=130.73,146.96");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=61.24,156.47");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=162.96,221.46");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=102.58,203.74");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=150.26,244.75");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=183.12,293.81");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=182.32,228.20");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=157.99,317.10");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=151.33,232.20");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=258.16,269.28");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=180.69,196.21");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=119.24,241.68");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=205.23,305.09");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=205.00,214.59");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=241.68,278.28");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=393.64,243.56");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=322.46,79.17");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=405.46,141.56");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=440.74,115.28");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=352.54,133.27");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=431.22,74.22");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=319.11,112.85");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=399.94,224.49");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=329.11,116.16");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=390.81,54.40");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=480.60,172.66");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=529.15,156.53");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=403.14,235.34");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=517.33,194.51");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=621.07,141.66");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=65.49,208.81");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=28.59,267.47");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=8.34,181.43");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=138.54,108.10");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=17.20,80.85");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=72.33,63.39");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=225.28,47.44");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=169.71,34.81");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=191.62,67.14");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=182.31,19.14");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=249.61,12.95");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=212.15,92.99");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=122.56,109.58");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=100.37,32.41");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=43.39,107.73");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=220.77,76.32");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=149.95,18.79");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=169.44,8.10");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=202.35,85.81");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=75.30,93.60");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=77.09,191.79");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=79.21,213.78");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=120.13,171.49");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=151.26,207.53");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=123.53,269.48");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=73.74,279.78");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=181.47,336.28");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=150.73,299.14");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=221.53,243.86");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=288.36,227.55");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=264.65,236.39");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=237.53,189.43");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=132.94,330.75");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=221.15,313.69");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=338.71,275.03");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=297.07,238.14");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=242.96,136.58");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=368.33,259.34");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=366.65,80.67");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=405.17,213.81");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=381.50,132.12");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=407.24,117.39");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=341.63,62.06");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=492.87,113.50");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=457.02,153.36");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=384.60,220.11");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=447.17,145.30");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=420.33,156.16");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=425.04,117.26");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=561.38,125.66");
    }

}

