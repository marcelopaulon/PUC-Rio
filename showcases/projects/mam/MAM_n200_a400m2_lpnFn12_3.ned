
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn12_3
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
        @display("p=91.94,351.07");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=187.58,367.00");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=198.95,340.44");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=224.58,299.26");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=207.09,305.40");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=196.15,258.85");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=280.83,297.10");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=291.71,314.17");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=326.80,276.06");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=300.76,298.04");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=336.49,241.67");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=340.86,195.84");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=378.00,148.29");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=362.82,174.42");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=355.82,163.24");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=325.98,112.54");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=136.65,233.82");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=61.65,283.13");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=261.52,317.54");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=215.95,374.81");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=250.51,262.79");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=253.25,369.55");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=196.52,167.69");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=188.89,278.45");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=354.01,351.50");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=313.56,225.54");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=259.93,330.03");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=348.53,244.36");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=286.39,212.22");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=348.14,129.78");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=315.32,190.78");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=373.49,159.79");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=348.06,97.07");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=83.33,205.88");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=136.72,363.56");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=230.81,325.00");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=182.33,313.77");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=198.57,362.75");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=243.02,275.46");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=202.68,213.11");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=298.31,277.18");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=272.01,267.29");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=282.53,325.73");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=317.40,269.00");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=354.13,324.70");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=333.30,179.26");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=364.31,140.34");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=375.87,220.00");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=327.26,219.52");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=367.69,115.51");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=116.29,264.11");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=121.73,322.89");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=128.57,335.74");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=179.47,332.13");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=238.10,311.36");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=211.46,296.14");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=103.22,260.41");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=340.69,330.95");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=270.51,222.88");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=364.68,253.68");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=272.91,354.86");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=299.41,157.13");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=345.20,207.51");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=293.74,173.56");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=336.48,168.91");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=323.17,136.94");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=264.26,178.06");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=115.11,300.20");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=90.46,370.24");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=151.84,392.96");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=208.85,248.19");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=212.93,266.67");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=189.87,329.02");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=250.30,303.13");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=275.61,306.55");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=283.72,276.70");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=361.52,294.06");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=316.53,244.62");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=248.77,208.52");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=353.13,182.72");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=390.25,81.07");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=304.10,178.14");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=372.75,234.72");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=375.22,35.99");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=20.75,328.91");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=70.67,329.13");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=181.54,384.15");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=102.30,319.58");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=238.52,338.87");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=196.65,288.70");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=274.38,251.82");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=209.54,343.45");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=344.58,380.59");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=377.07,324.64");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=345.66,275.20");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=314.23,312.17");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=313.77,145.00");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=315.51,98.98");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=283.38,185.57");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=358.18,73.57");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=294.51,62.27");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=75.22,292.01");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=43.83,370.08");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=208.27,391.88");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=199.27,278.87");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=176.67,291.18");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=187.70,305.22");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=198.80,324.05");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=288.42,288.93");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=292.78,238.22");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=345.19,218.77");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=294.90,351.18");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=322.08,201.97");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=374.10,205.42");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=372.93,179.16");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=284.70,132.17");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=388.52,120.55");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=386.75,62.62");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=88.73,232.72");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=152.43,374.21");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=260.25,384.18");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=227.22,336.53");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=145.04,313.21");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=230.01,225.07");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=183.49,174.26");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=377.45,312.56");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=292.64,260.83");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=312.62,297.04");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=291.31,250.36");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=324.88,339.55");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=305.06,235.09");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=394.24,177.72");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=342.85,155.26");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=396.57,233.54");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=385.85,38.51");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=140.39,264.45");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=101.05,382.66");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=115.29,375.24");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=170.08,315.19");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=243.20,286.76");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=128.91,308.60");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=167.09,337.61");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=275.06,199.88");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=253.09,237.71");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=336.06,257.62");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=275.41,387.24");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=343.74,305.23");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=375.06,278.30");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=365.57,87.28");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=395.16,166.42");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=391.48,133.72");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=319.84,158.15");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=52.85,269.95");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=81.96,320.22");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=168.90,369.42");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=208.61,367.18");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=181.97,218.49");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=228.53,352.49");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=260.88,275.35");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=250.50,353.36");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=318.11,364.89");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=392.22,293.75");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=239.95,366.58");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=306.14,209.14");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=310.73,133.61");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=382.12,139.08");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=340.99,106.60");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=384.32,170.80");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=315.95,66.10");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=89.75,284.68");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=41.13,349.55");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=179.65,394.53");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=152.58,362.10");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=275.48,317.54");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=168.41,297.36");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=213.57,238.80");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=308.30,276.50");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=304.92,263.28");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=388.72,329.31");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=332.15,287.79");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=325.71,188.89");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=365.42,227.83");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=353.61,144.97");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=306.26,119.99");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=377.70,123.68");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=306.87,81.39");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=128.87,250.34");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=127.78,347.53");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=217.39,283.21");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=214.45,326.27");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=142.59,285.60");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=165.44,348.57");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=164.16,276.32");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=225.79,267.41");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=299.77,321.64");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=348.71,364.09");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=276.02,284.86");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=393.78,261.42");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=397.05,222.06");
    }

}

