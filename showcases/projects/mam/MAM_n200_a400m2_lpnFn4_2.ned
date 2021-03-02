
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn4_2
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
        @display("p=68.06,150.07");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=1.43,193.57");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=4.56,244.03");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=72.25,208.26");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=54.76,197.44");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=31.79,188.72");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=53.76,172.47");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=75.96,80.57");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=93.38,81.58");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=169.76,60.30");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=205.07,24.71");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=167.80,13.98");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=247.23,4.38");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=237.90,13.46");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=319.06,63.08");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=276.97,40.72");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=258.82,36.86");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=296.60,13.36");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=312.00,24.94");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=299.96,2.08");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=223.00,31.58");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=290.60,43.12");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=332.85,35.33");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=341.75,43.35");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=284.14,10.26");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=356.94,49.70");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=337.62,17.03");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=238.22,74.86");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=187.70,61.10");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=195.00,104.73");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=244.98,146.82");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=226.86,186.06");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=243.61,252.72");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=265.47,196.20");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=360.65,177.60");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=308.46,218.03");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=285.34,270.26");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=201.92,301.29");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=228.70,311.11");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=179.77,295.47");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=205.93,381.43");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=211.13,328.37");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=276.23,326.25");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=251.39,308.61");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=267.16,276.92");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=295.49,194.95");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=223.43,263.93");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=236.45,231.43");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=149.32,237.82");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=154.36,180.13");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=39.32,196.16");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=5.97,179.46");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=33.51,260.26");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=15.88,138.17");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=41.11,161.71");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=18.78,177.13");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=86.16,151.58");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=52.12,99.32");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=82.22,90.16");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=201.48,75.06");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=134.72,45.68");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=110.56,25.53");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=223.93,61.80");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=195.71,12.05");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=337.06,63.72");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=251.15,103.55");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=259.08,18.69");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=238.24,61.04");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=321.40,17.95");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=349.53,34.67");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=196.03,37.82");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=225.81,13.92");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=347.00,87.80");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=335.99,142.86");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=318.13,91.01");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=366.55,85.41");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=322.81,2.16");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=252.48,114.51");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=127.90,101.35");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=226.13,165.12");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=197.94,227.39");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=215.14,275.24");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=168.37,316.26");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=320.40,263.55");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=381.03,172.66");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=275.88,239.01");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=298.42,286.77");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=154.96,266.58");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=163.43,305.18");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=115.05,262.49");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=187.64,321.83");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=241.13,284.55");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=187.74,302.33");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=258.27,353.79");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=321.29,302.69");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=339.01,226.81");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=184.93,222.93");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=212.58,262.21");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=155.13,245.97");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=100.42,111.68");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=109.11,120.77");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=73.98,239.61");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=72.59,221.30");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=143.26,256.27");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=9.51,281.08");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=94.19,142.84");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=55.87,184.48");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=28.13,126.60");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=140.92,35.11");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=173.47,75.40");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=207.49,40.45");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=260.59,6.10");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=227.23,85.51");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=169.42,31.86");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=279.89,152.06");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=310.96,83.88");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=221.87,121.51");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=274.70,92.21");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=328.04,75.04");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=312.42,9.96");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=184.29,10.38");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=340.78,6.65");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=295.21,57.71");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=321.45,52.65");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=278.51,25.51");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=384.50,54.18");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=307.26,99.15");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=317.96,122.12");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=151.34,48.44");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=197.11,190.85");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=256.73,207.47");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=312.24,237.48");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=259.47,260.21");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=210.18,242.66");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=363.88,193.26");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=335.83,197.26");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=249.33,239.23");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=247.85,322.52");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=302.70,364.79");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=251.11,274.33");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=158.76,350.67");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=198.80,358.51");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=232.10,372.36");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=229.06,361.42");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=270.96,287.95");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=368.94,248.87");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=259.23,173.90");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=166.69,229.83");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=174.63,203.98");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=127.63,150.50");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=18.92,230.48");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=21.14,208.44");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=0.65,274.10");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=90.16,199.80");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=114.91,222.08");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=101.74,174.82");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=102.97,152.65");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=58.14,88.67");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=83.81,108.77");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=74.94,33.45");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=158.38,63.72");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=122.48,66.67");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=275.72,80.40");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=311.36,69.67");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=247.82,70.51");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=195.01,51.03");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=253.49,27.42");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=333.71,85.52");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=287.78,30.76");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=282.18,54.41");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=177.62,52.02");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=218.07,3.80");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=371.59,94.26");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=360.70,6.89");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=270.84,5.28");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=369.57,54.71");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=362.09,21.24");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=190.63,146.38");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=166.67,113.86");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=152.30,131.71");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=284.46,124.38");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=289.48,185.22");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=242.87,262.75");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=255.65,158.23");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=382.82,118.19");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=358.69,283.93");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=220.64,247.41");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=210.09,354.83");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=289.13,305.65");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=166.88,249.12");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=134.08,369.83");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=205.33,313.46");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=320.45,281.63");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=289.12,321.65");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=346.68,280.71");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=362.69,142.62");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=265.82,212.59");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=182.68,186.23");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=135.74,186.83");
    }

}

