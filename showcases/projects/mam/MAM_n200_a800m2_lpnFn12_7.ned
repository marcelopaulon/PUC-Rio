
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn12_7
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=18.61,94.50");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=11.78,74.40");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=28.43,90.35");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=78.20,113.32");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=114.02,74.47");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=149.73,132.32");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=218.45,119.14");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=270.66,160.42");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=302.64,126.11");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=293.49,131.13");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=292.34,213.19");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=226.59,164.27");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=239.54,171.47");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=235.24,158.99");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=173.14,236.20");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=154.36,238.41");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=78.08,28.77");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=12.07,51.04");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=21.44,77.89");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=64.25,58.28");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=134.34,62.47");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=174.77,54.34");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=163.02,185.54");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=240.44,35.63");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=273.50,200.59");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=232.52,111.25");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=373.36,140.93");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=327.29,257.05");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=197.77,167.30");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=184.91,195.53");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=240.31,124.20");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=176.64,256.94");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=157.91,259.37");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=51.53,109.29");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=1.24,118.73");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=28.54,63.02");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=86.23,56.99");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=46.42,148.66");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=122.44,58.86");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=143.88,166.02");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=289.07,78.17");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=337.91,207.23");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=289.99,59.75");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=308.15,110.99");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=276.14,234.37");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=212.07,185.82");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=246.51,269.55");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=253.93,192.75");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=190.27,305.15");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=159.05,199.63");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=158.40,22.62");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=1.40,85.65");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=27.18,15.22");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=52.18,126.57");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=79.88,126.69");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=104.99,52.64");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=191.88,154.66");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=120.64,129.79");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=234.50,95.62");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=307.32,211.99");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=335.99,116.63");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=279.75,262.22");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=208.83,209.43");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=164.35,212.00");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=300.05,187.29");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=140.17,313.05");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=132.24,193.60");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=110.45,112.13");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=8.09,100.32");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=31.26,150.16");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=0.16,75.48");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=156.60,73.54");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=129.53,36.15");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=169.69,149.54");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=168.79,130.73");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=301.06,154.30");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=331.30,198.34");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=280.40,135.03");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=312.04,266.44");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=214.03,164.47");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=267.43,227.97");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=226.98,134.73");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=178.60,169.37");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=69.29,274.55");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=25.94,137.36");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=94.23,75.60");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=10.81,24.00");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=34.36,105.96");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=89.99,37.88");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=96.90,135.40");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=158.35,122.03");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=258.90,134.25");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=216.05,222.39");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=244.91,85.66");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=357.28,155.30");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=290.87,273.54");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=182.73,205.41");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=208.17,240.73");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=315.06,130.66");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=188.93,236.58");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=100.44,253.88");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=136.63,99.03");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=52.70,182.69");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=46.77,77.63");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=64.84,0.13");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=96.43,121.19");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=105.70,24.72");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=125.65,113.29");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=248.91,155.10");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=349.81,101.12");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=279.78,89.70");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=220.53,107.16");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=197.57,214.69");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=220.25,191.92");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=263.83,175.36");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=196.11,124.11");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=234.94,246.75");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=185.99,320.21");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=122.94,92.02");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=39.44,164.17");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=52.68,69.10");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=59.14,101.07");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=88.31,110.96");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=62.42,74.40");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=134.65,179.84");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=242.68,65.69");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=322.16,90.30");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=348.51,186.15");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=223.15,73.29");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=239.52,220.82");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=260.48,206.59");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=189.71,100.08");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=323.16,152.67");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=147.95,323.23");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=192.94,275.73");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=75.60,60.44");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=62.10,149.30");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=25.99,28.52");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=9.97,40.15");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=80.26,84.16");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=131.44,123.73");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=144.22,149.09");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=200.35,92.20");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=319.38,168.78");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=303.49,71.94");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=338.68,171.30");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=324.80,235.97");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=260.33,158.49");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=212.71,174.64");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=165.88,90.80");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=164.69,174.38");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=153.70,269.87");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=85.72,94.05");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=80.48,159.61");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=16.97,163.45");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=60.08,115.34");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=35.10,54.74");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=154.49,165.78");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=188.50,136.05");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=268.47,108.88");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=208.01,230.46");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=366.90,93.30");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=344.37,160.36");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=339.79,231.81");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=285.94,124.42");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=271.99,253.48");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=303.93,137.49");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=101.66,267.65");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=166.13,266.33");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=129.89,164.87");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=34.07,78.56");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=6.12,1.52");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=79.59,39.59");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=97.81,176.54");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=92.41,17.00");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=199.48,197.97");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=240.40,46.45");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=325.72,79.53");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=337.24,38.89");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=337.41,76.42");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=220.40,251.10");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=223.24,144.68");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=271.97,128.55");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=208.22,145.17");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=259.13,218.40");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=137.83,218.22");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=131.39,84.99");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=64.82,131.53");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=74.44,18.71");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=36.37,128.13");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=168.24,107.93");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=147.42,43.96");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=185.60,119.34");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=256.74,85.71");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=327.96,223.52");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=274.68,73.58");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=291.42,103.53");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=286.26,248.20");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=182.20,182.11");
    }

}

