
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn4_1
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
        @display("p=100.00,300.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=103.23,324.60");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=86.23,326.67");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=15.60,288.86");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=55.42,266.64");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=84.45,299.82");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=130.16,274.26");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=116.32,269.62");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=81.18,191.86");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=25.09,239.27");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=38.20,323.19");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=15.63,398.85");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=24.19,299.62");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=23.63,360.95");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=53.63,314.82");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=38.89,341.64");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=120.55,364.31");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=88.36,393.04");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=166.44,384.75");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=174.76,363.44");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=181.32,274.06");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=99.18,283.39");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=164.21,326.44");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=187.85,317.41");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=225.55,239.07");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=187.60,260.10");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=180.52,185.74");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=143.46,214.06");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=191.77,244.57");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=203.47,233.67");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=271.49,211.19");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=208.00,142.99");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=137.71,153.78");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=169.04,170.37");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=163.87,159.68");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=114.37,169.00");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=98.20,205.91");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=121.77,298.38");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=188.82,372.14");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=165.63,371.88");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=152.29,358.62");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=140.48,388.08");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=209.60,312.95");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=289.14,367.64");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=255.57,291.96");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=211.47,255.56");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=199.81,277.66");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=149.90,232.31");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=149.82,330.04");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=79.02,250.74");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=185.91,341.51");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=202.59,333.74");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=46.18,279.43");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=1.59,309.38");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=15.08,249.43");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=69.44,259.70");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=118.36,241.83");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=150.24,263.86");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=127.58,213.98");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=27.25,223.06");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=72.81,304.26");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=11.89,374.98");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=85.69,363.85");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=84.15,289.47");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=60.98,290.57");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=65.81,357.85");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=127.28,382.50");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=2.46,359.31");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=109.56,356.95");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=192.89,351.81");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=164.52,260.81");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=73.61,275.08");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=170.33,302.41");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=197.51,289.73");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=293.39,272.32");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=132.29,184.62");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=100.93,188.42");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=116.61,195.17");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=184.61,170.55");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=106.75,236.93");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=285.67,217.05");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=242.91,63.70");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=138.67,124.82");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=186.69,148.75");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=155.52,217.56");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=105.60,198.95");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=103.17,219.03");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=171.39,282.40");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=215.49,343.60");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=123.53,320.24");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=172.97,350.22");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=128.07,371.94");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=181.27,293.12");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=288.67,303.32");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=228.17,217.92");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=259.47,216.33");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=232.13,270.14");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=136.56,240.77");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=238.81,343.38");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=60.43,232.64");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=89.04,240.47");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=142.67,291.37");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=38.45,288.26");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=19.87,270.00");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=49.63,207.33");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=76.85,316.45");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=144.90,253.34");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=152.37,299.10");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=94.80,168.99");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=3.47,322.06");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=26.14,326.65");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=41.14,368.16");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=27.16,313.50");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=73.02,376.97");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=3.98,260.15");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=98.15,396.63");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=156.52,386.98");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=149.29,342.65");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=160.09,337.89");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=238.67,395.92");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=115.72,229.62");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=101.66,342.48");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=246.01,365.55");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=154.44,369.65");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=224.83,253.63");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=246.01,213.85");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=160.86,123.17");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=98.72,267.65");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=149.21,310.57");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=245.54,288.50");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=265.83,196.07");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=172.76,208.36");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=148.57,150.22");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=150.55,182.31");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=219.95,195.51");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=104.65,145.37");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=127.28,121.56");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=71.78,288.16");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=239.70,321.98");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=166.04,358.46");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=125.09,352.04");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=182.75,393.47");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=162.59,310.54");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=238.63,305.11");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=281.70,341.30");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=178.61,217.07");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=153.36,276.55");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=212.23,188.30");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=86.53,374.95");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=65.41,197.23");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=21.89,259.06");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=93.67,316.36");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=53.43,397.41");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=82.64,351.54");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=50.96,249.83");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=108.73,289.73");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=83.59,262.07");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=127.01,286.36");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=14.20,186.20");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=8.20,171.12");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=30.95,279.76");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=73.92,327.78");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=78.17,217.42");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=16.41,348.38");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=24.72,336.71");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=55.19,348.10");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=136.09,340.36");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=111.72,377.68");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=256.41,351.60");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=174.17,322.63");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=185.02,205.16");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=47.09,218.57");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=234.36,373.35");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=173.29,338.71");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=178.09,162.26");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=250.37,263.19");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=200.18,184.74");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=65.91,154.10");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=133.86,229.36");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=203.32,218.97");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=290.80,251.22");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=205.46,163.88");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=141.64,167.94");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=228.21,109.22");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=217.07,158.72");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=63.09,142.43");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=65.38,182.67");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=108.88,309.21");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=268.23,342.45");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=218.63,293.40");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=203.87,395.80");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=192.74,383.25");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=253.63,341.42");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=303.59,321.69");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=291.73,234.93");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=210.01,242.73");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=201.45,266.10");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=240.94,242.73");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=113.65,334.22");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=124.55,251.50");
    }

}

