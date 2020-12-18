
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn8_5
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
        @display("p=145.06,74.32");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=118.76,138.89");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=184.67,133.02");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=163.88,100.20");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=235.62,148.53");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=218.92,105.13");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=224.75,76.73");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=236.67,71.93");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=269.40,94.06");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=280.92,130.46");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=302.19,111.58");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=227.32,49.41");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=306.21,4.15");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=354.21,75.19");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=351.46,58.34");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=294.57,130.16");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=258.78,93.68");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=281.93,109.89");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=239.52,118.67");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=183.47,121.88");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=159.81,150.72");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=189.62,229.25");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=195.68,153.49");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=177.39,214.35");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=80.13,6.68");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=198.58,80.80");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=158.48,134.09");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=156.86,175.63");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=173.13,181.60");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=170.73,223.40");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=125.07,129.07");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=217.53,139.97");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=274.91,71.92");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=296.65,70.79");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=259.06,173.70");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=221.65,123.79");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=193.08,94.17");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=303.27,15.98");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=394.84,10.33");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=338.34,21.25");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=245.91,51.22");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=295.04,83.39");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=342.46,79.38");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=272.50,33.60");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=131.09,108.16");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=182.61,177.97");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=152.81,245.30");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=178.57,143.69");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=181.96,248.95");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=71.88,94.03");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=104.13,110.95");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=98.14,81.86");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=224.93,174.33");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=203.89,117.69");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=271.90,155.72");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=147.81,117.53");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=231.18,85.29");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=202.28,52.90");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=184.60,44.09");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=225.61,61.49");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=381.30,57.57");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=242.97,83.06");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=294.59,2.03");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=357.26,92.31");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=319.33,3.35");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=302.10,33.87");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=328.70,78.70");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=232.68,159.92");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=246.74,73.15");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=224.40,188.13");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=194.96,215.13");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=207.09,227.89");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=195.38,107.74");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=171.64,282.41");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=100.80,179.01");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=161.11,121.99");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=62.48,120.95");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=159.86,73.52");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=235.11,41.34");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=302.09,156.51");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=132.02,92.90");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=214.30,25.49");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=290.05,29.20");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=273.69,2.31");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=235.06,204.82");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=272.71,137.93");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=238.13,15.73");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=284.40,75.89");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=388.46,128.44");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=321.95,14.86");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=338.42,152.01");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=252.97,117.86");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=317.59,170.09");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=227.33,34.88");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=235.24,191.06");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=157.32,164.95");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=217.50,203.70");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=161.68,194.63");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=159.04,221.17");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=117.03,188.07");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=141.43,135.69");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=90.42,115.99");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=254.08,128.34");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=117.34,88.88");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=180.79,156.72");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=317.02,92.23");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=227.37,0.26");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=285.79,97.17");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=342.35,65.63");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=287.81,170.39");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=321.07,116.25");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=180.39,71.60");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=350.48,16.00");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=308.75,143.40");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=377.85,74.69");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=346.13,189.13");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=240.50,136.50");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=360.15,126.88");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=313.97,75.73");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=228.13,113.61");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=164.61,234.44");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=257.59,158.64");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=253.45,106.85");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=216.98,295.77");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=87.16,89.95");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=108.33,22.08");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=112.91,106.04");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=152.56,41.35");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=152.52,106.86");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=172.42,91.10");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=205.03,90.17");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=284.89,87.07");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=322.13,60.34");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=344.73,48.02");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=269.99,108.06");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=301.47,96.29");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=206.86,68.61");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=281.37,13.50");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=396.30,78.05");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=366.54,61.23");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=198.90,131.26");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=254.98,21.42");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=347.85,116.76");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=172.12,135.49");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=121.90,156.89");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=131.96,68.68");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=111.19,222.13");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=105.45,165.96");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=266.97,221.36");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=46.03,109.81");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=118.72,64.18");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=49.51,184.41");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=146.97,58.79");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=174.09,42.96");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=136.07,148.82");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=316.75,104.88");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=247.93,10.73");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=255.25,147.53");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=238.73,94.37");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=288.93,146.32");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=377.01,131.88");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=250.83,0.83");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=333.82,46.04");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=334.76,165.62");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=335.53,88.41");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=247.26,159.54");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=259.84,47.60");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=272.48,173.88");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=289.30,59.82");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=172.93,162.95");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=84.86,201.82");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=239.65,225.95");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=227.64,223.62");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=173.59,241.70");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=80.56,52.74");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=112.53,51.56");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=179.85,100.37");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=97.74,139.91");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=172.88,58.00");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=208.52,103.78");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=305.86,85.08");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=204.26,22.71");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=311.46,42.04");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=257.26,69.91");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=280.65,226.67");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=381.76,119.96");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=222.27,90.19");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=386.88,31.41");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=351.25,168.59");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=307.91,58.99");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=206.81,146.93");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=241.92,104.63");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=263.03,123.29");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=232.47,130.25");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=142.11,205.51");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=120.72,206.05");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=203.07,306.49");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=202.56,166.70");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=161.54,210.30");
    }

}

