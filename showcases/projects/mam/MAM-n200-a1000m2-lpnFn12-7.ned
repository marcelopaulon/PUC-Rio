
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn12-7
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
        @display("p=277.00,829.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=298.10,784.77");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=305.19,771.47");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=366.99,836.53");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=346.39,783.13");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=399.71,726.46");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=450.77,691.60");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=455.80,773.27");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=504.97,742.76");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=433.32,785.64");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=464.32,830.92");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=483.26,850.34");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=483.44,776.09");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=510.48,855.19");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=481.85,871.09");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=500.95,943.74");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=467.66,927.85");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=266.35,843.63");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=206.28,806.77");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=216.06,812.15");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=452.37,835.66");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=369.12,768.84");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=330.95,782.16");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=431.58,700.74");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=469.23,714.90");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=537.22,762.04");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=376.92,747.43");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=494.27,778.85");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=548.17,814.62");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=472.82,729.35");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=471.27,809.05");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=472.24,865.69");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=442.85,952.64");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=445.43,990.49");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=282.11,786.58");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=337.03,709.08");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=302.18,823.78");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=426.27,897.09");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=354.68,695.66");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=387.01,691.81");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=462.19,734.31");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=507.45,715.75");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=573.40,781.20");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=414.93,741.74");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=509.43,840.79");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=523.91,859.28");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=468.47,783.21");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=424.59,857.97");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=459.16,865.38");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=560.32,952.42");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=488.59,893.81");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=308.38,921.58");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=216.83,732.49");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=322.33,741.12");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=350.49,753.64");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=295.14,814.33");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=386.93,740.64");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=406.32,694.18");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=444.92,780.50");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=524.57,796.57");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=438.04,799.06");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=386.17,874.93");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=489.61,753.96");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=448.20,765.27");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=523.41,774.75");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=511.30,894.18");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=522.71,928.34");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=496.21,913.30");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=277.88,864.17");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=251.00,749.02");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=342.60,740.90");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=352.90,833.00");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=313.72,805.10");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=338.66,656.51");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=461.51,607.23");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=380.60,760.19");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=468.56,702.06");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=369.17,787.91");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=470.37,771.25");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=475.71,829.71");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=446.24,751.28");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=523.21,820.93");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=532.74,898.19");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=500.37,881.00");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=422.72,876.94");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=242.29,831.54");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=299.92,709.99");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=278.11,774.53");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=280.44,846.74");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=329.92,805.01");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=392.98,679.02");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=511.53,766.48");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=411.21,816.44");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=527.56,809.57");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=442.22,874.98");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=424.64,827.50");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=579.97,831.64");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=541.58,822.49");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=567.08,837.54");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=390.96,894.97");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=483.20,942.72");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=450.59,936.50");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=178.43,844.40");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=310.75,741.25");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=260.68,780.27");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=402.25,898.92");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=332.84,856.52");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=358.69,746.93");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=458.30,655.01");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=404.95,807.47");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=509.16,732.58");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=415.45,759.99");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=438.16,827.67");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=548.58,796.02");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=428.31,768.89");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=493.05,843.69");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=538.95,855.30");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=458.64,891.18");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=478.90,890.26");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=259.81,741.30");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=208.85,774.14");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=332.00,729.69");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=329.01,823.31");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=407.84,774.42");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=397.87,822.26");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=364.03,656.85");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=487.01,705.04");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=429.48,728.03");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=451.14,824.84");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=373.44,799.12");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=500.66,864.16");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=410.92,708.11");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=508.13,786.81");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=447.06,899.52");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=471.84,988.08");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=530.18,909.36");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=304.44,798.27");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=272.65,799.12");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=230.97,751.78");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=341.72,871.23");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=357.11,822.54");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=377.07,713.27");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=427.79,615.45");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=489.99,798.15");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=480.32,765.80");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=512.32,804.41");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=503.46,904.25");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=488.40,859.91");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=394.62,779.32");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=575.94,893.82");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=466.77,877.97");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=497.39,926.69");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=400.26,972.51");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=213.75,845.84");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=339.29,775.30");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=295.33,867.15");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=345.60,796.62");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=367.63,752.88");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=432.86,681.55");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=488.08,655.71");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=456.43,756.85");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=500.18,753.67");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=451.65,852.19");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=396.18,865.88");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=456.11,880.97");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=499.85,827.99");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=592.21,869.88");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=417.65,934.47");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=527.05,938.10");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=464.86,851.26");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=330.20,904.44");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=346.69,725.95");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=207.88,792.71");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=366.83,846.75");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=271.67,783.19");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=454.32,792.88");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=467.76,685.38");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=395.29,852.36");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=523.27,720.96");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=471.83,819.89");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=525.24,753.00");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=512.70,910.92");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=561.35,805.95");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=486.11,817.87");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=441.79,854.07");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=450.38,972.56");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=430.24,980.14");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=317.59,862.15");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=268.65,763.68");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=308.37,848.00");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=365.75,886.44");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=345.71,825.92");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=434.47,737.61");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=423.03,707.83");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=445.50,711.45");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=442.80,808.43");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=391.70,751.73");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=436.32,841.41");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=522.71,835.27");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=543.93,723.78");
    }

}

