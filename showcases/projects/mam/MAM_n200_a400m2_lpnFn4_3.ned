
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn4_3
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
        @display("p=75.93,221.42");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=100.74,202.75");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=120.72,195.96");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=154.75,175.91");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=159.31,163.57");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=172.69,146.21");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=207.49,194.14");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=193.26,115.70");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=119.35,107.89");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=210.70,120.84");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=292.15,175.72");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=334.35,181.01");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=331.40,216.79");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=258.10,149.30");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=173.99,123.77");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=232.13,113.20");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=249.51,184.05");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=293.33,221.40");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=352.47,145.67");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=344.37,119.93");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=355.45,33.14");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=373.68,36.21");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=398.82,101.01");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=380.90,74.89");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=356.26,55.77");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=326.86,21.00");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=298.91,106.02");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=307.13,132.24");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=268.46,165.51");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=228.68,215.45");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=227.38,286.60");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=224.58,198.18");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=192.10,172.40");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=158.49,188.11");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=198.02,186.96");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=119.39,134.84");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=32.91,121.94");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=42.85,104.41");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=55.67,56.22");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=17.31,83.35");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=10.66,51.84");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=1.21,76.53");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=69.77,90.78");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=98.85,115.15");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=140.17,157.63");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=129.42,168.19");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=162.28,207.83");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=164.84,197.66");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=213.82,214.51");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=17.83,327.23");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=155.85,223.48");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=119.59,214.54");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=123.40,180.37");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=179.91,154.32");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=121.98,149.72");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=152.33,138.36");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=184.99,203.17");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=145.78,58.22");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=131.89,125.52");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=159.98,103.13");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=307.84,248.92");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=325.30,241.91");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=329.23,311.83");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=291.32,151.14");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=149.97,154.96");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=186.74,75.67");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=252.36,197.04");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=280.09,208.86");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=346.50,180.37");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=267.73,109.52");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=287.82,56.06");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=287.96,20.34");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=397.65,87.82");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=394.57,163.24");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=375.94,60.78");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=309.93,68.23");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=326.48,47.99");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=312.86,174.14");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=316.78,93.72");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=170.40,214.42");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=186.07,340.28");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=177.57,228.88");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=168.29,258.01");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=211.16,250.92");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=140.78,192.33");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=51.95,146.65");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=55.53,75.32");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=10.35,98.01");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=31.43,22.47");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=29.21,182.64");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=14.59,19.77");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=35.80,94.82");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=41.84,59.01");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=21.11,150.64");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=185.96,188.35");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=45.12,208.26");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=234.45,200.59");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=189.90,156.53");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=280.55,142.26");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=43.58,276.77");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=152.52,267.99");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=7.33,229.68");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=133.65,210.28");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=111.94,175.97");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=203.05,174.93");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=99.84,125.65");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=141.30,202.85");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=147.00,103.47");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=86.63,90.28");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=244.37,159.78");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=368.89,211.84");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=247.75,230.29");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=354.06,258.31");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=327.10,141.40");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=156.08,65.78");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=216.52,129.74");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=240.07,138.15");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=350.03,159.61");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=381.53,141.41");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=248.60,120.19");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=383.94,44.67");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=349.18,46.99");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=367.73,184.40");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=384.84,118.18");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=340.26,37.90");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=253.96,42.38");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=317.39,153.84");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=372.56,108.47");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=311.80,142.18");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=199.27,219.79");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=276.37,306.73");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=273.00,219.99");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=214.45,153.12");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=184.22,144.33");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=284.06,199.58");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=92.95,191.79");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=29.09,67.28");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=1.63,153.13");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=65.21,60.55");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=7.66,27.65");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=69.83,36.98");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=11.30,62.04");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=78.73,127.70");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=176.55,82.64");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=100.87,76.41");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=34.00,173.62");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=161.93,122.27");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=237.37,225.47");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=239.98,257.18");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=133.13,309.99");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=92.87,287.57");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=64.26,193.57");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=82.53,190.32");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=223.50,229.30");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=95.45,214.95");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=195.70,58.75");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=208.94,166.42");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=202.03,79.57");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=99.82,103.66");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=261.04,121.45");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=268.40,189.80");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=362.89,249.48");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=293.26,195.20");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=226.66,100.36");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=106.35,150.38");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=242.80,36.84");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=284.26,161.54");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=264.75,199.25");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=366.47,151.59");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=367.18,131.15");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=307.98,47.91");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=378.89,93.44");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=395.05,184.57");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=352.59,105.52");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=343.46,19.37");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=331.08,117.13");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=344.93,135.30");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=328.03,84.48");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=277.00,153.32");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=228.30,168.50");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=216.58,304.15");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=213.02,237.71");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=123.56,224.54");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=181.15,270.48");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=146.02,246.79");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=177.18,100.86");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=8.97,132.42");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=111.18,98.27");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=57.27,134.45");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=1.76,117.64");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=14.67,1.47");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=51.31,18.53");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=137.55,71.01");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=111.85,123.90");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=95.48,167.18");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=61.78,160.76");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=84.52,162.92");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=142.17,225.53");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=306.22,213.41");
    }

}

