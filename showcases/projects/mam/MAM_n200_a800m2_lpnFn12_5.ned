
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn12_5
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
        @display("p=19.29,49.16");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=86.54,35.49");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=35.24,5.81");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=13.42,58.38");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=75.05,52.52");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=140.43,100.46");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=219.82,94.56");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=215.05,106.29");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=222.02,125.16");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=260.48,159.70");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=263.79,194.33");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=336.34,242.18");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=344.01,188.95");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=396.30,143.72");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=385.26,86.26");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=417.65,139.77");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=33.53,113.44");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=13.42,37.79");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=112.76,87.59");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=19.92,86.40");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=59.90,106.08");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=116.36,74.07");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=117.50,126.84");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=247.60,4.73");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=204.73,123.47");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=263.28,112.13");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=281.44,164.15");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=318.14,133.66");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=407.23,209.16");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=398.62,221.68");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=396.91,122.50");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=406.53,134.26");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=501.47,174.89");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=105.16,128.81");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=44.39,19.40");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=75.02,27.99");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=31.32,18.43");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=77.52,74.68");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=19.62,100.45");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=159.68,153.33");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=268.23,140.36");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=183.97,195.45");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=303.17,78.33");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=268.38,236.49");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=224.60,250.51");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=342.99,251.90");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=295.95,135.91");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=381.41,142.22");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=341.36,58.47");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=393.45,71.21");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=59.29,12.33");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=28.53,80.68");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=29.22,35.81");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=14.50,21.31");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=58.13,53.66");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=28.78,140.70");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=165.68,142.86");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=202.88,93.27");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=232.45,106.10");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=258.29,149.38");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=222.12,142.76");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=278.56,270.33");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=367.40,269.81");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=359.45,189.40");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=346.14,200.20");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=336.17,35.39");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=447.59,203.56");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=78.27,11.89");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=8.03,67.06");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=68.62,66.73");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=36.55,27.85");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=42.28,80.73");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=36.24,60.17");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=116.89,108.09");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=203.66,109.54");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=231.31,147.31");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=245.83,186.58");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=239.11,158.71");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=290.27,229.45");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=401.37,282.45");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=302.31,162.12");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=473.98,192.15");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=416.18,7.90");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=480.34,111.24");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=114.49,29.87");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=93.58,113.35");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=88.58,22.73");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=63.75,85.93");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=90.19,64.92");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=109.38,17.90");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=232.14,78.36");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=164.92,167.71");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=254.12,103.74");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=175.47,163.94");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=223.13,210.20");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=280.60,131.61");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=268.49,213.63");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=311.31,277.04");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=407.41,198.77");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=456.62,133.92");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=353.79,159.61");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=194.42,81.09");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=62.24,123.61");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=68.56,16.57");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=1.73,11.60");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=53.07,42.47");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=149.54,77.75");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=139.50,111.09");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=163.51,21.92");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=127.70,95.34");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=178.88,175.26");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=239.33,223.98");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=300.83,187.85");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=385.28,253.89");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=374.43,244.33");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=342.30,79.99");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=427.58,175.45");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=447.08,90.60");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=162.70,85.01");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=49.81,99.28");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=133.69,42.42");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=100.92,24.30");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=99.10,70.10");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=109.88,64.32");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=87.24,158.91");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=187.36,135.16");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=217.44,28.49");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=262.11,37.64");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=293.08,170.97");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=280.90,216.01");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=354.56,301.27");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=364.57,199.76");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=379.29,155.03");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=364.01,91.81");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=488.16,171.30");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=95.84,12.92");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=72.76,92.08");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=153.36,97.48");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=116.62,49.12");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=18.93,68.46");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=141.78,56.82");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=164.18,73.88");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=276.45,146.60");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=305.00,94.14");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=238.72,196.92");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=242.29,116.55");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=318.46,206.43");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=371.04,285.49");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=368.62,223.76");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=423.17,166.04");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=405.11,33.27");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=466.27,150.18");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=85.42,98.85");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=39.00,38.63");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=146.41,3.65");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=126.52,19.37");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=7.34,102.45");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=133.54,119.18");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=104.75,143.20");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=224.81,115.24");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=145.34,35.82");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=160.59,64.06");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=174.56,122.13");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=295.41,244.54");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=301.60,255.13");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=312.11,233.12");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=413.21,83.76");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=370.53,83.43");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=339.93,117.02");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=152.83,138.60");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=33.46,50.41");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=127.32,3.42");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=53.40,3.00");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=2.44,33.17");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=97.59,89.39");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=94.20,53.84");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=202.08,170.16");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=297.70,61.28");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=247.88,85.57");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=279.35,77.34");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=227.17,228.87");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=332.05,162.35");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=374.41,178.02");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=378.65,100.78");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=379.63,72.63");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=477.42,125.13");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=74.48,118.21");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=102.29,4.07");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=126.77,60.45");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=33.16,98.35");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=9.17,148.01");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=43.49,48.92");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=130.77,179.46");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=261.30,89.26");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=286.29,106.37");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=159.28,122.18");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=249.72,138.00");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=327.16,237.20");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=384.11,211.48");
    }

}

