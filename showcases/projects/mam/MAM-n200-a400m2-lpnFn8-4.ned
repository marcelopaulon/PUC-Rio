
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn8-4
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
        @display("p=218.00,83.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=186.92,105.48");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=203.59,123.46");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=250.14,103.07");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=216.65,61.29");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=182.41,22.84");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=177.73,58.10");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=165.49,21.12");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=108.59,59.33");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=112.70,121.45");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=96.29,104.85");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=126.54,141.89");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=74.15,147.20");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=116.48,153.33");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=162.18,222.37");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=155.10,298.69");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=158.60,310.76");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=108.94,292.93");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=127.76,227.22");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=142.51,174.58");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=208.36,91.58");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=177.64,88.57");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=266.72,110.05");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=299.15,179.55");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=343.86,220.12");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=185.89,82.80");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=137.87,161.38");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=150.65,134.03");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=273.58,162.17");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=236.71,127.02");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=171.48,74.03");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=157.95,78.63");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=227.34,37.63");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=39.39,32.78");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=154.44,89.28");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=8.54,63.64");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=51.06,124.07");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=84.11,146.19");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=49.72,211.90");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=185.66,177.58");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=190.69,218.36");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=135.53,305.23");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=32.74,234.16");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=174.88,300.70");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=124.35,178.52");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=242.31,73.09");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=189.38,142.32");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=289.21,93.94");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=226.97,148.35");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=365.80,193.11");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=277.46,24.18");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=267.60,69.99");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=261.84,141.80");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=227.80,104.65");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=250.96,59.20");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=149.04,111.07");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=167.42,53.75");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=171.52,43.09");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=145.23,65.79");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=66.40,73.92");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=30.00,129.48");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=110.27,219.91");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=132.32,71.78");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=122.95,240.11");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=150.65,255.74");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=152.74,366.94");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=118.18,258.78");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=95.46,285.02");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=67.93,264.10");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=182.16,151.36");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=219.41,72.41");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=220.23,131.43");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=310.11,55.68");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=369.32,206.52");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=341.55,178.36");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=253.57,124.83");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=102.47,82.18");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=211.00,195.65");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=226.59,118.44");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=188.64,36.99");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=116.04,36.05");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=141.56,14.06");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=197.13,65.22");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=38.46,43.40");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=115.86,93.94");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=81.89,107.23");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=159.30,164.84");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=45.59,234.59");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=119.62,167.94");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=143.85,152.93");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=192.20,344.56");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=243.22,285.68");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=85.34,296.71");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=113.28,134.75");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=196.94,98.24");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=211.70,49.81");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=80.41,82.43");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=237.17,194.82");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=289.62,156.70");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=283.41,246.96");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=247.77,116.26");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=164.70,98.55");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=247.41,132.95");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=335.58,138.69");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=194.20,50.75");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=199.53,3.53");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=178.03,32.17");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=106.79,20.87");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=87.31,45.94");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=105.42,164.59");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=38.02,88.83");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=129.62,154.83");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=1.77,111.91");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=69.29,137.28");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=88.59,222.22");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=228.40,337.86");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=235.76,360.97");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=144.25,299.43");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=165.34,210.58");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=89.38,200.93");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=295.16,66.11");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=201.49,29.29");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=300.85,29.62");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=331.03,264.09");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=271.21,266.69");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=304.19,77.26");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=259.46,76.85");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=140.97,104.04");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=259.66,7.98");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=288.96,75.56");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=161.61,62.58");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=158.86,118.94");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=235.21,84.74");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=104.95,114.97");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=95.29,158.09");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=139.10,31.88");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=210.60,102.59");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=39.45,104.12");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=176.41,228.68");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=73.28,182.60");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=210.53,330.77");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=159.16,286.78");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=15.28,325.58");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=135.65,286.05");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=115.04,268.32");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=217.99,181.77");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=223.58,171.10");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=303.79,18.82");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=332.70,195.59");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=271.23,234.61");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=236.23,142.32");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=180.17,113.89");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=258.44,88.97");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=266.44,130.64");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=262.12,56.29");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=99.77,6.51");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=157.02,7.66");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=142.95,43.88");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=110.66,102.78");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=147.76,77.53");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=86.93,97.09");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=151.99,197.01");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=148.13,213.73");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=121.94,117.01");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=197.64,273.25");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=200.51,358.85");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=214.17,308.42");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=116.68,281.56");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=178.27,202.33");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=100.96,197.00");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=174.88,15.52");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=195.60,129.99");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=299.59,141.48");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=306.21,244.91");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=366.24,221.36");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=240.84,41.12");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=190.39,115.76");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=131.05,98.42");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=206.35,79.58");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=173.69,140.08");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=188.20,5.79");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=239.85,104.04");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=120.55,19.04");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=76.70,41.45");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=68.56,63.52");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=131.64,49.11");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=72.89,206.47");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=38.10,224.32");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=65.62,127.79");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=174.50,262.15");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=181.06,343.14");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=218.86,250.40");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=68.89,320.81");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=125.57,190.40");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=191.97,160.90");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=135.81,118.39");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=273.89,88.35");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=288.46,125.97");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=291.22,193.95");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=379.07,185.51");
    }

}

