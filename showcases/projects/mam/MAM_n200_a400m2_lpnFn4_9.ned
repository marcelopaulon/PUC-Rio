
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn4_9
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
        @display("p=184.47,351.54");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=181.02,323.58");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=192.60,326.50");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=205.47,361.95");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=228.11,340.89");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=286.34,395.91");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=269.60,354.92");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=289.22,381.29");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=318.61,310.77");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=342.72,328.69");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=322.61,294.90");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=329.90,326.80");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=328.18,383.06");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=351.75,375.48");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=317.61,377.30");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=366.00,373.36");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=367.49,360.88");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=354.30,308.38");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=357.36,276.07");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=368.45,227.84");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=367.03,197.49");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=323.45,201.72");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=337.22,120.59");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=375.22,137.59");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=351.90,111.14");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=391.11,91.43");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=344.24,101.65");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=361.66,173.25");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=392.96,166.37");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=319.76,26.27");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=251.28,48.12");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=244.45,56.10");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=262.63,9.72");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=227.36,42.53");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=179.33,26.33");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=173.97,43.82");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=218.60,60.17");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=175.50,102.81");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=191.80,136.04");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=210.46,202.66");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=195.85,190.06");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=140.70,216.69");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=146.49,198.39");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=118.58,201.52");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=168.03,175.94");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=132.84,168.15");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=92.13,240.67");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=67.72,216.92");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=41.98,189.99");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=74.72,227.39");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=165.82,390.64");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=100.87,374.47");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=163.78,367.74");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=196.18,376.18");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=227.55,279.93");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=279.10,387.11");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=303.15,339.79");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=294.92,332.66");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=250.33,249.41");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=389.34,363.14");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=364.24,265.58");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=328.70,340.05");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=322.98,360.13");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=397.46,336.48");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=310.56,355.15");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=327.51,398.14");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=276.83,341.95");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=372.96,297.69");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=398.33,311.80");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=387.00,271.39");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=359.02,141.38");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=307.80,152.17");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=334.03,98.49");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=346.86,53.78");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=395.68,113.11");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=359.13,101.38");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=284.96,124.57");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=343.04,183.38");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=380.84,197.66");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=380.65,101.98");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=251.39,37.49");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=220.84,2.49");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=272.92,12.67");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=243.63,109.36");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=222.76,19.44");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=165.55,26.57");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=256.94,112.77");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=124.81,55.54");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=156.75,208.92");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=278.94,216.44");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=226.67,118.48");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=126.48,232.37");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=96.11,168.95");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=25.88,197.87");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=75.49,147.76");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=200.80,111.38");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=125.07,275.45");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=34.00,124.18");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=49.44,230.79");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=93.37,262.26");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=154.42,284.64");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=179.25,334.02");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=276.75,272.59");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=195.56,342.34");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=208.78,340.01");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=290.60,368.72");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=294.14,296.83");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=270.75,368.25");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=280.33,254.81");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=356.95,342.77");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=297.46,266.77");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=375.61,325.05");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=336.02,294.61");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=368.35,312.56");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=265.72,386.83");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=376.70,373.27");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=314.27,327.93");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=304.54,249.74");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=336.99,237.20");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=362.24,236.64");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=317.35,239.39");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=302.88,235.46");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=362.02,83.29");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=346.17,207.83");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=387.22,145.86");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=328.19,145.99");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=369.83,47.04");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=336.01,175.80");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=372.48,111.19");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=370.16,32.75");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=237.74,96.91");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=208.23,99.75");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=352.74,23.83");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=161.78,46.12");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=152.91,5.69");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=132.37,100.77");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=263.02,21.35");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=217.92,83.79");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=123.06,88.57");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=206.79,176.71");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=243.12,274.70");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=212.70,233.77");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=170.16,216.63");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=59.30,190.35");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=195.36,214.98");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=188.99,147.85");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=119.42,250.27");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=66.10,279.61");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=22.61,228.75");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=110.74,302.61");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=168.41,351.09");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=202.58,250.67");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=284.86,332.56");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=258.57,373.40");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=230.97,247.46");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=304.71,302.93");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=277.10,313.28");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=299.20,387.58");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=314.13,340.90");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=301.73,376.35");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=343.64,309.81");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=294.69,353.82");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=391.56,383.77");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=346.50,365.99");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=356.76,363.10");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=313.68,392.39");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=355.99,324.72");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=375.29,285.40");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=332.80,275.07");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=398.51,147.30");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=346.03,222.86");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=322.88,248.48");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=328.30,125.21");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=314.28,170.57");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=325.45,103.64");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=340.58,131.26");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=320.24,11.93");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=388.40,81.00");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=309.75,198.51");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=353.33,37.03");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=260.08,69.94");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=286.90,15.97");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=310.50,34.12");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=169.32,93.63");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=193.41,48.24");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=122.65,18.33");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=299.41,12.88");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=156.59,93.83");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=202.35,156.36");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=255.81,165.96");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=262.20,197.52");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=131.20,202.73");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=76.26,173.28");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=112.82,288.10");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=250.31,151.06");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=186.67,201.73");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=151.26,186.88");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=14.81,220.10");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=93.50,156.51");
    }

}

