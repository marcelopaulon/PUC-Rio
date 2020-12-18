
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn1-9
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
        @display("p=867.00,851.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=847.18,851.89");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=845.15,931.32");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=884.29,986.98");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=886.62,907.64");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=911.77,924.41");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=921.65,891.90");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=990.19,928.06");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=976.90,922.96");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=973.46,911.24");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=916.73,951.56");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=999.53,958.63");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=994.50,999.30");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=970.54,974.29");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=972.60,957.74");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=960.20,873.10");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=970.41,879.16");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=940.58,884.65");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=892.59,889.96");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=904.77,915.00");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=856.24,832.94");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=925.23,809.62");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=857.04,869.79");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=761.39,890.45");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=758.62,903.80");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=752.09,879.55");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=797.02,884.62");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=807.56,901.39");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=804.00,870.79");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=833.45,784.32");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=873.93,834.02");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=922.63,781.72");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=915.49,685.03");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=922.85,659.87");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=930.22,674.58");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=867.48,725.78");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=849.01,774.31");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=834.24,752.69");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=794.42,726.12");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=816.73,715.06");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=904.76,751.97");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=874.74,800.08");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=804.78,826.42");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=890.89,834.59");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=984.85,851.84");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=975.58,857.66");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=881.88,827.38");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=906.02,851.22");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=966.80,821.85");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=959.40,843.58");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=962.17,774.02");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=953.25,807.25");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=900.13,802.81");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=924.80,822.55");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=962.76,799.45");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=979.41,811.27");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=903.14,770.08");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=814.97,794.81");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=835.30,725.73");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=944.06,802.74");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=933.74,842.98");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=912.60,791.88");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=953.61,756.10");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=950.82,663.66");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=982.06,722.85");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=914.91,710.74");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=949.80,583.57");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=964.31,571.23");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=909.76,633.86");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=956.26,602.66");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=980.08,544.08");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=962.39,464.67");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=968.78,445.03");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=951.72,412.61");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=884.27,409.09");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=853.36,400.34");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=829.46,467.44");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=792.35,507.91");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=792.36,436.36");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=794.60,477.46");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=779.37,426.89");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=841.57,432.47");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=808.85,512.42");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=769.20,447.55");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=765.50,469.96");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=828.13,436.18");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=787.60,456.22");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=817.42,493.95");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=835.24,507.34");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=799.42,560.53");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=802.26,575.26");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=745.52,625.62");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=792.29,683.22");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=821.70,604.33");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=791.44,595.17");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=733.65,610.28");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=770.69,561.30");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=772.46,611.18");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=787.43,536.66");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=705.62,537.36");
    }

    host_fn_rly_101: <default("SensorNode")> like INetworkNode {
        @display("p=711.98,480.62");
    }

    host_fn_rly_102: <default("SensorNode")> like INetworkNode {
        @display("p=713.58,499.85");
    }

    host_fn_rly_103: <default("SensorNode")> like INetworkNode {
        @display("p=758.20,419.73");
    }

    host_fn_rly_104: <default("SensorNode")> like INetworkNode {
        @display("p=803.25,436.51");
    }

    host_fn_rly_105: <default("SensorNode")> like INetworkNode {
        @display("p=894.96,411.66");
    }

    host_fn_rly_106: <default("SensorNode")> like INetworkNode {
        @display("p=913.28,404.20");
    }

    host_fn_rly_107: <default("SensorNode")> like INetworkNode {
        @display("p=942.78,442.07");
    }

    host_fn_rly_108: <default("SensorNode")> like INetworkNode {
        @display("p=871.89,510.28");
    }

    host_fn_rly_109: <default("SensorNode")> like INetworkNode {
        @display("p=830.75,561.16");
    }

    host_fn_rly_110: <default("SensorNode")> like INetworkNode {
        @display("p=873.13,571.36");
    }

    host_fn_rly_111: <default("SensorNode")> like INetworkNode {
        @display("p=826.31,527.25");
    }

    host_fn_rly_112: <default("SensorNode")> like INetworkNode {
        @display("p=736.74,539.83");
    }

    host_fn_rly_113: <default("SensorNode")> like INetworkNode {
        @display("p=709.05,586.17");
    }

    host_fn_rly_114: <default("SensorNode")> like INetworkNode {
        @display("p=747.80,527.06");
    }

    host_fn_rly_115: <default("SensorNode")> like INetworkNode {
        @display("p=780.88,476.01");
    }

    host_fn_rly_116: <default("SensorNode")> like INetworkNode {
        @display("p=693.44,385.87");
    }

    host_fn_rly_117: <default("SensorNode")> like INetworkNode {
        @display("p=740.79,300.20");
    }

    host_fn_rly_118: <default("SensorNode")> like INetworkNode {
        @display("p=778.46,306.85");
    }

    host_fn_rly_119: <default("SensorNode")> like INetworkNode {
        @display("p=785.14,330.81");
    }

    host_fn_rly_120: <default("SensorNode")> like INetworkNode {
        @display("p=823.15,316.26");
    }

    host_fn_rly_121: <default("SensorNode")> like INetworkNode {
        @display("p=801.34,340.20");
    }

    host_fn_rly_122: <default("SensorNode")> like INetworkNode {
        @display("p=780.84,444.29");
    }

    host_fn_rly_123: <default("SensorNode")> like INetworkNode {
        @display("p=712.64,438.84");
    }

    host_fn_rly_124: <default("SensorNode")> like INetworkNode {
        @display("p=703.91,462.65");
    }

    host_fn_rly_125: <default("SensorNode")> like INetworkNode {
        @display("p=609.72,432.44");
    }

    host_fn_rly_126: <default("SensorNode")> like INetworkNode {
        @display("p=630.92,479.38");
    }

    host_fn_rly_127: <default("SensorNode")> like INetworkNode {
        @display("p=587.61,421.57");
    }

    host_fn_rly_128: <default("SensorNode")> like INetworkNode {
        @display("p=605.15,500.38");
    }

    host_fn_rly_129: <default("SensorNode")> like INetworkNode {
        @display("p=636.66,500.84");
    }

    host_fn_rly_130: <default("SensorNode")> like INetworkNode {
        @display("p=644.83,434.03");
    }

    host_fn_rly_131: <default("SensorNode")> like INetworkNode {
        @display("p=646.42,455.67");
    }

    host_fn_rly_132: <default("SensorNode")> like INetworkNode {
        @display("p=626.30,418.28");
    }

    host_fn_rly_133: <default("SensorNode")> like INetworkNode {
        @display("p=658.75,413.24");
    }

    host_fn_rly_134: <default("SensorNode")> like INetworkNode {
        @display("p=506.00,406.56");
    }

    host_fn_rly_135: <default("SensorNode")> like INetworkNode {
        @display("p=477.34,411.46");
    }

    host_fn_rly_136: <default("SensorNode")> like INetworkNode {
        @display("p=429.25,346.57");
    }

    host_fn_rly_137: <default("SensorNode")> like INetworkNode {
        @display("p=359.81,371.25");
    }

    host_fn_rly_138: <default("SensorNode")> like INetworkNode {
        @display("p=380.35,281.28");
    }

    host_fn_rly_139: <default("SensorNode")> like INetworkNode {
        @display("p=352.25,318.62");
    }

    host_fn_rly_140: <default("SensorNode")> like INetworkNode {
        @display("p=307.36,320.88");
    }

    host_fn_rly_141: <default("SensorNode")> like INetworkNode {
        @display("p=366.33,280.04");
    }

    host_fn_rly_142: <default("SensorNode")> like INetworkNode {
        @display("p=382.79,292.26");
    }

    host_fn_rly_143: <default("SensorNode")> like INetworkNode {
        @display("p=405.40,199.45");
    }

    host_fn_rly_144: <default("SensorNode")> like INetworkNode {
        @display("p=378.73,236.55");
    }

    host_fn_rly_145: <default("SensorNode")> like INetworkNode {
        @display("p=368.01,216.81");
    }

    host_fn_rly_146: <default("SensorNode")> like INetworkNode {
        @display("p=402.01,178.03");
    }

    host_fn_rly_147: <default("SensorNode")> like INetworkNode {
        @display("p=399.06,126.50");
    }

    host_fn_rly_148: <default("SensorNode")> like INetworkNode {
        @display("p=421.96,137.67");
    }

    host_fn_rly_149: <default("SensorNode")> like INetworkNode {
        @display("p=428.08,151.74");
    }

    host_fn_rly_150: <default("SensorNode")> like INetworkNode {
        @display("p=391.04,77.72");
    }

    host_fn_rly_151: <default("SensorNode")> like INetworkNode {
        @display("p=380.68,125.98");
    }

    host_fn_rly_152: <default("SensorNode")> like INetworkNode {
        @display("p=307.06,137.99");
    }

    host_fn_rly_153: <default("SensorNode")> like INetworkNode {
        @display("p=306.03,127.30");
    }

    host_fn_rly_154: <default("SensorNode")> like INetworkNode {
        @display("p=347.45,85.54");
    }

    host_fn_rly_155: <default("SensorNode")> like INetworkNode {
        @display("p=345.47,130.96");
    }

    host_fn_rly_156: <default("SensorNode")> like INetworkNode {
        @display("p=334.85,225.57");
    }

    host_fn_rly_157: <default("SensorNode")> like INetworkNode {
        @display("p=383.25,246.67");
    }

    host_fn_rly_158: <default("SensorNode")> like INetworkNode {
        @display("p=379.87,324.06");
    }

    host_fn_rly_159: <default("SensorNode")> like INetworkNode {
        @display("p=425.80,450.35");
    }

    host_fn_rly_160: <default("SensorNode")> like INetworkNode {
        @display("p=416.78,464.82");
    }

    host_fn_rly_161: <default("SensorNode")> like INetworkNode {
        @display("p=444.43,436.33");
    }

    host_fn_rly_162: <default("SensorNode")> like INetworkNode {
        @display("p=457.35,385.44");
    }

    host_fn_rly_163: <default("SensorNode")> like INetworkNode {
        @display("p=459.37,374.72");
    }

    host_fn_rly_164: <default("SensorNode")> like INetworkNode {
        @display("p=368.10,397.99");
    }

    host_fn_rly_165: <default("SensorNode")> like INetworkNode {
        @display("p=300.20,392.95");
    }

    host_fn_rly_166: <default("SensorNode")> like INetworkNode {
        @display("p=324.19,285.54");
    }

    host_fn_rly_167: <default("SensorNode")> like INetworkNode {
        @display("p=318.29,256.51");
    }

    host_fn_rly_168: <default("SensorNode")> like INetworkNode {
        @display("p=284.14,202.69");
    }

    host_fn_rly_169: <default("SensorNode")> like INetworkNode {
        @display("p=259.74,277.78");
    }

    host_fn_rly_170: <default("SensorNode")> like INetworkNode {
        @display("p=277.50,238.10");
    }

    host_fn_rly_171: <default("SensorNode")> like INetworkNode {
        @display("p=273.03,162.28");
    }

    host_fn_rly_172: <default("SensorNode")> like INetworkNode {
        @display("p=336.90,146.78");
    }

    host_fn_rly_173: <default("SensorNode")> like INetworkNode {
        @display("p=342.93,196.79");
    }

    host_fn_rly_174: <default("SensorNode")> like INetworkNode {
        @display("p=285.26,115.25");
    }

    host_fn_rly_175: <default("SensorNode")> like INetworkNode {
        @display("p=376.43,108.24");
    }

    host_fn_rly_176: <default("SensorNode")> like INetworkNode {
        @display("p=384.68,116.79");
    }

    host_fn_rly_177: <default("SensorNode")> like INetworkNode {
        @display("p=443.79,134.78");
    }

    host_fn_rly_178: <default("SensorNode")> like INetworkNode {
        @display("p=455.48,104.58");
    }

    host_fn_rly_179: <default("SensorNode")> like INetworkNode {
        @display("p=411.30,112.75");
    }

    host_fn_rly_180: <default("SensorNode")> like INetworkNode {
        @display("p=357.88,93.00");
    }

    host_fn_rly_181: <default("SensorNode")> like INetworkNode {
        @display("p=330.55,121.03");
    }

    host_fn_rly_182: <default("SensorNode")> like INetworkNode {
        @display("p=302.59,214.71");
    }

    host_fn_rly_183: <default("SensorNode")> like INetworkNode {
        @display("p=395.05,232.22");
    }

    host_fn_rly_184: <default("SensorNode")> like INetworkNode {
        @display("p=286.24,279.83");
    }

    host_fn_rly_185: <default("SensorNode")> like INetworkNode {
        @display("p=296.62,224.07");
    }

    host_fn_rly_186: <default("SensorNode")> like INetworkNode {
        @display("p=283.90,222.69");
    }

    host_fn_rly_187: <default("SensorNode")> like INetworkNode {
        @display("p=243.02,144.15");
    }

    host_fn_rly_188: <default("SensorNode")> like INetworkNode {
        @display("p=209.70,161.31");
    }

    host_fn_rly_189: <default("SensorNode")> like INetworkNode {
        @display("p=237.52,183.92");
    }

    host_fn_rly_190: <default("SensorNode")> like INetworkNode {
        @display("p=197.60,184.04");
    }

    host_fn_rly_191: <default("SensorNode")> like INetworkNode {
        @display("p=186.43,152.88");
    }

    host_fn_rly_192: <default("SensorNode")> like INetworkNode {
        @display("p=175.53,143.01");
    }

    host_fn_rly_193: <default("SensorNode")> like INetworkNode {
        @display("p=176.00,47.01");
    }

    host_fn_rly_194: <default("SensorNode")> like INetworkNode {
        @display("p=208.11,108.18");
    }

    host_fn_rly_195: <default("SensorNode")> like INetworkNode {
        @display("p=260.72,120.64");
    }

    host_fn_rly_196: <default("SensorNode")> like INetworkNode {
        @display("p=293.00,58.50");
    }

    host_fn_rly_197: <default("SensorNode")> like INetworkNode {
        @display("p=278.01,66.81");
    }

    host_fn_rly_198: <default("SensorNode")> like INetworkNode {
        @display("p=228.15,118.91");
    }

    host_fn_rly_199: <default("SensorNode")> like INetworkNode {
        @display("p=214.37,205.60");
    }

    host_fn_rly_200: <default("SensorNode")> like INetworkNode {
        @display("p=179.33,283.92");
    }

}

