
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn8_4
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
        @display("p=86.43,198.77");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=72.61,199.05");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=84.94,157.10");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=34.22,120.31");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=102.38,153.56");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=119.64,99.40");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=67.26,99.01");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=92.97,112.67");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=124.25,49.49");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=91.97,31.06");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=82.10,28.71");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=175.17,0.08");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=182.82,32.90");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=157.68,57.90");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=135.13,51.63");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=160.15,137.98");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=216.01,82.91");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=216.44,56.15");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=280.42,113.05");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=289.63,207.87");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=277.53,187.37");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=234.44,219.18");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=224.07,134.91");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=250.96,176.46");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=172.50,96.46");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=61.28,217.38");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=38.17,134.56");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=45.49,171.13");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=16.00,95.38");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=90.44,176.00");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=74.80,163.10");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=119.27,36.55");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=110.47,114.17");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=211.38,46.56");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=146.64,91.02");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=71.62,123.89");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=194.56,92.25");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=202.58,33.68");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=152.11,46.97");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=65.39,83.99");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=139.78,150.90");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=151.57,107.89");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=193.27,38.99");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=197.15,129.55");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=200.51,200.61");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=357.04,232.38");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=321.11,180.61");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=220.98,155.79");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=203.15,186.88");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=71.75,53.52");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=156.03,219.83");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=64.31,256.00");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=39.73,108.91");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=37.73,42.13");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=115.55,217.19");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=158.38,180.60");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=60.82,120.52");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=120.37,156.14");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=157.55,28.50");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=137.58,7.27");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=75.50,14.22");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=154.90,17.10");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=123.45,25.81");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=170.39,30.62");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=128.81,116.20");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=162.37,208.29");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=240.37,64.11");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=206.08,143.22");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=266.92,136.48");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=338.61,260.72");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=293.00,155.31");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=236.10,195.89");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=246.59,200.58");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=257.72,164.25");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=113.09,75.30");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=123.96,207.80");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=92.32,235.25");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=170.78,115.59");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=19.61,27.46");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=173.81,159.61");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=136.79,72.01");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=48.37,189.39");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=63.34,173.47");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=90.07,74.03");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=86.06,41.26");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=20.75,1.63");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=173.12,43.58");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=263.92,7.85");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=213.73,130.48");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=218.94,71.83");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=188.27,123.42");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=235.93,51.70");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=303.81,90.88");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=267.30,97.06");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=266.15,226.26");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=313.27,263.23");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=290.40,144.01");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=239.88,167.26");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=258.55,189.30");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=56.51,26.86");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=8.48,136.55");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=97.51,276.50");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=83.57,216.55");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=104.75,185.48");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=101.73,137.34");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=127.22,88.05");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=44.59,147.72");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=156.30,154.75");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=82.34,133.11");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=99.74,53.13");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=52.93,48.66");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=110.01,23.60");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=268.58,32.26");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=192.66,81.20");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=161.87,76.90");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=174.52,133.57");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=202.51,111.58");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=209.50,91.71");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=315.41,129.05");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=380.36,198.89");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=290.78,270.37");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=247.07,236.67");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=241.03,154.96");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=222.34,216.04");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=89.76,145.59");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=39.62,161.00");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=39.71,251.73");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=48.05,240.75");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=51.16,91.73");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=9.85,183.89");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=212.51,111.76");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=130.72,98.62");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=70.88,143.10");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=161.82,102.36");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=31.08,91.62");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=113.20,53.61");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=158.81,6.75");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=199.77,19.88");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=151.89,81.33");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=104.53,7.77");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=148.58,142.32");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=259.00,114.41");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=199.45,73.33");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=340.76,126.73");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=344.02,213.29");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=276.78,146.14");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=183.65,166.81");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=292.02,104.76");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=314.37,160.79");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=32.12,153.54");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=41.51,206.16");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=20.00,184.39");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=0.31,195.74");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=51.62,127.06");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=47.00,219.81");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=185.59,108.98");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=48.50,59.91");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=101.60,119.57");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=121.46,64.42");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=28.25,57.97");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=131.06,16.55");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=226.63,47.37");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=207.29,65.99");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=64.91,34.83");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=88.10,10.46");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=157.03,116.99");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=194.34,6.82");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=268.55,46.83");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=280.32,162.72");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=317.46,210.33");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=273.44,208.85");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=159.88,256.12");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=181.66,212.38");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=252.21,219.72");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=97.88,84.49");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=11.23,204.15");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=66.34,241.27");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=9.19,161.45");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=11.74,80.13");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=84.62,92.44");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=182.84,64.54");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=16.36,43.30");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=44.56,119.87");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=167.57,15.85");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=81.12,104.31");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=0.59,84.08");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=186.24,19.77");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=244.59,9.72");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=145.48,55.23");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=106.51,35.58");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=206.35,164.73");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=281.30,11.10");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=235.46,33.98");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=354.90,150.47");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=265.48,290.67");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=295.56,260.92");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=207.14,249.51");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=213.19,178.59");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=273.16,263.07");
    }

}

