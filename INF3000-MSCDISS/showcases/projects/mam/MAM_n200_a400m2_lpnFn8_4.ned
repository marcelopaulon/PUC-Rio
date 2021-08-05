
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn8_4
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
        @display("p=113.79,108.45");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=181.27,94.23");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=171.90,101.13");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=149.42,72.50");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=100.61,66.97");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=109.24,38.82");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=125.20,88.92");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=103.09,169.28");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=36.99,165.47");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=15.72,206.25");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=64.16,250.49");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=113.33,194.96");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=130.65,148.08");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=155.38,171.31");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=158.99,214.56");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=170.69,264.21");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=152.44,231.04");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=61.32,238.82");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=82.06,255.12");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=58.12,273.08");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=108.43,238.98");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=9.16,238.96");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=50.28,192.06");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=89.81,150.22");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=161.78,147.78");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=142.36,94.02");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=152.27,106.64");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=181.67,122.79");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=138.62,43.63");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=101.12,79.55");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=119.06,32.54");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=161.93,75.55");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=104.29,180.83");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=24.00,158.42");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=27.44,240.93");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=109.50,270.74");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=58.37,206.66");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=130.77,190.03");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=206.15,191.93");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=104.77,200.70");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=204.13,265.23");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=186.15,154.54");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=42.11,238.09");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=60.03,286.88");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=44.94,295.42");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=120.33,225.86");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=72.85,242.54");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=22.43,182.77");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=167.68,111.70");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=36.66,151.10");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=33.82,111.45");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=272.81,59.34");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=263.26,69.96");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=180.26,39.55");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=141.60,121.32");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=170.50,66.21");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=128.88,54.97");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=90.90,167.48");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=9.37,145.08");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=72.80,208.36");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=19.02,302.27");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=77.76,137.89");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=141.18,143.57");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=167.96,125.65");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=162.03,276.19");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=130.15,209.62");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=213.21,253.92");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=142.68,183.99");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=118.00,215.03");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=21.79,230.77");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=74.63,219.85");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=49.39,229.37");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=24.83,269.42");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=176.42,192.68");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=190.81,126.95");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=28.89,69.63");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=251.41,105.20");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=172.36,87.04");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=89.72,93.92");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=95.86,14.10");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=87.72,42.69");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=57.97,90.05");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=93.99,265.31");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=74.70,109.38");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=29.38,209.12");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=46.33,257.63");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=184.95,172.59");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=196.10,206.83");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=222.03,203.49");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=248.81,231.28");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=181.89,257.91");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=173.98,219.58");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=106.72,294.72");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=134.42,254.30");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=93.66,197.84");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=95.05,254.65");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=99.02,282.45");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=7.14,218.44");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=62.58,130.65");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=30.04,95.44");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=124.95,166.13");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=180.96,27.82");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=114.69,61.68");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=115.88,7.32");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=192.68,61.18");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=90.45,109.09");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=84.94,67.92");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=89.26,186.78");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=41.44,101.34");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=41.14,273.19");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=148.17,209.97");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=96.50,217.81");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=117.64,132.77");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=164.38,187.78");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=208.91,214.59");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=256.47,302.46");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=145.32,195.34");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=57.96,221.51");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=37.13,284.59");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=125.05,241.28");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=87.67,242.00");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=48.51,178.70");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=36.74,196.14");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=162.72,200.55");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=92.51,29.35");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=70.68,33.60");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=234.81,61.23");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=175.00,149.44");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=153.74,133.35");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=129.15,133.59");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=130.41,103.34");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=213.67,116.71");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=87.56,78.20");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=21.19,105.22");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=13.56,191.03");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=84.70,231.47");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=161.76,251.33");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=197.52,154.42");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=90.98,132.27");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=112.64,158.58");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=115.32,300.89");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=126.84,272.10");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=151.33,263.72");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=67.83,265.08");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=87.41,277.62");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=149.14,158.49");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=52.40,313.40");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=0.88,198.65");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=3.14,128.38");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=90.31,53.20");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=43.51,87.53");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=121.52,153.26");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=159.07,95.95");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=235.88,77.81");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=128.82,122.75");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=144.94,29.09");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=112.17,25.11");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=27.17,132.45");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=55.55,167.47");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=45.27,156.60");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=58.79,179.29");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=131.80,173.78");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=192.03,224.66");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=181.97,184.05");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=177.12,138.35");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=234.20,237.97");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=226.10,226.09");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=85.97,211.32");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=61.52,301.41");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=13.58,324.28");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=154.56,311.94");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=3.25,311.59");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=5.88,174.48");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=50.65,78.21");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=47.73,117.94");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=116.70,118.69");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=194.84,20.80");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=150.24,42.04");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=185.82,108.54");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=106.78,149.15");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=125.99,64.93");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=58.05,106.19");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=69.07,95.12");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=75.05,186.87");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=46.48,204.27");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=109.55,251.82");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=36.22,222.33");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=153.77,81.94");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=136.85,231.89");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=191.28,240.56");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=180.79,238.20");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=105.60,223.80");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=139.29,268.75");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=49.17,246.12");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=41.42,348.46");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=183.48,298.84");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=12.04,261.87");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=20.67,216.10");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=88.15,119.77");
    }

}

