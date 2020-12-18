
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM200-499
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
        @display("p=44.00,288.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=43.56,242.04");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=69.01,255.58");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=26.20,330.19");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=1.01,361.81");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=24.37,301.22");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=45.26,222.33");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=4.59,281.65");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=97.76,312.39");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=49.60,233.96");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=26.84,213.52");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=13.55,316.17");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=22.62,344.49");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=47.62,324.52");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=48.39,258.42");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=18.47,225.23");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=99.31,167.11");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=105.64,261.28");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=86.90,285.29");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=66.49,281.37");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=71.04,270.80");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=112.29,238.38");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=131.51,229.51");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=141.55,288.91");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=143.60,315.33");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=66.11,309.45");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=13.10,333.10");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=8.10,307.49");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=88.64,354.49");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=108.56,341.85");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=203.23,334.60");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=154.55,315.12");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=140.36,396.97");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=176.38,397.70");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=222.28,330.45");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=244.03,336.94");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=256.56,324.16");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=222.90,309.63");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=176.39,292.85");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=187.46,305.36");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=155.27,300.13");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=169.48,180.50");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=104.57,141.12");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=84.39,151.21");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=138.28,88.74");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=190.07,23.88");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=172.22,69.74");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=82.47,65.74");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=96.57,64.16");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=110.83,11.04");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=79.53,32.12");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=8.10,7.94");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=19.47,0.65");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=46.12,7.37");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=35.46,36.01");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=94.98,74.76");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=184.50,98.74");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=141.30,131.16");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=215.49,104.48");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=252.45,41.24");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=281.16,54.17");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=258.89,100.25");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=319.69,68.76");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=283.17,24.88");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=338.98,12.00");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=263.36,51.21");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=206.36,66.51");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=131.49,20.07");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=113.78,89.03");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=63.33,87.56");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=135.44,76.04");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=120.75,69.35");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=43.95,60.50");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=27.06,115.55");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=24.59,153.61");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=33.29,181.15");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=61.43,175.19");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=43.72,179.66");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=34.55,262.59");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=73.59,197.19");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=82.53,138.84");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=75.15,155.43");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=34.31,127.78");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=121.21,108.78");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=202.01,51.42");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=211.73,45.35");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=216.15,33.46");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=259.82,32.43");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=270.44,43.72");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=213.07,89.63");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=233.74,62.77");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=227.93,90.16");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=192.23,107.78");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=190.17,127.72");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=162.54,95.33");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=216.58,152.90");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=189.60,64.76");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=211.15,120.49");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=261.02,163.98");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=307.20,204.10");
    }

    host_fn_rly_101: <default("SensorNode")> like INetworkNode {
        @display("p=215.52,210.57");
    }

    host_fn_rly_102: <default("SensorNode")> like INetworkNode {
        @display("p=189.37,200.34");
    }

    host_fn_rly_103: <default("SensorNode")> like INetworkNode {
        @display("p=268.74,210.22");
    }

    host_fn_rly_104: <default("SensorNode")> like INetworkNode {
        @display("p=303.08,223.90");
    }

    host_fn_rly_105: <default("SensorNode")> like INetworkNode {
        @display("p=288.63,240.30");
    }

    host_fn_rly_106: <default("SensorNode")> like INetworkNode {
        @display("p=253.11,223.40");
    }

    host_fn_rly_107: <default("SensorNode")> like INetworkNode {
        @display("p=248.88,261.54");
    }

    host_fn_rly_108: <default("SensorNode")> like INetworkNode {
        @display("p=238.90,262.83");
    }

    host_fn_rly_109: <default("SensorNode")> like INetworkNode {
        @display("p=236.01,190.69");
    }

    host_fn_rly_110: <default("SensorNode")> like INetworkNode {
        @display("p=286.89,275.41");
    }

    host_fn_rly_111: <default("SensorNode")> like INetworkNode {
        @display("p=253.56,272.88");
    }

    host_fn_rly_112: <default("SensorNode")> like INetworkNode {
        @display("p=354.34,292.59");
    }

    host_fn_rly_113: <default("SensorNode")> like INetworkNode {
        @display("p=385.27,346.56");
    }

    host_fn_rly_114: <default("SensorNode")> like INetworkNode {
        @display("p=379.19,362.08");
    }

    host_fn_rly_115: <default("SensorNode")> like INetworkNode {
        @display("p=324.14,286.05");
    }

    host_fn_rly_116: <default("SensorNode")> like INetworkNode {
        @display("p=369.93,228.17");
    }

    host_fn_rly_117: <default("SensorNode")> like INetworkNode {
        @display("p=386.54,144.27");
    }

    host_fn_rly_118: <default("SensorNode")> like INetworkNode {
        @display("p=349.87,152.81");
    }

    host_fn_rly_119: <default("SensorNode")> like INetworkNode {
        @display("p=386.87,237.62");
    }

    host_fn_rly_120: <default("SensorNode")> like INetworkNode {
        @display("p=395.82,257.97");
    }

    host_fn_rly_121: <default("SensorNode")> like INetworkNode {
        @display("p=347.02,175.80");
    }

    host_fn_rly_122: <default("SensorNode")> like INetworkNode {
        @display("p=372.78,172.23");
    }

    host_fn_rly_123: <default("SensorNode")> like INetworkNode {
        @display("p=344.79,213.01");
    }

    host_fn_rly_124: <default("SensorNode")> like INetworkNode {
        @display("p=320.01,256.39");
    }

    host_fn_rly_125: <default("SensorNode")> like INetworkNode {
        @display("p=302.83,144.01");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=21.97,275.57");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=59.26,299.78");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=91.64,227.06");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=59.58,371.33");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=12.51,271.64");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=8.62,256.75");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=11.36,160.06");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=60.87,333.75");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=86.59,366.47");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=60.16,220.66");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=3.97,237.62");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=90.57,270.26");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=43.12,356.75");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=45.29,309.95");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=80.53,260.70");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=25.79,240.92");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=93.19,127.72");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=34.53,226.36");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=85.08,339.69");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=108.86,292.41");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=114.70,193.05");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=75.79,297.53");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=136.13,143.83");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=154.09,231.25");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=138.38,266.40");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=115.16,364.33");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=33.78,318.69");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=37.31,380.02");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=76.98,358.92");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=171.92,369.28");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=193.55,328.34");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=165.21,276.78");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=224.40,355.60");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=125.83,342.55");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=194.50,342.00");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=220.95,373.51");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=237.22,313.22");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=228.71,288.82");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=190.75,227.71");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=237.13,325.18");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=200.88,243.14");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=201.26,172.57");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=163.60,214.13");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=54.14,157.63");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=181.88,2.88");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=163.42,26.42");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=151.42,40.32");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=24.73,52.12");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=58.75,144.79");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=109.60,62.35");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=32.12,15.11");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=54.82,19.54");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=52.65,53.34");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=34.29,2.17");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=13.06,84.07");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=87.93,105.38");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=245.98,110.13");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=153.92,154.47");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=273.46,104.34");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=272.49,78.37");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=325.49,44.00");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=230.10,113.27");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=345.99,136.35");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=286.36,90.54");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=365.27,15.01");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=305.21,128.77");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=234.48,48.33");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=162.69,84.77");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=83.31,20.90");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=97.07,87.32");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=136.61,56.16");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=208.23,23.61");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=8.47,19.27");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=80.73,54.14");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=58.11,97.81");
    }

    host_lpn_201: <default("SensorNode")> like INetworkNode {
        @display("p=24.32,164.15");
    }

    host_lpn_202: <default("SensorNode")> like INetworkNode {
        @display("p=39.89,196.43");
    }

    host_lpn_203: <default("SensorNode")> like INetworkNode {
        @display("p=79.88,174.10");
    }

    host_lpn_204: <default("SensorNode")> like INetworkNode {
        @display("p=63.49,233.43");
    }

    host_lpn_205: <default("SensorNode")> like INetworkNode {
        @display("p=103.54,248.14");
    }

    host_lpn_206: <default("SensorNode")> like INetworkNode {
        @display("p=103.37,124.62");
    }

    host_lpn_207: <default("SensorNode")> like INetworkNode {
        @display("p=134.14,121.83");
    }

    host_lpn_208: <default("SensorNode")> like INetworkNode {
        @display("p=38.46,115.30");
    }

    host_lpn_209: <default("SensorNode")> like INetworkNode {
        @display("p=210.99,75.44");
    }

    host_lpn_210: <default("SensorNode")> like INetworkNode {
        @display("p=153.32,14.06");
    }

    host_lpn_211: <default("SensorNode")> like INetworkNode {
        @display("p=149.64,72.28");
    }

    host_lpn_212: <default("SensorNode")> like INetworkNode {
        @display("p=244.78,29.40");
    }

    host_lpn_213: <default("SensorNode")> like INetworkNode {
        @display("p=320.13,14.14");
    }

    host_lpn_214: <default("SensorNode")> like INetworkNode {
        @display("p=253.00,73.67");
    }

    host_lpn_215: <default("SensorNode")> like INetworkNode {
        @display("p=217.21,176.82");
    }

    host_lpn_216: <default("SensorNode")> like INetworkNode {
        @display("p=235.95,101.93");
    }

    host_lpn_217: <default("SensorNode")> like INetworkNode {
        @display("p=269.36,19.20");
    }

    host_lpn_218: <default("SensorNode")> like INetworkNode {
        @display("p=252.20,157.41");
    }

    host_lpn_219: <default("SensorNode")> like INetworkNode {
        @display("p=113.67,161.15");
    }

    host_lpn_220: <default("SensorNode")> like INetworkNode {
        @display("p=237.76,74.89");
    }

    host_lpn_221: <default("SensorNode")> like INetworkNode {
        @display("p=221.14,165.31");
    }

    host_lpn_222: <default("SensorNode")> like INetworkNode {
        @display("p=157.68,48.56");
    }

    host_lpn_223: <default("SensorNode")> like INetworkNode {
        @display("p=225.97,30.77");
    }

    host_lpn_224: <default("SensorNode")> like INetworkNode {
        @display("p=245.39,243.34");
    }

    host_lpn_225: <default("SensorNode")> like INetworkNode {
        @display("p=283.74,210.63");
    }

    host_lpn_226: <default("SensorNode")> like INetworkNode {
        @display("p=225.86,206.54");
    }

    host_lpn_227: <default("SensorNode")> like INetworkNode {
        @display("p=230.28,132.41");
    }

    host_lpn_228: <default("SensorNode")> like INetworkNode {
        @display("p=218.88,233.69");
    }

    host_lpn_229: <default("SensorNode")> like INetworkNode {
        @display("p=230.60,253.62");
    }

    host_lpn_230: <default("SensorNode")> like INetworkNode {
        @display("p=290.89,185.47");
    }

    host_lpn_231: <default("SensorNode")> like INetworkNode {
        @display("p=169.66,259.49");
    }

    host_lpn_232: <default("SensorNode")> like INetworkNode {
        @display("p=201.69,215.62");
    }

    host_lpn_233: <default("SensorNode")> like INetworkNode {
        @display("p=276.60,184.48");
    }

    host_lpn_234: <default("SensorNode")> like INetworkNode {
        @display("p=206.11,99.65");
    }

    host_lpn_235: <default("SensorNode")> like INetworkNode {
        @display("p=282.73,309.92");
    }

    host_lpn_236: <default("SensorNode")> like INetworkNode {
        @display("p=255.18,247.26");
    }

    host_lpn_237: <default("SensorNode")> like INetworkNode {
        @display("p=294.29,319.98");
    }

    host_lpn_238: <default("SensorNode")> like INetworkNode {
        @display("p=383.89,319.79");
    }

    host_lpn_239: <default("SensorNode")> like INetworkNode {
        @display("p=320.44,352.26");
    }

    host_lpn_240: <default("SensorNode")> like INetworkNode {
        @display("p=349.54,326.49");
    }

    host_lpn_241: <default("SensorNode")> like INetworkNode {
        @display("p=380.69,194.15");
    }

    host_lpn_242: <default("SensorNode")> like INetworkNode {
        @display("p=330.43,183.03");
    }

    host_lpn_243: <default("SensorNode")> like INetworkNode {
        @display("p=361.93,84.32");
    }

    host_lpn_244: <default("SensorNode")> like INetworkNode {
        @display("p=313.30,240.59");
    }

    host_lpn_245: <default("SensorNode")> like INetworkNode {
        @display("p=385.02,258.94");
    }

    host_lpn_246: <default("SensorNode")> like INetworkNode {
        @display("p=290.73,100.76");
    }

    host_lpn_247: <default("SensorNode")> like INetworkNode {
        @display("p=324.20,133.10");
    }

    host_lpn_248: <default("SensorNode")> like INetworkNode {
        @display("p=332.70,256.94");
    }

    host_lpn_249: <default("SensorNode")> like INetworkNode {
        @display("p=395.76,273.00");
    }

    host_lpn_250: <default("SensorNode")> like INetworkNode {
        @display("p=304.43,176.99");
    }

    host_lpn_251: <default("SensorNode")> like INetworkNode {
        @display("p=1.47,269.88");
    }

    host_lpn_252: <default("SensorNode")> like INetworkNode {
        @display("p=36.16,252.69");
    }

    host_lpn_253: <default("SensorNode")> like INetworkNode {
        @display("p=33.97,306.81");
    }

    host_lpn_254: <default("SensorNode")> like INetworkNode {
        @display("p=51.09,346.20");
    }

    host_lpn_255: <default("SensorNode")> like INetworkNode {
        @display("p=18.00,360.30");
    }

    host_lpn_256: <default("SensorNode")> like INetworkNode {
        @display("p=63.61,353.92");
    }

    host_lpn_257: <default("SensorNode")> like INetworkNode {
        @display("p=56.57,251.48");
    }

    host_lpn_258: <default("SensorNode")> like INetworkNode {
        @display("p=22.72,198.01");
    }

    host_lpn_259: <default("SensorNode")> like INetworkNode {
        @display("p=131.70,253.36");
    }

    host_lpn_260: <default("SensorNode")> like INetworkNode {
        @display("p=35.95,171.04");
    }

    host_lpn_261: <default("SensorNode")> like INetworkNode {
        @display("p=14.18,176.60");
    }

    host_lpn_262: <default("SensorNode")> like INetworkNode {
        @display("p=71.55,394.71");
    }

    host_lpn_263: <default("SensorNode")> like INetworkNode {
        @display("p=77.95,330.97");
    }

    host_lpn_264: <default("SensorNode")> like INetworkNode {
        @display("p=16.36,379.04");
    }

    host_lpn_265: <default("SensorNode")> like INetworkNode {
        @display("p=103.33,227.17");
    }

    host_lpn_266: <default("SensorNode")> like INetworkNode {
        @display("p=53.61,201.39");
    }

    host_lpn_267: <default("SensorNode")> like INetworkNode {
        @display("p=72.05,135.91");
    }

    host_lpn_268: <default("SensorNode")> like INetworkNode {
        @display("p=93.53,249.86");
    }

    host_lpn_269: <default("SensorNode")> like INetworkNode {
        @display("p=75.62,320.08");
    }

    host_lpn_270: <default("SensorNode")> like INetworkNode {
        @display("p=96.59,288.42");
    }

    host_lpn_271: <default("SensorNode")> like INetworkNode {
        @display("p=1.00,227.89");
    }

    host_lpn_272: <default("SensorNode")> like INetworkNode {
        @display("p=158.48,253.13");
    }

    host_lpn_273: <default("SensorNode")> like INetworkNode {
        @display("p=75.74,211.55");
    }

    host_lpn_274: <default("SensorNode")> like INetworkNode {
        @display("p=179.53,255.16");
    }

    host_lpn_275: <default("SensorNode")> like INetworkNode {
        @display("p=144.91,303.90");
    }

    host_lpn_276: <default("SensorNode")> like INetworkNode {
        @display("p=34.75,368.88");
    }

    host_lpn_277: <default("SensorNode")> like INetworkNode {
        @display("p=3.34,338.32");
    }

    host_lpn_278: <default("SensorNode")> like INetworkNode {
        @display("p=48.81,298.72");
    }

    host_lpn_279: <default("SensorNode")> like INetworkNode {
        @display("p=183.82,383.73");
    }

    host_lpn_280: <default("SensorNode")> like INetworkNode {
        @display("p=88.16,309.25");
    }

    host_lpn_281: <default("SensorNode")> like INetworkNode {
        @display("p=170.44,312.29");
    }

    host_lpn_282: <default("SensorNode")> like INetworkNode {
        @display("p=179.91,277.55");
    }

    host_lpn_283: <default("SensorNode")> like INetworkNode {
        @display("p=92.92,321.89");
    }

    host_lpn_284: <default("SensorNode")> like INetworkNode {
        @display("p=155.81,395.98");
    }

    host_lpn_285: <default("SensorNode")> like INetworkNode {
        @display("p=224.41,320.61");
    }

    host_lpn_286: <default("SensorNode")> like INetworkNode {
        @display("p=208.18,362.99");
    }

    host_lpn_287: <default("SensorNode")> like INetworkNode {
        @display("p=327.13,394.39");
    }

    host_lpn_288: <default("SensorNode")> like INetworkNode {
        @display("p=314.93,329.28");
    }

    host_lpn_289: <default("SensorNode")> like INetworkNode {
        @display("p=191.06,295.63");
    }

    host_lpn_290: <default("SensorNode")> like INetworkNode {
        @display("p=257.75,349.81");
    }

    host_lpn_291: <default("SensorNode")> like INetworkNode {
        @display("p=211.78,340.33");
    }

    host_lpn_292: <default("SensorNode")> like INetworkNode {
        @display("p=117.99,220.95");
    }

    host_lpn_293: <default("SensorNode")> like INetworkNode {
        @display("p=27.68,104.99");
    }

    host_lpn_294: <default("SensorNode")> like INetworkNode {
        @display("p=65.08,155.83");
    }

    host_lpn_295: <default("SensorNode")> like INetworkNode {
        @display("p=174.94,92.48");
    }

    host_lpn_296: <default("SensorNode")> like INetworkNode {
        @display("p=147.01,106.49");
    }

    host_lpn_297: <default("SensorNode")> like INetworkNode {
        @display("p=83.54,81.58");
    }

    host_lpn_298: <default("SensorNode")> like INetworkNode {
        @display("p=88.05,45.64");
    }

    host_lpn_299: <default("SensorNode")> like INetworkNode {
        @display("p=87.08,117.78");
    }

    host_lpn_300: <default("SensorNode")> like INetworkNode {
        @display("p=143.95,2.57");
    }

    host_lpn_301: <default("SensorNode")> like INetworkNode {
        @display("p=68.18,40.34");
    }

    host_lpn_302: <default("SensorNode")> like INetworkNode {
        @display("p=48.96,92.96");
    }

    host_lpn_303: <default("SensorNode")> like INetworkNode {
        @display("p=79.63,3.62");
    }

    host_lpn_304: <default("SensorNode")> like INetworkNode {
        @display("p=54.02,64.96");
    }

    host_lpn_305: <default("SensorNode")> like INetworkNode {
        @display("p=124.01,29.73");
    }

    host_lpn_306: <default("SensorNode")> like INetworkNode {
        @display("p=80.87,91.32");
    }

    host_lpn_307: <default("SensorNode")> like INetworkNode {
        @display("p=181.90,192.73");
    }

    host_lpn_308: <default("SensorNode")> like INetworkNode {
        @display("p=127.62,129.77");
    }

    host_lpn_309: <default("SensorNode")> like INetworkNode {
        @display("p=183.08,175.20");
    }

    host_lpn_310: <default("SensorNode")> like INetworkNode {
        @display("p=260.02,11.19");
    }

    host_lpn_311: <default("SensorNode")> like INetworkNode {
        @display("p=306.86,112.84");
    }

    host_lpn_312: <default("SensorNode")> like INetworkNode {
        @display("p=325.38,152.37");
    }

    host_lpn_313: <default("SensorNode")> like INetworkNode {
        @display("p=244.94,17.56");
    }

    host_lpn_314: <default("SensorNode")> like INetworkNode {
        @display("p=370.23,61.64");
    }

    host_lpn_315: <default("SensorNode")> like INetworkNode {
        @display("p=341.50,27.64");
    }

    host_lpn_316: <default("SensorNode")> like INetworkNode {
        @display("p=309.61,0.18");
    }

    host_lpn_317: <default("SensorNode")> like INetworkNode {
        @display("p=172.40,58.42");
    }

    host_lpn_318: <default("SensorNode")> like INetworkNode {
        @display("p=128.82,40.42");
    }

    host_lpn_319: <default("SensorNode")> like INetworkNode {
        @display("p=124.82,94.83");
    }

    host_lpn_320: <default("SensorNode")> like INetworkNode {
        @display("p=43.08,144.19");
    }

    host_lpn_321: <default("SensorNode")> like INetworkNode {
        @display("p=66.51,13.97");
    }

    host_lpn_322: <default("SensorNode")> like INetworkNode {
        @display("p=111.18,116.91");
    }

    host_lpn_323: <default("SensorNode")> like INetworkNode {
        @display("p=2.73,101.80");
    }

    host_lpn_324: <default("SensorNode")> like INetworkNode {
        @display("p=52.37,114.25");
    }

    host_lpn_325: <default("SensorNode")> like INetworkNode {
        @display("p=10.58,214.17");
    }

    host_lpn_326: <default("SensorNode")> like INetworkNode {
        @display("p=10.93,187.59");
    }

    host_lpn_327: <default("SensorNode")> like INetworkNode {
        @display("p=25.49,188.03");
    }

    host_lpn_328: <default("SensorNode")> like INetworkNode {
        @display("p=1.32,119.47");
    }

    host_lpn_329: <default("SensorNode")> like INetworkNode {
        @display("p=33.92,276.07");
    }

    host_lpn_330: <default("SensorNode")> like INetworkNode {
        @display("p=94.22,205.07");
    }

    host_lpn_331: <default("SensorNode")> like INetworkNode {
        @display("p=35.27,85.42");
    }

    host_lpn_332: <default("SensorNode")> like INetworkNode {
        @display("p=70.52,167.66");
    }

    host_lpn_333: <default("SensorNode")> like INetworkNode {
        @display("p=42.62,103.00");
    }

    host_lpn_334: <default("SensorNode")> like INetworkNode {
        @display("p=150.00,196.28");
    }

    host_lpn_335: <default("SensorNode")> like INetworkNode {
        @display("p=227.12,72.96");
    }

    host_lpn_336: <default("SensorNode")> like INetworkNode {
        @display("p=183.07,52.33");
    }

    host_lpn_337: <default("SensorNode")> like INetworkNode {
        @display("p=307.57,38.06");
    }

    host_lpn_338: <default("SensorNode")> like INetworkNode {
        @display("p=201.77,11.75");
    }

    host_lpn_339: <default("SensorNode")> like INetworkNode {
        @display("p=277.83,36.03");
    }

    host_lpn_340: <default("SensorNode")> like INetworkNode {
        @display("p=221.12,64.30");
    }

    host_lpn_341: <default("SensorNode")> like INetworkNode {
        @display("p=252.48,119.95");
    }

    host_lpn_342: <default("SensorNode")> like INetworkNode {
        @display("p=277.12,158.82");
    }

    host_lpn_343: <default("SensorNode")> like INetworkNode {
        @display("p=171.66,112.36");
    }

    host_lpn_344: <default("SensorNode")> like INetworkNode {
        @display("p=199.67,145.87");
    }

    host_lpn_345: <default("SensorNode")> like INetworkNode {
        @display("p=101.09,104.41");
    }

    host_lpn_346: <default("SensorNode")> like INetworkNode {
        @display("p=221.03,186.89");
    }

    host_lpn_347: <default("SensorNode")> like INetworkNode {
        @display("p=196.78,73.04");
    }

    host_lpn_348: <default("SensorNode")> like INetworkNode {
        @display("p=113.58,130.11");
    }

    host_lpn_349: <default("SensorNode")> like INetworkNode {
        @display("p=212.12,135.70");
    }

    host_lpn_350: <default("SensorNode")> like INetworkNode {
        @display("p=229.60,156.24");
    }

    host_lpn_351: <default("SensorNode")> like INetworkNode {
        @display("p=171.49,156.21");
    }

    host_lpn_352: <default("SensorNode")> like INetworkNode {
        @display("p=246.36,146.70");
    }

    host_lpn_353: <default("SensorNode")> like INetworkNode {
        @display("p=256.45,208.33");
    }

    host_lpn_354: <default("SensorNode")> like INetworkNode {
        @display("p=274.95,130.15");
    }

    host_lpn_355: <default("SensorNode")> like INetworkNode {
        @display("p=303.71,235.41");
    }

    host_lpn_356: <default("SensorNode")> like INetworkNode {
        @display("p=241.87,157.82");
    }

    host_lpn_357: <default("SensorNode")> like INetworkNode {
        @display("p=301.46,284.58");
    }

    host_lpn_358: <default("SensorNode")> like INetworkNode {
        @display("p=249.79,184.49");
    }

    host_lpn_359: <default("SensorNode")> like INetworkNode {
        @display("p=231.57,174.51");
    }

    host_lpn_360: <default("SensorNode")> like INetworkNode {
        @display("p=282.98,298.97");
    }

    host_lpn_361: <default("SensorNode")> like INetworkNode {
        @display("p=242.56,290.46");
    }

    host_lpn_362: <default("SensorNode")> like INetworkNode {
        @display("p=378.46,334.98");
    }

    host_lpn_363: <default("SensorNode")> like INetworkNode {
        @display("p=337.96,381.54");
    }

    host_lpn_364: <default("SensorNode")> like INetworkNode {
        @display("p=398.52,399.40");
    }

    host_lpn_365: <default("SensorNode")> like INetworkNode {
        @display("p=355.41,238.68");
    }

    host_lpn_366: <default("SensorNode")> like INetworkNode {
        @display("p=370.80,244.44");
    }

    host_lpn_367: <default("SensorNode")> like INetworkNode {
        @display("p=391.44,187.22");
    }

    host_lpn_368: <default("SensorNode")> like INetworkNode {
        @display("p=374.77,152.34");
    }

    host_lpn_369: <default("SensorNode")> like INetworkNode {
        @display("p=390.06,302.13");
    }

    host_lpn_370: <default("SensorNode")> like INetworkNode {
        @display("p=348.72,268.01");
    }

    host_lpn_371: <default("SensorNode")> like INetworkNode {
        @display("p=399.31,195.06");
    }

    host_lpn_372: <default("SensorNode")> like INetworkNode {
        @display("p=355.55,259.45");
    }

    host_lpn_373: <default("SensorNode")> like INetworkNode {
        @display("p=356.78,163.82");
    }

    host_lpn_374: <default("SensorNode")> like INetworkNode {
        @display("p=334.78,271.09");
    }

    host_lpn_375: <default("SensorNode")> like INetworkNode {
        @display("p=341.01,106.78");
    }

    host_lpn_376: <default("SensorNode")> like INetworkNode {
        @display("p=66.40,244.65");
    }

    host_lpn_377: <default("SensorNode")> like INetworkNode {
        @display("p=62.63,209.76");
    }

    host_lpn_378: <default("SensorNode")> like INetworkNode {
        @display("p=143.34,227.99");
    }

    host_lpn_379: <default("SensorNode")> like INetworkNode {
        @display("p=23.51,264.91");
    }

    host_lpn_380: <default("SensorNode")> like INetworkNode {
        @display("p=16.15,285.50");
    }

    host_lpn_381: <default("SensorNode")> like INetworkNode {
        @display("p=5.40,395.20");
    }

    host_lpn_382: <default("SensorNode")> like INetworkNode {
        @display("p=36.48,152.29");
    }

    host_lpn_383: <default("SensorNode")> like INetworkNode {
        @display("p=45.34,211.40");
    }

    host_lpn_384: <default("SensorNode")> like INetworkNode {
        @display("p=106.06,389.44");
    }

    host_lpn_385: <default("SensorNode")> like INetworkNode {
        @display("p=10.53,145.81");
    }

    host_lpn_386: <default("SensorNode")> like INetworkNode {
        @display("p=63.90,123.27");
    }

    host_lpn_387: <default("SensorNode")> like INetworkNode {
        @display("p=13.34,243.04");
    }

    host_lpn_388: <default("SensorNode")> like INetworkNode {
        @display("p=43.07,334.87");
    }

    host_lpn_389: <default("SensorNode")> like INetworkNode {
        @display("p=10.56,294.13");
    }

    host_lpn_390: <default("SensorNode")> like INetworkNode {
        @display("p=32.08,289.24");
    }

    host_lpn_391: <default("SensorNode")> like INetworkNode {
        @display("p=8.58,201.59");
    }

    host_lpn_392: <default("SensorNode")> like INetworkNode {
        @display("p=91.74,178.53");
    }

    host_lpn_393: <default("SensorNode")> like INetworkNode {
        @display("p=127.70,295.91");
    }

    host_lpn_394: <default("SensorNode")> like INetworkNode {
        @display("p=122.22,204.78");
    }

    host_lpn_395: <default("SensorNode")> like INetworkNode {
        @display("p=6.77,353.57");
    }

    host_lpn_396: <default("SensorNode")> like INetworkNode {
        @display("p=131.69,313.66");
    }

    host_lpn_397: <default("SensorNode")> like INetworkNode {
        @display("p=115.23,255.54");
    }

    host_lpn_398: <default("SensorNode")> like INetworkNode {
        @display("p=157.64,178.76");
    }

    host_lpn_399: <default("SensorNode")> like INetworkNode {
        @display("p=103.91,215.43");
    }

    host_lpn_400: <default("SensorNode")> like INetworkNode {
        @display("p=114.40,323.52");
    }

    host_lpn_401: <default("SensorNode")> like INetworkNode {
        @display("p=127.74,332.02");
    }

    host_lpn_402: <default("SensorNode")> like INetworkNode {
        @display("p=30.02,394.06");
    }

    host_lpn_403: <default("SensorNode")> like INetworkNode {
        @display("p=63.78,387.57");
    }

    host_lpn_404: <default("SensorNode")> like INetworkNode {
        @display("p=127.76,372.77");
    }

    host_lpn_405: <default("SensorNode")> like INetworkNode {
        @display("p=135.11,355.89");
    }

    host_lpn_406: <default("SensorNode")> like INetworkNode {
        @display("p=233.13,346.87");
    }

    host_lpn_407: <default("SensorNode")> like INetworkNode {
        @display("p=119.45,387.95");
    }

    host_lpn_408: <default("SensorNode")> like INetworkNode {
        @display("p=130.09,387.59");
    }

    host_lpn_409: <default("SensorNode")> like INetworkNode {
        @display("p=222.27,397.19");
    }

    host_lpn_410: <default("SensorNode")> like INetworkNode {
        @display("p=270.58,342.84");
    }

    host_lpn_411: <default("SensorNode")> like INetworkNode {
        @display("p=286.16,250.80");
    }

    host_lpn_412: <default("SensorNode")> like INetworkNode {
        @display("p=273.79,294.89");
    }

    host_lpn_413: <default("SensorNode")> like INetworkNode {
        @display("p=162.07,376.05");
    }

    host_lpn_414: <default("SensorNode")> like INetworkNode {
        @display("p=187.23,319.20");
    }

    host_lpn_415: <default("SensorNode")> like INetworkNode {
        @display("p=102.72,353.25");
    }

    host_lpn_416: <default("SensorNode")> like INetworkNode {
        @display("p=201.36,307.78");
    }

    host_lpn_417: <default("SensorNode")> like INetworkNode {
        @display("p=188.02,141.13");
    }

    host_lpn_418: <default("SensorNode")> like INetworkNode {
        @display("p=161.04,200.13");
    }

    host_lpn_419: <default("SensorNode")> like INetworkNode {
        @display("p=92.74,139.48");
    }

    host_lpn_420: <default("SensorNode")> like INetworkNode {
        @display("p=109.18,49.05");
    }

    host_lpn_421: <default("SensorNode")> like INetworkNode {
        @display("p=178.01,38.34");
    }

    host_lpn_422: <default("SensorNode")> like INetworkNode {
        @display("p=161.64,61.93");
    }

    host_lpn_423: <default("SensorNode")> like INetworkNode {
        @display("p=151.71,137.79");
    }

    host_lpn_424: <default("SensorNode")> like INetworkNode {
        @display("p=41.89,77.47");
    }

    host_lpn_425: <default("SensorNode")> like INetworkNode {
        @display("p=142.22,30.03");
    }

    host_lpn_426: <default("SensorNode")> like INetworkNode {
        @display("p=73.06,22.71");
    }

    host_lpn_427: <default("SensorNode")> like INetworkNode {
        @display("p=21.84,31.66");
    }

    host_lpn_428: <default("SensorNode")> like INetworkNode {
        @display("p=69.83,69.54");
    }

    host_lpn_429: <default("SensorNode")> like INetworkNode {
        @display("p=116.57,41.26");
    }

    host_lpn_430: <default("SensorNode")> like INetworkNode {
        @display("p=38.76,49.13");
    }

    host_lpn_431: <default("SensorNode")> like INetworkNode {
        @display("p=125.00,154.56");
    }

    host_lpn_432: <default("SensorNode")> like INetworkNode {
        @display("p=113.63,77.00");
    }

    host_lpn_433: <default("SensorNode")> like INetworkNode {
        @display("p=196.51,83.30");
    }

    host_lpn_434: <default("SensorNode")> like INetworkNode {
        @display("p=175.42,139.48");
    }

    host_lpn_435: <default("SensorNode")> like INetworkNode {
        @display("p=313.40,100.50");
    }

    host_lpn_436: <default("SensorNode")> like INetworkNode {
        @display("p=233.65,12.64");
    }

    host_lpn_437: <default("SensorNode")> like INetworkNode {
        @display("p=290.19,141.32");
    }

    host_lpn_438: <default("SensorNode")> like INetworkNode {
        @display("p=385.04,85.38");
    }

    host_lpn_439: <default("SensorNode")> like INetworkNode {
        @display("p=308.50,52.92");
    }

    host_lpn_440: <default("SensorNode")> like INetworkNode {
        @display("p=344.90,0.17");
    }

    host_lpn_441: <default("SensorNode")> like INetworkNode {
        @display("p=245.02,66.26");
    }

    host_lpn_442: <default("SensorNode")> like INetworkNode {
        @display("p=168.38,43.48");
    }

    host_lpn_443: <default("SensorNode")> like INetworkNode {
        @display("p=97.13,52.98");
    }

    host_lpn_444: <default("SensorNode")> like INetworkNode {
        @display("p=157.86,118.08");
    }

    host_lpn_445: <default("SensorNode")> like INetworkNode {
        @display("p=64.71,107.34");
    }

    host_lpn_446: <default("SensorNode")> like INetworkNode {
        @display("p=96.02,19.82");
    }

    host_lpn_447: <default("SensorNode")> like INetworkNode {
        @display("p=120.31,57.41");
    }

    host_lpn_448: <default("SensorNode")> like INetworkNode {
        @display("p=79.92,127.27");
    }

    host_lpn_449: <default("SensorNode")> like INetworkNode {
        @display("p=2.37,77.88");
    }

    host_lpn_450: <default("SensorNode")> like INetworkNode {
        @display("p=22.88,134.00");
    }

    host_lpn_451: <default("SensorNode")> like INetworkNode {
        @display("p=96.84,155.96");
    }

    host_lpn_452: <default("SensorNode")> like INetworkNode {
        @display("p=148.11,164.36");
    }

    host_lpn_453: <default("SensorNode")> like INetworkNode {
        @display("p=54.66,190.18");
    }

    host_lpn_454: <default("SensorNode")> like INetworkNode {
        @display("p=118.86,303.93");
    }

    host_lpn_455: <default("SensorNode")> like INetworkNode {
        @display("p=135.33,165.33");
    }

    host_lpn_456: <default("SensorNode")> like INetworkNode {
        @display("p=162.59,149.21");
    }

    host_lpn_457: <default("SensorNode")> like INetworkNode {
        @display("p=109.57,178.76");
    }

    host_lpn_458: <default("SensorNode")> like INetworkNode {
        @display("p=84.91,188.06");
    }

    host_lpn_459: <default("SensorNode")> like INetworkNode {
        @display("p=194.47,164.92");
    }

    host_lpn_460: <default("SensorNode")> like INetworkNode {
        @display("p=147.93,94.30");
    }

    host_lpn_461: <default("SensorNode")> like INetworkNode {
        @display("p=289.72,5.67");
    }

    host_lpn_462: <default("SensorNode")> like INetworkNode {
        @display("p=265.96,114.45");
    }

    host_lpn_463: <default("SensorNode")> like INetworkNode {
        @display("p=334.50,52.32");
    }

    host_lpn_464: <default("SensorNode")> like INetworkNode {
        @display("p=267.62,67.74");
    }

    host_lpn_465: <default("SensorNode")> like INetworkNode {
        @display("p=225.53,99.96");
    }

    host_lpn_466: <default("SensorNode")> like INetworkNode {
        @display("p=295.45,117.20");
    }

    host_lpn_467: <default("SensorNode")> like INetworkNode {
        @display("p=219.55,23.10");
    }

    host_lpn_468: <default("SensorNode")> like INetworkNode {
        @display("p=184.50,81.30");
    }

    host_lpn_469: <default("SensorNode")> like INetworkNode {
        @display("p=144.07,118.46");
    }

    host_lpn_470: <default("SensorNode")> like INetworkNode {
        @display("p=178.30,125.63");
    }

    host_lpn_471: <default("SensorNode")> like INetworkNode {
        @display("p=177.46,210.64");
    }

    host_lpn_472: <default("SensorNode")> like INetworkNode {
        @display("p=215.47,8.34");
    }

    host_lpn_473: <default("SensorNode")> like INetworkNode {
        @display("p=137.43,103.13");
    }

    host_lpn_474: <default("SensorNode")> like INetworkNode {
        @display("p=291.40,77.06");
    }

    host_lpn_475: <default("SensorNode")> like INetworkNode {
        @display("p=301.02,303.09");
    }

    host_lpn_476: <default("SensorNode")> like INetworkNode {
        @display("p=212.05,261.09");
    }

    host_lpn_477: <default("SensorNode")> like INetworkNode {
        @display("p=191.88,154.45");
    }

    host_lpn_478: <default("SensorNode")> like INetworkNode {
        @display("p=269.96,220.28");
    }

    host_lpn_479: <default("SensorNode")> like INetworkNode {
        @display("p=297.23,206.71");
    }

    host_lpn_480: <default("SensorNode")> like INetworkNode {
        @display("p=256.80,290.00");
    }

    host_lpn_481: <default("SensorNode")> like INetworkNode {
        @display("p=241.03,217.88");
    }

    host_lpn_482: <default("SensorNode")> like INetworkNode {
        @display("p=222.57,264.93");
    }

    host_lpn_483: <default("SensorNode")> like INetworkNode {
        @display("p=221.58,244.77");
    }

    host_lpn_484: <default("SensorNode")> like INetworkNode {
        @display("p=229.33,144.92");
    }

    host_lpn_485: <default("SensorNode")> like INetworkNode {
        @display("p=262.78,367.03");
    }

    host_lpn_486: <default("SensorNode")> like INetworkNode {
        @display("p=262.62,260.32");
    }

    host_lpn_487: <default("SensorNode")> like INetworkNode {
        @display("p=368.37,323.18");
    }

    host_lpn_488: <default("SensorNode")> like INetworkNode {
        @display("p=399.14,344.89");
    }

    host_lpn_489: <default("SensorNode")> like INetworkNode {
        @display("p=397.90,387.33");
    }

    host_lpn_490: <default("SensorNode")> like INetworkNode {
        @display("p=342.98,311.22");
    }

    host_lpn_491: <default("SensorNode")> like INetworkNode {
        @display("p=294.16,217.19");
    }

    host_lpn_492: <default("SensorNode")> like INetworkNode {
        @display("p=337.32,68.67");
    }

    host_lpn_493: <default("SensorNode")> like INetworkNode {
        @display("p=368.09,132.73");
    }

    host_lpn_494: <default("SensorNode")> like INetworkNode {
        @display("p=310.19,262.01");
    }

    host_lpn_495: <default("SensorNode")> like INetworkNode {
        @display("p=382.93,164.95");
    }

    host_lpn_496: <default("SensorNode")> like INetworkNode {
        @display("p=369.22,109.20");
    }

    host_lpn_497: <default("SensorNode")> like INetworkNode {
        @display("p=304.10,155.83");
    }

    host_lpn_498: <default("SensorNode")> like INetworkNode {
        @display("p=334.99,209.97");
    }

    host_lpn_499: <default("SensorNode")> like INetworkNode {
        @display("p=327.65,326.15");
    }

    host_lpn_500: <default("SensorNode")> like INetworkNode {
        @display("p=249.82,83.52");
    }

}

