
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn1-8
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
        @display("p=90.00,3.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=24.49,12.46");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=50.10,42.50");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=96.97,32.63");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=21.24,78.25");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=39.74,86.76");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=61.42,134.06");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=13.66,122.35");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=13.06,106.82");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=7.80,87.33");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=22.45,94.52");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=27.13,65.12");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=22.64,139.13");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=70.52,149.60");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=24.24,161.83");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=47.99,103.69");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=77.67,190.02");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=102.29,159.72");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=197.40,186.28");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=147.77,201.37");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=136.76,200.50");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=132.73,114.09");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=156.50,148.73");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=178.49,137.86");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=129.35,183.85");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=123.77,205.20");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=111.90,205.83");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=209.60,207.22");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=230.86,250.76");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=291.73,231.48");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=276.39,295.77");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=280.92,304.71");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=309.53,353.97");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=296.49,373.67");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=272.96,398.85");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=254.12,359.97");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=264.97,348.70");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=269.89,418.17");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=224.84,425.74");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=134.18,447.57");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=178.40,490.01");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=197.45,444.83");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=174.29,529.31");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=162.47,546.57");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=117.68,561.66");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=67.27,583.02");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=114.47,612.22");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=156.80,620.70");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=241.51,644.59");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=173.48,678.58");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=184.10,654.53");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=243.77,624.17");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=237.10,609.88");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=196.12,635.85");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=271.74,578.92");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=256.33,629.60");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=245.60,724.33");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=179.93,733.09");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=152.95,691.53");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=195.07,694.07");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=170.27,691.17");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=165.04,719.83");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=139.82,630.35");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=114.54,638.61");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=119.38,666.99");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=100.46,608.51");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=74.80,609.83");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=38.94,589.35");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=29.42,601.52");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=29.27,535.56");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=129.04,539.30");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=195.53,530.97");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=174.53,583.60");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=193.71,492.94");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=294.48,489.35");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=293.97,456.83");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=318.73,415.97");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=342.31,403.42");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=373.66,410.48");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=408.43,391.87");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=494.21,349.81");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=519.15,283.00");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=552.97,200.99");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=591.36,193.75");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=657.15,154.34");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=634.50,163.16");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=599.28,84.02");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=644.50,57.87");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=652.42,100.06");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=720.34,63.92");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=700.44,42.38");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=701.26,56.10");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=729.43,3.15");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=741.37,3.34");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=690.67,1.89");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=703.54,71.08");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=730.82,118.73");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=766.04,64.41");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=696.68,105.33");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=709.14,124.61");
    }

    host_fn_rly_101: <default("SensorNode")> like INetworkNode {
        @display("p=710.07,187.99");
    }

    host_fn_rly_102: <default("SensorNode")> like INetworkNode {
        @display("p=724.28,136.62");
    }

    host_fn_rly_103: <default("SensorNode")> like INetworkNode {
        @display("p=762.05,149.54");
    }

    host_fn_rly_104: <default("SensorNode")> like INetworkNode {
        @display("p=761.97,214.10");
    }

    host_fn_rly_105: <default("SensorNode")> like INetworkNode {
        @display("p=749.24,233.65");
    }

    host_fn_rly_106: <default("SensorNode")> like INetworkNode {
        @display("p=723.01,197.44");
    }

    host_fn_rly_107: <default("SensorNode")> like INetworkNode {
        @display("p=723.20,225.47");
    }

    host_fn_rly_108: <default("SensorNode")> like INetworkNode {
        @display("p=715.83,154.96");
    }

    host_fn_rly_109: <default("SensorNode")> like INetworkNode {
        @display("p=784.26,167.53");
    }

    host_fn_rly_110: <default("SensorNode")> like INetworkNode {
        @display("p=741.83,150.71");
    }

    host_fn_rly_111: <default("SensorNode")> like INetworkNode {
        @display("p=647.18,132.57");
    }

    host_fn_rly_112: <default("SensorNode")> like INetworkNode {
        @display("p=548.72,21.61");
    }

    host_fn_rly_113: <default("SensorNode")> like INetworkNode {
        @display("p=597.39,31.36");
    }

    host_fn_rly_114: <default("SensorNode")> like INetworkNode {
        @display("p=573.20,56.06");
    }

    host_fn_rly_115: <default("SensorNode")> like INetworkNode {
        @display("p=558.80,31.35");
    }

    host_fn_rly_116: <default("SensorNode")> like INetworkNode {
        @display("p=606.25,55.39");
    }

    host_fn_rly_117: <default("SensorNode")> like INetworkNode {
        @display("p=612.39,71.68");
    }

    host_fn_rly_118: <default("SensorNode")> like INetworkNode {
        @display("p=579.57,158.67");
    }

    host_fn_rly_119: <default("SensorNode")> like INetworkNode {
        @display("p=592.93,211.29");
    }

    host_fn_rly_120: <default("SensorNode")> like INetworkNode {
        @display("p=616.54,263.33");
    }

    host_fn_rly_121: <default("SensorNode")> like INetworkNode {
        @display("p=682.62,312.58");
    }

    host_fn_rly_122: <default("SensorNode")> like INetworkNode {
        @display("p=634.92,264.85");
    }

    host_fn_rly_123: <default("SensorNode")> like INetworkNode {
        @display("p=693.19,238.97");
    }

    host_fn_rly_124: <default("SensorNode")> like INetworkNode {
        @display("p=702.33,212.85");
    }

    host_fn_rly_125: <default("SensorNode")> like INetworkNode {
        @display("p=691.93,226.73");
    }

    host_fn_rly_126: <default("SensorNode")> like INetworkNode {
        @display("p=665.67,224.70");
    }

    host_fn_rly_127: <default("SensorNode")> like INetworkNode {
        @display("p=683.01,243.39");
    }

    host_fn_rly_128: <default("SensorNode")> like INetworkNode {
        @display("p=607.40,271.30");
    }

    host_fn_rly_129: <default("SensorNode")> like INetworkNode {
        @display("p=637.79,330.52");
    }

    host_fn_rly_130: <default("SensorNode")> like INetworkNode {
        @display("p=612.02,245.96");
    }

    host_fn_rly_131: <default("SensorNode")> like INetworkNode {
        @display("p=573.92,175.32");
    }

    host_fn_rly_132: <default("SensorNode")> like INetworkNode {
        @display("p=524.67,158.72");
    }

    host_fn_rly_133: <default("SensorNode")> like INetworkNode {
        @display("p=543.95,92.68");
    }

    host_fn_rly_134: <default("SensorNode")> like INetworkNode {
        @display("p=551.16,65.13");
    }

    host_fn_rly_135: <default("SensorNode")> like INetworkNode {
        @display("p=592.01,99.87");
    }

    host_fn_rly_136: <default("SensorNode")> like INetworkNode {
        @display("p=525.20,94.78");
    }

    host_fn_rly_137: <default("SensorNode")> like INetworkNode {
        @display("p=538.81,83.64");
    }

    host_fn_rly_138: <default("SensorNode")> like INetworkNode {
        @display("p=474.28,94.80");
    }

    host_fn_rly_139: <default("SensorNode")> like INetworkNode {
        @display("p=461.63,189.08");
    }

    host_fn_rly_140: <default("SensorNode")> like INetworkNode {
        @display("p=471.81,118.55");
    }

    host_fn_rly_141: <default("SensorNode")> like INetworkNode {
        @display("p=415.72,113.86");
    }

    host_fn_rly_142: <default("SensorNode")> like INetworkNode {
        @display("p=351.17,134.23");
    }

    host_fn_rly_143: <default("SensorNode")> like INetworkNode {
        @display("p=293.38,121.81");
    }

    host_fn_rly_144: <default("SensorNode")> like INetworkNode {
        @display("p=317.36,126.21");
    }

    host_fn_rly_145: <default("SensorNode")> like INetworkNode {
        @display("p=311.02,154.67");
    }

    host_fn_rly_146: <default("SensorNode")> like INetworkNode {
        @display("p=322.02,168.02");
    }

    host_fn_rly_147: <default("SensorNode")> like INetworkNode {
        @display("p=332.14,153.97");
    }

    host_fn_rly_148: <default("SensorNode")> like INetworkNode {
        @display("p=345.27,79.48");
    }

    host_fn_rly_149: <default("SensorNode")> like INetworkNode {
        @display("p=340.35,56.40");
    }

    host_fn_rly_150: <default("SensorNode")> like INetworkNode {
        @display("p=298.46,50.73");
    }

    host_fn_rly_151: <default("SensorNode")> like INetworkNode {
        @display("p=355.56,89.26");
    }

    host_fn_rly_152: <default("SensorNode")> like INetworkNode {
        @display("p=389.42,94.12");
    }

    host_fn_rly_153: <default("SensorNode")> like INetworkNode {
        @display("p=375.82,94.05");
    }

    host_fn_rly_154: <default("SensorNode")> like INetworkNode {
        @display("p=385.84,80.24");
    }

    host_fn_rly_155: <default("SensorNode")> like INetworkNode {
        @display("p=418.71,155.28");
    }

    host_fn_rly_156: <default("SensorNode")> like INetworkNode {
        @display("p=390.16,110.65");
    }

    host_fn_rly_157: <default("SensorNode")> like INetworkNode {
        @display("p=422.86,50.48");
    }

    host_fn_rly_158: <default("SensorNode")> like INetworkNode {
        @display("p=358.47,57.92");
    }

    host_fn_rly_159: <default("SensorNode")> like INetworkNode {
        @display("p=434.36,59.14");
    }

    host_fn_rly_160: <default("SensorNode")> like INetworkNode {
        @display("p=407.55,61.83");
    }

    host_fn_rly_161: <default("SensorNode")> like INetworkNode {
        @display("p=326.85,19.67");
    }

    host_fn_rly_162: <default("SensorNode")> like INetworkNode {
        @display("p=323.14,70.94");
    }

    host_fn_rly_163: <default("SensorNode")> like INetworkNode {
        @display("p=253.90,30.04");
    }

    host_fn_rly_164: <default("SensorNode")> like INetworkNode {
        @display("p=203.85,79.75");
    }

    host_fn_rly_165: <default("SensorNode")> like INetworkNode {
        @display("p=275.73,98.43");
    }

    host_fn_rly_166: <default("SensorNode")> like INetworkNode {
        @display("p=279.12,58.88");
    }

    host_fn_rly_167: <default("SensorNode")> like INetworkNode {
        @display("p=260.35,8.80");
    }

    host_fn_rly_168: <default("SensorNode")> like INetworkNode {
        @display("p=313.84,86.52");
    }

    host_fn_rly_169: <default("SensorNode")> like INetworkNode {
        @display("p=293.85,94.23");
    }

    host_fn_rly_170: <default("SensorNode")> like INetworkNode {
        @display("p=304.35,132.82");
    }

    host_fn_rly_171: <default("SensorNode")> like INetworkNode {
        @display("p=307.61,60.98");
    }

    host_fn_rly_172: <default("SensorNode")> like INetworkNode {
        @display("p=347.79,26.52");
    }

    host_fn_rly_173: <default("SensorNode")> like INetworkNode {
        @display("p=330.83,38.24");
    }

    host_fn_rly_174: <default("SensorNode")> like INetworkNode {
        @display("p=238.55,40.37");
    }

    host_fn_rly_175: <default("SensorNode")> like INetworkNode {
        @display("p=280.34,20.27");
    }

    host_fn_rly_176: <default("SensorNode")> like INetworkNode {
        @display("p=409.84,80.34");
    }

    host_fn_rly_177: <default("SensorNode")> like INetworkNode {
        @display("p=368.37,164.79");
    }

    host_fn_rly_178: <default("SensorNode")> like INetworkNode {
        @display("p=301.18,159.21");
    }

    host_fn_rly_179: <default("SensorNode")> like INetworkNode {
        @display("p=242.95,183.07");
    }

    host_fn_rly_180: <default("SensorNode")> like INetworkNode {
        @display("p=245.85,120.25");
    }

    host_fn_rly_181: <default("SensorNode")> like INetworkNode {
        @display("p=259.99,39.86");
    }

    host_fn_rly_182: <default("SensorNode")> like INetworkNode {
        @display("p=186.00,97.98");
    }

    host_fn_rly_183: <default("SensorNode")> like INetworkNode {
        @display("p=191.57,64.22");
    }

    host_fn_rly_184: <default("SensorNode")> like INetworkNode {
        @display("p=198.07,96.91");
    }

    host_fn_rly_185: <default("SensorNode")> like INetworkNode {
        @display("p=196.74,159.51");
    }

    host_fn_rly_186: <default("SensorNode")> like INetworkNode {
        @display("p=168.83,90.37");
    }

    host_fn_rly_187: <default("SensorNode")> like INetworkNode {
        @display("p=139.29,77.32");
    }

    host_fn_rly_188: <default("SensorNode")> like INetworkNode {
        @display("p=150.19,54.13");
    }

    host_fn_rly_189: <default("SensorNode")> like INetworkNode {
        @display("p=138.65,23.52");
    }

    host_fn_rly_190: <default("SensorNode")> like INetworkNode {
        @display("p=181.14,47.02");
    }

    host_fn_rly_191: <default("SensorNode")> like INetworkNode {
        @display("p=184.24,76.22");
    }

    host_fn_rly_192: <default("SensorNode")> like INetworkNode {
        @display("p=207.11,127.29");
    }

    host_fn_rly_193: <default("SensorNode")> like INetworkNode {
        @display("p=259.33,112.25");
    }

    host_fn_rly_194: <default("SensorNode")> like INetworkNode {
        @display("p=241.21,71.08");
    }

    host_fn_rly_195: <default("SensorNode")> like INetworkNode {
        @display("p=228.43,103.25");
    }

    host_fn_rly_196: <default("SensorNode")> like INetworkNode {
        @display("p=229.67,71.68");
    }

    host_fn_rly_197: <default("SensorNode")> like INetworkNode {
        @display("p=140.68,59.99");
    }

    host_fn_rly_198: <default("SensorNode")> like INetworkNode {
        @display("p=152.82,24.15");
    }

    host_fn_rly_199: <default("SensorNode")> like INetworkNode {
        @display("p=178.49,115.34");
    }

    host_fn_rly_200: <default("SensorNode")> like INetworkNode {
        @display("p=210.45,104.85");
    }

}

