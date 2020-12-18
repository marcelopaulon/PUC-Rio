
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn12_8
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
        @display("p=100.32,69.38");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=119.83,67.12");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=195.36,17.79");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=198.04,46.57");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=155.10,82.68");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=143.17,127.46");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=178.64,181.56");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=202.32,235.26");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=205.60,210.76");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=245.18,161.95");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=158.14,139.22");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=114.34,83.89");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=64.78,160.43");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=98.28,163.08");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=75.81,146.28");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=134.85,84.69");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=82.75,98.90");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=163.31,50.84");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=59.81,26.17");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=200.29,4.44");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=140.16,37.35");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=111.59,34.47");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=190.94,123.80");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=215.79,179.83");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=165.59,254.64");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=162.96,230.22");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=253.06,150.17");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=137.90,102.36");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=109.26,63.45");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=148.44,156.34");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=63.87,236.26");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=48.05,237.68");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=145.82,111.43");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=153.15,124.90");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=120.71,127.19");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=154.98,68.79");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=186.93,105.97");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=184.15,70.07");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=174.63,98.27");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=161.73,91.96");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=123.76,233.31");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=202.44,267.77");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=246.38,172.23");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=248.43,99.15");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=142.77,139.20");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=181.79,40.57");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=79.15,208.58");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=50.68,116.62");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=90.03,147.28");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=179.41,139.26");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=126.05,7.95");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=14.76,19.28");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=133.34,151.74");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=266.99,56.56");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=237.85,94.86");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=143.74,55.53");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=180.49,170.80");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=208.71,149.95");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=253.54,274.28");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=290.62,222.49");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=313.35,139.72");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=180.31,118.91");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=101.45,46.52");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=100.04,180.45");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=109.98,156.58");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=55.78,129.55");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=160.11,114.87");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=112.98,120.62");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=58.68,36.24");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=88.82,15.52");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=197.19,28.58");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=201.37,61.46");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=181.97,86.62");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=149.81,166.66");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=272.56,201.71");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=244.02,220.50");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=187.48,246.38");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=233.03,143.94");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=204.30,197.39");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=73.56,63.22");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=35.96,134.46");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=120.08,154.35");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=54.55,84.17");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=62.04,66.68");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=78.51,24.73");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=30.33,78.57");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=202.33,77.56");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=129.53,56.18");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=244.67,127.71");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=240.95,78.81");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=198.86,98.21");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=166.00,82.37");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=209.17,283.77");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=138.07,230.50");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=266.43,97.72");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=215.18,90.94");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=195.46,134.32");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=143.60,190.46");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=9.02,148.10");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=66.11,187.29");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=101.70,32.10");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=127.82,94.06");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=98.24,82.61");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=39.35,95.37");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=157.87,38.62");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=138.97,67.14");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=75.11,110.86");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=123.56,166.87");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=111.59,250.53");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=157.23,268.37");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=227.84,214.33");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=250.36,113.73");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=117.65,215.78");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=112.84,1.05");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=89.44,74.31");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=92.86,236.92");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=79.00,173.46");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=90.54,45.35");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=131.83,119.48");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=92.99,25.06");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=120.63,101.48");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=167.95,36.87");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=270.16,79.29");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=226.74,69.36");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=221.01,107.43");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=220.27,191.12");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=171.20,220.09");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=203.81,221.16");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=170.56,196.94");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=172.01,109.78");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=199.88,112.33");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=26.01,138.40");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=69.70,254.25");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=53.98,196.07");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=84.83,138.71");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=107.51,139.04");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=90.37,60.07");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=45.13,60.57");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=166.46,5.99");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=268.12,117.82");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=232.40,130.91");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=129.72,29.32");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=160.01,219.53");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=219.03,209.03");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=130.43,195.05");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=197.98,185.74");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=232.95,194.37");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=76.01,53.14");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=36.42,211.46");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=17.53,212.33");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=92.49,126.58");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=175.28,26.43");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=92.36,110.44");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=75.12,92.08");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=98.19,8.50");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=174.54,54.16");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=232.30,40.79");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=136.36,10.17");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=218.00,137.43");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=276.14,183.91");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=181.10,231.90");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=240.13,240.91");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=240.02,258.53");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=135.30,204.32");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=94.83,136.76");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=56.03,166.98");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=102.81,192.05");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=99.13,209.68");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=180.72,16.19");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=129.48,132.86");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=19.78,35.32");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=65.61,85.90");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=217.74,62.70");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=232.65,115.37");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=111.38,13.33");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=194.60,145.84");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=205.72,131.91");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=214.41,259.54");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=193.10,215.43");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=216.42,158.85");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=162.99,189.29");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=45.86,153.05");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=114.55,196.85");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=75.97,160.81");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=56.98,139.65");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=50.68,72.39");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=72.65,10.41");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=118.62,50.53");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=176.73,5.38");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=286.08,1.34");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=217.88,18.79");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=154.52,10.75");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=168.48,128.95");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=173.05,151.32");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=190.68,157.61");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=170.29,270.13");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=288.20,111.78");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=162.82,209.56");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=168.65,165.88");
    }

}

