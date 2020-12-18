
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn1-3
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
        @display("p=264.00,258.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=321.64,325.37");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=334.71,330.86");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=261.77,386.72");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=230.22,386.21");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=209.67,330.64");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=227.78,297.74");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=239.78,267.58");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=241.30,242.88");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=242.59,227.48");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=305.68,208.30");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=324.29,187.33");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=322.65,270.72");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=341.88,394.72");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=269.79,338.77");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=254.54,252.30");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=285.83,309.62");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=285.89,225.82");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=314.38,201.38");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=326.63,169.34");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=341.17,153.22");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=330.83,148.85");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=289.81,156.07");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=391.55,177.84");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=341.37,188.62");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=252.69,325.71");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=233.86,348.85");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=221.50,329.92");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=251.42,359.33");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=223.68,355.94");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=271.36,377.13");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=160.87,299.68");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=87.60,360.81");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=121.23,309.34");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=142.91,377.95");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=146.26,399.13");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=195.29,325.25");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=225.44,251.38");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=161.49,257.00");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=77.49,252.64");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=100.98,172.67");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=180.60,203.83");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=116.74,209.11");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=128.55,198.73");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=128.10,115.31");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=154.68,121.69");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=126.81,70.61");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=59.20,30.98");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=61.49,81.17");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=85.58,122.09");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=112.02,92.62");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=102.39,61.91");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=74.21,89.76");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=96.08,121.09");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=175.70,112.02");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=223.98,124.26");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=241.76,26.27");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=227.36,102.54");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=214.14,110.87");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=164.59,196.14");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=171.43,131.27");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=177.03,162.11");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=170.00,207.42");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=163.89,216.67");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=254.53,147.08");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=236.22,71.13");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=144.55,143.28");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=150.34,169.90");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=113.46,143.99");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=133.59,93.66");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=175.34,23.33");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=125.73,15.21");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=122.76,50.66");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=157.45,76.16");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=139.57,55.07");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=97.27,144.91");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=49.18,133.59");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=40.96,127.60");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=72.04,180.17");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=53.75,146.03");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=135.38,157.77");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=52.61,163.85");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=12.80,178.81");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=11.22,158.36");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=18.17,130.76");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=59.58,209.30");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=88.06,235.47");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=87.71,216.63");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=45.79,226.47");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=33.80,212.12");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=104.54,343.37");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=73.23,378.45");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=157.77,392.19");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=183.42,356.04");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=268.40,279.01");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=305.58,311.60");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=253.68,344.74");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=236.61,334.59");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=176.01,288.12");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=187.70,296.18");
    }

    host_fn_rly_101: <default("SensorNode")> like INetworkNode {
        @display("p=134.03,230.74");
    }

    host_fn_rly_102: <default("SensorNode")> like INetworkNode {
        @display("p=171.01,183.54");
    }

    host_fn_rly_103: <default("SensorNode")> like INetworkNode {
        @display("p=109.15,108.69");
    }

    host_fn_rly_104: <default("SensorNode")> like INetworkNode {
        @display("p=203.38,66.69");
    }

    host_fn_rly_105: <default("SensorNode")> like INetworkNode {
        @display("p=283.13,17.76");
    }

    host_fn_rly_106: <default("SensorNode")> like INetworkNode {
        @display("p=242.16,37.12");
    }

    host_fn_rly_107: <default("SensorNode")> like INetworkNode {
        @display("p=285.63,81.99");
    }

    host_fn_rly_108: <default("SensorNode")> like INetworkNode {
        @display("p=324.48,37.17");
    }

    host_fn_rly_109: <default("SensorNode")> like INetworkNode {
        @display("p=319.61,46.80");
    }

    host_fn_rly_110: <default("SensorNode")> like INetworkNode {
        @display("p=331.04,22.68");
    }

    host_fn_rly_111: <default("SensorNode")> like INetworkNode {
        @display("p=307.65,79.40");
    }

    host_fn_rly_112: <default("SensorNode")> like INetworkNode {
        @display("p=374.86,57.42");
    }

    host_fn_rly_113: <default("SensorNode")> like INetworkNode {
        @display("p=352.24,141.64");
    }

    host_fn_rly_114: <default("SensorNode")> like INetworkNode {
        @display("p=341.53,167.43");
    }

    host_fn_rly_115: <default("SensorNode")> like INetworkNode {
        @display("p=342.60,243.59");
    }

    host_fn_rly_116: <default("SensorNode")> like INetworkNode {
        @display("p=270.56,196.34");
    }

    host_fn_rly_117: <default("SensorNode")> like INetworkNode {
        @display("p=270.04,220.08");
    }

    host_fn_rly_118: <default("SensorNode")> like INetworkNode {
        @display("p=231.16,134.87");
    }

    host_fn_rly_119: <default("SensorNode")> like INetworkNode {
        @display("p=159.69,165.69");
    }

    host_fn_rly_120: <default("SensorNode")> like INetworkNode {
        @display("p=216.94,145.63");
    }

    host_fn_rly_121: <default("SensorNode")> like INetworkNode {
        @display("p=144.29,203.62");
    }

    host_fn_rly_122: <default("SensorNode")> like INetworkNode {
        @display("p=146.50,273.19");
    }

    host_fn_rly_123: <default("SensorNode")> like INetworkNode {
        @display("p=206.58,252.07");
    }

    host_fn_rly_124: <default("SensorNode")> like INetworkNode {
        @display("p=330.71,281.90");
    }

    host_fn_rly_125: <default("SensorNode")> like INetworkNode {
        @display("p=341.56,302.01");
    }

    host_fn_rly_126: <default("SensorNode")> like INetworkNode {
        @display("p=378.23,300.92");
    }

    host_fn_rly_127: <default("SensorNode")> like INetworkNode {
        @display("p=399.11,223.75");
    }

    host_fn_rly_128: <default("SensorNode")> like INetworkNode {
        @display("p=366.82,149.90");
    }

    host_fn_rly_129: <default("SensorNode")> like INetworkNode {
        @display("p=349.66,195.23");
    }

    host_fn_rly_130: <default("SensorNode")> like INetworkNode {
        @display("p=332.84,268.28");
    }

    host_fn_rly_131: <default("SensorNode")> like INetworkNode {
        @display("p=288.20,278.15");
    }

    host_fn_rly_132: <default("SensorNode")> like INetworkNode {
        @display("p=246.50,203.36");
    }

    host_fn_rly_133: <default("SensorNode")> like INetworkNode {
        @display("p=262.31,109.75");
    }

    host_fn_rly_134: <default("SensorNode")> like INetworkNode {
        @display("p=338.57,109.31");
    }

    host_fn_rly_135: <default("SensorNode")> like INetworkNode {
        @display("p=309.25,140.15");
    }

    host_fn_rly_136: <default("SensorNode")> like INetworkNode {
        @display("p=232.91,86.04");
    }

    host_fn_rly_137: <default("SensorNode")> like INetworkNode {
        @display("p=158.29,110.35");
    }

    host_fn_rly_138: <default("SensorNode")> like INetworkNode {
        @display("p=165.90,99.74");
    }

    host_fn_rly_139: <default("SensorNode")> like INetworkNode {
        @display("p=164.98,23.05");
    }

    host_fn_rly_140: <default("SensorNode")> like INetworkNode {
        @display("p=169.02,148.46");
    }

    host_fn_rly_141: <default("SensorNode")> like INetworkNode {
        @display("p=175.67,95.33");
    }

    host_fn_rly_142: <default("SensorNode")> like INetworkNode {
        @display("p=144.25,68.58");
    }

    host_fn_rly_143: <default("SensorNode")> like INetworkNode {
        @display("p=204.06,106.25");
    }

    host_fn_rly_144: <default("SensorNode")> like INetworkNode {
        @display("p=195.74,117.62");
    }

    host_fn_rly_145: <default("SensorNode")> like INetworkNode {
        @display("p=247.83,112.03");
    }

    host_fn_rly_146: <default("SensorNode")> like INetworkNode {
        @display("p=296.54,140.32");
    }

    host_fn_rly_147: <default("SensorNode")> like INetworkNode {
        @display("p=276.28,113.47");
    }

    host_fn_rly_148: <default("SensorNode")> like INetworkNode {
        @display("p=208.12,138.81");
    }

    host_fn_rly_149: <default("SensorNode")> like INetworkNode {
        @display("p=232.04,207.16");
    }

    host_fn_rly_150: <default("SensorNode")> like INetworkNode {
        @display("p=152.98,234.45");
    }

    host_fn_rly_151: <default("SensorNode")> like INetworkNode {
        @display("p=125.25,259.99");
    }

    host_fn_rly_152: <default("SensorNode")> like INetworkNode {
        @display("p=176.14,216.71");
    }

    host_fn_rly_153: <default("SensorNode")> like INetworkNode {
        @display("p=312.84,258.19");
    }

    host_fn_rly_154: <default("SensorNode")> like INetworkNode {
        @display("p=331.22,220.67");
    }

    host_fn_rly_155: <default("SensorNode")> like INetworkNode {
        @display("p=329.58,235.42");
    }

    host_fn_rly_156: <default("SensorNode")> like INetworkNode {
        @display("p=270.38,163.59");
    }

    host_fn_rly_157: <default("SensorNode")> like INetworkNode {
        @display("p=316.51,171.29");
    }

    host_fn_rly_158: <default("SensorNode")> like INetworkNode {
        @display("p=323.98,208.02");
    }

    host_fn_rly_159: <default("SensorNode")> like INetworkNode {
        @display("p=399.74,201.87");
    }

    host_fn_rly_160: <default("SensorNode")> like INetworkNode {
        @display("p=339.58,230.45");
    }

    host_fn_rly_161: <default("SensorNode")> like INetworkNode {
        @display("p=301.21,267.08");
    }

    host_fn_rly_162: <default("SensorNode")> like INetworkNode {
        @display("p=324.32,373.05");
    }

    host_fn_rly_163: <default("SensorNode")> like INetworkNode {
        @display("p=314.93,376.95");
    }

    host_fn_rly_164: <default("SensorNode")> like INetworkNode {
        @display("p=320.47,345.12");
    }

    host_fn_rly_165: <default("SensorNode")> like INetworkNode {
        @display("p=397.25,389.08");
    }

    host_fn_rly_166: <default("SensorNode")> like INetworkNode {
        @display("p=323.77,335.62");
    }

    host_fn_rly_167: <default("SensorNode")> like INetworkNode {
        @display("p=398.85,342.05");
    }

    host_fn_rly_168: <default("SensorNode")> like INetworkNode {
        @display("p=374.46,320.08");
    }

    host_fn_rly_169: <default("SensorNode")> like INetworkNode {
        @display("p=388.69,325.45");
    }

    host_fn_rly_170: <default("SensorNode")> like INetworkNode {
        @display("p=390.75,249.45");
    }

    host_fn_rly_171: <default("SensorNode")> like INetworkNode {
        @display("p=278.79,260.17");
    }

    host_fn_rly_172: <default("SensorNode")> like INetworkNode {
        @display("p=282.29,377.08");
    }

    host_fn_rly_173: <default("SensorNode")> like INetworkNode {
        @display("p=291.68,352.15");
    }

    host_fn_rly_174: <default("SensorNode")> like INetworkNode {
        @display("p=209.98,299.38");
    }

    host_fn_rly_175: <default("SensorNode")> like INetworkNode {
        @display("p=173.88,268.87");
    }

    host_fn_rly_176: <default("SensorNode")> like INetworkNode {
        @display("p=158.82,270.74");
    }

    host_fn_rly_177: <default("SensorNode")> like INetworkNode {
        @display("p=154.85,204.71");
    }

    host_fn_rly_178: <default("SensorNode")> like INetworkNode {
        @display("p=137.62,211.82");
    }

    host_fn_rly_179: <default("SensorNode")> like INetworkNode {
        @display("p=105.80,190.44");
    }

    host_fn_rly_180: <default("SensorNode")> like INetworkNode {
        @display("p=191.65,152.43");
    }

    host_fn_rly_181: <default("SensorNode")> like INetworkNode {
        @display("p=258.58,119.58");
    }

    host_fn_rly_182: <default("SensorNode")> like INetworkNode {
        @display("p=354.67,113.94");
    }

    host_fn_rly_183: <default("SensorNode")> like INetworkNode {
        @display("p=378.30,103.50");
    }

    host_fn_rly_184: <default("SensorNode")> like INetworkNode {
        @display("p=331.64,88.69");
    }

    host_fn_rly_185: <default("SensorNode")> like INetworkNode {
        @display("p=285.60,181.56");
    }

    host_fn_rly_186: <default("SensorNode")> like INetworkNode {
        @display("p=308.56,93.53");
    }

    host_fn_rly_187: <default("SensorNode")> like INetworkNode {
        @display("p=369.40,44.03");
    }

    host_fn_rly_188: <default("SensorNode")> like INetworkNode {
        @display("p=379.84,128.57");
    }

    host_fn_rly_189: <default("SensorNode")> like INetworkNode {
        @display("p=371.14,120.02");
    }

    host_fn_rly_190: <default("SensorNode")> like INetworkNode {
        @display("p=371.10,170.73");
    }

    host_fn_rly_191: <default("SensorNode")> like INetworkNode {
        @display("p=377.07,79.50");
    }

    host_fn_rly_192: <default("SensorNode")> like INetworkNode {
        @display("p=384.98,59.72");
    }

    host_fn_rly_193: <default("SensorNode")> like INetworkNode {
        @display("p=355.83,77.33");
    }

    host_fn_rly_194: <default("SensorNode")> like INetworkNode {
        @display("p=299.69,30.65");
    }

    host_fn_rly_195: <default("SensorNode")> like INetworkNode {
        @display("p=251.01,49.08");
    }

    host_fn_rly_196: <default("SensorNode")> like INetworkNode {
        @display("p=316.55,56.88");
    }

    host_fn_rly_197: <default("SensorNode")> like INetworkNode {
        @display("p=325.24,116.11");
    }

    host_fn_rly_198: <default("SensorNode")> like INetworkNode {
        @display("p=367.75,96.87");
    }

    host_fn_rly_199: <default("SensorNode")> like INetworkNode {
        @display("p=349.50,62.58");
    }

    host_fn_rly_200: <default("SensorNode")> like INetworkNode {
        @display("p=374.79,159.15");
    }

}

