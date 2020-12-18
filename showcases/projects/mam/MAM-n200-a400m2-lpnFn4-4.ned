
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn4-4
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
        @display("p=307.00,76.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=321.47,19.14");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=311.42,26.37");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=320.13,45.71");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=387.62,25.67");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=379.32,114.28");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=339.42,119.66");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=392.56,136.69");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=313.19,96.07");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=300.24,23.22");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=274.23,41.07");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=208.34,76.99");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=261.85,79.90");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=274.54,161.14");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=288.25,189.64");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=248.82,153.71");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=260.79,144.60");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=242.82,109.21");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=198.94,97.93");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=108.65,76.02");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=131.97,120.28");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=86.13,121.62");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=161.18,181.24");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=214.32,168.14");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=147.08,230.40");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=157.02,232.15");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=173.79,273.14");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=126.75,316.84");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=133.35,307.53");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=115.80,315.72");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=46.72,287.25");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=110.05,233.29");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=89.60,186.88");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=99.85,186.18");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=115.80,152.42");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=102.23,107.61");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=32.32,109.35");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=19.93,16.83");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=31.23,65.61");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=39.11,26.37");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=69.38,4.55");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=104.95,88.02");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=124.42,103.77");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=218.48,133.40");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=181.41,40.52");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=193.66,116.40");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=186.18,94.43");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=147.44,96.13");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=122.94,78.88");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=87.84,89.14");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=264.69,158.39");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=398.14,2.22");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=343.76,13.66");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=376.89,94.15");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=378.84,41.34");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=385.80,126.23");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=353.03,126.64");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=389.87,79.18");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=330.71,93.44");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=269.10,14.90");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=247.69,95.38");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=165.43,80.17");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=257.96,101.88");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=181.95,138.56");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=259.37,232.14");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=241.45,168.61");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=247.63,125.81");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=278.44,131.88");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=214.48,145.58");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=161.03,4.28");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=87.56,203.13");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=106.53,198.50");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=194.36,185.41");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=229.89,171.36");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=154.17,217.26");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=87.54,225.04");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=165.75,254.11");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=89.23,292.82");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=131.42,215.07");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=109.95,282.41");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=35.42,224.77");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=131.78,284.67");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=65.46,210.49");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=33.78,207.07");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=177.62,196.67");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=149.47,21.32");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=62.55,122.68");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=84.48,61.91");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=10.30,74.52");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=28.09,75.98");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=94.61,0.63");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=145.67,42.98");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=111.94,135.82");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=316.81,125.03");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=110.12,51.97");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=163.38,115.09");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=241.99,65.83");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=132.76,139.03");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=196.07,32.49");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=87.24,39.63");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=245.45,36.75");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=291.24,51.30");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=273.00,96.96");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=367.57,59.33");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=345.76,45.95");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=367.76,123.88");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=263.24,172.61");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=390.86,179.62");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=327.65,5.02");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=280.69,105.76");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=295.06,89.10");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=172.92,72.24");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=260.35,122.01");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=309.43,202.48");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=289.38,143.15");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=257.26,182.65");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=277.17,184.59");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=253.29,66.35");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=194.12,43.44");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=87.14,107.01");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=111.11,173.66");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=152.00,157.50");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=180.84,232.76");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=207.03,260.94");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=138.61,163.47");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=119.61,276.15");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=261.63,281.18");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=57.92,249.13");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=147.42,244.50");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=93.90,308.54");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=40.88,278.57");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=88.92,271.37");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=6.54,201.91");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=121.33,174.69");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=71.61,237.02");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=135.78,24.09");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=23.51,98.24");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=58.29,90.69");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=58.75,22.12");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=3.80,32.18");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=54.49,10.87");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=166.55,96.41");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=95.92,63.25");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=206.31,138.28");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=173.24,127.03");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=186.34,170.79");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=133.42,154.77");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=208.00,108.80");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=217.38,88.17");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=147.84,55.94");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=233.81,132.65");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=320.49,32.09");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=285.34,36.12");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=240.42,81.31");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=363.16,30.58");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=363.18,194.57");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=336.88,108.60");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=393.62,228.59");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=337.03,84.94");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=264.36,53.99");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=247.07,23.76");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=182.84,121.02");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=240.45,9.68");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=193.09,138.26");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=295.30,170.53");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=288.48,124.03");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=244.19,207.03");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=229.39,78.26");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=152.02,67.76");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=132.06,11.80");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=155.58,134.80");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=116.38,117.98");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=203.04,162.37");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=201.22,245.17");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=194.06,207.26");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=170.60,219.81");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=117.56,253.42");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=72.39,277.53");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=34.38,320.84");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=65.96,308.85");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=1.69,312.74");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=94.23,213.85");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=49.44,211.45");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=33.62,140.34");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=84.70,237.34");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=85.60,50.55");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=16.67,182.34");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=34.93,13.59");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=53.13,40.96");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=41.18,56.51");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=84.52,18.17");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=109.06,17.11");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=96.33,156.78");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=256.29,133.22");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=173.35,30.62");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=181.13,153.22");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=229.88,61.08");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=126.03,30.80");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=124.72,64.79");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=77.71,128.75");
    }

}

