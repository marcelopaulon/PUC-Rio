
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn4_3
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
            @display("p=100,100");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=58.73,52.49");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=92.80,38.80");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=126.48,2.78");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=134.88,35.55");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=130.44,45.65");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=173.73,43.51");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=110.49,62.16");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=65.86,111.60");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=57.94,126.70");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=106.83,161.69");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=118.61,182.64");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=97.28,188.00");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=79.06,180.35");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=87.57,148.97");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=84.68,71.96");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=136.94,72.42");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=126.54,144.54");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=158.77,178.75");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=159.52,261.11");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=167.44,304.05");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=226.50,229.35");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=171.55,220.81");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=121.07,279.52");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=71.68,234.00");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=71.16,168.11");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=76.84,214.33");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=58.38,201.88");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=42.95,165.73");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=44.24,235.72");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=55.80,244.04");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=55.36,261.86");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=108.19,213.96");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=28.22,186.92");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=167.22,188.52");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=74.60,194.83");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=133.96,164.41");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=150.96,196.89");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=148.21,124.80");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=84.57,102.15");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=103.95,149.37");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=54.29,187.48");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=132.36,115.97");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=149.38,109.44");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=195.79,88.44");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=232.53,64.31");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=308.24,65.08");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=385.40,61.02");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=432.76,28.40");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=380.58,36.57");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=159.98,146.34");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=12.44,101.36");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=1.36,41.66");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=203.14,30.30");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=139.29,97.90");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=110.99,20.39");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=180.98,30.12");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=114.62,78.38");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=59.61,89.53");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=77.46,110.70");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=183.09,115.86");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=106.12,182.70");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=89.69,199.02");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=45.14,155.12");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=73.91,245.14");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=69.10,72.67");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=195.20,37.12");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=29.46,145.95");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=168.19,209.61");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=177.37,262.81");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=109.68,355.32");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=261.40,238.46");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=141.86,245.57");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=116.86,334.04");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=50.77,277.47");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=69.97,146.30");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=68.56,125.85");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=40.37,204.87");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=117.64,103.81");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=79.91,290.32");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=109.42,291.95");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=45.37,260.05");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=152.99,239.54");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=33.81,250.66");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=244.48,180.54");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=141.33,206.11");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=90.82,159.13");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=66.22,177.58");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=80.16,60.94");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=10.92,138.24");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=29.65,157.12");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=7.66,240.13");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=79.68,155.71");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=126.08,125.22");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=237.05,107.17");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=170.45,123.72");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=363.23,43.66");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=382.12,95.01");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=400.04,10.53");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=382.92,71.13");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=128.86,98.23");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=39.49,77.17");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=120.33,13.14");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=146.56,21.85");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=91.67,49.86");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=134.81,12.37");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=212.66,4.83");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=80.95,46.74");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=53.68,74.36");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=90.59,133.07");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=118.70,154.06");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=203.93,172.15");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=129.87,230.51");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=48.01,220.48");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=145.04,177.13");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=112.83,134.38");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=169.33,150.72");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=40.61,100.11");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=215.63,114.58");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=88.54,321.01");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=167.11,291.05");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=245.83,225.76");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=122.93,265.81");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=86.33,281.99");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=5.86,195.65");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=42.20,177.15");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=124.21,170.86");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=18.50,228.21");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=9.13,72.75");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=75.18,312.25");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=62.65,213.37");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=17.47,318.26");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=51.39,210.36");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=88.73,227.75");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=185.22,186.56");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=109.12,120.20");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=56.37,137.09");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=195.81,248.14");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=52.48,112.50");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=22.41,123.85");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=92.89,117.60");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=13.83,255.96");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=95.99,83.03");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=201.44,100.66");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=160.22,79.83");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=230.01,136.44");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=293.20,64.40");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=433.54,66.11");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=485.17,68.09");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=395.46,58.90");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=104.63,48.48");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=15.56,46.94");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=79.25,32.24");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=161.93,31.51");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=112.79,34.60");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=127.04,25.32");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=169.65,3.39");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=87.22,91.94");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=70.88,204.44");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=139.43,150.06");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=88.40,250.64");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=113.28,200.58");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=136.79,263.22");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=69.02,278.03");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=174.91,180.95");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=38.56,115.21");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=212.32,58.55");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=145.98,163.92");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=220.23,130.36");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=151.59,269.74");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=157.67,308.80");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=223.27,258.90");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=144.27,233.88");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=206.46,324.79");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=17.00,277.20");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=55.28,154.05");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=108.80,237.30");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=138.94,187.71");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=37.91,193.23");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=12.37,183.72");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=121.98,223.05");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=107.80,263.21");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=65.89,303.34");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=30.54,169.48");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=229.26,149.99");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=124.10,196.37");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=104.01,90.38");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=193.29,146.34");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=190.30,63.67");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=103.23,131.07");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=126.91,80.92");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=97.28,176.06");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=178.21,55.17");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=168.19,66.60");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=200.80,132.04");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=243.66,33.51");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=327.05,63.76");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=323.67,41.33");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=373.82,49.66");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=416.82,6.91");
    }

}

