
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn4-1
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
        @display("p=398.00,307.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=389.57,247.11");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=367.53,163.24");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=341.40,225.99");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=358.16,321.01");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=360.08,233.49");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=309.27,159.81");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=289.70,112.84");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=302.20,125.25");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=236.43,86.40");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=300.53,97.70");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=222.33,56.61");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=316.29,76.81");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=239.73,66.54");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=242.43,135.79");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=158.26,177.09");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=224.00,207.56");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=228.58,221.32");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=313.79,192.63");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=319.41,202.91");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=253.06,276.31");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=168.85,238.66");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=161.53,279.93");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=160.61,259.59");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=149.66,262.18");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=138.86,308.21");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=78.70,379.44");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=98.82,362.71");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=180.07,333.35");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=94.54,347.69");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=98.51,301.50");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=38.45,350.65");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=3.58,333.36");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=134.57,342.09");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=93.61,265.69");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=44.52,264.49");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=56.26,316.44");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=12.50,250.47");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=94.80,208.76");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=120.94,229.70");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=118.81,275.67");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=111.94,261.30");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=129.85,262.71");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=212.99,294.21");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=192.96,214.10");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=161.75,197.55");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=137.35,220.59");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=90.32,220.21");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=83.17,178.83");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=61.76,183.60");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=375.95,359.45");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=358.58,265.69");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=292.66,169.75");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=282.36,215.78");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=351.13,304.27");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=377.43,315.34");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=386.93,176.54");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=266.59,79.87");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=269.73,195.25");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=195.41,59.88");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=344.18,94.46");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=212.23,100.24");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=350.01,156.70");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=251.77,89.22");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=271.88,226.76");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=147.42,137.35");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=231.30,169.72");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=246.52,188.21");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=343.77,108.67");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=353.40,247.04");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=165.53,316.49");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=225.44,187.41");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=194.12,269.33");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=171.28,262.91");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=204.91,309.51");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=106.03,270.74");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=91.12,384.00");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=115.40,363.32");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=184.63,292.73");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=157.50,353.86");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=102.59,289.75");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=58.75,354.34");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=40.45,395.51");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=138.75,380.98");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=43.90,230.96");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=64.67,277.45");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=33.86,306.36");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=88.57,308.50");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=75.65,148.66");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=61.77,305.43");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=151.70,288.42");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=38.26,219.00");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=123.42,177.81");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=196.86,282.56");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=193.15,258.63");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=145.75,213.98");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=73.83,228.54");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=130.58,276.32");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=12.67,225.03");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=67.89,198.26");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=393.82,229.26");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=369.66,195.99");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=368.02,73.40");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=353.72,222.17");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=305.93,362.14");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=373.22,262.53");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=245.10,175.66");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=278.23,97.64");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=260.03,48.46");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=187.13,34.62");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=311.64,85.96");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=149.62,66.08");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=366.09,52.33");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=170.51,82.60");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=196.48,156.72");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=174.30,129.86");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=181.65,251.21");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=190.98,185.36");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=370.67,233.61");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=331.74,222.00");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=311.80,248.55");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=167.52,213.02");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=164.29,294.68");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=94.63,191.75");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=114.10,211.83");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=154.55,335.04");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=70.52,387.19");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=38.39,336.91");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=141.01,361.00");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=84.72,391.85");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=23.98,358.74");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=38.73,291.48");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=37.99,360.76");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=141.64,320.87");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=79.61,244.13");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=35.29,251.03");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=81.87,284.28");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=18.29,263.73");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=105.64,157.46");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=96.68,320.06");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=113.35,291.01");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=111.02,231.09");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=179.49,238.71");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=229.89,275.33");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=207.95,236.57");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=172.65,191.93");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=144.83,241.63");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=119.32,250.58");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=99.21,178.43");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=138.48,202.38");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=395.12,319.82");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=338.21,196.68");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=387.93,125.31");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=269.88,247.56");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=294.78,259.89");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=296.16,186.96");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=304.62,108.96");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=317.70,105.17");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=339.32,81.31");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=247.65,42.14");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=289.23,82.11");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=177.41,92.95");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=325.47,7.93");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=304.63,30.57");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=275.85,141.34");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=148.01,84.33");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=188.85,173.12");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=181.03,159.74");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=355.53,173.04");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=286.52,195.11");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=254.71,322.94");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=157.41,242.73");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=182.19,276.60");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=125.61,310.71");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=123.31,196.38");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=70.62,353.81");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=120.60,380.56");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=122.00,352.82");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=244.69,360.39");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=90.65,276.09");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=83.12,333.01");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=7.64,390.71");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=7.43,314.51");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=104.21,352.70");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=135.45,291.26");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=8.97,293.39");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=21.97,330.55");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=32.39,234.87");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=65.03,168.53");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=144.74,155.05");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=108.92,280.98");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=141.47,255.25");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=109.01,249.68");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=287.38,273.10");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=206.79,206.75");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=215.29,199.48");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=53.66,236.08");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=33.71,179.14");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=77.35,120.60");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=113.49,148.60");
    }

}

