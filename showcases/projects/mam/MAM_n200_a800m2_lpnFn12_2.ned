
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn12_2
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
        @display("p=100.00,700.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=113.35,759.61");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=142.74,778.11");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=156.33,632.28");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=143.53,544.99");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=160.18,485.03");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=232.12,472.35");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=275.59,437.76");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=256.88,358.22");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=262.87,439.73");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=338.02,452.39");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=425.40,405.48");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=411.64,368.26");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=400.78,415.81");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=339.13,391.42");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=371.87,299.28");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=337.75,321.11");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=88.52,674.85");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=133.01,757.70");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=117.67,794.13");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=147.57,680.58");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=129.11,572.72");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=170.64,472.32");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=303.66,507.32");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=305.53,430.16");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=183.65,334.35");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=278.95,505.80");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=371.34,512.45");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=450.76,425.66");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=416.98,383.31");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=400.23,442.46");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=345.50,329.55");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=383.32,314.14");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=329.31,326.74");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=92.28,709.90");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=211.76,760.72");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=154.41,777.39");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=129.66,705.38");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=131.96,553.04");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=124.45,509.29");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=245.97,546.44");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=280.49,428.94");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=320.54,365.90");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=271.00,405.08");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=401.14,380.08");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=516.87,418.38");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=494.32,377.16");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=410.34,423.88");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=334.67,428.41");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=373.36,369.64");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=350.75,306.27");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=71.70,642.25");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=196.90,749.88");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=181.10,744.75");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=190.36,608.67");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=194.11,545.80");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=144.71,464.62");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=207.09,406.94");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=274.68,357.14");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=193.66,368.26");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=308.20,441.89");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=321.44,411.45");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=479.96,379.42");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=425.99,316.83");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=386.07,429.85");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=322.69,399.24");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=303.48,350.53");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=307.78,331.45");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=75.75,685.59");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=101.82,762.07");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=74.86,713.61");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=165.67,652.56");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=57.88,589.10");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=96.55,476.59");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=324.21,455.98");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=257.74,419.84");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=244.43,393.95");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=223.43,353.05");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=347.08,476.19");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=382.01,414.48");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=390.34,335.94");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=357.81,400.29");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=296.43,389.23");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=398.28,348.19");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=267.97,286.25");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=114.12,721.39");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=90.56,760.50");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=115.51,707.02");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=79.89,589.92");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=172.18,542.61");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=199.07,511.14");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=151.30,434.15");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=201.90,387.25");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=287.10,312.76");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=227.01,490.99");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=356.40,460.07");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=441.91,449.48");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=401.96,332.32");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=379.01,397.70");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=343.17,405.05");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=417.32,322.14");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=388.27,261.38");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=120.98,669.14");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=147.94,708.54");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=172.17,752.99");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=69.46,674.14");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=112.46,616.53");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=214.44,481.64");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=269.99,492.65");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=283.27,465.62");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=317.28,426.53");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=248.02,516.04");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=384.67,470.04");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=387.49,358.96");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=481.51,357.29");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=446.02,347.95");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=333.98,480.13");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=353.57,285.78");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=360.35,337.01");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=152.21,750.05");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=38.81,754.89");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=58.63,784.10");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=129.97,677.07");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=219.82,602.55");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=90.70,460.54");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=313.12,471.54");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=225.70,438.61");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=187.73,286.21");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=257.88,462.14");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=324.19,376.48");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=400.18,362.59");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=491.74,351.63");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=432.35,383.32");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=291.05,341.24");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=303.41,277.30");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=265.21,347.16");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=185.90,712.67");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=130.11,725.09");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=72.46,756.35");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=230.75,659.69");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=119.83,624.25");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=171.66,581.62");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=183.00,433.32");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=311.86,482.00");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=284.18,404.70");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=224.70,453.54");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=351.20,443.35");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=444.01,319.97");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=390.71,388.20");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=390.73,407.90");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=279.91,344.43");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=341.20,281.06");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=342.64,292.61");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=159.43,695.86");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=82.73,740.18");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=203.40,783.17");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=142.63,611.71");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=55.49,561.95");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=183.02,548.38");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=243.50,465.91");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=294.62,366.72");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=264.09,368.83");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=243.56,405.63");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=347.19,363.71");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=456.53,331.69");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=460.73,395.93");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=414.77,335.65");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=329.44,443.22");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=425.51,328.81");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=319.29,322.12");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=112.62,685.78");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=146.92,759.15");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=158.74,766.07");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=215.42,710.83");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=92.00,509.85");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=248.05,444.26");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=231.00,525.42");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=311.70,415.78");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=265.76,299.26");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=177.24,409.93");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=404.67,465.10");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=479.79,457.07");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=484.36,318.44");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=398.03,504.44");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=339.94,465.62");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=376.51,235.37");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=357.61,321.73");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=188.58,658.79");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=126.39,745.45");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=61.20,754.49");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=136.08,648.91");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=63.66,528.84");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=109.13,515.90");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=196.75,465.03");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=212.82,448.71");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=208.57,331.84");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=181.93,475.58");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=342.09,418.61");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=494.43,419.20");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=421.27,345.57");
    }

}

