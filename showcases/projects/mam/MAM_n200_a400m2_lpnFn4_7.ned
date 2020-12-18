
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn4_7
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
        @display("p=85.47,295.08");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=76.37,277.60");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=112.76,217.85");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=156.12,199.07");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=136.20,150.46");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=171.08,98.99");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=144.14,71.12");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=199.91,57.68");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=249.23,89.87");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=201.47,156.07");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=197.85,173.19");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=240.72,122.71");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=271.84,106.40");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=278.31,134.40");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=247.10,208.85");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=224.12,164.20");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=209.72,182.50");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=216.43,213.34");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=227.80,187.87");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=183.24,247.79");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=162.19,255.19");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=198.08,262.75");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=263.44,277.54");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=197.87,325.00");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=224.81,293.16");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=226.93,306.03");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=299.87,276.86");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=143.64,287.53");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=109.27,348.44");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=64.55,265.61");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=108.52,181.50");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=95.92,92.59");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=85.11,108.16");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=150.06,88.23");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=102.00,158.51");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=112.41,100.14");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=120.02,122.56");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=122.13,103.55");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=190.81,43.29");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=199.78,122.22");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=217.63,71.39");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=167.77,11.35");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=110.30,1.94");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=12.49,11.22");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=43.49,16.85");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=114.44,16.46");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=67.01,22.34");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=73.77,55.00");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=115.62,74.96");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=121.10,349.91");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=88.90,265.58");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=129.51,244.26");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=114.51,141.41");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=170.19,224.09");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=151.10,164.96");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=178.03,120.51");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=183.37,29.61");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=240.55,110.97");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=289.05,58.93");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=239.54,156.47");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=158.92,112.95");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=250.87,76.45");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=266.06,178.05");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=335.77,137.95");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=251.73,223.56");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=280.79,233.94");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=226.19,108.99");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=189.60,203.49");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=287.78,176.28");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=111.73,251.40");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=128.63,260.59");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=247.95,298.33");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=236.90,333.56");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=115.37,268.84");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=183.07,356.09");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=185.28,228.57");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=364.66,249.28");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=117.02,321.09");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=29.82,301.15");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=96.75,277.60");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=73.22,187.68");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=102.63,74.89");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=140.87,169.11");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=227.41,145.63");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=64.43,138.03");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=98.69,133.67");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=177.23,45.12");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=132.34,107.97");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=132.32,10.06");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=196.46,108.89");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=284.98,47.15");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=197.10,94.13");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=180.63,12.42");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=76.66,2.57");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=92.81,72.57");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=78.77,43.74");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=95.53,49.24");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=107.77,61.25");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=56.28,59.07");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=52.44,286.79");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=134.60,213.67");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=38.21,270.99");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=98.96,239.80");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=181.90,216.51");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=150.94,185.81");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=156.48,73.95");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=155.70,151.87");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=261.30,87.45");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=275.46,169.90");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=235.64,218.66");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=223.86,266.69");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=324.57,122.24");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=330.28,88.23");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=268.62,137.34");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=174.47,270.41");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=215.60,152.04");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=279.84,156.50");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=252.48,179.84");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=248.63,165.14");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=134.72,225.51");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=159.22,229.79");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=210.09,251.51");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=245.28,234.08");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=220.88,235.50");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=235.81,260.61");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=281.60,353.14");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=335.95,304.45");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=206.87,288.17");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=91.07,378.24");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=70.40,306.85");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=87.38,179.60");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=151.25,49.13");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=139.35,37.60");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=228.65,71.58");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=148.24,119.19");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=140.24,49.54");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=153.93,210.35");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=165.50,136.17");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=193.45,0.59");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=154.45,131.65");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=170.11,28.77");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=206.08,35.06");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=144.17,12.65");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=14.44,21.32");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=102.35,38.93");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=130.79,81.56");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=15.67,89.99");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=33.94,9.88");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=161.37,20.65");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=57.42,371.58");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=96.25,388.45");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=58.12,299.48");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=149.80,264.48");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=164.31,205.04");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=57.05,148.13");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=129.58,47.37");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=181.17,62.91");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=191.67,82.07");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=211.79,85.83");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=201.55,132.44");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=198.64,191.31");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=251.85,100.36");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=262.60,110.94");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=297.44,38.70");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=185.38,159.28");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=223.34,83.04");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=184.35,133.63");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=129.59,192.37");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=238.39,188.08");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=179.32,318.25");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=116.09,189.82");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=208.57,263.45");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=278.52,295.55");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=121.14,278.72");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=266.94,349.27");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=261.14,384.10");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=298.90,264.05");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=153.63,315.29");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=154.02,329.05");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=2.42,208.86");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=79.40,151.78");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=107.45,89.27");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=30.05,187.52");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=180.31,77.80");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=139.79,200.87");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=121.31,58.61");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=64.13,73.31");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=128.56,94.39");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=236.12,14.12");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=130.88,175.07");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=259.20,22.87");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=154.50,37.58");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=92.81,32.15");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=34.51,78.12");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=101.10,24.94");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=65.83,43.28");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=51.27,71.38");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=67.34,103.68");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=60.15,88.65");
    }

}

