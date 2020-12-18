
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn8_0
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
        @display("p=102.84,109.96");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=177.77,114.19");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=89.64,122.71");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=58.84,158.31");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=21.40,164.24");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=6.45,210.67");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=95.26,173.59");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=137.16,190.93");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=154.58,264.71");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=143.59,308.27");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=209.62,331.08");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=204.66,344.50");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=193.90,311.84");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=222.01,240.86");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=235.43,159.03");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=239.46,135.00");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=236.78,115.74");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=299.01,56.88");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=281.92,44.72");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=270.66,39.62");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=293.79,1.13");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=338.07,73.68");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=366.88,79.35");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=350.71,88.45");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=61.81,24.07");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=123.00,134.88");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=167.87,126.44");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=42.39,142.97");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=85.66,234.49");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=43.51,184.69");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=42.00,171.16");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=21.68,132.76");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=117.84,249.72");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=121.92,320.71");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=72.65,324.94");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=218.23,359.04");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=171.91,318.69");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=116.11,303.30");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=201.08,237.79");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=217.52,202.74");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=244.85,68.55");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=218.12,75.37");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=343.81,42.22");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=186.70,47.00");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=239.63,34.80");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=245.02,53.27");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=368.82,18.20");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=392.78,96.14");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=374.20,151.39");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=80.84,51.41");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=115.79,71.61");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=181.17,157.36");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=67.87,48.42");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=143.91,208.94");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=9.99,147.62");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=3.55,182.26");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=72.36,137.38");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=62.91,232.46");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=195.20,227.44");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=168.64,345.72");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=150.19,332.94");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=279.87,406.49");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=206.88,283.25");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=251.39,316.48");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=251.90,193.54");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=253.89,120.00");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=238.77,77.51");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=271.81,84.94");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=254.99,93.87");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=287.85,125.99");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=256.87,8.02");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=258.25,42.06");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=447.95,73.97");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=370.10,128.91");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=80.71,87.23");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=111.45,126.09");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=210.89,98.25");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=60.62,216.06");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=46.68,119.74");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=15.70,223.01");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=93.51,192.55");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=104.80,191.21");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=102.88,162.36");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=208.19,214.70");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=101.64,233.80");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=242.12,262.54");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=189.48,279.40");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=204.59,362.10");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=255.79,242.33");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=269.50,96.83");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=203.30,136.03");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=286.39,81.01");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=277.23,74.81");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=310.64,16.71");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=191.48,36.59");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=236.10,58.00");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=388.72,115.43");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=387.20,126.30");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=302.70,117.80");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=174.30,33.33");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=164.86,116.02");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=171.97,87.65");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=77.70,178.15");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=116.82,178.10");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=58.96,202.99");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=83.33,190.37");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=67.42,186.38");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=121.02,162.46");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=140.27,284.42");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=130.41,293.32");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=226.86,352.00");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=200.17,375.64");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=206.04,310.44");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=149.85,275.25");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=160.77,205.29");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=161.03,102.16");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=315.98,174.57");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=360.43,124.94");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=299.60,141.52");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=242.18,8.67");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=294.96,47.02");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=270.54,139.35");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=399.59,58.34");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=283.39,135.45");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=119.30,85.10");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=140.47,66.79");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=128.11,94.26");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=88.14,138.33");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=118.15,216.87");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=74.00,97.06");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=51.21,272.93");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=154.26,178.11");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=147.58,169.09");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=229.84,259.70");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=107.20,379.18");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=223.74,333.18");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=273.25,364.32");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=173.06,289.42");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=215.46,266.03");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=287.10,164.89");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=328.29,168.47");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=221.45,142.95");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=261.16,66.72");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=341.59,110.05");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=312.91,37.70");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=207.08,7.16");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=327.71,17.71");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=360.97,100.34");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=403.29,106.85");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=126.81,31.89");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=124.37,57.17");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=211.87,158.47");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=68.07,168.83");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=148.43,195.09");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=103.41,135.29");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=98.45,218.62");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=82.14,205.54");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=203.83,167.11");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=190.94,298.35");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=128.84,241.63");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=225.45,322.89");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=236.54,354.94");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=190.78,238.11");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=240.28,198.73");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=166.03,229.64");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=217.58,123.25");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=283.26,190.21");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=252.22,27.78");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=275.68,30.75");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=192.48,59.22");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=320.89,1.75");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=432.25,75.75");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=357.65,65.18");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=320.82,82.41");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=55.50,71.85");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=84.11,65.21");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=209.35,60.18");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=159.47,81.14");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=127.65,223.07");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=39.59,160.44");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=93.60,241.69");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=130.55,199.14");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=120.42,193.42");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=182.91,311.95");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=141.33,341.12");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=240.57,369.15");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=179.98,377.47");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=127.63,268.36");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=300.37,256.20");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=242.87,246.07");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=291.28,175.83");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=194.32,104.00");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=233.65,2.67");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=270.93,12.76");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=286.96,17.13");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=262.95,24.51");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=352.82,37.30");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=392.19,154.85");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=396.18,31.57");
    }

}

