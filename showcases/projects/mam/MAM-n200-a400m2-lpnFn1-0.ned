
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn1-0
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
        @display("p=236.00,51.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=229.76,58.92");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=217.41,145.89");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=312.43,174.49");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=317.23,154.63");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=277.96,171.81");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=339.12,146.05");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=358.90,97.62");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=376.64,160.93");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=383.26,152.46");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=319.74,183.65");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=297.28,116.34");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=330.25,117.31");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=327.19,157.14");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=313.21,129.13");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=305.56,83.56");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=283.32,81.65");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=274.06,93.74");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=247.26,158.14");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=239.63,151.16");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=272.61,201.90");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=305.90,281.59");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=345.78,323.39");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=271.88,260.39");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=334.28,300.95");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=349.52,278.72");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=320.55,309.13");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=321.87,322.01");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=275.33,359.12");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=293.62,377.75");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=321.43,359.20");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=322.99,371.58");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=246.95,333.61");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=186.72,320.01");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=212.62,386.59");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=273.33,307.79");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=365.00,286.91");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=386.37,289.87");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=344.75,296.10");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=338.49,239.34");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=351.64,245.08");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=298.61,215.29");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=261.90,231.06");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=308.75,208.74");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=346.08,66.23");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=339.09,108.82");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=371.97,62.09");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=292.44,97.50");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=218.41,48.05");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=305.69,35.25");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=321.04,103.83");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=312.04,94.02");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=322.63,27.67");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=252.14,0.28");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=245.29,56.49");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=289.26,131.95");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=355.78,72.36");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=379.94,183.46");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=345.01,134.54");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=398.55,129.43");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=354.58,116.58");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=346.53,177.43");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=299.94,162.40");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=249.15,183.03");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=289.77,266.81");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=261.42,248.03");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=338.68,272.09");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=360.27,297.41");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=327.63,254.97");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=309.35,263.96");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=314.79,329.56");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=225.66,335.48");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=203.66,301.25");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=143.76,334.41");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=174.39,318.96");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=111.97,328.54");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=75.59,244.79");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=73.17,266.57");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=13.88,225.30");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=76.82,202.16");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=20.04,120.68");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=42.41,154.15");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=9.96,156.85");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=32.40,223.07");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=60.16,232.33");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=65.40,179.55");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=33.77,183.46");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=88.68,154.98");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=119.49,120.97");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=128.95,134.97");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=171.02,97.45");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=160.75,161.85");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=92.42,177.07");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=16.66,249.77");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=48.34,236.70");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=9.24,189.44");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=45.67,248.76");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=126.67,236.66");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=219.78,210.50");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=185.95,203.46");
    }

    host_fn_rly_101: <default("SensorNode")> like INetworkNode {
        @display("p=163.13,203.27");
    }

    host_fn_rly_102: <default("SensorNode")> like INetworkNode {
        @display("p=150.07,198.86");
    }

    host_fn_rly_103: <default("SensorNode")> like INetworkNode {
        @display("p=122.85,215.82");
    }

    host_fn_rly_104: <default("SensorNode")> like INetworkNode {
        @display("p=162.74,295.22");
    }

    host_fn_rly_105: <default("SensorNode")> like INetworkNode {
        @display("p=144.99,274.91");
    }

    host_fn_rly_106: <default("SensorNode")> like INetworkNode {
        @display("p=156.20,305.86");
    }

    host_fn_rly_107: <default("SensorNode")> like INetworkNode {
        @display("p=161.48,279.72");
    }

    host_fn_rly_108: <default("SensorNode")> like INetworkNode {
        @display("p=206.86,204.08");
    }

    host_fn_rly_109: <default("SensorNode")> like INetworkNode {
        @display("p=157.63,175.20");
    }

    host_fn_rly_110: <default("SensorNode")> like INetworkNode {
        @display("p=148.74,229.82");
    }

    host_fn_rly_111: <default("SensorNode")> like INetworkNode {
        @display("p=156.03,215.67");
    }

    host_fn_rly_112: <default("SensorNode")> like INetworkNode {
        @display("p=178.30,163.59");
    }

    host_fn_rly_113: <default("SensorNode")> like INetworkNode {
        @display("p=191.12,154.90");
    }

    host_fn_rly_114: <default("SensorNode")> like INetworkNode {
        @display("p=208.61,153.96");
    }

    host_fn_rly_115: <default("SensorNode")> like INetworkNode {
        @display("p=108.08,187.20");
    }

    host_fn_rly_116: <default("SensorNode")> like INetworkNode {
        @display("p=167.42,231.73");
    }

    host_fn_rly_117: <default("SensorNode")> like INetworkNode {
        @display("p=185.88,232.86");
    }

    host_fn_rly_118: <default("SensorNode")> like INetworkNode {
        @display("p=102.73,216.54");
    }

    host_fn_rly_119: <default("SensorNode")> like INetworkNode {
        @display("p=178.08,260.32");
    }

    host_fn_rly_120: <default("SensorNode")> like INetworkNode {
        @display("p=116.73,288.10");
    }

    host_fn_rly_121: <default("SensorNode")> like INetworkNode {
        @display("p=51.45,334.87");
    }

    host_fn_rly_122: <default("SensorNode")> like INetworkNode {
        @display("p=110.49,388.29");
    }

    host_fn_rly_123: <default("SensorNode")> like INetworkNode {
        @display("p=77.70,386.42");
    }

    host_fn_rly_124: <default("SensorNode")> like INetworkNode {
        @display("p=3.60,373.05");
    }

    host_fn_rly_125: <default("SensorNode")> like INetworkNode {
        @display("p=93.02,378.76");
    }

    host_fn_rly_126: <default("SensorNode")> like INetworkNode {
        @display("p=85.58,355.80");
    }

    host_fn_rly_127: <default("SensorNode")> like INetworkNode {
        @display("p=106.43,371.53");
    }

    host_fn_rly_128: <default("SensorNode")> like INetworkNode {
        @display("p=33.69,389.72");
    }

    host_fn_rly_129: <default("SensorNode")> like INetworkNode {
        @display("p=96.57,334.56");
    }

    host_fn_rly_130: <default("SensorNode")> like INetworkNode {
        @display("p=104.89,356.45");
    }

    host_fn_rly_131: <default("SensorNode")> like INetworkNode {
        @display("p=57.83,359.28");
    }

    host_fn_rly_132: <default("SensorNode")> like INetworkNode {
        @display("p=40.17,375.90");
    }

    host_fn_rly_133: <default("SensorNode")> like INetworkNode {
        @display("p=52.52,323.30");
    }

    host_fn_rly_134: <default("SensorNode")> like INetworkNode {
        @display("p=42.58,263.00");
    }

    host_fn_rly_135: <default("SensorNode")> like INetworkNode {
        @display("p=26.97,286.54");
    }

    host_fn_rly_136: <default("SensorNode")> like INetworkNode {
        @display("p=35.89,239.44");
    }

    host_fn_rly_137: <default("SensorNode")> like INetworkNode {
        @display("p=108.08,237.59");
    }

    host_fn_rly_138: <default("SensorNode")> like INetworkNode {
        @display("p=45.56,278.11");
    }

    host_fn_rly_139: <default("SensorNode")> like INetworkNode {
        @display("p=64.29,261.17");
    }

    host_fn_rly_140: <default("SensorNode")> like INetworkNode {
        @display("p=37.71,313.83");
    }

    host_fn_rly_141: <default("SensorNode")> like INetworkNode {
        @display("p=37.62,351.69");
    }

    host_fn_rly_142: <default("SensorNode")> like INetworkNode {
        @display("p=68.43,371.22");
    }

    host_fn_rly_143: <default("SensorNode")> like INetworkNode {
        @display("p=87.33,301.04");
    }

    host_fn_rly_144: <default("SensorNode")> like INetworkNode {
        @display("p=0.99,293.40");
    }

    host_fn_rly_145: <default("SensorNode")> like INetworkNode {
        @display("p=13.48,315.61");
    }

    host_fn_rly_146: <default("SensorNode")> like INetworkNode {
        @display("p=74.05,307.85");
    }

    host_fn_rly_147: <default("SensorNode")> like INetworkNode {
        @display("p=55.64,285.34");
    }

    host_fn_rly_148: <default("SensorNode")> like INetworkNode {
        @display("p=100.62,304.15");
    }

    host_fn_rly_149: <default("SensorNode")> like INetworkNode {
        @display("p=116.14,255.93");
    }

    host_fn_rly_150: <default("SensorNode")> like INetworkNode {
        @display("p=120.02,155.41");
    }

    host_fn_rly_151: <default("SensorNode")> like INetworkNode {
        @display("p=102.81,176.42");
    }

    host_fn_rly_152: <default("SensorNode")> like INetworkNode {
        @display("p=161.19,128.20");
    }

    host_fn_rly_153: <default("SensorNode")> like INetworkNode {
        @display("p=19.32,147.73");
    }

    host_fn_rly_154: <default("SensorNode")> like INetworkNode {
        @display("p=29.42,129.79");
    }

    host_fn_rly_155: <default("SensorNode")> like INetworkNode {
        @display("p=39.36,101.50");
    }

    host_fn_rly_156: <default("SensorNode")> like INetworkNode {
        @display("p=78.12,71.05");
    }

    host_fn_rly_157: <default("SensorNode")> like INetworkNode {
        @display("p=62.95,72.48");
    }

    host_fn_rly_158: <default("SensorNode")> like INetworkNode {
        @display("p=39.89,50.24");
    }

    host_fn_rly_159: <default("SensorNode")> like INetworkNode {
        @display("p=15.86,50.47");
    }

    host_fn_rly_160: <default("SensorNode")> like INetworkNode {
        @display("p=55.94,33.63");
    }

    host_fn_rly_161: <default("SensorNode")> like INetworkNode {
        @display("p=21.73,41.85");
    }

    host_fn_rly_162: <default("SensorNode")> like INetworkNode {
        @display("p=84.74,24.79");
    }

    host_fn_rly_163: <default("SensorNode")> like INetworkNode {
        @display("p=107.75,18.17");
    }

    host_fn_rly_164: <default("SensorNode")> like INetworkNode {
        @display("p=202.45,5.77");
    }

    host_fn_rly_165: <default("SensorNode")> like INetworkNode {
        @display("p=191.57,12.63");
    }

    host_fn_rly_166: <default("SensorNode")> like INetworkNode {
        @display("p=263.17,47.50");
    }

    host_fn_rly_167: <default("SensorNode")> like INetworkNode {
        @display("p=288.45,51.77");
    }

    host_fn_rly_168: <default("SensorNode")> like INetworkNode {
        @display("p=219.66,7.19");
    }

    host_fn_rly_169: <default("SensorNode")> like INetworkNode {
        @display("p=169.92,26.65");
    }

    host_fn_rly_170: <default("SensorNode")> like INetworkNode {
        @display("p=180.35,37.96");
    }

    host_fn_rly_171: <default("SensorNode")> like INetworkNode {
        @display("p=232.03,30.90");
    }

    host_fn_rly_172: <default("SensorNode")> like INetworkNode {
        @display("p=240.06,21.31");
    }

    host_fn_rly_173: <default("SensorNode")> like INetworkNode {
        @display("p=277.80,161.52");
    }

    host_fn_rly_174: <default("SensorNode")> like INetworkNode {
        @display("p=274.89,119.86");
    }

    host_fn_rly_175: <default("SensorNode")> like INetworkNode {
        @display("p=286.36,29.36");
    }

    host_fn_rly_176: <default("SensorNode")> like INetworkNode {
        @display("p=367.60,9.64");
    }

    host_fn_rly_177: <default("SensorNode")> like INetworkNode {
        @display("p=260.02,78.55");
    }

    host_fn_rly_178: <default("SensorNode")> like INetworkNode {
        @display("p=275.03,139.63");
    }

    host_fn_rly_179: <default("SensorNode")> like INetworkNode {
        @display("p=250.89,68.96");
    }

    host_fn_rly_180: <default("SensorNode")> like INetworkNode {
        @display("p=257.73,18.98");
    }

    host_fn_rly_181: <default("SensorNode")> like INetworkNode {
        @display("p=205.95,42.87");
    }

    host_fn_rly_182: <default("SensorNode")> like INetworkNode {
        @display("p=199.50,74.67");
    }

    host_fn_rly_183: <default("SensorNode")> like INetworkNode {
        @display("p=265.41,99.04");
    }

    host_fn_rly_184: <default("SensorNode")> like INetworkNode {
        @display("p=237.16,125.99");
    }

    host_fn_rly_185: <default("SensorNode")> like INetworkNode {
        @display("p=284.64,207.15");
    }

    host_fn_rly_186: <default("SensorNode")> like INetworkNode {
        @display("p=367.55,235.18");
    }

    host_fn_rly_187: <default("SensorNode")> like INetworkNode {
        @display("p=350.58,262.48");
    }

    host_fn_rly_188: <default("SensorNode")> like INetworkNode {
        @display("p=328.46,265.43");
    }

    host_fn_rly_189: <default("SensorNode")> like INetworkNode {
        @display("p=371.83,263.31");
    }

    host_fn_rly_190: <default("SensorNode")> like INetworkNode {
        @display("p=293.72,309.40");
    }

    host_fn_rly_191: <default("SensorNode")> like INetworkNode {
        @display("p=261.85,125.23");
    }

    host_fn_rly_192: <default("SensorNode")> like INetworkNode {
        @display("p=228.22,69.15");
    }

    host_fn_rly_193: <default("SensorNode")> like INetworkNode {
        @display("p=225.64,90.36");
    }

    host_fn_rly_194: <default("SensorNode")> like INetworkNode {
        @display("p=185.05,59.64");
    }

    host_fn_rly_195: <default("SensorNode")> like INetworkNode {
        @display("p=251.96,32.24");
    }

    host_fn_rly_196: <default("SensorNode")> like INetworkNode {
        @display("p=306.72,23.51");
    }

    host_fn_rly_197: <default("SensorNode")> like INetworkNode {
        @display("p=271.69,10.41");
    }

    host_fn_rly_198: <default("SensorNode")> like INetworkNode {
        @display("p=277.83,21.12");
    }

    host_fn_rly_199: <default("SensorNode")> like INetworkNode {
        @display("p=244.78,86.68");
    }

    host_fn_rly_200: <default("SensorNode")> like INetworkNode {
        @display("p=229.57,154.20");
    }

}

