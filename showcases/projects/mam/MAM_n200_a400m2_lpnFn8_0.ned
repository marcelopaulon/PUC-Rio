
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn8_0
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
        @display("p=148.79,298.87");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=196.30,308.68");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=186.29,297.27");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=179.84,346.72");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=167.44,297.40");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=113.49,229.19");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=185.39,261.30");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=225.07,297.76");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=240.79,268.77");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=259.44,270.70");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=282.29,192.96");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=334.55,152.53");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=370.14,100.18");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=396.92,184.33");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=370.97,112.67");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=347.03,92.39");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=324.67,119.43");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=297.50,94.12");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=264.16,88.77");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=254.43,96.19");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=183.60,33.90");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=202.47,105.20");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=251.64,154.13");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=305.07,231.52");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=136.14,288.98");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=150.76,387.89");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=207.04,380.52");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=218.20,311.44");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=209.83,325.25");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=144.03,314.39");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=57.22,235.34");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=237.73,206.22");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=256.88,345.65");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=281.46,256.12");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=346.86,281.05");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=273.30,219.09");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=320.81,163.36");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=336.54,170.58");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=373.54,199.81");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=313.23,148.83");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=333.55,94.97");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=243.20,105.08");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=305.78,30.25");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=229.08,96.23");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=161.99,111.27");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=203.66,18.65");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=197.79,72.18");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=255.55,137.31");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=244.65,162.27");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=69.12,351.41");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=125.09,388.45");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=244.54,312.12");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=196.31,212.87");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=151.95,362.23");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=177.48,326.32");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=128.91,219.12");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=227.18,278.68");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=227.95,378.42");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=235.04,255.63");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=240.50,222.94");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=232.61,187.12");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=385.99,131.19");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=390.68,106.56");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=379.17,139.21");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=378.44,81.90");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=376.66,154.79");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=303.68,206.26");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=357.00,26.66");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=296.94,55.75");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=263.24,71.54");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=188.83,115.24");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=190.09,48.30");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=319.43,97.47");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=223.39,178.55");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=39.74,258.78");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=89.98,270.01");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=219.99,247.23");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=263.97,245.94");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=259.02,326.69");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=164.99,227.93");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=147.74,236.93");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=145.37,207.20");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=240.22,242.36");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=327.20,316.83");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=285.20,337.10");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=183.25,184.14");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=364.71,205.35");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=292.73,109.13");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=387.85,160.43");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=279.72,97.86");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=349.98,102.43");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=272.82,37.34");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=304.01,74.29");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=200.94,38.75");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=306.31,84.88");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=109.73,10.12");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=178.88,109.39");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=172.76,182.58");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=333.22,279.62");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=115.28,279.37");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=163.48,384.01");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=236.79,232.40");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=154.42,326.36");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=172.79,399.27");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=137.52,342.11");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=100.71,146.96");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=209.11,245.96");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=189.03,317.62");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=265.10,182.55");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=287.24,216.48");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=285.63,239.61");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=285.43,122.64");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=301.90,103.95");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=358.39,131.20");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=296.60,123.48");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=358.75,110.08");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=300.44,143.78");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=251.37,69.01");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=251.56,117.61");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=295.46,80.98");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=185.58,101.01");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=229.01,113.33");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=208.15,182.09");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=320.89,207.35");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=132.01,248.93");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=195.29,326.29");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=173.87,310.83");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=197.05,296.76");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=180.69,370.53");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=88.97,344.31");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=124.16,209.90");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=115.53,318.81");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=212.76,287.80");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=194.44,253.17");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=304.33,291.93");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=224.10,158.20");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=291.36,155.51");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=354.85,150.56");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=357.73,192.43");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=392.78,119.00");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=386.68,94.73");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=341.98,66.43");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=274.47,69.81");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=279.76,47.82");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=312.95,59.58");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=95.73,31.55");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=164.61,173.76");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=277.83,162.60");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=278.73,267.88");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=108.80,289.17");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=141.34,262.42");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=220.02,213.41");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=191.46,282.78");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=215.01,352.30");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=166.31,356.65");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=93.65,280.45");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=262.18,231.01");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=289.47,357.44");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=233.76,321.58");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=217.08,275.04");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=358.80,244.62");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=348.57,118.17");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=324.28,140.75");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=387.74,188.60");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=374.90,31.10");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=331.40,111.16");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=268.86,114.71");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=240.17,124.77");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=283.22,147.97");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=293.44,171.72");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=131.34,71.64");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=114.00,124.90");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=268.52,154.29");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=314.08,262.65");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=86.30,294.00");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=124.22,285.26");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=168.12,276.96");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=201.12,348.49");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=234.81,307.70");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=256.23,290.28");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=105.81,215.38");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=204.30,280.51");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=199.72,226.16");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=259.29,172.20");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=255.69,306.59");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=306.42,241.64");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=361.47,172.84");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=332.09,79.63");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=347.07,214.77");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=379.28,67.94");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=328.27,22.15");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=273.74,130.60");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=292.58,68.91");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=186.90,65.90");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=212.98,140.69");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=155.97,52.04");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=219.93,44.22");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=161.60,128.85");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=292.92,229.32");
    }

}

