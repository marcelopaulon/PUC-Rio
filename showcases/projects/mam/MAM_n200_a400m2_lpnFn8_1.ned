
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn8_1
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
        @display("p=76.38,293.45");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=70.64,249.44");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=93.10,237.39");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=39.10,180.18");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=111.75,235.04");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=186.93,290.86");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=184.20,280.60");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=167.88,253.94");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=135.07,260.20");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=200.81,214.74");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=208.21,198.64");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=181.55,239.20");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=237.70,233.76");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=263.03,251.58");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=256.73,214.92");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=318.09,235.57");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=320.12,206.73");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=319.02,271.04");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=363.28,251.91");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=310.03,316.52");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=215.54,294.69");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=191.91,227.42");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=180.60,207.23");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=113.40,164.97");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=93.86,359.18");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=75.70,321.12");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=4.03,204.80");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=102.53,161.20");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=52.32,188.45");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=129.72,182.41");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=225.65,302.67");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=272.75,244.19");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=159.55,352.86");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=146.16,326.70");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=216.36,232.13");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=206.07,264.93");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=209.40,184.82");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=241.38,144.70");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=252.19,256.28");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=238.09,212.63");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=280.24,188.24");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=328.56,114.59");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=389.74,307.68");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=341.32,224.50");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=326.85,387.81");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=117.36,275.76");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=127.71,301.41");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=211.17,211.89");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=160.12,82.58");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=56.47,215.94");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=64.93,349.44");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=103.57,201.51");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=129.51,283.83");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=71.69,175.76");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=105.58,217.21");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=159.93,237.14");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=248.05,308.07");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=155.90,223.76");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=131.99,237.32");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=168.87,232.38");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=268.87,142.56");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=197.63,325.97");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=192.82,252.27");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=295.18,227.25");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=315.17,180.27");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=347.87,275.91");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=313.03,216.46");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=285.76,256.93");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=378.31,236.74");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=306.45,272.74");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=173.50,298.02");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=229.56,222.15");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=138.73,291.66");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=115.32,136.29");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=32.88,238.02");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=93.58,216.87");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=76.11,344.69");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=69.91,272.21");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=88.79,138.97");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=106.95,251.86");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=262.66,326.30");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=223.66,272.23");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=188.78,263.37");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=145.10,265.60");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=163.54,270.93");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=303.80,212.31");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=157.52,260.78");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=198.99,186.02");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=345.73,251.17");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=264.49,226.47");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=227.83,256.98");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=251.27,173.24");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=308.47,246.25");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=343.53,161.96");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=278.50,295.61");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=282.76,283.17");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=190.99,150.69");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=171.29,177.75");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=95.09,189.77");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=19.55,354.14");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=109.91,312.86");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=49.31,234.23");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=71.33,215.44");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=41.01,228.33");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=23.28,196.68");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=192.92,378.18");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=170.32,308.56");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=178.01,271.16");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=152.35,293.38");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=203.28,230.18");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=267.68,165.76");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=196.73,205.02");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=260.88,194.23");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=224.20,206.44");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=297.20,197.27");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=394.55,198.19");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=308.59,200.48");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=324.39,288.04");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=320.16,259.46");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=305.29,325.89");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=209.05,383.48");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=212.76,319.74");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=150.74,201.62");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=134.20,125.83");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=18.61,338.15");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=118.49,290.65");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=86.56,254.79");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=109.14,186.07");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=24.45,131.26");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=154.39,316.54");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=242.55,224.35");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=144.40,229.18");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=139.96,248.23");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=53.52,300.36");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=204.12,176.23");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=272.94,205.15");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=96.36,286.36");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=271.01,263.16");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=203.55,278.96");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=304.37,136.81");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=328.10,229.59");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=336.40,197.21");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=368.74,260.96");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=359.41,242.61");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=276.98,393.45");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=190.45,312.73");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=144.39,155.78");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=202.65,153.12");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=132.92,208.74");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=72.31,306.62");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=96.25,383.25");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=16.02,288.18");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=121.99,251.68");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=114.54,222.48");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=60.76,243.25");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=171.46,192.16");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=125.20,327.53");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=137.11,275.67");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=169.32,211.11");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=194.28,163.83");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=185.64,197.42");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=149.98,187.20");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=233.26,279.13");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=247.50,241.79");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=272.73,215.41");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=263.84,273.07");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=354.80,203.12");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=339.97,181.35");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=330.67,312.86");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=329.01,370.43");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=245.87,264.76");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=147.88,172.49");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=177.94,110.27");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=50.17,141.62");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=118.08,374.77");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=91.10,203.73");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=25.95,294.75");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=5.42,240.21");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=28.97,161.86");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=203.46,245.45");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=236.30,292.51");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=205.24,363.19");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=234.31,182.91");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=82.18,237.62");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=207.88,135.52");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=215.75,249.18");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=213.57,273.06");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=326.55,250.23");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=278.86,235.61");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=218.82,194.70");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=312.38,227.09");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=359.64,173.80");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=285.69,246.57");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=343.48,332.66");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=368.02,301.14");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=227.13,324.96");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=154.78,137.66");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=171.16,164.93");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=147.68,145.11");
    }

}

