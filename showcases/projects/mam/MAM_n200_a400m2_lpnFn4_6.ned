
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn4_6
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
        @display("p=77.31,251.97");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=29.28,242.47");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=29.95,196.97");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=13.32,143.86");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=25.82,148.58");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=39.81,160.28");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=4.90,188.39");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=3.93,96.20");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=43.08,9.23");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=73.60,65.51");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=97.86,68.49");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=116.25,78.23");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=174.69,145.92");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=195.61,62.65");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=269.66,38.97");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=211.19,38.49");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=245.46,116.55");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=297.44,170.96");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=368.56,167.89");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=392.77,179.36");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=352.05,158.36");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=307.84,146.83");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=242.02,155.29");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=299.85,223.93");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=322.86,129.60");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=340.26,143.80");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=288.65,148.88");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=237.75,139.42");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=332.39,202.54");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=371.35,132.14");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=274.07,98.54");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=252.88,82.15");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=276.69,16.34");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=339.56,62.24");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=349.46,22.08");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=335.07,0.44");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=395.83,17.90");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=382.44,16.50");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=351.58,77.30");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=345.56,85.50");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=364.20,80.01");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=320.41,46.74");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=369.51,0.62");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=365.29,9.98");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=359.00,59.25");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=327.33,68.50");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=302.04,130.85");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=310.54,118.30");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=225.65,78.66");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=76.78,220.35");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=75.82,168.00");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=88.93,188.94");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=49.28,107.53");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=34.63,140.15");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=72.18,109.97");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=17.18,167.58");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=62.99,208.51");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=3.04,58.16");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=90.24,60.25");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=60.04,71.89");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=133.25,91.97");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=108.47,23.04");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=177.77,173.39");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=196.06,103.30");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=215.66,54.95");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=190.54,28.86");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=263.95,58.75");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=346.07,227.53");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=376.41,249.72");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=386.04,191.54");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=331.55,168.90");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=255.02,121.00");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=233.65,228.60");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=282.59,221.95");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=388.05,160.09");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=271.20,209.77");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=345.33,183.13");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=226.99,148.48");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=318.78,140.23");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=373.59,152.18");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=253.62,57.52");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=263.17,17.52");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=314.20,64.31");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=326.35,19.96");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=356.09,35.17");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=287.75,65.77");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=367.90,20.61");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=383.27,3.04");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=308.73,31.87");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=308.26,73.22");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=362.98,68.88");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=289.63,103.54");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=354.23,2.87");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=295.65,19.91");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=380.53,63.93");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=345.73,98.67");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=224.56,115.61");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=302.97,41.84");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=194.73,82.05");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=50.65,264.13");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=153.53,203.26");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=2.85,225.02");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=21.50,121.80");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=47.26,220.75");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=54.29,153.28");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=73.65,187.63");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=75.63,123.33");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=53.84,38.27");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=11.55,38.74");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=77.14,55.41");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=103.26,90.73");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=151.89,92.92");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=168.55,224.26");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=228.40,53.22");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=308.53,100.80");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=148.63,1.37");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=330.59,104.40");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=272.37,183.31");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=396.93,258.08");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=385.99,170.85");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=358.85,223.52");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=286.16,160.00");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=289.53,120.87");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=323.61,314.69");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=308.36,170.66");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=392.01,93.81");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=341.44,124.32");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=174.40,158.00");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=329.44,241.21");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=380.96,142.35");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=206.97,114.41");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=264.18,69.79");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=315.84,5.15");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=345.07,48.32");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=256.65,45.95");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=330.44,81.22");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=395.88,5.47");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=391.36,33.24");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=285.25,39.72");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=359.97,115.29");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=275.54,60.84");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=302.01,56.72");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=375.57,86.95");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=306.30,87.16");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=370.88,33.63");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=275.65,123.50");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=321.22,111.63");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=320.52,152.21");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=188.10,13.03");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=79.91,301.20");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=145.94,239.64");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=87.56,177.84");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=111.63,181.75");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=3.63,151.22");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=38.44,123.13");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=78.06,81.59");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=3.78,267.91");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=12.69,81.99");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=2.17,16.43");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=91.56,44.33");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=137.48,11.45");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=125.46,84.73");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=101.59,141.30");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=210.54,126.60");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=272.21,49.54");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=191.48,94.07");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=263.65,191.56");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=355.95,146.76");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=392.90,144.95");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=329.21,181.02");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=347.23,132.70");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=378.13,111.55");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=269.23,146.20");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=271.39,230.38");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=290.05,54.39");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=319.38,101.50");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=367.55,99.49");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=214.54,186.81");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=336.63,250.26");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=313.46,182.40");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=354.79,104.35");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=240.71,99.26");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=259.26,102.71");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=305.39,5.99");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=336.16,27.57");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=319.89,87.03");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=306.94,16.50");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=380.78,29.64");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=397.13,76.26");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=261.49,87.84");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=282.86,93.57");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=246.75,68.31");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=388.02,54.98");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=398.33,61.25");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=398.56,108.44");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=319.96,36.60");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=251.89,92.11");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=242.69,55.65");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=176.35,29.00");
    }

}

