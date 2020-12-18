
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn4-1
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
        @display("p=341.00,116.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=333.84,25.22");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=318.29,33.18");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=383.31,54.12");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=366.69,49.00");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=292.74,46.76");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=285.37,86.06");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=354.56,128.42");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=375.77,123.30");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=312.90,93.31");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=283.97,121.24");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=254.16,147.78");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=256.65,182.21");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=251.69,227.31");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=207.02,267.72");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=214.89,275.00");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=272.26,234.73");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=302.53,277.92");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=290.04,216.93");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=302.55,202.60");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=244.23,208.90");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=215.82,179.18");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=174.79,216.66");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=155.41,178.96");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=106.23,199.78");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=128.16,250.73");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=144.54,215.77");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=206.68,251.03");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=235.81,335.39");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=201.08,297.23");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=243.65,344.09");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=242.36,355.57");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=223.14,397.50");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=204.03,359.40");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=196.12,370.52");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=175.86,376.14");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=85.05,377.66");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=169.68,352.17");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=178.79,360.91");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=229.34,348.15");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=184.26,275.65");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=151.35,321.71");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=129.21,311.44");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=100.17,352.86");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=142.63,297.32");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=131.80,224.80");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=151.97,301.04");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=156.87,221.04");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=141.83,238.35");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=156.68,264.90");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=367.14,138.80");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=361.54,100.28");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=383.90,70.68");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=328.47,50.88");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=384.93,96.51");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=339.60,85.69");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=372.30,63.63");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=338.75,140.72");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=388.46,172.34");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=300.22,125.37");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=362.75,158.41");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=234.94,133.70");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=279.12,196.35");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=247.35,245.08");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=182.67,264.34");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=276.88,353.10");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=256.99,207.15");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=312.79,298.83");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=310.70,171.17");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=318.23,227.72");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=171.95,274.41");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=243.29,181.12");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=226.06,264.43");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=135.23,131.39");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=88.08,239.60");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=54.66,241.29");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=113.61,150.33");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=160.95,200.80");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=280.34,283.99");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=171.78,286.93");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=261.26,315.76");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=277.51,318.09");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=207.79,372.59");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=134.02,329.26");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=181.63,387.17");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=121.85,397.14");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=23.72,370.88");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=212.09,392.87");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=218.53,329.25");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=251.44,313.75");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=230.04,310.24");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=108.83,272.15");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=51.61,306.60");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=58.53,398.77");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=144.95,253.77");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=109.67,310.43");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=184.38,288.20");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=135.19,206.14");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=153.31,237.16");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=123.48,270.59");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=324.09,116.24");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=238.37,17.64");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=304.79,79.15");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=361.82,59.44");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=367.29,0.57");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=235.91,112.62");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=273.51,146.42");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=268.92,127.90");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=377.34,183.83");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=307.24,58.33");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=319.55,195.17");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=303.41,144.74");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=230.40,235.31");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=225.29,246.24");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=203.44,319.54");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=149.12,342.86");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=238.20,262.61");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=278.29,305.33");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=297.88,236.96");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=270.35,255.06");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=214.17,168.23");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=198.69,118.83");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=218.06,198.74");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=179.24,141.86");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=134.85,113.57");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=216.14,287.24");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=211.58,212.55");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=264.09,172.84");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=261.84,266.37");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=113.51,325.72");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=264.48,335.62");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=297.27,314.24");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=291.80,353.10");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=200.39,388.06");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=189.36,352.56");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=157.33,390.62");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=117.99,355.73");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=207.80,343.52");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=236.13,325.20");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=239.80,304.70");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=151.05,355.00");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=92.59,294.68");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=49.15,319.93");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=132.06,293.42");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=124.50,299.99");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=66.77,222.02");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=70.71,353.56");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=170.41,207.34");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=125.64,236.26");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=198.54,230.28");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=324.79,83.99");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=343.69,35.96");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=326.06,13.95");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=359.67,111.76");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=287.82,68.12");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=208.85,55.95");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=225.17,62.32");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=378.95,80.80");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=289.37,97.63");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=347.29,67.32");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=323.25,180.30");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=255.94,70.13");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=262.92,84.87");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=284.51,185.10");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=223.63,208.20");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=251.88,217.27");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=268.88,218.23");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=269.21,202.59");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=333.02,236.12");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=239.62,154.36");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=305.39,247.18");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=228.97,92.60");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=151.95,286.61");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=170.81,238.77");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=174.50,132.20");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=127.36,179.65");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=183.38,153.67");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=250.04,282.36");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=325.34,358.87");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=191.83,316.68");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=340.46,319.36");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=311.44,372.32");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=251.32,395.94");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=134.25,355.07");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=218.81,318.02");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=126.08,382.61");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=3.07,359.52");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=170.87,332.75");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=98.95,391.36");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=238.89,369.07");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=118.70,259.53");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=64.63,325.36");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=178.07,322.75");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=88.42,366.69");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=184.03,300.20");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=94.14,194.39");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=138.32,264.54");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=118.69,283.82");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=106.85,167.82");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=210.40,236.81");
    }

}

