
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM200-9
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
        @display("p=7.00,85.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=70.77,77.11");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=19.99,17.81");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=16.50,33.34");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=20.36,5.14");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=70.27,19.14");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=52.14,77.87");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=3.35,101.21");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=19.58,151.17");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=41.00,132.10");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=27.00,124.10");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=54.80,153.67");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=90.98,90.56");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=13.32,65.49");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=27.56,142.84");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=40.72,144.16");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=106.99,167.33");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=134.48,140.43");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=127.67,43.67");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=137.50,93.13");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=98.78,111.65");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=151.58,52.81");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=118.21,88.15");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=157.96,64.94");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=74.33,28.62");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=101.28,41.02");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=114.09,53.22");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=129.11,17.56");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=199.27,45.12");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=264.10,116.99");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=218.36,100.15");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=255.46,158.14");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=247.81,194.48");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=230.40,237.24");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=282.98,282.67");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=231.67,214.99");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=199.25,207.42");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=211.69,192.51");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=208.14,177.34");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=243.61,252.58");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=203.48,284.12");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=127.64,236.90");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=78.00,316.12");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=91.40,295.19");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=84.64,202.53");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=77.80,215.84");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=54.81,139.20");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=81.83,191.31");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=96.28,125.77");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=41.94,76.74");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=71.55,57.28");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=151.99,32.33");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=95.44,6.16");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=50.11,4.34");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=15.56,121.99");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=71.07,120.23");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=19.53,45.00");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=74.50,97.56");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=148.23,111.33");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=111.18,112.42");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=62.16,49.85");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=82.28,111.23");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=104.76,180.06");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=116.95,221.02");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=162.59,226.02");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=133.20,218.98");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=122.11,292.57");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=74.48,262.97");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=58.57,311.94");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=93.73,257.78");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=120.52,309.44");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=208.21,312.39");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=167.43,250.28");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=104.47,303.14");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=174.64,279.50");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=160.86,295.72");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=157.87,255.32");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=182.52,304.12");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=177.83,324.65");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=171.80,352.35");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=154.29,335.67");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=232.36,354.35");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=212.06,339.88");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=131.44,309.43");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=93.00,380.79");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=132.64,342.33");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=198.32,329.45");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=237.33,331.69");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=186.84,379.33");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=210.08,392.03");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=210.32,293.14");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=216.53,323.25");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=212.74,250.61");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=187.24,248.17");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=161.20,182.11");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=152.22,165.27");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=160.12,158.90");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=211.95,142.17");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=154.11,191.65");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=117.32,244.74");
    }

    host_fn_rly_101: <default("SensorNode")> like INetworkNode {
        @display("p=170.41,305.47");
    }

    host_fn_rly_102: <default("SensorNode")> like INetworkNode {
        @display("p=121.50,258.54");
    }

    host_fn_rly_103: <default("SensorNode")> like INetworkNode {
        @display("p=114.39,339.81");
    }

    host_fn_rly_104: <default("SensorNode")> like INetworkNode {
        @display("p=142.77,373.41");
    }

    host_fn_rly_105: <default("SensorNode")> like INetworkNode {
        @display("p=139.24,318.89");
    }

    host_fn_rly_106: <default("SensorNode")> like INetworkNode {
        @display("p=104.98,277.66");
    }

    host_fn_rly_107: <default("SensorNode")> like INetworkNode {
        @display("p=62.71,254.78");
    }

    host_fn_rly_108: <default("SensorNode")> like INetworkNode {
        @display("p=116.78,206.50");
    }

    host_fn_rly_109: <default("SensorNode")> like INetworkNode {
        @display("p=71.18,151.07");
    }

    host_fn_rly_110: <default("SensorNode")> like INetworkNode {
        @display("p=149.62,94.18");
    }

    host_fn_rly_111: <default("SensorNode")> like INetworkNode {
        @display("p=92.84,151.66");
    }

    host_fn_rly_112: <default("SensorNode")> like INetworkNode {
        @display("p=81.77,144.25");
    }

    host_fn_rly_113: <default("SensorNode")> like INetworkNode {
        @display("p=117.24,176.92");
    }

    host_fn_rly_114: <default("SensorNode")> like INetworkNode {
        @display("p=143.23,171.42");
    }

    host_fn_rly_115: <default("SensorNode")> like INetworkNode {
        @display("p=219.89,177.32");
    }

    host_fn_rly_116: <default("SensorNode")> like INetworkNode {
        @display("p=256.61,185.87");
    }

    host_fn_rly_117: <default("SensorNode")> like INetworkNode {
        @display("p=245.03,168.09");
    }

    host_fn_rly_118: <default("SensorNode")> like INetworkNode {
        @display("p=225.92,153.93");
    }

    host_fn_rly_119: <default("SensorNode")> like INetworkNode {
        @display("p=230.97,134.77");
    }

    host_fn_rly_120: <default("SensorNode")> like INetworkNode {
        @display("p=164.82,135.88");
    }

    host_fn_rly_121: <default("SensorNode")> like INetworkNode {
        @display("p=180.65,131.92");
    }

    host_fn_rly_122: <default("SensorNode")> like INetworkNode {
        @display("p=238.10,177.85");
    }

    host_fn_rly_123: <default("SensorNode")> like INetworkNode {
        @display("p=227.87,204.95");
    }

    host_fn_rly_124: <default("SensorNode")> like INetworkNode {
        @display("p=196.14,224.56");
    }

    host_fn_rly_125: <default("SensorNode")> like INetworkNode {
        @display("p=273.36,154.08");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=56.37,60.88");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=143.98,44.17");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=89.55,55.77");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=5.25,41.36");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=30.29,17.14");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=84.93,19.70");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=28.28,82.91");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=75.25,136.12");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=43.64,240.11");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=80.72,74.22");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=84.71,159.41");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=43.48,157.08");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=64.44,182.11");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=35.41,108.12");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=33.27,51.44");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=25.16,188.98");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=162.15,87.53");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=168.90,206.05");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=197.84,88.61");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=139.78,65.92");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=36.54,170.99");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=213.18,46.62");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=116.54,161.20");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=189.62,67.19");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=142.56,4.33");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=90.16,136.78");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=165.45,29.20");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=114.74,74.46");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=212.97,117.72");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=195.31,163.43");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=197.82,74.83");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=249.83,114.70");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=212.21,273.37");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=148.66,226.84");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=327.89,219.78");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=276.66,253.40");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=169.14,267.98");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=273.06,207.05");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=174.13,119.56");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=282.20,222.67");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=177.47,252.10");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=117.46,268.72");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=81.62,328.39");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=44.72,272.83");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=84.02,226.74");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=76.00,181.74");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=59.61,105.58");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=67.67,202.18");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=104.91,155.31");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=60.23,31.93");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=129.38,110.48");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=128.80,73.01");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=110.33,2.26");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=54.98,19.24");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=76.39,166.74");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=96.61,214.13");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=74.36,40.57");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=65.02,138.97");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=170.24,78.22");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=149.86,139.01");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=54.82,40.46");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=2.80,154.40");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=80.64,251.49");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=115.59,134.08");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=210.74,216.51");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=107.01,200.07");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=86.08,373.54");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=47.26,176.36");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=13.57,281.77");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=106.58,258.94");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=61.85,361.35");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=268.19,306.84");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=166.16,237.92");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=111.67,367.25");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=227.55,284.37");
    }

    host_lpn_201: <default("SensorNode")> like INetworkNode {
        @display("p=175.62,293.28");
    }

    host_lpn_202: <default("SensorNode")> like INetworkNode {
        @display("p=218.67,307.91");
    }

    host_lpn_203: <default("SensorNode")> like INetworkNode {
        @display("p=247.97,377.27");
    }

    host_lpn_204: <default("SensorNode")> like INetworkNode {
        @display("p=159.54,276.21");
    }

    host_lpn_205: <default("SensorNode")> like INetworkNode {
        @display("p=172.43,374.46");
    }

    host_lpn_206: <default("SensorNode")> like INetworkNode {
        @display("p=93.76,350.04");
    }

    host_lpn_207: <default("SensorNode")> like INetworkNode {
        @display("p=245.15,342.63");
    }

    host_lpn_208: <default("SensorNode")> like INetworkNode {
        @display("p=137.33,362.23");
    }

    host_lpn_209: <default("SensorNode")> like INetworkNode {
        @display("p=91.99,318.73");
    }

    host_lpn_210: <default("SensorNode")> like INetworkNode {
        @display("p=90.17,361.01");
    }

    host_lpn_211: <default("SensorNode")> like INetworkNode {
        @display("p=86.53,272.27");
    }

    host_lpn_212: <default("SensorNode")> like INetworkNode {
        @display("p=282.90,325.03");
    }

    host_lpn_213: <default("SensorNode")> like INetworkNode {
        @display("p=260.01,236.72");
    }

    host_lpn_214: <default("SensorNode")> like INetworkNode {
        @display("p=166.15,322.72");
    }

    host_lpn_215: <default("SensorNode")> like INetworkNode {
        @display("p=202.50,346.39");
    }

    host_lpn_216: <default("SensorNode")> like INetworkNode {
        @display("p=222.00,294.55");
    }

    host_lpn_217: <default("SensorNode")> like INetworkNode {
        @display("p=269.35,317.46");
    }

    host_lpn_218: <default("SensorNode")> like INetworkNode {
        @display("p=223.38,227.21");
    }

    host_lpn_219: <default("SensorNode")> like INetworkNode {
        @display("p=223.04,166.63");
    }

    host_lpn_220: <default("SensorNode")> like INetworkNode {
        @display("p=189.61,153.44");
    }

    host_lpn_221: <default("SensorNode")> like INetworkNode {
        @display("p=153.70,175.36");
    }

    host_lpn_222: <default("SensorNode")> like INetworkNode {
        @display("p=109.34,101.66");
    }

    host_lpn_223: <default("SensorNode")> like INetworkNode {
        @display("p=174.25,106.07");
    }

    host_lpn_224: <default("SensorNode")> like INetworkNode {
        @display("p=174.08,189.61");
    }

    host_lpn_225: <default("SensorNode")> like INetworkNode {
        @display("p=26.58,227.07");
    }

    host_lpn_226: <default("SensorNode")> like INetworkNode {
        @display("p=267.75,287.63");
    }

    host_lpn_227: <default("SensorNode")> like INetworkNode {
        @display("p=200.95,245.42");
    }

    host_lpn_228: <default("SensorNode")> like INetworkNode {
        @display("p=122.38,333.44");
    }

    host_lpn_229: <default("SensorNode")> like INetworkNode {
        @display("p=195.84,395.92");
    }

    host_lpn_230: <default("SensorNode")> like INetworkNode {
        @display("p=129.44,371.11");
    }

    host_lpn_231: <default("SensorNode")> like INetworkNode {
        @display("p=106.66,241.67");
    }

    host_lpn_232: <default("SensorNode")> like INetworkNode {
        @display("p=7.16,252.07");
    }

    host_lpn_233: <default("SensorNode")> like INetworkNode {
        @display("p=105.30,131.92");
    }

    host_lpn_234: <default("SensorNode")> like INetworkNode {
        @display("p=59.89,94.56");
    }

    host_lpn_235: <default("SensorNode")> like INetworkNode {
        @display("p=247.77,101.26");
    }

    host_lpn_236: <default("SensorNode")> like INetworkNode {
        @display("p=141.78,206.90");
    }

    host_lpn_237: <default("SensorNode")> like INetworkNode {
        @display("p=49.43,165.23");
    }

    host_lpn_238: <default("SensorNode")> like INetworkNode {
        @display("p=127.83,172.79");
    }

    host_lpn_239: <default("SensorNode")> like INetworkNode {
        @display("p=117.52,188.28");
    }

    host_lpn_240: <default("SensorNode")> like INetworkNode {
        @display("p=273.55,169.13");
    }

    host_lpn_241: <default("SensorNode")> like INetworkNode {
        @display("p=349.57,187.10");
    }

    host_lpn_242: <default("SensorNode")> like INetworkNode {
        @display("p=243.48,89.05");
    }

    host_lpn_243: <default("SensorNode")> like INetworkNode {
        @display("p=180.47,224.96");
    }

    host_lpn_244: <default("SensorNode")> like INetworkNode {
        @display("p=197.35,121.46");
    }

    host_lpn_245: <default("SensorNode")> like INetworkNode {
        @display("p=171.09,148.12");
    }

    host_lpn_246: <default("SensorNode")> like INetworkNode {
        @display("p=238.25,112.12");
    }

    host_lpn_247: <default("SensorNode")> like INetworkNode {
        @display("p=193.18,99.32");
    }

    host_lpn_248: <default("SensorNode")> like INetworkNode {
        @display("p=309.51,235.32");
    }

    host_lpn_249: <default("SensorNode")> like INetworkNode {
        @display("p=209.75,227.87");
    }

    host_lpn_250: <default("SensorNode")> like INetworkNode {
        @display("p=295.07,173.51");
    }

    host_lpn_251: <default("SensorNode")> like INetworkNode {
        @display("p=3.15,174.84");
    }

    host_lpn_252: <default("SensorNode")> like INetworkNode {
        @display("p=62.33,84.55");
    }

    host_lpn_253: <default("SensorNode")> like INetworkNode {
        @display("p=29.26,40.76");
    }

    host_lpn_254: <default("SensorNode")> like INetworkNode {
        @display("p=2.76,17.52");
    }

    host_lpn_255: <default("SensorNode")> like INetworkNode {
        @display("p=39.27,31.92");
    }

    host_lpn_256: <default("SensorNode")> like INetworkNode {
        @display("p=34.20,64.42");
    }

    host_lpn_257: <default("SensorNode")> like INetworkNode {
        @display("p=123.06,97.33");
    }

    host_lpn_258: <default("SensorNode")> like INetworkNode {
        @display("p=19.00,104.62");
    }

    host_lpn_259: <default("SensorNode")> like INetworkNode {
        @display("p=42.33,118.73");
    }

    host_lpn_260: <default("SensorNode")> like INetworkNode {
        @display("p=8.04,114.69");
    }

    host_lpn_261: <default("SensorNode")> like INetworkNode {
        @display("p=13.29,136.68");
    }

    host_lpn_262: <default("SensorNode")> like INetworkNode {
        @display("p=56.56,209.99");
    }

    host_lpn_263: <default("SensorNode")> like INetworkNode {
        @display("p=114.96,41.96");
    }

    host_lpn_264: <default("SensorNode")> like INetworkNode {
        @display("p=5.70,58.03");
    }

    host_lpn_265: <default("SensorNode")> like INetworkNode {
        @display("p=39.27,185.01");
    }

    host_lpn_266: <default("SensorNode")> like INetworkNode {
        @display("p=47.74,105.01");
    }

    host_lpn_267: <default("SensorNode")> like INetworkNode {
        @display("p=196.35,182.09");
    }

    host_lpn_268: <default("SensorNode")> like INetworkNode {
        @display("p=57.20,172.92");
    }

    host_lpn_269: <default("SensorNode")> like INetworkNode {
        @display("p=162.74,102.03");
    }

    host_lpn_270: <default("SensorNode")> like INetworkNode {
        @display("p=223.89,125.54");
    }

    host_lpn_271: <default("SensorNode")> like INetworkNode {
        @display("p=100.06,75.50");
    }

    host_lpn_272: <default("SensorNode")> like INetworkNode {
        @display("p=173.90,34.61");
    }

    host_lpn_273: <default("SensorNode")> like INetworkNode {
        @display("p=188.68,81.83");
    }

    host_lpn_274: <default("SensorNode")> like INetworkNode {
        @display("p=178.98,67.08");
    }

    host_lpn_275: <default("SensorNode")> like INetworkNode {
        @display("p=33.27,95.81");
    }

    host_lpn_276: <default("SensorNode")> like INetworkNode {
        @display("p=134.97,36.15");
    }

    host_lpn_277: <default("SensorNode")> like INetworkNode {
        @display("p=144.57,82.34");
    }

    host_lpn_278: <default("SensorNode")> like INetworkNode {
        @display("p=114.45,18.27");
    }

    host_lpn_279: <default("SensorNode")> like INetworkNode {
        @display("p=221.05,60.91");
    }

    host_lpn_280: <default("SensorNode")> like INetworkNode {
        @display("p=269.86,125.72");
    }

    host_lpn_281: <default("SensorNode")> like INetworkNode {
        @display("p=178.28,162.54");
    }

    host_lpn_282: <default("SensorNode")> like INetworkNode {
        @display("p=266.44,254.30");
    }

    host_lpn_283: <default("SensorNode")> like INetworkNode {
        @display("p=181.23,196.97");
    }

    host_lpn_284: <default("SensorNode")> like INetworkNode {
        @display("p=194.91,314.37");
    }

    host_lpn_285: <default("SensorNode")> like INetworkNode {
        @display("p=282.27,299.19");
    }

    host_lpn_286: <default("SensorNode")> like INetworkNode {
        @display("p=263.31,211.29");
    }

    host_lpn_287: <default("SensorNode")> like INetworkNode {
        @display("p=190.64,136.85");
    }

    host_lpn_288: <default("SensorNode")> like INetworkNode {
        @display("p=281.12,233.10");
    }

    host_lpn_289: <default("SensorNode")> like INetworkNode {
        @display("p=222.69,267.25");
    }

    host_lpn_290: <default("SensorNode")> like INetworkNode {
        @display("p=297.50,214.05");
    }

    host_lpn_291: <default("SensorNode")> like INetworkNode {
        @display("p=196.07,303.84");
    }

    host_lpn_292: <default("SensorNode")> like INetworkNode {
        @display("p=141.32,333.80");
    }

    host_lpn_293: <default("SensorNode")> like INetworkNode {
        @display("p=65.70,300.08");
    }

    host_lpn_294: <default("SensorNode")> like INetworkNode {
        @display("p=94.97,244.55");
    }

    host_lpn_295: <default("SensorNode")> like INetworkNode {
        @display("p=135.05,257.49");
    }

    host_lpn_296: <default("SensorNode")> like INetworkNode {
        @display("p=30.98,212.77");
    }

    host_lpn_297: <default("SensorNode")> like INetworkNode {
        @display("p=27.34,177.00");
    }

    host_lpn_298: <default("SensorNode")> like INetworkNode {
        @display("p=4.50,211.61");
    }

    host_lpn_299: <default("SensorNode")> like INetworkNode {
        @display("p=143.52,184.61");
    }

    host_lpn_300: <default("SensorNode")> like INetworkNode {
        @display("p=99.30,26.87");
    }

    host_lpn_301: <default("SensorNode")> like INetworkNode {
        @display("p=100.93,92.87");
    }

    host_lpn_302: <default("SensorNode")> like INetworkNode {
        @display("p=144.68,19.96");
    }

    host_lpn_303: <default("SensorNode")> like INetworkNode {
        @display("p=81.74,1.36");
    }

    host_lpn_304: <default("SensorNode")> like INetworkNode {
        @display("p=65.77,9.69");
    }

    host_lpn_305: <default("SensorNode")> like INetworkNode {
        @display("p=12.35,96.11");
    }

    host_lpn_306: <default("SensorNode")> like INetworkNode {
        @display("p=100.48,54.04");
    }

    host_lpn_307: <default("SensorNode")> like INetworkNode {
        @display("p=18.11,82.75");
    }

    host_lpn_308: <default("SensorNode")> like INetworkNode {
        @display("p=25.36,113.33");
    }

    host_lpn_309: <default("SensorNode")> like INetworkNode {
        @display("p=155.39,206.40");
    }

    host_lpn_310: <default("SensorNode")> like INetworkNode {
        @display("p=49.82,91.95");
    }

    host_lpn_311: <default("SensorNode")> like INetworkNode {
        @display("p=1.31,127.45");
    }

    host_lpn_312: <default("SensorNode")> like INetworkNode {
        @display("p=23.71,92.15");
    }

    host_lpn_313: <default("SensorNode")> like INetworkNode {
        @display("p=137.04,268.29");
    }

    host_lpn_314: <default("SensorNode")> like INetworkNode {
        @display("p=45.54,199.20");
    }

    host_lpn_315: <default("SensorNode")> like INetworkNode {
        @display("p=147.04,256.18");
    }

    host_lpn_316: <default("SensorNode")> like INetworkNode {
        @display("p=139.08,119.71");
    }

    host_lpn_317: <default("SensorNode")> like INetworkNode {
        @display("p=65.69,238.95");
    }

    host_lpn_318: <default("SensorNode")> like INetworkNode {
        @display("p=25.34,291.24");
    }

    host_lpn_319: <default("SensorNode")> like INetworkNode {
        @display("p=39.36,313.49");
    }

    host_lpn_320: <default("SensorNode")> like INetworkNode {
        @display("p=89.90,176.18");
    }

    host_lpn_321: <default("SensorNode")> like INetworkNode {
        @display("p=99.87,234.31");
    }

    host_lpn_322: <default("SensorNode")> like INetworkNode {
        @display("p=231.52,307.30");
    }

    host_lpn_323: <default("SensorNode")> like INetworkNode {
        @display("p=140.94,278.85");
    }

    host_lpn_324: <default("SensorNode")> like INetworkNode {
        @display("p=121.14,280.78");
    }

    host_lpn_325: <default("SensorNode")> like INetworkNode {
        @display("p=190.58,272.57");
    }

    host_lpn_326: <default("SensorNode")> like INetworkNode {
        @display("p=140.46,299.43");
    }

    host_lpn_327: <default("SensorNode")> like INetworkNode {
        @display("p=230.33,254.23");
    }

    host_lpn_328: <default("SensorNode")> like INetworkNode {
        @display("p=111.92,287.28");
    }

    host_lpn_329: <default("SensorNode")> like INetworkNode {
        @display("p=180.32,365.82");
    }

    host_lpn_330: <default("SensorNode")> like INetworkNode {
        @display("p=102.15,332.23");
    }

    host_lpn_331: <default("SensorNode")> like INetworkNode {
        @display("p=153.19,266.71");
    }

    host_lpn_332: <default("SensorNode")> like INetworkNode {
        @display("p=210.73,369.10");
    }

    host_lpn_333: <default("SensorNode")> like INetworkNode {
        @display("p=200.99,358.39");
    }

    host_lpn_334: <default("SensorNode")> like INetworkNode {
        @display("p=148.73,310.20");
    }

    host_lpn_335: <default("SensorNode")> like INetworkNode {
        @display("p=27.14,320.53");
    }

    host_lpn_336: <default("SensorNode")> like INetworkNode {
        @display("p=40.62,327.58");
    }

    host_lpn_337: <default("SensorNode")> like INetworkNode {
        @display("p=247.45,317.09");
    }

    host_lpn_338: <default("SensorNode")> like INetworkNode {
        @display("p=318.55,283.42");
    }

    host_lpn_339: <default("SensorNode")> like INetworkNode {
        @display("p=129.99,352.05");
    }

    host_lpn_340: <default("SensorNode")> like INetworkNode {
        @display("p=229.50,324.73");
    }

    host_lpn_341: <default("SensorNode")> like INetworkNode {
        @display("p=249.45,279.14");
    }

    host_lpn_342: <default("SensorNode")> like INetworkNode {
        @display("p=245.49,231.53");
    }

    host_lpn_343: <default("SensorNode")> like INetworkNode {
        @display("p=177.64,262.41");
    }

    host_lpn_344: <default("SensorNode")> like INetworkNode {
        @display("p=210.42,238.28");
    }

    host_lpn_345: <default("SensorNode")> like INetworkNode {
        @display("p=129.87,128.79");
    }

    host_lpn_346: <default("SensorNode")> like INetworkNode {
        @display("p=155.05,119.53");
    }

    host_lpn_347: <default("SensorNode")> like INetworkNode {
        @display("p=189.26,190.94");
    }

    host_lpn_348: <default("SensorNode")> like INetworkNode {
        @display("p=300.12,134.06");
    }

    host_lpn_349: <default("SensorNode")> like INetworkNode {
        @display("p=145.04,149.87");
    }

    host_lpn_350: <default("SensorNode")> like INetworkNode {
        @display("p=155.94,322.02");
    }

    host_lpn_351: <default("SensorNode")> like INetworkNode {
        @display("p=178.27,335.39");
    }

    host_lpn_352: <default("SensorNode")> like INetworkNode {
        @display("p=138.98,238.18");
    }

    host_lpn_353: <default("SensorNode")> like INetworkNode {
        @display("p=63.32,328.94");
    }

    host_lpn_354: <default("SensorNode")> like INetworkNode {
        @display("p=147.78,383.68");
    }

    host_lpn_355: <default("SensorNode")> like INetworkNode {
        @display("p=89.66,283.04");
    }

    host_lpn_356: <default("SensorNode")> like INetworkNode {
        @display("p=56.45,281.52");
    }

    host_lpn_357: <default("SensorNode")> like INetworkNode {
        @display("p=59.70,338.80");
    }

    host_lpn_358: <default("SensorNode")> like INetworkNode {
        @display("p=126.34,211.68");
    }

    host_lpn_359: <default("SensorNode")> like INetworkNode {
        @display("p=68.28,221.56");
    }

    host_lpn_360: <default("SensorNode")> like INetworkNode {
        @display("p=84.91,30.34");
    }

    host_lpn_361: <default("SensorNode")> like INetworkNode {
        @display("p=14.01,198.89");
    }

    host_lpn_362: <default("SensorNode")> like INetworkNode {
        @display("p=84.84,239.61");
    }

    host_lpn_363: <default("SensorNode")> like INetworkNode {
        @display("p=138.38,194.28");
    }

    host_lpn_364: <default("SensorNode")> like INetworkNode {
        @display("p=131.72,186.52");
    }

    host_lpn_365: <default("SensorNode")> like INetworkNode {
        @display("p=279.29,179.24");
    }

    host_lpn_366: <default("SensorNode")> like INetworkNode {
        @display("p=306.08,191.20");
    }

    host_lpn_367: <default("SensorNode")> like INetworkNode {
        @display("p=252.45,223.69");
    }

    host_lpn_368: <default("SensorNode")> like INetworkNode {
        @display("p=200.73,59.26");
    }

    host_lpn_369: <default("SensorNode")> like INetworkNode {
        @display("p=254.98,80.30");
    }

    host_lpn_370: <default("SensorNode")> like INetworkNode {
        @display("p=199.36,110.35");
    }

    host_lpn_371: <default("SensorNode")> like INetworkNode {
        @display("p=209.19,161.46");
    }

    host_lpn_372: <default("SensorNode")> like INetworkNode {
        @display("p=203.18,260.87");
    }

    host_lpn_373: <default("SensorNode")> like INetworkNode {
        @display("p=214.34,261.37");
    }

    host_lpn_374: <default("SensorNode")> like INetworkNode {
        @display("p=129.81,285.80");
    }

    host_lpn_375: <default("SensorNode")> like INetworkNode {
        @display("p=328.30,193.91");
    }

    host_lpn_376: <default("SensorNode")> like INetworkNode {
        @display("p=3.94,71.75");
    }

    host_lpn_377: <default("SensorNode")> like INetworkNode {
        @display("p=102.83,143.40");
    }

    host_lpn_378: <default("SensorNode")> like INetworkNode {
        @display("p=118.79,31.34");
    }

    host_lpn_379: <default("SensorNode")> like INetworkNode {
        @display("p=8.45,7.51");
    }

    host_lpn_380: <default("SensorNode")> like INetworkNode {
        @display("p=4.67,29.63");
    }

    host_lpn_381: <default("SensorNode")> like INetworkNode {
        @display("p=39.98,6.91");
    }

    host_lpn_382: <default("SensorNode")> like INetworkNode {
        @display("p=44.28,52.16");
    }

    host_lpn_383: <default("SensorNode")> like INetworkNode {
        @display("p=62.44,161.26");
    }

    host_lpn_384: <default("SensorNode")> like INetworkNode {
        @display("p=54.32,238.95");
    }

    host_lpn_385: <default("SensorNode")> like INetworkNode {
        @display("p=101.86,64.03");
    }

    host_lpn_386: <default("SensorNode")> like INetworkNode {
        @display("p=82.10,124.30");
    }

    host_lpn_387: <default("SensorNode")> like INetworkNode {
        @display("p=25.84,202.48");
    }

    host_lpn_388: <default("SensorNode")> like INetworkNode {
        @display("p=115.14,149.12");
    }

    host_lpn_389: <default("SensorNode")> like INetworkNode {
        @display("p=23.64,72.65");
    }

    host_lpn_390: <default("SensorNode")> like INetworkNode {
        @display("p=55.30,191.29");
    }

    host_lpn_391: <default("SensorNode")> like INetworkNode {
        @display("p=52.48,125.96");
    }

    host_lpn_392: <default("SensorNode")> like INetworkNode {
        @display("p=54.21,226.55");
    }

    host_lpn_393: <default("SensorNode")> like INetworkNode {
        @display("p=129.06,200.97");
    }

    host_lpn_394: <default("SensorNode")> like INetworkNode {
        @display("p=210.73,59.35");
    }

    host_lpn_395: <default("SensorNode")> like INetworkNode {
        @display("p=210.84,33.39");
    }

    host_lpn_396: <default("SensorNode")> like INetworkNode {
        @display("p=88.36,66.36");
    }

    host_lpn_397: <default("SensorNode")> like INetworkNode {
        @display("p=220.69,0.46");
    }

    host_lpn_398: <default("SensorNode")> like INetworkNode {
        @display("p=128.55,1.61");
    }

    host_lpn_399: <default("SensorNode")> like INetworkNode {
        @display("p=223.23,13.58");
    }

    host_lpn_400: <default("SensorNode")> like INetworkNode {
        @display("p=166.15,46.57");
    }

    host_lpn_401: <default("SensorNode")> like INetworkNode {
        @display("p=177.58,21.46");
    }

    host_lpn_402: <default("SensorNode")> like INetworkNode {
        @display("p=191.28,15.32");
    }

    host_lpn_403: <default("SensorNode")> like INetworkNode {
        @display("p=169.32,58.80");
    }

    host_lpn_404: <default("SensorNode")> like INetworkNode {
        @display("p=234.57,37.16");
    }

    host_lpn_405: <default("SensorNode")> like INetworkNode {
        @display("p=341.58,90.25");
    }

    host_lpn_406: <default("SensorNode")> like INetworkNode {
        @display("p=235.66,82.32");
    }

    host_lpn_407: <default("SensorNode")> like INetworkNode {
        @display("p=230.92,194.81");
    }

    host_lpn_408: <default("SensorNode")> like INetworkNode {
        @display("p=322.42,167.25");
    }

    host_lpn_409: <default("SensorNode")> like INetworkNode {
        @display("p=286.70,242.71");
    }

    host_lpn_410: <default("SensorNode")> like INetworkNode {
        @display("p=338.44,307.58");
    }

    host_lpn_411: <default("SensorNode")> like INetworkNode {
        @display("p=293.54,187.48");
    }

    host_lpn_412: <default("SensorNode")> like INetworkNode {
        @display("p=266.61,136.03");
    }

    host_lpn_413: <default("SensorNode")> like INetworkNode {
        @display("p=287.45,161.22");
    }

    host_lpn_414: <default("SensorNode")> like INetworkNode {
        @display("p=301.50,152.69");
    }

    host_lpn_415: <default("SensorNode")> like INetworkNode {
        @display("p=320.72,255.78");
    }

    host_lpn_416: <default("SensorNode")> like INetworkNode {
        @display("p=200.74,195.11");
    }

    host_lpn_417: <default("SensorNode")> like INetworkNode {
        @display("p=126.55,158.97");
    }

    host_lpn_418: <default("SensorNode")> like INetworkNode {
        @display("p=1.30,339.71");
    }

    host_lpn_419: <default("SensorNode")> like INetworkNode {
        @display("p=74.33,290.82");
    }

    host_lpn_420: <default("SensorNode")> like INetworkNode {
        @display("p=106.41,211.82");
    }

    host_lpn_421: <default("SensorNode")> like INetworkNode {
        @display("p=40.88,257.57");
    }

    host_lpn_422: <default("SensorNode")> like INetworkNode {
        @display("p=95.53,194.06");
    }

    host_lpn_423: <default("SensorNode")> like INetworkNode {
        @display("p=113.32,232.31");
    }

    host_lpn_424: <default("SensorNode")> like INetworkNode {
        @display("p=175.22,177.60");
    }

    host_lpn_425: <default("SensorNode")> like INetworkNode {
        @display("p=42.34,42.03");
    }

    host_lpn_426: <default("SensorNode")> like INetworkNode {
        @display("p=84.02,44.79");
    }

    host_lpn_427: <default("SensorNode")> like INetworkNode {
        @display("p=180.77,97.42");
    }

    host_lpn_428: <default("SensorNode")> like INetworkNode {
        @display("p=159.26,5.23");
    }

    host_lpn_429: <default("SensorNode")> like INetworkNode {
        @display("p=20.81,56.26");
    }

    host_lpn_430: <default("SensorNode")> like INetworkNode {
        @display("p=0.47,138.14");
    }

    host_lpn_431: <default("SensorNode")> like INetworkNode {
        @display("p=142.04,161.09");
    }

    host_lpn_432: <default("SensorNode")> like INetworkNode {
        @display("p=44.64,22.26");
    }

    host_lpn_433: <default("SensorNode")> like INetworkNode {
        @display("p=92.77,102.77");
    }

    host_lpn_434: <default("SensorNode")> like INetworkNode {
        @display("p=137.98,55.86");
    }

    host_lpn_435: <default("SensorNode")> like INetworkNode {
        @display("p=146.83,126.15");
    }

    host_lpn_436: <default("SensorNode")> like INetworkNode {
        @display("p=72.43,87.27");
    }

    host_lpn_437: <default("SensorNode")> like INetworkNode {
        @display("p=114.21,122.86");
    }

    host_lpn_438: <default("SensorNode")> like INetworkNode {
        @display("p=97.08,165.74");
    }

    host_lpn_439: <default("SensorNode")> like INetworkNode {
        @display("p=64.40,267.82");
    }

    host_lpn_440: <default("SensorNode")> like INetworkNode {
        @display("p=154.42,239.17");
    }

    host_lpn_441: <default("SensorNode")> like INetworkNode {
        @display("p=171.05,218.11");
    }

    host_lpn_442: <default("SensorNode")> like INetworkNode {
        @display("p=118.38,357.52");
    }

    host_lpn_443: <default("SensorNode")> like INetworkNode {
        @display("p=106.04,350.35");
    }

    host_lpn_444: <default("SensorNode")> like INetworkNode {
        @display("p=69.50,390.04");
    }

    host_lpn_445: <default("SensorNode")> like INetworkNode {
        @display("p=37.04,299.54");
    }

    host_lpn_446: <default("SensorNode")> like INetworkNode {
        @display("p=131.68,395.63");
    }

    host_lpn_447: <default("SensorNode")> like INetworkNode {
        @display("p=277.68,355.09");
    }

    host_lpn_448: <default("SensorNode")> like INetworkNode {
        @display("p=198.44,235.00");
    }

    host_lpn_449: <default("SensorNode")> like INetworkNode {
        @display("p=103.36,386.44");
    }

    host_lpn_450: <default("SensorNode")> like INetworkNode {
        @display("p=259.20,273.88");
    }

    host_lpn_451: <default("SensorNode")> like INetworkNode {
        @display("p=168.19,362.42");
    }

    host_lpn_452: <default("SensorNode")> like INetworkNode {
        @display("p=237.85,224.89");
    }

    host_lpn_453: <default("SensorNode")> like INetworkNode {
        @display("p=251.60,363.03");
    }

    host_lpn_454: <default("SensorNode")> like INetworkNode {
        @display("p=168.18,340.31");
    }

    host_lpn_455: <default("SensorNode")> like INetworkNode {
        @display("p=265.30,376.07");
    }

    host_lpn_456: <default("SensorNode")> like INetworkNode {
        @display("p=148.81,287.60");
    }

    host_lpn_457: <default("SensorNode")> like INetworkNode {
        @display("p=293.43,338.87");
    }

    host_lpn_458: <default("SensorNode")> like INetworkNode {
        @display("p=257.45,340.04");
    }

    host_lpn_459: <default("SensorNode")> like INetworkNode {
        @display("p=102.41,293.29");
    }

    host_lpn_460: <default("SensorNode")> like INetworkNode {
        @display("p=75.12,348.85");
    }

    host_lpn_461: <default("SensorNode")> like INetworkNode {
        @display("p=112.49,323.71");
    }

    host_lpn_462: <default("SensorNode")> like INetworkNode {
        @display("p=147.77,354.90");
    }

    host_lpn_463: <default("SensorNode")> like INetworkNode {
        @display("p=285.69,389.51");
    }

    host_lpn_464: <default("SensorNode")> like INetworkNode {
        @display("p=119.57,386.04");
    }

    host_lpn_465: <default("SensorNode")> like INetworkNode {
        @display("p=223.20,396.37");
    }

    host_lpn_466: <default("SensorNode")> like INetworkNode {
        @display("p=243.54,356.42");
    }

    host_lpn_467: <default("SensorNode")> like INetworkNode {
        @display("p=272.46,368.92");
    }

    host_lpn_468: <default("SensorNode")> like INetworkNode {
        @display("p=262.55,198.61");
    }

    host_lpn_469: <default("SensorNode")> like INetworkNode {
        @display("p=192.17,256.95");
    }

    host_lpn_470: <default("SensorNode")> like INetworkNode {
        @display("p=167.85,170.07");
    }

    host_lpn_471: <default("SensorNode")> like INetworkNode {
        @display("p=228.86,116.32");
    }

    host_lpn_472: <default("SensorNode")> like INetworkNode {
        @display("p=217.12,81.85");
    }

    host_lpn_473: <default("SensorNode")> like INetworkNode {
        @display("p=274.40,87.34");
    }

    host_lpn_474: <default("SensorNode")> like INetworkNode {
        @display("p=198.90,144.91");
    }

    host_lpn_475: <default("SensorNode")> like INetworkNode {
        @display("p=51.82,252.70");
    }

    host_lpn_476: <default("SensorNode")> like INetworkNode {
        @display("p=181.09,392.92");
    }

    host_lpn_477: <default("SensorNode")> like INetworkNode {
        @display("p=161.66,310.50");
    }

    host_lpn_478: <default("SensorNode")> like INetworkNode {
        @display("p=102.34,370.98");
    }

    host_lpn_479: <default("SensorNode")> like INetworkNode {
        @display("p=165.26,390.51");
    }

    host_lpn_480: <default("SensorNode")> like INetworkNode {
        @display("p=86.82,393.60");
    }

    host_lpn_481: <default("SensorNode")> like INetworkNode {
        @display("p=8.61,266.77");
    }

    host_lpn_482: <default("SensorNode")> like INetworkNode {
        @display("p=69.21,282.08");
    }

    host_lpn_483: <default("SensorNode")> like INetworkNode {
        @display("p=188.46,173.25");
    }

    host_lpn_484: <default("SensorNode")> like INetworkNode {
        @display("p=9.56,188.40");
    }

    host_lpn_485: <default("SensorNode")> like INetworkNode {
        @display("p=227.86,73.74");
    }

    host_lpn_486: <default("SensorNode")> like INetworkNode {
        @display("p=22.69,167.19");
    }

    host_lpn_487: <default("SensorNode")> like INetworkNode {
        @display("p=125.00,144.07");
    }

    host_lpn_488: <default("SensorNode")> like INetworkNode {
        @display("p=189.38,114.23");
    }

    host_lpn_489: <default("SensorNode")> like INetworkNode {
        @display("p=143.62,102.25");
    }

    host_lpn_490: <default("SensorNode")> like INetworkNode {
        @display("p=217.21,206.90");
    }

    host_lpn_491: <default("SensorNode")> like INetworkNode {
        @display("p=330.77,241.75");
    }

    host_lpn_492: <default("SensorNode")> like INetworkNode {
        @display("p=260.90,149.66");
    }

    host_lpn_493: <default("SensorNode")> like INetworkNode {
        @display("p=320.74,154.41");
    }

    host_lpn_494: <default("SensorNode")> like INetworkNode {
        @display("p=273.56,188.85");
    }

    host_lpn_495: <default("SensorNode")> like INetworkNode {
        @display("p=124.76,62.61");
    }

    host_lpn_496: <default("SensorNode")> like INetworkNode {
        @display("p=248.75,128.56");
    }

    host_lpn_497: <default("SensorNode")> like INetworkNode {
        @display("p=290.33,114.14");
    }

    host_lpn_498: <default("SensorNode")> like INetworkNode {
        @display("p=204.42,134.92");
    }

    host_lpn_499: <default("SensorNode")> like INetworkNode {
        @display("p=237.37,265.78");
    }

    host_lpn_500: <default("SensorNode")> like INetworkNode {
        @display("p=246.33,144.79");
    }

}

