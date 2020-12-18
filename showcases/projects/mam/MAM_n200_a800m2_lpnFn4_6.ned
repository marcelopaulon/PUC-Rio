
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn4_6
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
        @display("p=171.37,36.03");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=125.21,39.93");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=158.71,102.04");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=152.49,110.99");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=158.28,204.61");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=122.59,141.91");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=35.08,121.56");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=57.08,119.71");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=72.89,40.60");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=46.29,51.25");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=2.17,97.37");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=7.59,113.66");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=56.48,151.17");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=62.21,68.75");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=35.59,76.96");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=121.33,125.20");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=65.84,195.00");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=141.24,214.29");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=223.48,206.13");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=230.49,178.25");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=176.62,146.05");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=151.27,129.12");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=137.06,126.20");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=179.67,187.91");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=121.80,173.52");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=80.95,208.37");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=123.72,205.12");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=219.48,193.67");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=194.16,145.55");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=149.06,195.78");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=101.30,197.41");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=86.62,240.45");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=24.21,312.65");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=36.43,259.63");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=43.13,268.34");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=77.48,345.64");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=47.25,384.51");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=82.68,421.72");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=0.70,432.45");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=87.79,467.24");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=174.35,439.86");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=191.71,469.88");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=232.22,459.86");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=216.28,473.14");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=144.68,503.82");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=127.87,453.02");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=71.86,479.19");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=122.16,481.82");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=94.23,453.96");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=98.42,130.94");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=231.67,50.79");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=169.92,115.92");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=180.99,49.88");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=117.73,61.00");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=141.81,111.75");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=115.53,97.33");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=20.28,162.61");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=86.68,112.70");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=63.79,36.30");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=37.68,89.15");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=18.23,70.03");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=89.96,149.87");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=145.03,175.90");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=45.42,97.28");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=53.39,44.17");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=100.81,80.04");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=123.37,245.62");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=125.68,225.95");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=179.57,244.34");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=231.86,145.72");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=183.19,72.72");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=247.25,126.74");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=176.67,159.62");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=187.19,225.22");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=106.87,209.58");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=54.96,184.47");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=42.21,154.92");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=276.02,150.90");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=196.88,167.77");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=161.98,156.90");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=69.57,129.31");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=45.59,322.58");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=35.06,217.66");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=32.31,297.42");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=88.15,273.49");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=78.02,362.08");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=39.96,456.27");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=125.80,399.60");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=6.80,460.84");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=82.92,445.62");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=189.99,532.02");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=205.58,450.18");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=227.91,491.04");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=233.03,448.54");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=68.30,553.93");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=102.67,446.70");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=101.04,496.91");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=178.61,518.51");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=161.97,522.37");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=43.34,171.10");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=149.80,37.09");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=103.46,37.78");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=69.61,80.65");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=225.57,111.99");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=95.70,253.89");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=210.48,162.05");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=20.59,193.75");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=90.51,89.49");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=51.34,7.39");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=32.48,54.94");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=21.96,133.14");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=89.45,126.31");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=109.44,230.07");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=20.52,0.32");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=115.53,43.85");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=139.48,53.92");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=58.57,289.27");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=148.69,226.90");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=246.71,296.42");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=284.71,157.44");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=103.89,163.37");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=139.99,162.61");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=125.88,93.59");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=199.82,183.77");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=178.40,215.24");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=67.65,232.33");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=133.68,183.61");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=232.92,101.71");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=219.08,94.91");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=215.29,247.47");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=11.10,197.45");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=155.07,297.12");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=13.68,315.70");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=63.68,301.73");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=96.70,225.78");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=32.38,367.29");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=86.23,306.77");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=72.64,381.53");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=5.35,416.37");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=74.70,468.74");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=256.69,414.23");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=252.47,539.73");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=217.28,444.82");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=237.76,412.25");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=175.01,588.48");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=203.59,512.95");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=77.49,574.10");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=43.80,427.90");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=110.76,464.26");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=148.00,86.90");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=154.25,75.91");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=98.13,52.15");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=159.52,22.59");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=182.12,110.94");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=176.43,297.96");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=75.74,153.39");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=17.40,145.75");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=40.58,186.06");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=109.09,121.60");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=141.79,70.66");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=11.68,103.56");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=75.80,183.29");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=61.49,170.13");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=73.19,54.37");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=42.11,135.81");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=109.78,144.27");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=17.68,226.81");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=134.13,199.26");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=247.49,211.22");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=188.29,131.09");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=164.91,130.92");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=158.78,141.65");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=162.54,222.15");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=209.97,274.28");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=185.93,172.01");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=37.05,284.53");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=212.39,217.11");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=235.76,199.70");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=176.91,90.28");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=206.67,143.66");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=130.93,214.98");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=91.52,194.62");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=55.54,334.41");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=37.45,336.78");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=47.88,198.71");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=136.65,394.96");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=55.65,390.85");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=91.90,416.08");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=22.55,491.23");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=127.51,424.17");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=245.53,374.60");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=104.14,424.79");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=252.81,447.29");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=128.20,503.91");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=116.66,429.11");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=160.45,426.29");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=10.62,510.35");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=178.64,498.49");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=16.90,432.01");
    }

}

