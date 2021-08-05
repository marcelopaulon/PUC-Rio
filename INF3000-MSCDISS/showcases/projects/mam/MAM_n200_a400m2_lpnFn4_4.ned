
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn4_4
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
        @display("p=96.20,110.47");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=91.75,183.65");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=80.59,177.00");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=81.16,153.49");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=141.91,144.55");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=193.73,63.29");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=127.76,60.06");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=109.95,139.31");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=106.90,159.90");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=175.78,137.42");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=165.96,119.96");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=110.91,84.94");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=96.58,49.38");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=38.85,85.88");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=35.51,155.35");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=56.57,166.91");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=121.32,224.43");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=96.54,197.22");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=77.12,118.11");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=65.22,114.81");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=50.00,194.99");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=24.98,158.72");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=55.74,179.64");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=130.19,215.22");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=121.57,286.19");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=165.16,252.42");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=193.23,252.54");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=181.55,259.10");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=212.74,298.01");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=183.89,342.65");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=125.95,314.08");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=129.58,297.64");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=138.63,290.56");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=145.03,241.62");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=160.75,302.35");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=145.56,306.62");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=104.06,306.18");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=80.72,307.57");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=149.71,271.49");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=195.80,215.81");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=204.18,224.06");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=249.18,277.85");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=302.34,264.32");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=331.78,254.00");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=288.93,295.18");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=304.29,225.97");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=333.46,231.73");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=301.20,275.71");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=313.44,216.90");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=124.45,40.49");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=10.33,101.31");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=111.57,209.54");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=69.93,135.99");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=70.26,183.87");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=138.69,186.25");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=217.13,139.72");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=135.28,96.84");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=66.41,67.59");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=99.53,168.95");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=199.17,129.39");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=177.66,115.19");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=147.15,110.59");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=32.21,77.94");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=81.96,30.02");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=37.33,166.07");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=38.02,195.90");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=115.06,270.12");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=162.66,223.29");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=28.36,122.92");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=44.81,110.62");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=72.18,198.46");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=10.44,146.55");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=4.08,194.08");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=193.18,155.12");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=90.14,277.86");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=170.58,211.62");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=203.01,333.98");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=192.55,198.22");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=188.82,266.87");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=173.35,245.94");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=102.79,290.59");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=120.38,305.37");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=143.23,322.08");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=160.03,234.47");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=235.14,334.12");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=126.27,243.52");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=82.92,237.43");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=80.08,324.70");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=118.41,356.16");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=228.34,227.14");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=279.55,196.52");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=230.60,269.55");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=341.40,335.10");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=336.46,245.14");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=285.05,280.33");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=289.26,213.36");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=362.59,224.55");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=282.92,361.31");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=356.09,195.22");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=128.57,146.71");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=148.55,124.40");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=142.48,225.38");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=88.80,161.81");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=69.81,157.21");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=102.89,118.55");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=162.30,24.16");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=204.07,20.26");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=179.97,127.89");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=121.08,258.12");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=196.12,173.67");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=172.30,104.42");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=129.02,15.68");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=63.43,86.76");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=36.14,66.90");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=17.71,173.44");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=28.44,208.77");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=102.03,252.76");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=58.32,106.86");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=73.20,95.65");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=99.01,84.75");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=84.56,226.44");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=15.37,238.76");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=83.43,133.55");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=145.51,167.84");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=73.37,243.70");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=188.95,225.92");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=205.06,248.34");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=187.09,278.43");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=188.92,354.24");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=183.09,307.94");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=117.57,336.57");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=151.30,253.18");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=162.45,270.77");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=172.48,282.47");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=167.23,336.57");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=93.06,305.35");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=91.76,336.91");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=110.77,282.79");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=88.57,294.40");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=198.83,143.43");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=118.22,181.24");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=246.35,268.02");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=355.01,314.77");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=299.29,316.89");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=323.45,264.71");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=309.07,195.09");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=330.91,151.59");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=331.86,360.65");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=316.43,289.82");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=115.06,103.50");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=47.24,145.90");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=54.56,256.54");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=117.35,156.86");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=28.49,95.48");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=185.47,163.67");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=102.01,64.46");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=153.45,84.78");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=78.12,73.35");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=153.77,158.20");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=167.18,188.69");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=229.08,128.74");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=71.20,57.55");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=113.59,44.67");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=33.64,28.16");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=65.18,207.95");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=95.15,132.33");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=73.55,273.12");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=97.23,210.04");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=17.71,86.40");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=1.19,157.46");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=23.33,197.60");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=17.33,116.30");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=49.20,206.74");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=83.11,205.44");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=87.60,359.09");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=105.62,179.40");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=261.90,280.56");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=93.17,267.85");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=156.78,336.21");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=165.94,313.80");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=168.75,387.01");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=178.63,297.37");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=146.57,388.45");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=110.58,195.93");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=133.86,280.90");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=180.59,367.75");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=60.97,348.49");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=34.57,313.74");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=195.00,239.99");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=226.30,252.12");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=149.72,201.08");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=214.47,231.68");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=267.66,224.49");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=314.20,270.13");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=282.91,227.48");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=359.96,296.25");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=364.73,242.99");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=344.18,187.02");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=222.16,198.82");
    }

}

