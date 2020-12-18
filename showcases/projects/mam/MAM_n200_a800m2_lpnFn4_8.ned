
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn4_8
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=94.90,84.05");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=67.01,86.67");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=60.83,7.95");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=83.58,1.67");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=92.28,60.02");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=148.25,87.48");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=169.54,160.49");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=225.25,207.26");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=230.72,198.58");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=219.00,194.42");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=284.77,174.88");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=376.74,196.04");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=363.65,179.36");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=382.24,179.12");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=452.62,210.82");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=471.05,136.49");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=460.28,116.71");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=455.70,164.28");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=521.71,96.87");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=479.67,66.13");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=517.81,110.86");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=480.07,145.98");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=492.64,134.93");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=554.86,85.52");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=486.31,42.71");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=469.09,39.99");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=447.17,137.24");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=515.11,192.48");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=564.87,193.66");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=620.85,174.68");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=572.81,119.06");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=589.20,167.23");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=559.50,141.82");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=586.32,126.74");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=645.78,93.53");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=585.91,80.63");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=561.33,62.13");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=541.09,23.32");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=497.91,13.74");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=492.08,58.46");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=429.12,1.86");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=345.62,35.33");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=331.99,30.07");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=263.10,77.55");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=270.22,106.58");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=266.27,138.52");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=294.08,165.05");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=290.81,146.17");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=323.05,159.16");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=61.15,136.95");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=140.25,112.29");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=49.26,98.46");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=148.91,10.14");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=77.99,49.06");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=154.07,47.38");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=179.31,175.64");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=76.96,189.70");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=198.78,186.65");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=154.17,236.40");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=266.48,173.34");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=340.52,132.04");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=402.99,286.71");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=367.38,272.03");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=413.35,223.39");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=397.43,212.45");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=389.27,191.97");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=541.70,148.08");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=523.84,167.43");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=494.13,121.00");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=541.01,113.67");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=575.74,133.45");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=458.64,147.12");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=460.34,97.39");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=493.11,22.73");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=509.14,132.24");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=465.85,50.54");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=483.65,162.93");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=501.69,176.57");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=548.20,268.18");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=715.29,179.63");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=608.07,148.93");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=584.35,246.12");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=614.80,138.68");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=613.12,72.25");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=625.28,94.47");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=601.22,73.50");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=644.76,64.84");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=534.22,10.64");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=431.53,36.94");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=510.90,151.13");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=513.84,3.84");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=369.04,21.39");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=268.52,12.08");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=279.79,116.73");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=276.32,40.11");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=259.63,127.77");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=252.82,172.27");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=360.91,194.44");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=345.96,142.18");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=111.40,139.01");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=60.99,171.53");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=128.62,112.56");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=110.89,33.74");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=155.13,62.49");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=161.40,83.67");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=188.35,85.09");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=268.67,154.44");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=205.91,211.38");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=190.39,221.86");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=192.50,124.05");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=192.07,206.53");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=399.56,183.30");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=379.80,247.81");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=422.93,146.12");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=513.37,163.08");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=478.01,201.61");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=498.62,144.00");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=450.05,114.33");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=461.29,68.06");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=403.37,28.17");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=542.06,176.72");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=537.08,204.69");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=445.14,186.75");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=577.67,73.44");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=537.18,90.55");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=508.18,16.90");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=356.00,132.42");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=600.98,185.89");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=553.76,104.08");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=637.05,164.79");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=642.16,110.44");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=528.29,195.60");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=550.82,184.26");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=520.81,123.91");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=608.98,29.60");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=529.50,36.13");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=589.17,114.82");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=557.92,31.46");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=459.97,12.20");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=460.31,33.53");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=374.38,65.18");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=401.01,102.55");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=354.82,89.91");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=211.88,15.77");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=240.85,126.47");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=186.01,97.80");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=340.29,157.23");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=320.29,133.12");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=274.57,181.57");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=27.76,44.89");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=159.76,126.08");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=119.57,76.58");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=76.30,12.03");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=77.27,30.44");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=105.92,115.67");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=81.58,61.94");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=130.84,188.05");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=244.26,252.23");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=143.29,150.06");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=225.72,176.77");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=324.46,171.56");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=441.57,164.00");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=308.86,146.59");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=345.04,169.62");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=393.00,171.32");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=504.24,205.94");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=450.09,20.19");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=464.06,234.86");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=530.09,54.11");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=460.85,81.42");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=508.70,78.93");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=553.85,164.72");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=551.80,114.21");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=638.65,131.63");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=413.44,57.44");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=370.89,44.96");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=467.42,162.47");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=571.59,153.55");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=540.20,124.17");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=629.55,136.74");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=637.73,52.44");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=599.50,167.04");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=497.43,214.71");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=676.48,95.09");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=597.10,92.19");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=558.78,4.37");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=560.01,73.28");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=496.71,41.17");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=473.66,12.54");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=440.69,67.68");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=432.95,57.04");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=291.06,14.91");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=312.77,28.57");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=300.67,108.76");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=233.34,97.04");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=320.67,98.55");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=201.53,160.64");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=281.06,129.24");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=335.39,69.32");
    }

}

