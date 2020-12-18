
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
        @display("p=188.24,329.02");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=195.94,320.20");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=274.49,350.36");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=295.13,352.72");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=293.59,393.41");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=309.62,361.10");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=376.26,320.58");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=343.22,336.18");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=309.06,335.20");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=262.92,325.13");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=206.31,330.11");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=144.70,388.85");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=85.94,372.25");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=104.37,385.34");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=93.55,399.51");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=133.56,367.81");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=158.40,343.47");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=144.97,350.28");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=123.31,393.83");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=158.93,322.40");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=207.47,257.68");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=219.05,206.23");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=250.62,194.56");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=227.09,220.63");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=170.80,265.80");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=220.01,237.09");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=214.04,160.84");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=246.11,136.98");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=291.89,148.00");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=364.17,192.81");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=389.07,219.06");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=383.76,241.72");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=372.79,181.89");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=342.26,276.46");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=352.83,229.78");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=293.72,266.18");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=339.04,254.45");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=273.78,202.13");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=286.48,189.78");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=303.90,194.60");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=325.04,282.76");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=330.20,268.76");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=293.68,178.54");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=278.24,235.38");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=257.36,264.33");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=255.53,283.52");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=246.48,255.96");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=293.39,249.46");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=340.55,208.72");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=96.37,230.77");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=182.06,380.39");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=267.39,285.26");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=336.22,295.43");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=344.03,398.69");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=300.70,328.37");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=226.82,394.64");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=389.95,302.05");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=326.40,359.86");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=272.14,313.02");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=359.96,338.12");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=285.10,304.72");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=227.01,369.70");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=63.76,356.31");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=193.49,354.96");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=140.39,340.79");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=120.62,373.04");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=135.87,324.63");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=174.08,365.04");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=187.29,371.27");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=240.02,307.63");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=294.27,232.47");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=305.94,161.13");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=330.37,158.79");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=262.02,194.38");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=144.36,279.72");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=175.55,204.43");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=144.50,90.78");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=193.76,59.52");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=346.15,184.33");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=380.85,159.56");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=310.01,279.94");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=315.77,288.55");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=353.07,166.13");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=316.97,254.53");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=388.24,151.84");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=308.93,302.21");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=310.65,226.19");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=283.76,172.68");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=329.37,138.19");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=335.98,171.57");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=278.36,265.72");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=353.26,279.17");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=320.33,127.29");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=314.43,194.49");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=218.75,320.73");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=285.31,322.10");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=283.77,226.39");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=304.92,254.86");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=359.08,176.17");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=122.58,321.20");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=177.03,335.90");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=177.14,281.08");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=277.06,369.95");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=225.57,352.30");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=243.29,370.10");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=368.09,328.64");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=355.57,302.63");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=332.39,369.56");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=368.36,376.09");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=254.07,245.00");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=132.68,388.66");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=163.37,387.83");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=14.94,392.40");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=112.11,356.36");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=117.09,338.47");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=100.89,363.37");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=177.97,304.44");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=169.88,328.25");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=57.91,384.52");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=148.61,333.69");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=237.02,221.86");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=244.74,181.26");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=263.58,147.28");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=163.17,226.47");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=214.16,349.22");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=186.61,293.38");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=217.92,126.34");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=155.60,117.28");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=265.30,209.80");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=329.17,205.48");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=397.43,138.80");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=359.65,212.83");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=357.38,202.89");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=261.63,273.99");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=377.52,257.29");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=313.20,266.72");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=375.20,231.09");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=243.43,160.39");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=339.69,152.18");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=317.25,158.93");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=376.19,197.64");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=304.74,291.07");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=273.94,166.52");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=215.51,284.82");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=240.56,267.74");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=207.04,308.08");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=287.91,240.33");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=362.31,235.72");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=271.22,247.36");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=109.36,276.73");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=130.32,350.52");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=144.03,269.19");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=264.19,343.60");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=388.30,351.91");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=319.87,382.79");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=280.00,285.04");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=366.55,358.17");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=399.27,271.58");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=249.25,356.72");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=199.30,263.89");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=228.39,313.76");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=109.15,395.96");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=85.79,345.47");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=103.85,343.45");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=63.87,337.33");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=137.89,309.00");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=181.14,267.20");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=118.25,263.44");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=191.35,396.91");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=188.86,253.63");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=200.92,244.39");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=121.35,188.10");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=190.70,195.30");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=194.09,273.49");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=171.58,354.01");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=237.50,238.05");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=172.93,100.07");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=203.62,152.96");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=309.72,58.20");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=395.66,195.65");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=379.49,214.72");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=362.11,248.12");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=359.10,145.99");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=321.45,310.71");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=320.01,221.79");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=235.01,295.66");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=274.14,296.81");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=222.62,166.10");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=282.26,254.70");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=355.90,112.37");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=297.76,299.69");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=317.00,237.96");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=234.02,166.05");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=266.83,234.45");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=247.31,232.75");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=207.04,275.32");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=229.60,199.13");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=335.66,306.34");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=342.84,265.89");
    }

}

