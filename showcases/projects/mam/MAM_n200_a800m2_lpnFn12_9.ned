
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn12_9
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=118.72,118.11");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=121.34,88.80");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=48.79,133.35");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=73.33,174.77");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=93.11,187.69");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=139.83,124.84");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=129.04,119.62");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=87.83,139.04");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=153.51,181.39");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=87.28,213.15");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=66.31,214.15");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=47.02,243.21");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=56.61,235.63");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=47.50,224.25");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=143.33,148.49");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=112.76,150.22");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=52.53,177.88");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=184.71,74.73");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=143.52,26.02");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=36.22,117.58");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=98.12,220.24");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=109.18,255.22");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=197.68,194.53");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=172.05,36.59");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=71.53,150.36");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=114.44,180.23");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=128.66,149.73");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=64.86,198.37");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=106.29,291.47");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=95.57,273.61");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=2.10,207.65");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=126.74,212.92");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=159.89,193.61");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=154.35,60.31");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=65.08,118.16");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=141.63,94.84");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=59.78,127.03");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=7.66,139.82");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=117.71,203.75");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=136.06,53.76");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=88.37,45.01");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=33.57,199.52");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=225.53,155.61");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=101.07,168.10");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=75.03,219.72");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=125.77,273.59");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=34.23,237.89");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=11.98,199.54");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=196.41,162.35");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=201.09,111.16");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=103.94,141.08");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=173.45,92.12");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=139.06,78.11");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=58.94,108.92");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=82.49,260.92");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=166.86,229.23");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=99.72,150.66");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=77.17,75.81");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=83.08,85.13");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=177.81,159.56");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=17.18,187.16");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=78.46,187.23");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=139.73,237.03");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=19.83,213.65");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=39.34,267.49");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=86.48,72.01");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=84.84,151.02");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=103.08,75.20");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=125.43,108.20");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=33.39,49.23");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=2.26,183.38");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=13.55,118.70");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=130.29,233.49");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=166.01,102.64");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=94.81,122.20");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=55.29,144.80");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=181.03,250.05");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=152.04,223.56");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=57.17,279.17");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=23.41,235.15");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=95.11,200.46");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=127.42,255.32");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=149.93,118.98");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=78.94,120.08");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=95.96,110.87");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=171.21,137.78");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=125.56,79.42");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=43.46,211.83");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=92.33,175.40");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=181.53,196.15");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=158.65,47.88");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=80.74,37.26");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=107.80,119.84");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=160.92,128.52");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=71.69,301.88");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=7.77,155.74");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=17.53,151.76");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=142.95,198.59");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=38.50,319.87");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=158.87,152.08");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=176.17,118.56");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=48.84,68.30");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=191.56,141.16");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=177.27,59.91");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=34.42,135.14");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=79.20,199.88");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=142.98,271.03");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=81.19,110.26");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=157.44,90.46");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=156.88,210.22");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=139.34,164.47");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=87.84,223.17");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=83.76,282.49");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=105.84,196.75");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=21.14,328.98");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=57.71,188.13");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=231.69,176.62");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=140.21,108.69");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=65.49,90.43");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=81.59,165.89");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=119.41,68.38");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=35.98,153.11");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=36.27,101.19");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=90.63,242.90");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=208.03,172.52");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=156.91,109.80");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=123.41,138.72");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=154.83,168.17");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=95.08,233.62");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=76.97,234.96");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=39.65,253.38");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=60.92,260.80");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=29.39,225.33");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=124.57,173.41");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=68.40,136.50");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=15.96,63.86");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=206.20,139.31");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=211.59,64.38");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=57.18,162.10");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=30.21,170.34");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=62.53,177.11");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=120.53,156.79");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=111.88,130.76");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=125.28,48.64");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=141.68,215.03");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=83.60,270.90");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=9.94,241.46");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=111.03,243.73");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=82.99,304.30");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=55.29,216.08");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=190.89,223.04");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=151.81,80.46");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=115.92,100.44");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=141.00,181.89");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=210.28,100.62");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=67.62,56.39");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=40.62,181.47");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=71.35,251.27");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=206.95,76.17");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=68.45,165.91");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=172.89,171.42");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=183.39,173.24");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=183.22,215.77");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=45.24,297.00");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=1.15,270.85");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=98.98,313.71");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=13.16,292.88");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=188.16,106.86");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=45.98,165.33");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=121.87,192.52");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=164.21,77.37");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=45.06,41.03");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=89.64,101.82");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=119.74,230.94");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=105.01,265.96");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=93.48,36.26");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=193.84,53.85");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=65.64,228.30");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=238.79,201.05");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=68.75,288.47");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=155.23,234.52");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=19.89,172.96");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=76.91,332.11");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=8.33,257.48");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=234.12,138.59");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=51.53,199.54");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=104.32,34.44");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=46.86,53.45");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=61.55,13.39");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=35.98,90.82");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=46.59,150.40");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=4.91,222.69");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=112.09,169.53");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=134.98,138.23");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=77.33,53.84");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=167.24,241.60");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=114.98,218.73");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=29.29,255.37");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=101.56,247.17");
    }

}

