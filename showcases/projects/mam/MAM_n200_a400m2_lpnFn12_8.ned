
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn12_8
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
        @display("p=87.74,302.37");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=73.58,240.67");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=53.74,210.33");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=75.53,165.78");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=63.45,165.93");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=68.18,192.79");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=104.69,237.50");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=25.32,233.52");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=82.64,266.67");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=167.08,256.10");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=163.45,194.95");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=148.43,225.97");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=144.81,195.14");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=124.32,138.08");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=104.14,175.27");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=140.85,167.65");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=56.08,263.52");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=52.37,254.21");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=123.79,299.85");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=63.34,236.26");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=112.82,143.10");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=39.70,163.33");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=48.19,233.69");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=103.34,317.36");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=23.71,280.04");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=117.39,278.80");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=148.14,289.87");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=96.09,138.09");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=172.83,216.73");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=132.07,209.07");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=128.37,66.47");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=120.69,104.24");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=105.45,185.37");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=39.57,300.25");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=108.67,273.73");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=1.53,183.22");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=50.38,290.33");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=80.57,142.76");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=47.08,127.33");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=63.31,182.74");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=178.59,283.98");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=47.33,173.35");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=97.88,271.31");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=177.31,353.27");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=222.80,239.67");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=215.14,248.25");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=117.51,256.14");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=95.87,90.60");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=38.22,187.34");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=121.13,165.50");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=182.53,330.24");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=58.45,384.09");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=28.74,218.92");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=35.45,270.22");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=52.29,164.52");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=29.68,135.45");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=46.30,245.49");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=155.61,249.03");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=97.84,202.28");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=161.98,206.75");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=200.35,172.33");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=220.96,213.29");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=138.47,222.71");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=169.48,106.34");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=153.52,147.98");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=13.22,164.66");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=139.65,148.66");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=136.38,334.43");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=141.20,353.52");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=128.74,252.34");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=85.22,203.77");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=89.88,130.20");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=89.24,165.14");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=76.95,181.22");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=135.21,237.58");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=118.17,200.30");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=65.83,270.14");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=234.96,280.93");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=222.42,192.35");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=80.09,249.38");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=167.05,170.89");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=142.31,124.55");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=147.55,94.24");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=151.02,109.80");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=58.10,352.83");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=94.85,289.68");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=159.25,290.54");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=17.89,213.58");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=90.27,178.48");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=61.06,151.25");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=55.17,279.04");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=111.79,245.00");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=40.23,203.28");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=72.35,256.70");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=248.61,259.37");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=131.40,183.15");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=131.24,275.31");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=217.02,260.94");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=110.43,73.74");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=143.41,245.78");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=102.77,154.19");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=112.71,294.79");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=115.56,314.70");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=12.88,252.59");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=27.20,168.48");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=11.81,231.88");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=62.33,113.84");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=94.51,212.55");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=146.76,261.87");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=4.26,243.09");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=84.73,327.42");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=161.04,280.64");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=95.70,257.74");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=201.61,236.61");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=196.18,157.61");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=156.45,100.89");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=165.35,119.44");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=124.01,154.98");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=171.45,293.10");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=130.14,319.35");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=14.84,318.24");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=80.30,284.28");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=67.31,91.62");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=2.43,164.20");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=9.69,154.96");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=103.41,221.61");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=17.19,303.47");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=39.44,258.45");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=238.43,264.90");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=200.03,215.16");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=62.43,218.51");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=230.30,148.13");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=161.55,65.02");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=37.31,101.74");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=185.10,201.90");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=23.24,333.96");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=16.56,240.95");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=5.83,288.88");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=92.11,231.09");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=83.30,219.12");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=45.82,144.05");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=154.06,177.62");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=125.36,264.57");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=30.72,293.64");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=123.37,287.34");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=193.62,305.86");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=187.34,246.76");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=91.44,242.61");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=198.57,136.03");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=173.56,185.26");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=79.80,153.05");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=119.65,124.02");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=110.14,351.14");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=83.06,311.52");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=17.90,288.92");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=23.59,153.17");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=113.00,115.22");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=156.77,132.02");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=43.15,220.89");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=196.28,226.25");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=11.31,263.06");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=106.87,259.90");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=246.47,290.21");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=158.28,164.89");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=200.31,187.49");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=179.58,139.71");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=91.13,193.99");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=113.96,89.48");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=179.67,258.94");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=154.05,272.58");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=59.87,299.81");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=46.53,266.99");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=9.12,138.69");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=40.73,79.98");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=56.15,197.58");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=53.33,106.09");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=116.68,213.79");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=36.92,241.47");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=152.01,237.16");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=170.40,231.50");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=136.11,260.78");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=162.91,224.54");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=206.50,124.13");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=176.64,96.19");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=129.33,117.89");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=75.76,212.38");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=125.81,349.94");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=63.93,344.37");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=109.38,333.48");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=5.64,275.05");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=87.84,119.23");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=74.18,123.72");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=145.89,157.76");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=47.09,313.28");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=20.07,197.51");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=78.28,298.75");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=180.40,236.76");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=173.18,202.51");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=211.34,217.67");
    }

}

