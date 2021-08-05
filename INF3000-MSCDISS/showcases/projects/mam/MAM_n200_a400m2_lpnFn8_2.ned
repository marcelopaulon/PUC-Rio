
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn8_2
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=178.11,52.94");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=181.49,82.67");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=229.61,89.15");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=243.04,125.34");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=299.36,145.46");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=288.79,139.31");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=350.06,214.64");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=277.09,219.48");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=272.70,289.16");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=221.30,268.36");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=209.49,294.13");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=185.35,200.55");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=195.63,198.86");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=176.63,176.52");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=136.70,135.92");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=92.69,128.87");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=107.77,124.21");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=115.53,110.71");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=148.08,86.43");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=226.42,68.23");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=232.76,76.99");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=226.02,43.05");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=295.55,13.79");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=270.89,24.39");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=66.96,88.41");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=95.69,40.22");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=207.85,111.92");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=212.02,175.56");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=198.93,165.33");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=344.19,149.54");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=237.37,155.17");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=348.57,170.96");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=264.58,277.51");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=273.42,240.17");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=187.11,294.05");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=199.45,297.15");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=171.42,213.55");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=190.93,249.65");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=245.35,163.31");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=195.31,103.36");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=60.75,160.70");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=24.73,169.02");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=84.05,99.98");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=112.34,15.84");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=251.78,72.99");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=221.71,111.74");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=213.83,45.39");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=304.09,75.60");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=290.83,30.02");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=54.24,26.55");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=190.47,53.56");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=168.64,145.08");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=281.58,119.12");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=234.89,134.38");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=311.60,132.17");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=313.16,171.81");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=310.03,189.01");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=277.41,203.04");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=274.54,329.22");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=256.47,315.35");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=280.72,282.02");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=170.90,279.14");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=209.58,224.60");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=178.01,102.08");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=149.42,130.42");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=82.66,142.16");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=100.29,25.00");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=76.20,111.21");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=220.95,133.50");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=176.91,33.35");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=149.65,107.05");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=220.70,19.84");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=344.86,3.71");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=347.44,83.44");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=118.80,151.09");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=170.59,59.77");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=253.66,137.80");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=261.66,155.32");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=209.84,132.98");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=368.13,152.92");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=355.77,155.71");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=362.07,215.00");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=265.88,214.78");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=334.45,228.73");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=251.76,265.13");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=235.85,366.68");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=197.65,208.98");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=156.50,244.23");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=232.25,121.89");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=136.04,147.22");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=56.29,116.17");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=34.76,108.73");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=98.12,207.03");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=167.51,113.52");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=198.60,81.28");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=257.86,95.35");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=242.28,15.97");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=260.83,34.07");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=270.03,59.70");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=114.68,170.79");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=146.81,14.78");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=224.61,10.61");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=134.18,118.32");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=251.13,183.53");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=297.45,192.20");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=276.09,179.95");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=356.67,239.14");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=230.95,217.49");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=297.11,264.23");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=203.92,275.72");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=273.98,359.96");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=157.95,155.85");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=229.68,181.33");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=208.04,155.41");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=229.40,144.10");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=152.31,203.91");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=15.00,107.39");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=64.90,108.40");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=171.46,84.37");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=138.12,35.51");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=246.69,46.53");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=213.62,81.74");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=326.96,10.54");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=356.67,45.36");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=53.56,98.11");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=200.76,4.23");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=231.79,58.95");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=195.28,21.01");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=292.57,89.91");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=300.98,132.07");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=324.21,208.12");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=364.06,275.27");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=285.20,225.36");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=288.93,359.93");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=194.95,317.65");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=255.75,220.68");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=174.87,188.32");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=176.73,165.36");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=265.67,192.49");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=64.23,193.15");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=42.82,47.65");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=144.35,157.88");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=89.45,112.36");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=107.73,79.87");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=278.31,92.39");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=195.40,34.34");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=242.55,34.51");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=334.17,54.97");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=335.07,22.00");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=158.81,28.80");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=127.36,35.53");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=196.30,121.36");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=204.46,57.18");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=217.09,122.91");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=335.50,139.33");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=323.70,59.91");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=319.48,279.44");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=309.05,246.55");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=347.30,290.04");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=189.02,308.20");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=254.88,339.91");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=166.22,294.21");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=197.23,235.86");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=194.13,132.15");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=124.64,205.01");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=126.68,142.33");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=134.42,200.87");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=33.33,69.07");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=121.37,88.42");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=134.87,74.23");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=159.98,59.33");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=193.08,72.81");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=354.24,11.13");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=237.41,99.74");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=151.29,47.24");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=91.48,73.19");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=265.62,135.75");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=252.46,108.53");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=268.67,88.04");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=286.56,162.68");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=360.48,112.88");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=319.60,266.56");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=295.38,229.56");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=190.27,280.71");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=193.69,262.14");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=256.57,375.69");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=179.83,218.95");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=147.75,215.42");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=187.86,181.94");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=65.40,128.56");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=83.00,203.35");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=110.95,214.44");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=90.13,90.24");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=117.42,51.32");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=167.81,71.80");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=208.59,68.12");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=216.44,55.73");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=304.65,33.32");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=253.73,26.88");
    }

}

