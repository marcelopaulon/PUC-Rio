
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn12_7
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
        @display("p=123.36,260.49");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=180.40,225.67");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=210.67,211.60");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=163.87,169.73");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=218.68,171.94");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=251.42,94.05");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=275.68,92.94");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=279.51,125.24");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=317.35,167.28");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=283.20,173.93");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=293.04,200.94");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=304.89,183.85");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=318.40,190.19");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=327.23,281.94");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=382.82,235.67");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=338.85,263.94");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=17.26,322.95");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=143.59,348.85");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=127.93,301.56");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=270.00,222.54");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=77.02,174.71");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=204.54,166.45");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=252.02,77.30");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=248.14,103.95");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=225.15,116.44");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=372.21,85.09");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=358.38,196.45");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=235.71,120.34");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=225.04,236.89");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=396.74,164.13");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=352.53,297.72");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=310.36,236.10");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=338.76,310.30");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=115.26,361.66");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=100.70,166.56");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=171.16,217.23");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=127.38,209.09");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=145.14,232.19");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=190.68,76.14");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=311.69,152.73");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=281.83,79.10");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=217.31,161.43");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=326.86,175.55");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=266.60,155.53");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=261.37,248.33");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=267.59,267.07");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=310.24,209.09");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=308.50,317.07");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=379.62,145.34");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=262.81,237.12");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=162.91,377.04");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=109.24,307.42");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=125.88,156.30");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=189.53,263.86");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=183.03,165.32");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=199.33,185.59");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=288.72,57.89");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=287.35,29.85");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=304.55,123.30");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=335.16,136.17");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=357.17,135.84");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=273.49,189.45");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=290.21,189.47");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=334.40,207.42");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=269.46,300.67");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=375.67,255.00");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=363.11,345.11");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=119.38,376.52");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=121.36,241.19");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=246.03,219.78");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=234.44,262.42");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=208.44,96.69");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=250.96,182.24");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=159.48,70.19");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=274.20,147.16");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=244.46,47.66");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=386.86,118.15");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=193.62,201.38");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=355.72,251.98");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=347.38,151.96");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=310.91,258.29");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=255.24,280.51");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=390.35,227.68");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=349.01,268.33");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=106.30,341.67");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=142.30,335.72");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=204.56,225.15");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=275.89,211.69");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=109.77,187.30");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=228.80,167.54");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=239.47,96.48");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=263.99,108.98");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=342.54,115.21");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=348.50,104.66");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=362.25,186.01");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=298.84,229.62");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=244.65,137.57");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=321.48,132.80");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=330.47,232.78");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=393.56,193.02");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=388.16,274.69");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=158.49,330.41");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=189.19,213.58");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=141.85,197.81");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=139.34,164.37");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=162.98,144.52");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=220.29,137.38");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=258.23,146.38");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=315.26,81.52");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=307.40,110.69");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=379.28,171.18");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=346.82,200.48");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=332.31,158.83");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=304.87,278.24");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=314.64,119.51");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=262.09,313.54");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=338.77,220.38");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=281.26,283.59");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=45.85,354.54");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=194.93,304.27");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=172.62,201.51");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=163.82,285.69");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=182.45,155.34");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=145.98,134.65");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=284.94,105.74");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=255.88,134.67");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=302.96,91.50");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=292.04,218.55");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=227.88,96.43");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=366.36,208.86");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=245.90,168.09");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=361.32,106.95");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=287.00,325.17");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=390.23,289.96");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=350.85,235.20");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=92.96,337.43");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=143.33,180.17");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=244.28,288.13");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=223.31,215.96");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=119.03,113.43");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=256.87,158.04");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=277.44,45.07");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=327.38,31.12");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=287.56,116.12");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=347.12,179.39");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=280.53,201.48");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=265.73,199.19");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=362.25,174.00");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=341.53,126.89");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=335.86,323.22");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=383.42,325.17");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=339.41,251.34");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=112.16,264.51");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=132.94,250.13");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=162.17,264.75");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=158.37,228.79");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=136.72,74.59");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=148.47,104.61");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=207.93,18.12");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=270.98,61.28");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=262.81,124.52");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=361.03,121.70");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=278.82,247.01");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=305.26,160.48");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=277.72,258.41");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=317.84,102.36");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=343.32,290.12");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=389.40,208.14");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=398.27,238.32");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=151.21,292.29");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=151.84,202.31");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=154.79,212.76");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=144.36,216.75");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=246.07,127.25");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=203.46,198.67");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=292.89,160.63");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=203.64,121.21");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=312.54,139.84");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=292.23,78.16");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=320.81,205.08");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=299.02,253.85");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=372.85,157.97");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=260.09,173.90");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=386.32,247.60");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=377.02,300.80");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=294.16,332.54");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=114.93,336.57");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=127.77,190.88");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=117.51,251.70");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=145.99,259.03");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=167.38,158.73");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=234.72,177.92");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=326.65,148.60");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=295.41,133.85");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=243.01,151.99");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=282.63,161.54");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=372.09,197.88");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=235.39,211.19");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=295.18,170.51");
    }

}

