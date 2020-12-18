
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn12_4
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
        @display("p=194.13,304.67");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=182.23,398.46");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=210.47,395.07");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=214.28,379.09");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=207.53,309.40");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=226.66,344.80");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=173.53,346.55");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=195.81,278.43");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=171.42,213.83");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=169.38,230.59");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=206.41,197.92");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=303.16,201.06");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=286.75,229.37");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=340.75,222.63");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=397.69,202.31");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=380.07,176.00");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=111.47,341.84");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=187.72,320.77");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=166.30,395.05");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=184.44,346.16");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=191.10,357.83");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=202.07,292.18");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=222.37,321.58");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=152.13,322.35");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=274.96,309.64");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=224.48,159.15");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=190.38,235.58");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=177.71,177.99");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=358.19,268.88");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=299.29,307.52");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=317.51,220.64");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=365.48,232.27");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=389.82,185.27");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=111.78,240.55");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=257.97,257.98");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=158.80,378.25");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=234.51,392.30");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=283.75,391.06");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=139.93,251.02");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=189.23,291.42");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=155.95,306.17");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=192.75,266.41");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=237.21,142.86");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=76.45,204.07");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=204.13,239.87");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=293.47,208.70");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=264.08,317.10");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=379.60,303.07");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=379.68,196.82");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=383.17,159.95");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=166.96,284.48");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=264.53,239.11");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=191.44,382.59");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=138.93,398.34");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=254.02,315.12");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=224.90,302.30");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=256.86,338.01");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=174.66,314.30");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=145.43,283.12");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=93.30,153.93");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=179.44,231.91");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=187.12,185.10");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=257.79,228.36");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=363.96,207.69");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=333.98,199.12");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=371.31,157.14");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=350.50,158.72");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=96.73,324.01");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=219.55,277.00");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=148.29,376.85");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=256.94,371.15");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=275.96,380.88");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=122.22,335.98");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=298.88,356.97");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=84.59,366.02");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=157.08,264.15");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=176.65,194.34");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=154.64,176.99");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=200.26,179.84");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=277.75,147.38");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=288.24,285.96");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=331.44,258.35");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=335.91,172.87");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=309.55,178.35");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=16.01,280.41");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=221.22,290.84");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=123.42,383.36");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=174.35,364.26");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=201.48,366.59");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=243.57,361.48");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=266.11,366.72");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=129.98,316.60");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=290.86,272.70");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=213.58,262.82");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=149.59,230.80");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=214.13,214.72");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=350.26,218.92");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=274.03,188.33");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=320.35,311.35");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=387.72,213.64");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=387.56,145.13");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=104.06,311.34");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=237.89,342.86");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=156.30,389.41");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=233.91,377.21");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=133.72,373.11");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=285.63,303.44");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=314.49,354.74");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=131.30,270.42");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=179.00,287.96");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=124.34,179.81");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=159.72,221.55");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=238.62,261.81");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=256.18,154.53");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=312.54,255.56");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=354.09,256.36");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=389.73,105.01");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=299.88,119.16");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=149.31,293.98");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=241.78,276.47");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=99.96,378.86");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=135.25,355.70");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=247.54,345.63");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=283.59,372.05");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=295.10,379.30");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=141.91,342.58");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=161.44,366.94");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=232.16,236.97");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=162.35,138.07");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=172.07,116.86");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=381.70,249.56");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=287.82,135.87");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=314.33,203.99");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=391.18,241.82");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=363.66,78.49");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=66.19,363.03");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=248.66,265.91");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=178.21,325.30");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=278.53,338.47");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=260.14,299.85");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=196.99,223.05");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=250.03,382.32");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=253.96,358.28");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=167.48,336.02");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=132.72,185.93");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=234.90,287.60");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=252.93,275.66");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=335.12,138.76");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=330.20,284.59");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=359.90,280.28");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=302.92,229.80");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=362.63,164.24");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=59.69,311.62");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=173.98,387.56");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=147.68,356.62");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=266.76,347.59");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=211.93,353.96");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=207.55,336.66");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=168.51,322.63");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=243.19,308.77");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=172.66,297.45");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=146.62,204.31");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=243.49,210.09");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=133.33,233.14");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=287.28,194.42");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=289.54,262.75");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=315.93,189.87");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=326.60,179.90");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=328.23,161.78");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=124.74,304.81");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=181.76,270.45");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=159.78,353.97");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=152.34,398.63");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=222.24,369.80");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=269.87,264.16");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=312.30,343.74");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=158.77,342.75");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=204.33,258.74");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=193.53,198.43");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=113.55,285.29");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=153.97,159.05");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=208.69,224.88");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=323.91,268.35");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=333.83,321.72");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=343.68,268.45");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=360.69,191.03");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=101.84,348.20");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=138.90,381.90");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=249.53,330.90");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=111.65,389.78");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=179.40,377.26");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=293.04,325.27");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=234.31,317.77");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=234.55,327.77");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=197.34,316.92");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=168.56,267.48");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=132.63,154.79");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=268.43,212.04");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=295.29,186.63");
    }

}

