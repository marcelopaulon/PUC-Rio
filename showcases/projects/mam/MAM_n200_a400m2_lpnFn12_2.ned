
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn12_2
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
        @display("p=74.06,10.21");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=140.72,65.30");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=121.29,64.26");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=83.86,133.50");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=87.12,202.20");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=90.53,190.08");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=119.43,224.10");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=68.36,290.74");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=146.23,256.20");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=194.33,274.91");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=170.34,224.55");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=223.37,174.14");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=210.10,185.38");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=213.10,141.18");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=179.55,180.67");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=172.28,130.16");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=68.83,171.35");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=33.27,4.46");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=184.97,84.84");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=114.53,49.28");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=157.43,139.65");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=108.08,218.27");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=90.86,177.06");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=133.40,281.34");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=101.81,264.39");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=120.88,201.19");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=109.08,256.38");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=243.30,214.42");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=191.52,173.97");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=238.63,119.23");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=196.63,141.56");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=170.29,193.12");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=160.07,151.90");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=24.00,164.18");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=87.93,4.96");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=126.78,96.11");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=86.75,44.97");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=86.79,102.27");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=103.02,207.32");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=41.44,183.93");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=138.48,316.39");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=73.14,243.93");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=159.49,215.16");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=197.88,291.47");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=151.38,288.32");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=193.09,159.37");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=217.37,211.59");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=204.11,85.97");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=226.02,145.02");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=219.67,59.05");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=192.41,125.17");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=105.38,75.13");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=187.88,107.82");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=53.12,122.93");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=84.50,155.37");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=53.13,133.50");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=17.80,246.38");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=83.40,292.42");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=35.69,259.35");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=111.08,334.41");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=267.26,315.30");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=162.76,239.93");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=143.73,118.47");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=287.58,234.52");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=204.98,212.41");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=192.39,184.20");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=256.60,103.47");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=92.07,20.02");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=127.56,5.46");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=127.90,81.96");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=49.22,73.14");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=65.97,122.20");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=44.74,210.34");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=71.44,131.42");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=147.54,159.64");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=109.71,243.73");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=182.94,165.30");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=181.58,316.22");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=129.26,244.71");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=267.77,138.95");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=210.85,118.43");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=221.26,132.37");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=102.77,134.07");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=172.21,114.66");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=48.26,96.06");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=67.12,43.42");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=154.50,78.30");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=128.99,57.12");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=128.14,141.83");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=65.52,145.99");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=116.75,105.43");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=210.17,230.85");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=159.71,325.46");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=104.16,234.70");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=190.99,255.06");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=229.43,219.83");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=293.36,137.79");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=178.15,139.30");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=245.99,102.87");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=155.96,251.10");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=148.62,33.16");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=99.20,85.54");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=49.51,18.80");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=162.83,71.43");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=217.87,88.31");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=27.03,104.80");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=91.64,229.85");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=167.94,204.19");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=137.84,216.70");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=118.83,250.29");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=163.12,271.38");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=207.65,276.08");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=117.68,179.37");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=228.21,156.07");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=210.33,167.77");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=292.14,181.89");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=263.77,209.50");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=165.33,122.71");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=97.40,42.49");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=65.42,31.40");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=191.53,0.80");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=63.85,62.77");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=140.02,103.38");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=118.04,156.54");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=3.03,144.71");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=91.37,247.26");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=60.50,305.14");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=236.10,234.49");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=288.30,257.46");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=227.40,261.02");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=249.41,169.85");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=232.56,106.94");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=128.46,174.49");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=158.53,105.62");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=231.24,203.38");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=68.27,80.10");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=13.25,75.68");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=132.64,19.47");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=128.18,36.04");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=93.69,214.14");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=141.22,247.29");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=80.10,175.39");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=132.23,254.29");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=66.41,215.03");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=147.26,200.97");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=212.19,286.97");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=251.48,181.36");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=287.58,194.97");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=169.89,249.97");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=268.24,167.18");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=239.34,256.82");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=236.38,168.00");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=45.64,113.66");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=35.25,72.00");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=165.57,3.63");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=140.82,78.85");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=134.22,189.54");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=23.89,274.34");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=54.35,163.47");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=73.36,308.48");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=32.36,341.85");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=117.42,235.15");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=246.26,315.23");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=156.42,225.07");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=234.23,185.94");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=213.25,195.62");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=241.88,138.98");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=183.83,151.12");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=115.07,92.00");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=12.81,148.10");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=64.24,12.42");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=149.46,53.19");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=87.63,112.49");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=108.21,161.53");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=79.28,188.00");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=39.35,134.86");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=61.16,200.17");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=142.59,326.89");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=149.56,315.90");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=247.42,299.06");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=256.79,255.64");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=308.02,193.88");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=200.43,260.17");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=197.04,100.17");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=212.32,256.38");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=203.69,75.66");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=47.19,146.50");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=70.89,91.18");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=181.60,95.18");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=160.17,52.00");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=20.67,141.19");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=95.45,126.17");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=27.58,229.17");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=185.49,218.29");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=9.46,337.65");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=70.97,228.84");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=224.79,276.54");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=211.54,156.43");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=285.84,148.70");
    }

}

