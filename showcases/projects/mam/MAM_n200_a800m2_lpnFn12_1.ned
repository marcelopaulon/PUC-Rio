
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn12_1
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
        @display("p=105.16,166.83");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=76.63,238.36");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=54.44,261.72");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=56.59,291.48");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=37.56,270.24");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=12.28,218.01");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=40.21,172.84");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=55.44,176.79");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=64.14,232.83");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=1.82,186.57");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=12.56,191.84");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=23.34,185.96");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=136.15,310.50");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=140.66,262.66");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=95.64,260.93");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=154.61,221.34");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=95.72,78.70");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=124.76,102.02");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=100.78,239.49");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=81.08,229.05");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=78.38,310.57");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=38.25,283.31");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=60.52,160.96");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=60.96,194.96");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=46.25,136.92");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=48.72,240.48");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=62.34,204.96");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=33.97,204.28");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=96.19,147.43");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=177.54,370.51");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=148.73,281.72");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=111.29,186.79");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=154.77,170.26");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=134.56,95.44");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=143.13,170.12");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=65.43,307.34");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=53.79,226.50");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=68.33,287.42");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=88.93,335.69");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=70.99,277.45");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=10.23,112.18");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=73.23,210.98");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=28.71,168.17");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=27.86,151.66");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=35.09,220.11");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=45.96,115.02");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=137.60,290.49");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=124.91,280.99");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=90.51,234.17");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=166.57,223.81");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=176.79,99.95");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=76.63,197.66");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=57.68,149.80");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=110.32,261.01");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=2.16,339.81");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=9.44,235.30");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=108.67,213.62");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=93.01,213.03");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=37.29,251.04");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=19.03,285.16");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=44.45,212.37");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=81.78,134.13");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=6.32,208.65");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=120.43,308.86");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=162.77,295.99");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=89.63,272.98");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=144.78,148.46");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=143.56,100.98");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=124.90,191.65");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=64.64,263.80");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=102.42,318.08");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=115.46,359.24");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=38.17,319.35");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=9.25,177.99");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=41.06,232.87");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=62.35,184.67");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=109.98,229.97");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=38.22,160.57");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=46.97,149.61");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=94.99,135.27");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=215.54,301.07");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=109.95,297.51");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=118.19,220.13");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=229.56,236.52");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=105.55,30.23");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=69.13,115.28");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=29.02,297.12");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=46.74,303.22");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=73.51,362.49");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=97.30,194.64");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=1.33,249.79");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=83.43,205.71");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=122.29,143.01");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=24.46,230.50");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=20.94,205.39");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=73.50,175.41");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=106.62,134.93");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=96.03,344.24");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=117.54,198.86");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=95.86,280.84");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=251.43,221.58");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=54.62,41.00");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=91.78,185.46");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=9.64,259.41");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=84.58,247.16");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=3.08,326.51");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=74.06,321.02");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=19.24,174.67");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=13.70,133.60");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=86.89,96.74");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=143.97,244.81");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=34.10,182.96");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=74.97,259.37");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=35.29,130.66");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=139.40,346.41");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=190.44,185.74");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=193.72,242.71");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=222.77,225.32");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=13.72,87.49");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=99.78,158.24");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=136.26,205.26");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=130.51,324.12");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=41.57,366.56");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=121.75,256.68");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=17.14,301.91");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=78.56,165.62");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=1.55,149.57");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=23.49,245.37");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=36.65,193.62");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=26.78,114.30");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=24.88,276.08");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=216.50,345.76");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=208.62,279.47");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=79.76,283.36");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=160.73,189.39");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=117.86,111.30");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=40.55,93.06");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=27.22,257.28");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=49.64,339.11");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=93.82,377.88");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=32.30,239.85");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=18.16,146.44");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=52.05,124.37");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=134.74,175.90");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=29.95,308.32");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=6.64,163.57");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=18.77,158.64");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=122.71,175.79");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=162.63,366.37");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=124.72,298.01");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=174.27,210.78");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=213.67,173.44");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=60.15,95.51");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=149.15,132.34");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=91.43,316.83");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=14.65,268.74");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=66.20,253.49");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=6.13,300.99");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=99.87,224.82");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=46.48,187.29");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=90.30,165.02");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=93.98,292.17");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=52.70,251.72");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=85.65,154.61");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=45.92,103.53");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=163.96,318.58");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=182.05,286.60");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=156.79,257.95");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=133.63,217.90");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=130.71,34.46");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=180.54,121.34");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=169.47,273.76");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=136.16,236.73");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=110.74,328.26");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=23.94,353.80");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=0.55,267.15");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=112.97,154.00");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=128.45,150.95");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=94.41,175.60");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=18.43,101.77");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=69.98,131.68");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=71.77,151.15");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=109.97,280.86");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=148.89,236.02");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=127.10,339.95");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=237.05,199.46");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=104.22,65.14");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=179.80,109.70");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=150.92,200.37");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=96.89,306.55");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=26.78,335.68");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=62.09,320.09");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=1.40,219.85");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=61.60,78.45");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=96.11,111.17");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=63.32,219.60");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=8.14,124.81");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=101.01,205.66");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=44.63,202.27");
    }

}

