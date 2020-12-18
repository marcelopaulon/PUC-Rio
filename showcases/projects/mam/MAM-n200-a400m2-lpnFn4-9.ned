
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn4-9
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
        @display("p=286.00,268.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=302.45,274.09");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=240.63,234.62");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=234.73,161.43");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=213.84,228.80");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=221.39,236.35");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=219.82,257.62");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=192.92,302.27");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=262.99,275.98");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=285.81,301.36");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=317.18,302.52");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=307.34,319.44");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=242.08,334.55");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=221.22,339.09");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=219.47,387.33");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=160.22,384.35");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=216.57,324.78");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=203.76,243.16");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=228.36,280.78");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=139.63,255.98");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=107.90,188.61");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=160.80,212.85");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=189.18,148.61");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=268.15,136.73");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=258.81,62.78");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=326.83,115.40");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=300.35,30.89");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=376.03,31.35");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=324.62,56.71");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=289.63,93.43");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=366.92,131.32");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=369.90,71.88");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=392.36,11.34");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=358.25,15.68");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=360.81,76.85");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=301.88,75.95");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=381.90,83.58");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=382.86,127.33");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=370.37,114.34");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=362.87,197.83");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=332.04,232.57");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=315.27,216.15");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=297.52,194.60");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=360.42,145.77");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=346.95,145.52");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=254.01,116.99");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=303.53,149.10");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=296.69,122.84");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=277.26,154.14");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=273.59,117.96");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=272.89,257.14");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=326.86,270.25");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=273.02,245.37");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=157.81,128.38");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=208.54,311.47");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=287.35,183.17");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=234.12,259.03");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=235.89,366.96");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=181.72,227.47");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=244.20,389.95");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=300.64,223.13");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=294.97,249.82");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=220.90,246.70");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=301.15,393.32");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=277.39,337.26");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=112.77,339.38");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=195.19,344.95");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=247.52,265.92");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=203.44,335.59");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=80.09,264.09");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=67.92,149.24");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=191.95,284.53");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=156.31,180.61");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=287.36,164.43");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=246.33,7.77");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=354.13,99.33");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=218.44,1.34");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=372.81,49.77");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=323.78,134.61");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=312.35,84.04");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=388.03,152.60");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=385.78,99.50");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=383.94,44.73");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=318.23,0.03");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=392.26,39.17");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=316.66,113.13");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=399.87,166.02");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=321.01,68.80");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=313.28,195.46");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=356.91,176.04");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=301.28,233.99");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=249.22,194.44");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=306.27,206.87");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=352.46,230.97");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=325.03,98.58");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=243.48,86.84");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=282.77,208.97");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=284.79,135.42");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=230.30,108.26");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=223.48,93.38");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=295.81,314.00");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=304.83,351.00");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=153.68,259.09");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=198.21,141.72");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=301.36,260.15");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=250.87,279.46");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=319.51,250.22");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=157.85,395.67");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=259.66,205.29");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=365.84,361.07");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=343.35,240.52");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=311.96,337.60");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=221.20,298.56");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=236.12,288.14");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=154.79,328.97");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=189.19,323.05");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=237.12,350.58");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=175.04,318.09");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=226.24,320.14");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=104.31,224.82");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=93.50,201.90");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=66.82,214.83");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=142.20,83.87");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=223.10,131.02");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=335.28,9.80");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=332.90,155.49");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=227.51,79.62");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=281.13,14.31");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=347.36,112.38");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=316.74,123.40");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=365.48,90.48");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=397.94,87.47");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=396.57,2.07");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=285.98,29.17");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=386.02,141.01");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=272.92,82.49");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=355.14,57.59");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=379.90,160.45");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=350.48,155.86");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=306.35,187.21");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=352.62,303.13");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=279.84,236.13");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=338.31,250.65");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=377.49,227.30");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=339.69,72.00");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=211.02,86.30");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=247.31,214.63");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=371.66,181.85");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=307.57,160.19");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=305.88,117.28");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=218.65,197.33");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=279.55,289.78");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=257.25,311.82");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=192.65,179.17");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=205.94,260.26");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=198.88,270.20");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=258.77,175.82");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=211.45,289.75");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=273.62,309.00");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=278.79,225.50");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=375.38,339.68");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=295.78,298.21");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=321.23,314.37");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=206.83,347.52");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=198.41,378.64");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=140.71,384.59");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=146.11,297.02");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=180.37,201.63");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=224.46,375.08");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=135.47,191.46");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=108.26,173.00");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=123.39,161.06");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=166.43,234.74");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=272.00,168.35");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=201.27,109.54");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=253.07,73.17");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=268.56,7.15");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=381.48,59.98");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=323.83,31.13");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=286.12,66.15");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=366.29,102.11");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=311.83,102.29");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=395.92,20.89");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=320.91,41.01");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=340.72,25.08");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=269.87,45.32");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=321.89,153.77");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=340.87,123.36");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=396.34,73.43");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=399.56,271.36");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=379.01,238.17");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=332.20,211.89");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=325.77,177.07");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=370.14,205.34");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=341.74,187.78");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=283.86,119.09");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=290.79,146.46");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=214.54,175.49");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=239.48,117.76");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=274.51,99.55");
    }

}

