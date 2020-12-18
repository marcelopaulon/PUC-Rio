
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
        @display("p=123.00,154.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=154.47,123.49");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=143.99,46.22");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=143.39,89.19");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=172.40,114.56");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=140.79,72.78");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=138.83,98.70");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=149.71,101.48");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=190.95,165.26");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=184.95,243.58");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=184.37,303.54");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=201.00,315.87");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=214.44,309.38");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=141.31,286.78");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=96.66,328.09");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=128.21,314.03");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=96.78,295.02");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=28.16,243.38");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=10.71,241.99");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=59.77,210.72");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=50.90,135.29");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=52.25,151.45");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=121.94,206.91");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=147.55,272.00");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=158.73,242.66");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=134.25,154.61");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=151.83,81.78");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=160.24,98.11");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=125.26,70.44");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=206.16,21.77");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=115.10,36.91");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=165.63,138.79");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=179.62,164.64");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=240.64,101.26");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=176.56,282.37");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=161.48,267.41");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=228.71,303.31");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=173.31,294.03");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=114.04,289.33");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=28.03,330.22");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=142.59,334.97");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=114.65,349.34");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=48.69,220.26");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=37.02,322.24");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=73.49,231.20");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=81.00,162.81");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=13.07,137.91");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=108.76,210.74");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=185.97,272.87");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=201.37,271.23");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=100.27,175.44");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=205.31,142.87");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=114.91,94.54");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=215.42,108.19");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=169.77,41.49");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=129.37,32.78");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=83.78,48.34");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=100.72,104.62");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=185.68,156.68");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=226.54,275.10");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=154.86,324.30");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=228.30,330.11");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=237.20,239.72");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=102.13,248.83");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=87.20,309.69");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=153.52,293.70");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=100.09,309.22");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=14.42,228.45");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=47.05,269.69");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=42.65,196.43");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=21.47,130.68");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=25.21,185.49");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=102.85,140.55");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=162.33,304.38");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=174.90,219.49");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=112.58,157.24");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=139.68,113.29");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=137.49,59.52");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=95.74,113.32");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=136.13,141.70");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=113.15,5.40");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=144.67,11.61");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=102.75,84.09");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=235.26,76.40");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=236.25,204.06");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=261.28,313.77");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=147.57,396.20");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=172.19,370.48");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=123.75,281.94");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=67.88,263.09");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=46.35,358.61");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=3.83,300.30");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=14.00,210.35");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=71.33,280.21");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=44.27,236.69");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=60.15,109.62");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=57.06,161.75");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=134.06,264.03");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=130.40,198.48");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=207.27,250.96");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=149.68,186.40");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=225.25,79.26");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=237.30,47.06");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=171.44,124.86");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=197.05,121.70");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=157.70,33.95");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=154.23,110.81");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=106.70,121.96");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=218.22,190.06");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=134.14,221.49");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=133.27,240.25");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=180.46,336.21");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=280.20,340.89");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=150.08,236.36");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=91.67,337.70");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=156.83,366.73");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=139.54,300.78");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=4.69,177.04");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=53.05,195.22");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=89.29,211.25");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=143.93,148.34");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=71.61,200.11");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=197.40,257.54");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=158.97,255.01");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=197.08,246.01");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=87.67,149.99");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=128.76,123.39");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=236.51,15.65");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=221.60,95.86");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=263.45,111.56");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=99.01,74.26");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=154.89,161.12");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=162.07,3.11");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=208.85,154.75");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=203.69,228.51");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=194.83,294.98");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=149.08,384.36");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=288.60,327.84");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=141.03,318.96");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=87.68,290.57");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=58.16,372.03");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=76.94,305.95");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=4.17,189.72");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=43.72,314.65");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=135.57,179.49");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=54.07,74.68");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=149.56,138.27");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=29.87,170.43");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=98.01,238.19");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=156.28,224.46");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=38.48,159.12");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=185.26,137.02");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=75.05,58.66");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=215.72,147.23");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=201.15,79.58");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=117.27,51.69");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=104.22,16.41");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=130.03,48.31");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=249.13,94.64");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=255.93,258.95");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=177.77,313.69");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=250.47,349.82");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=252.94,337.56");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=101.92,377.76");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=164.20,337.70");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=180.58,396.22");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=77.86,259.06");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=11.58,331.95");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=82.01,188.48");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=77.80,127.61");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=18.67,94.81");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=106.04,222.41");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=23.06,196.03");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=77.94,219.46");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=119.80,269.80");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=102.29,156.85");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=159.05,208.37");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=146.23,25.40");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=192.75,50.67");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=213.74,78.65");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=81.62,23.08");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=113.94,65.14");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=234.08,59.21");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=270.00,188.09");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=199.05,178.39");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=244.13,367.39");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=182.22,380.94");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=291.20,367.74");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=192.23,350.74");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=115.24,363.70");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=174.70,325.75");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=64.05,300.38");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=4.16,282.89");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=2.42,253.86");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=31.96,212.52");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=19.19,161.78");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=66.18,118.38");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=121.46,139.30");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=228.94,319.15");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=241.10,255.23");
    }

}

