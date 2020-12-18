
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn8-9
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
        @display("p=304.00,164.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=331.34,95.92");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=308.34,66.16");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=292.40,122.43");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=312.18,117.72");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=253.46,172.38");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=239.91,220.57");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=208.97,182.77");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=274.79,127.67");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=245.72,193.79");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=228.51,228.76");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=295.81,289.56");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=324.23,339.41");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=255.16,282.28");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=204.85,232.45");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=188.88,293.32");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=191.04,253.85");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=139.79,216.82");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=159.06,134.00");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=160.49,194.42");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=223.67,154.50");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=283.99,218.75");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=126.14,136.04");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=118.97,112.71");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=86.62,152.64");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=362.28,125.60");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=352.70,149.05");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=274.60,68.84");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=234.30,92.71");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=247.88,46.91");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=240.89,184.89");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=204.59,213.64");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=153.79,247.97");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=316.55,41.89");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=283.52,188.83");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=308.40,175.51");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=360.24,253.62");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=317.01,321.21");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=337.12,326.44");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=227.45,195.12");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=129.34,234.41");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=204.69,302.18");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=141.15,252.23");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=107.28,87.64");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=205.49,201.51");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=210.24,134.77");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=215.54,241.41");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=185.48,151.86");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=129.78,175.24");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=96.17,165.86");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=318.38,87.10");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=345.06,58.60");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=338.14,126.71");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=339.90,81.96");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=280.90,156.87");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=210.32,257.93");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=266.95,234.68");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=282.09,119.83");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=261.43,140.42");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=182.46,196.86");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=167.92,210.95");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=344.60,375.27");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=272.83,347.21");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=262.04,359.53");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=194.38,227.77");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=171.73,303.43");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=126.49,250.50");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=129.31,218.62");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=162.72,123.60");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=84.14,234.74");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=240.41,155.62");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=303.42,202.37");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=205.50,122.35");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=85.81,191.03");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=30.40,132.20");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=391.54,133.74");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=422.57,81.42");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=326.24,65.27");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=349.51,76.44");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=386.89,162.52");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=261.93,203.84");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=220.77,205.14");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=245.86,119.07");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=264.54,109.20");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=180.83,247.39");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=224.43,266.66");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=291.51,229.73");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=405.72,371.28");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=248.45,246.80");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=186.38,140.18");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=178.03,288.44");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=217.97,301.71");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=164.31,151.94");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=156.98,73.30");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=171.76,180.62");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=245.76,98.69");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=243.29,129.43");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=67.60,61.91");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=179.10,100.06");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=149.43,227.09");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=304.72,100.33");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=292.95,22.67");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=364.32,44.65");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=296.70,40.94");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=382.16,66.55");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=262.74,178.10");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=249.75,211.15");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=196.57,177.81");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=272.44,139.29");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=330.03,245.84");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=282.95,289.90");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=207.97,287.99");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=310.16,261.26");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=250.43,234.42");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=139.83,162.34");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=238.02,359.62");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=130.46,193.82");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=54.17,203.44");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=95.88,92.35");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=183.75,235.27");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=215.78,84.91");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=275.82,210.11");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=152.47,53.96");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=91.40,113.81");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=50.47,166.10");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=351.43,174.95");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=311.44,135.26");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=250.67,88.50");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=293.51,145.52");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=389.40,178.39");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=283.79,141.68");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=218.43,218.22");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=232.42,141.07");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=212.71,160.85");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=269.63,290.35");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=236.53,298.51");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=208.42,316.56");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=238.70,316.23");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=240.88,270.29");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=203.24,244.67");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=166.05,367.99");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=93.92,261.54");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=118.39,224.11");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=171.40,88.63");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=230.87,243.29");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=190.55,122.48");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=336.96,280.47");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=45.89,107.56");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=181.59,48.39");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=80.65,144.11");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=382.69,141.84");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=314.38,16.84");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=303.54,79.47");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=385.35,107.06");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=333.44,35.69");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=204.33,145.46");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=330.41,230.63");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=212.67,112.40");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=218.70,96.99");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=259.78,262.16");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=237.93,170.80");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=294.70,263.75");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=315.26,346.57");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=241.44,289.58");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=257.84,226.73");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=193.37,363.84");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=163.56,241.49");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=86.87,173.08");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=163.26,60.32");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=109.56,272.51");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=151.97,150.70");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=242.65,203.78");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=100.11,205.34");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=88.06,72.78");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=10.57,163.89");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=343.90,157.26");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=327.42,144.76");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=381.85,89.29");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=222.34,116.62");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=308.30,90.19");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=342.07,208.34");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=221.04,255.76");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=202.77,156.90");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=263.81,66.01");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=300.24,213.63");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=257.84,293.08");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=313.45,243.74");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=353.92,417.13");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=312.64,225.33");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=148.78,299.76");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=187.17,281.76");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=214.06,347.82");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=183.19,182.48");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=146.77,177.16");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=123.61,201.25");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=196.55,88.51");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=248.37,146.98");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=43.81,94.20");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=144.99,135.64");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=73.46,205.50");
    }

}

