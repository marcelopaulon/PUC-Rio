
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn1-4
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
        @display("p=296.00,118.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=336.45,108.84");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=358.89,29.61");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=338.90,14.53");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=361.22,4.32");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=373.86,90.44");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=295.08,138.28");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=313.44,142.72");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=297.06,87.80");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=261.96,163.92");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=351.57,102.63");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=268.62,155.45");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=212.02,157.67");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=293.39,170.25");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=345.37,200.94");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=343.73,173.06");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=394.68,164.58");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=324.12,117.82");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=322.90,75.45");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=284.04,45.23");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=294.88,53.88");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=344.36,135.68");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=361.51,151.19");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=343.43,185.72");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=318.69,191.92");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=313.68,274.75");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=284.86,270.54");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=328.39,226.16");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=266.58,241.18");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=235.75,276.22");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=238.09,266.34");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=266.57,300.66");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=230.44,253.24");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=199.88,298.36");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=178.15,368.50");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=131.92,291.86");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=50.53,329.22");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=73.42,364.85");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=121.34,308.75");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=93.99,280.61");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=58.62,241.04");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=76.65,316.43");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=132.57,277.25");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=152.56,322.10");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=102.60,285.78");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=36.70,250.01");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=47.62,229.81");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=22.73,265.52");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=85.79,321.93");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=109.02,307.65");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=55.64,259.40");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=133.51,207.87");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=121.01,203.24");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=108.48,208.07");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=87.46,155.89");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=156.83,163.09");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=138.87,164.97");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=77.43,212.63");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=112.65,161.90");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=44.17,208.02");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=56.29,218.46");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=77.82,291.26");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=133.41,361.07");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=119.52,324.54");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=168.66,273.53");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=162.94,216.86");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=242.00,161.24");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=193.40,110.74");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=189.68,128.99");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=207.24,121.99");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=282.11,139.56");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=232.14,156.42");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=313.10,167.01");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=293.77,200.06");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=362.74,169.62");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=368.53,261.61");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=299.81,247.83");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=363.76,188.71");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=333.66,198.29");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=264.94,197.98");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=335.31,157.07");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=377.01,148.56");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=349.87,159.75");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=385.39,231.57");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=388.24,106.37");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=305.04,150.03");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=286.37,155.69");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=265.41,175.48");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=249.70,211.34");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=263.83,144.60");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=300.58,45.01");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=341.42,4.35");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=357.95,72.77");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=368.79,25.19");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=321.02,14.32");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=306.30,13.49");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=231.45,17.77");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=196.35,77.75");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=213.69,107.80");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=300.05,67.68");
    }

    host_fn_rly_101: <default("SensorNode")> like INetworkNode {
        @display("p=214.03,51.56");
    }

    host_fn_rly_102: <default("SensorNode")> like INetworkNode {
        @display("p=284.51,10.21");
    }

    host_fn_rly_103: <default("SensorNode")> like INetworkNode {
        @display("p=226.32,72.37");
    }

    host_fn_rly_104: <default("SensorNode")> like INetworkNode {
        @display("p=188.27,58.57");
    }

    host_fn_rly_105: <default("SensorNode")> like INetworkNode {
        @display("p=182.10,5.73");
    }

    host_fn_rly_106: <default("SensorNode")> like INetworkNode {
        @display("p=146.93,80.38");
    }

    host_fn_rly_107: <default("SensorNode")> like INetworkNode {
        @display("p=234.23,86.46");
    }

    host_fn_rly_108: <default("SensorNode")> like INetworkNode {
        @display("p=198.89,209.58");
    }

    host_fn_rly_109: <default("SensorNode")> like INetworkNode {
        @display("p=213.40,293.92");
    }

    host_fn_rly_110: <default("SensorNode")> like INetworkNode {
        @display("p=143.68,328.73");
    }

    host_fn_rly_111: <default("SensorNode")> like INetworkNode {
        @display("p=114.61,357.51");
    }

    host_fn_rly_112: <default("SensorNode")> like INetworkNode {
        @display("p=121.43,338.43");
    }

    host_fn_rly_113: <default("SensorNode")> like INetworkNode {
        @display("p=151.39,282.76");
    }

    host_fn_rly_114: <default("SensorNode")> like INetworkNode {
        @display("p=64.49,318.76");
    }

    host_fn_rly_115: <default("SensorNode")> like INetworkNode {
        @display("p=146.34,360.84");
    }

    host_fn_rly_116: <default("SensorNode")> like INetworkNode {
        @display("p=205.41,367.88");
    }

    host_fn_rly_117: <default("SensorNode")> like INetworkNode {
        @display("p=240.47,330.12");
    }

    host_fn_rly_118: <default("SensorNode")> like INetworkNode {
        @display("p=221.43,317.48");
    }

    host_fn_rly_119: <default("SensorNode")> like INetworkNode {
        @display("p=227.97,303.08");
    }

    host_fn_rly_120: <default("SensorNode")> like INetworkNode {
        @display("p=272.44,331.06");
    }

    host_fn_rly_121: <default("SensorNode")> like INetworkNode {
        @display("p=289.11,220.95");
    }

    host_fn_rly_122: <default("SensorNode")> like INetworkNode {
        @display("p=301.51,179.96");
    }

    host_fn_rly_123: <default("SensorNode")> like INetworkNode {
        @display("p=342.29,263.47");
    }

    host_fn_rly_124: <default("SensorNode")> like INetworkNode {
        @display("p=383.85,322.44");
    }

    host_fn_rly_125: <default("SensorNode")> like INetworkNode {
        @display("p=396.09,319.43");
    }

    host_fn_rly_126: <default("SensorNode")> like INetworkNode {
        @display("p=327.19,299.98");
    }

    host_fn_rly_127: <default("SensorNode")> like INetworkNode {
        @display("p=385.90,299.50");
    }

    host_fn_rly_128: <default("SensorNode")> like INetworkNode {
        @display("p=387.96,335.01");
    }

    host_fn_rly_129: <default("SensorNode")> like INetworkNode {
        @display("p=303.70,356.55");
    }

    host_fn_rly_130: <default("SensorNode")> like INetworkNode {
        @display("p=335.94,398.48");
    }

    host_fn_rly_131: <default("SensorNode")> like INetworkNode {
        @display("p=363.04,373.38");
    }

    host_fn_rly_132: <default("SensorNode")> like INetworkNode {
        @display("p=298.66,369.79");
    }

    host_fn_rly_133: <default("SensorNode")> like INetworkNode {
        @display("p=266.29,344.26");
    }

    host_fn_rly_134: <default("SensorNode")> like INetworkNode {
        @display("p=302.34,386.84");
    }

    host_fn_rly_135: <default("SensorNode")> like INetworkNode {
        @display("p=227.80,346.47");
    }

    host_fn_rly_136: <default("SensorNode")> like INetworkNode {
        @display("p=252.79,355.61");
    }

    host_fn_rly_137: <default("SensorNode")> like INetworkNode {
        @display("p=263.46,362.00");
    }

    host_fn_rly_138: <default("SensorNode")> like INetworkNode {
        @display("p=246.93,365.22");
    }

    host_fn_rly_139: <default("SensorNode")> like INetworkNode {
        @display("p=293.27,332.84");
    }

    host_fn_rly_140: <default("SensorNode")> like INetworkNode {
        @display("p=283.97,303.02");
    }

    host_fn_rly_141: <default("SensorNode")> like INetworkNode {
        @display("p=303.73,292.56");
    }

    host_fn_rly_142: <default("SensorNode")> like INetworkNode {
        @display("p=230.06,284.60");
    }

    host_fn_rly_143: <default("SensorNode")> like INetworkNode {
        @display("p=199.05,228.90");
    }

    host_fn_rly_144: <default("SensorNode")> like INetworkNode {
        @display("p=278.98,373.42");
    }

    host_fn_rly_145: <default("SensorNode")> like INetworkNode {
        @display("p=348.62,305.05");
    }

    host_fn_rly_146: <default("SensorNode")> like INetworkNode {
        @display("p=178.09,349.95");
    }

    host_fn_rly_147: <default("SensorNode")> like INetworkNode {
        @display("p=194.40,398.63");
    }

    host_fn_rly_148: <default("SensorNode")> like INetworkNode {
        @display("p=225.48,391.53");
    }

    host_fn_rly_149: <default("SensorNode")> like INetworkNode {
        @display("p=159.35,399.46");
    }

    host_fn_rly_150: <default("SensorNode")> like INetworkNode {
        @display("p=179.66,324.84");
    }

    host_fn_rly_151: <default("SensorNode")> like INetworkNode {
        @display("p=181.41,283.58");
    }

    host_fn_rly_152: <default("SensorNode")> like INetworkNode {
        @display("p=188.34,380.20");
    }

    host_fn_rly_153: <default("SensorNode")> like INetworkNode {
        @display("p=145.24,341.54");
    }

    host_fn_rly_154: <default("SensorNode")> like INetworkNode {
        @display("p=182.12,266.58");
    }

    host_fn_rly_155: <default("SensorNode")> like INetworkNode {
        @display("p=100.02,270.84");
    }

    host_fn_rly_156: <default("SensorNode")> like INetworkNode {
        @display("p=148.04,264.86");
    }

    host_fn_rly_157: <default("SensorNode")> like INetworkNode {
        @display("p=94.92,196.27");
    }

    host_fn_rly_158: <default("SensorNode")> like INetworkNode {
        @display("p=48.73,185.49");
    }

    host_fn_rly_159: <default("SensorNode")> like INetworkNode {
        @display("p=77.78,91.26");
    }

    host_fn_rly_160: <default("SensorNode")> like INetworkNode {
        @display("p=119.65,136.37");
    }

    host_fn_rly_161: <default("SensorNode")> like INetworkNode {
        @display("p=67.37,119.85");
    }

    host_fn_rly_162: <default("SensorNode")> like INetworkNode {
        @display("p=48.04,130.75");
    }

    host_fn_rly_163: <default("SensorNode")> like INetworkNode {
        @display("p=58.25,138.26");
    }

    host_fn_rly_164: <default("SensorNode")> like INetworkNode {
        @display("p=28.09,130.83");
    }

    host_fn_rly_165: <default("SensorNode")> like INetworkNode {
        @display("p=64.40,146.39");
    }

    host_fn_rly_166: <default("SensorNode")> like INetworkNode {
        @display("p=9.88,150.97");
    }

    host_fn_rly_167: <default("SensorNode")> like INetworkNode {
        @display("p=42.91,102.77");
    }

    host_fn_rly_168: <default("SensorNode")> like INetworkNode {
        @display("p=36.26,146.27");
    }

    host_fn_rly_169: <default("SensorNode")> like INetworkNode {
        @display("p=3.75,111.99");
    }

    host_fn_rly_170: <default("SensorNode")> like INetworkNode {
        @display("p=6.23,188.62");
    }

    host_fn_rly_171: <default("SensorNode")> like INetworkNode {
        @display("p=12.22,224.32");
    }

    host_fn_rly_172: <default("SensorNode")> like INetworkNode {
        @display("p=1.02,224.82");
    }

    host_fn_rly_173: <default("SensorNode")> like INetworkNode {
        @display("p=37.71,273.57");
    }

    host_fn_rly_174: <default("SensorNode")> like INetworkNode {
        @display("p=72.05,221.72");
    }

    host_fn_rly_175: <default("SensorNode")> like INetworkNode {
        @display("p=31.08,310.06");
    }

    host_fn_rly_176: <default("SensorNode")> like INetworkNode {
        @display("p=48.31,277.73");
    }

    host_fn_rly_177: <default("SensorNode")> like INetworkNode {
        @display("p=102.57,219.77");
    }

    host_fn_rly_178: <default("SensorNode")> like INetworkNode {
        @display("p=75.83,194.88");
    }

    host_fn_rly_179: <default("SensorNode")> like INetworkNode {
        @display("p=66.11,233.40");
    }

    host_fn_rly_180: <default("SensorNode")> like INetworkNode {
        @display("p=98.40,299.95");
    }

    host_fn_rly_181: <default("SensorNode")> like INetworkNode {
        @display("p=20.09,302.26");
    }

    host_fn_rly_182: <default("SensorNode")> like INetworkNode {
        @display("p=43.47,317.32");
    }

    host_fn_rly_183: <default("SensorNode")> like INetworkNode {
        @display("p=10.59,287.20");
    }

    host_fn_rly_184: <default("SensorNode")> like INetworkNode {
        @display("p=48.20,249.64");
    }

    host_fn_rly_185: <default("SensorNode")> like INetworkNode {
        @display("p=10.25,335.83");
    }

    host_fn_rly_186: <default("SensorNode")> like INetworkNode {
        @display("p=39.04,376.38");
    }

    host_fn_rly_187: <default("SensorNode")> like INetworkNode {
        @display("p=52.79,384.94");
    }

    host_fn_rly_188: <default("SensorNode")> like INetworkNode {
        @display("p=16.17,379.67");
    }

    host_fn_rly_189: <default("SensorNode")> like INetworkNode {
        @display("p=34.41,354.39");
    }

    host_fn_rly_190: <default("SensorNode")> like INetworkNode {
        @display("p=38.18,334.81");
    }

    host_fn_rly_191: <default("SensorNode")> like INetworkNode {
        @display("p=12.49,358.55");
    }

    host_fn_rly_192: <default("SensorNode")> like INetworkNode {
        @display("p=19.66,341.53");
    }

    host_fn_rly_193: <default("SensorNode")> like INetworkNode {
        @display("p=29.54,286.97");
    }

    host_fn_rly_194: <default("SensorNode")> like INetworkNode {
        @display("p=69.88,337.60");
    }

    host_fn_rly_195: <default("SensorNode")> like INetworkNode {
        @display("p=142.17,377.79");
    }

    host_fn_rly_196: <default("SensorNode")> like INetworkNode {
        @display("p=152.03,386.57");
    }

    host_fn_rly_197: <default("SensorNode")> like INetworkNode {
        @display("p=165.67,343.89");
    }

    host_fn_rly_198: <default("SensorNode")> like INetworkNode {
        @display("p=174.80,386.00");
    }

    host_fn_rly_199: <default("SensorNode")> like INetworkNode {
        @display("p=134.70,388.21");
    }

    host_fn_rly_200: <default("SensorNode")> like INetworkNode {
        @display("p=212.06,398.62");
    }

}

