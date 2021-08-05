
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn12_4
{
    parameters:
        @display("bgb=400,400;bgg=100,1,grey95;bgu=m");
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=145.28,125.94");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=229.13,130.02");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=290.23,148.27");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=238.22,207.49");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=231.04,245.59");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=225.68,185.92");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=229.38,225.15");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=187.87,194.31");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=146.54,236.06");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=94.29,260.74");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=106.02,283.08");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=102.84,215.03");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=138.84,224.21");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=160.10,208.11");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=178.70,259.42");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=188.28,356.29");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=107.57,110.65");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=141.54,95.88");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=242.12,170.13");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=198.69,114.68");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=225.89,167.03");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=287.73,209.75");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=195.78,241.34");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=188.56,167.41");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=209.07,212.26");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=70.09,295.75");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=130.79,249.68");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=40.43,210.26");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=108.34,163.58");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=104.76,246.25");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=208.91,126.26");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=82.56,259.02");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=242.80,289.66");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=112.15,19.59");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=177.69,124.96");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=250.36,113.84");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=300.09,213.24");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=244.38,215.80");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=221.20,256.43");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=212.17,195.61");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=191.05,272.60");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=148.00,217.00");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=78.28,307.28");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=135.45,286.89");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=98.43,310.16");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=71.21,285.73");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=218.00,274.46");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=159.40,186.90");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=149.65,334.95");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=157.20,298.97");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=96.16,146.04");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=79.64,182.85");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=229.49,89.71");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=283.99,63.86");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=309.71,141.38");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=326.37,224.00");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=249.18,199.85");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=148.24,169.61");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=202.53,165.40");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=118.09,288.26");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=25.12,326.27");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=141.20,265.73");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=53.44,214.78");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=150.03,203.96");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=200.01,180.88");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=166.36,264.88");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=168.56,361.48");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=50.73,56.15");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=168.16,137.51");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=227.36,147.00");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=292.53,137.28");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=227.71,200.98");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=200.47,223.64");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=237.11,281.41");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=255.88,230.25");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=199.99,252.60");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=108.92,190.33");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=74.76,224.97");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=103.91,273.22");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=156.33,158.04");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=117.55,156.89");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=196.63,296.49");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=155.51,226.55");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=199.27,313.70");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=79.59,78.12");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=121.25,79.82");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=246.72,96.94");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=350.44,95.76");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=240.08,229.06");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=164.42,306.90");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=176.50,227.22");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=245.35,182.47");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=171.76,197.27");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=99.72,228.77");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=57.21,319.76");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=128.19,216.78");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=87.40,215.88");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=130.76,141.99");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=125.04,206.51");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=99.89,297.79");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=129.72,383.96");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=124.64,35.00");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=135.31,130.46");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=256.17,138.03");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=356.94,142.51");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=298.16,246.86");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=282.00,236.12");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=279.73,185.89");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=269.93,208.47");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=138.64,202.81");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=174.19,173.50");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=124.60,302.52");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=126.20,262.10");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=90.45,196.58");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=152.19,253.12");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=164.32,117.90");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=205.84,350.55");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=218.14,377.08");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=78.60,111.79");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=114.39,71.05");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=264.27,156.51");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=341.37,156.42");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=259.80,180.56");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=322.93,275.22");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=210.08,232.56");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=263.84,267.83");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=140.69,251.32");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=168.64,215.98");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=141.24,278.25");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=48.82,298.06");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=50.18,277.44");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=182.08,213.72");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=122.82,275.60");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=203.51,280.37");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=250.96,375.96");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=127.93,164.81");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=173.88,30.70");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=218.73,62.91");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=270.97,128.02");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=329.63,182.46");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=213.04,314.76");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=298.07,164.76");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=284.96,283.77");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=179.64,147.15");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=120.64,241.92");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=107.06,263.27");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=180.79,286.81");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=40.57,180.08");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=189.69,251.11");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=202.35,200.15");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=207.96,300.59");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=156.02,389.56");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=148.49,110.95");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=148.90,136.33");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=264.21,91.54");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=342.07,118.68");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=195.94,128.32");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=202.90,263.44");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=169.11,249.11");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=274.80,145.66");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=170.85,187.26");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=74.78,249.95");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=87.02,351.99");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=39.63,353.67");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=98.02,124.54");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=108.93,202.16");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=210.51,243.43");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=194.21,339.49");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=177.36,328.74");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=62.69,108.10");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=104.79,152.39");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=247.14,127.35");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=221.22,99.02");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=266.90,250.30");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=225.42,340.11");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=219.18,236.92");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=234.85,177.31");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=192.66,149.57");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=112.28,307.91");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=85.66,284.46");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=85.69,240.13");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=77.92,147.57");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=212.78,179.76");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=255.64,207.93");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=163.31,282.27");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=166.40,344.74");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=5.57,97.82");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=187.18,101.19");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=279.46,45.16");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=309.80,76.38");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=320.93,254.96");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=263.26,286.12");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=232.74,103.92");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=219.37,224.93");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=214.85,141.46");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=66.70,216.52");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=62.19,251.81");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=130.75,194.44");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=58.88,178.26");
    }

}

