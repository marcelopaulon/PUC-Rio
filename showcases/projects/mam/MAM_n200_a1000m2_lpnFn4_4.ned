
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn4_4
{
    parameters:
        @display("bgb=1000,1000;bgg=100,1,grey95;bgu=m");
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=140.37,110.54");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=112.07,110.45");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=163.30,181.76");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=193.12,222.13");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=142.00,208.17");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=138.44,249.86");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=95.37,243.12");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=111.78,292.48");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=31.98,314.33");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=45.14,324.63");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=82.10,246.87");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=83.01,229.64");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=37.76,263.20");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=96.02,272.13");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=7.24,212.81");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=39.73,274.24");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=8.03,281.81");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=106.04,275.74");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=127.00,259.97");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=55.80,301.75");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=88.77,303.24");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=127.44,249.20");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=105.96,160.42");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=113.87,142.53");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=175.68,204.53");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=169.19,225.51");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=156.20,223.14");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=177.63,268.04");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=172.47,294.17");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=136.49,373.97");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=153.21,345.55");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=144.40,331.16");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=218.63,364.68");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=226.08,377.16");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=199.25,419.57");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=189.19,322.24");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=242.96,338.55");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=265.90,357.61");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=357.74,351.32");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=271.66,314.89");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=179.61,325.55");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=249.64,275.50");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=284.26,228.16");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=295.32,200.34");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=383.29,201.27");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=387.41,136.88");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=406.01,158.18");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=407.44,178.32");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=465.73,199.36");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=97.14,49.53");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=175.64,21.56");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=135.56,71.62");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=196.86,267.55");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=205.84,222.62");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=187.38,251.50");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=120.84,172.53");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=13.35,267.99");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=132.84,383.55");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=86.18,331.31");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=89.27,351.15");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=57.22,213.37");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=72.87,168.79");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=81.00,176.36");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=120.29,208.15");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=61.85,227.68");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=64.37,358.76");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=23.64,304.51");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=181.99,310.16");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=132.37,305.66");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=50.57,245.50");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=95.50,291.82");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=102.21,343.12");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=97.92,170.07");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=64.86,147.94");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=234.58,164.01");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=174.88,254.67");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=148.52,263.49");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=162.03,292.69");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=247.73,233.12");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=163.33,376.18");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=180.66,387.40");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=156.11,326.45");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=270.48,377.05");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=245.01,374.11");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=199.31,407.12");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=230.51,287.02");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=263.23,306.20");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=218.24,318.94");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=431.68,306.97");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=325.87,319.14");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=201.62,347.16");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=249.43,289.22");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=188.16,235.04");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=330.01,231.53");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=386.14,175.14");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=395.11,121.53");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=414.75,100.41");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=423.57,143.24");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=526.32,266.90");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=135.28,131.43");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=178.46,79.56");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=122.79,126.03");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=161.67,207.04");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=241.51,224.37");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=157.03,163.51");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=128.48,155.02");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=4.87,241.78");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=144.05,290.30");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=27.65,339.84");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=50.21,355.18");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=106.52,303.13");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=61.85,261.63");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=18.58,256.96");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=157.81,243.65");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=50.57,123.40");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=66.05,283.59");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=84.89,260.88");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=115.21,222.81");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=96.80,255.51");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=73.25,293.37");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=111.68,334.16");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=133.94,231.75");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=35.98,100.21");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=84.45,145.25");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=195.41,152.59");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=202.76,205.14");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=204.55,275.29");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=210.82,237.79");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=158.92,304.65");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=179.78,340.91");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=148.15,369.81");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=215.93,281.17");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=216.70,413.91");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=302.46,418.74");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=161.11,430.75");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=169.32,320.20");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=211.26,376.85");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=210.09,431.55");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=387.32,356.46");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=294.90,341.46");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=227.99,392.67");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=245.84,321.75");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=306.11,205.01");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=268.30,201.02");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=407.51,229.89");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=344.01,80.86");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=362.85,160.13");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=355.71,148.05");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=482.62,254.13");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=23.37,93.08");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=102.78,149.71");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=185.00,63.11");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=167.51,140.61");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=167.23,281.38");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=102.06,191.98");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=178.18,178.12");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=71.77,269.37");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=190.36,334.07");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=12.61,338.67");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=38.35,364.94");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=81.97,202.45");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=20.00,223.55");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=8.22,177.15");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=25.20,271.27");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=1.58,259.51");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=39.86,219.22");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=8.47,188.09");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=127.79,273.84");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=50.96,224.64");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=19.61,321.47");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=109.54,378.91");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=98.35,321.15");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=20.24,171.73");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=127.88,192.47");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=208.56,253.29");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=166.06,235.60");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=139.34,218.93");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=185.81,274.26");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=173.84,354.43");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=93.27,446.37");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=171.37,308.89");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=183.53,350.63");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=182.06,421.14");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=253.08,391.64");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=194.80,429.00");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=145.40,311.32");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=339.71,341.15");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=276.43,408.93");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=300.18,301.12");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=247.11,254.32");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=210.07,305.37");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=260.45,263.68");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=311.42,256.22");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=326.61,202.06");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=362.61,189.97");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=422.02,115.48");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=393.19,227.89");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=361.74,178.16");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=467.53,170.32");
    }

}

