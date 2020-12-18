
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn1-5
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
        @display("p=723.00,811.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=628.18,782.32");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=616.99,771.86");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=585.80,838.16");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=518.99,870.56");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=586.64,896.95");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=555.63,902.40");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=513.75,918.04");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=531.36,989.51");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=608.45,987.13");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=689.14,981.83");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=655.41,931.01");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=617.31,945.27");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=633.16,970.62");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=641.98,905.60");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=597.66,820.31");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=586.81,851.67");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=577.90,828.82");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=653.58,821.48");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=655.70,809.72");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=620.78,752.47");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=654.25,739.32");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=574.38,741.15");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=565.19,726.30");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=608.17,660.80");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=637.31,609.78");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=596.12,567.76");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=653.23,617.72");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=634.59,567.10");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=620.31,674.45");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=641.48,721.82");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=632.48,728.86");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=686.75,727.37");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=764.29,672.80");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=837.20,610.92");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=915.13,578.12");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=894.46,568.88");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=803.28,601.20");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=825.19,508.28");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=828.10,535.06");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=866.01,446.48");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=835.44,387.50");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=845.59,378.99");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=862.11,378.70");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=889.35,351.20");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=922.79,391.62");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=895.66,341.64");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=920.31,323.87");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=959.80,250.13");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=912.53,232.44");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=885.55,304.96");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=880.51,336.02");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=941.36,313.19");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=966.43,300.22");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=978.88,284.41");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=995.71,276.30");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=994.29,266.31");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=960.08,326.87");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=992.73,340.91");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=995.37,391.69");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=998.36,316.41");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=972.45,361.43");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=972.02,270.73");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=964.53,284.69");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=992.28,328.48");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=997.02,364.53");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=963.48,388.18");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=971.38,374.75");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=896.29,267.34");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=825.69,270.76");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=875.08,308.39");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=859.73,320.52");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=896.67,362.02");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=914.08,408.94");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=995.04,378.07");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=959.61,407.18");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=987.86,406.70");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=979.87,346.65");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=922.37,279.00");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=944.46,290.85");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=951.41,266.78");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=949.67,228.08");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=934.91,381.59");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=900.29,457.73");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=878.82,418.84");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=911.33,452.28");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=876.39,447.22");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=802.88,436.32");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=784.07,435.35");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=817.15,470.64");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=807.54,476.15");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=748.08,428.52");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=749.77,372.75");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=741.75,392.38");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=672.19,355.55");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=687.20,359.66");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=718.46,273.04");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=774.41,271.38");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=715.46,228.16");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=699.13,198.30");
    }

    host_fn_rly_101: <default("SensorNode")> like INetworkNode {
        @display("p=717.53,188.48");
    }

    host_fn_rly_102: <default("SensorNode")> like INetworkNode {
        @display("p=703.10,207.54");
    }

    host_fn_rly_103: <default("SensorNode")> like INetworkNode {
        @display("p=673.49,187.58");
    }

    host_fn_rly_104: <default("SensorNode")> like INetworkNode {
        @display("p=644.61,248.41");
    }

    host_fn_rly_105: <default("SensorNode")> like INetworkNode {
        @display("p=723.99,254.63");
    }

    host_fn_rly_106: <default("SensorNode")> like INetworkNode {
        @display("p=756.72,295.88");
    }

    host_fn_rly_107: <default("SensorNode")> like INetworkNode {
        @display("p=720.38,211.85");
    }

    host_fn_rly_108: <default("SensorNode")> like INetworkNode {
        @display("p=739.36,202.82");
    }

    host_fn_rly_109: <default("SensorNode")> like INetworkNode {
        @display("p=684.15,205.24");
    }

    host_fn_rly_110: <default("SensorNode")> like INetworkNode {
        @display("p=765.21,202.70");
    }

    host_fn_rly_111: <default("SensorNode")> like INetworkNode {
        @display("p=692.76,274.97");
    }

    host_fn_rly_112: <default("SensorNode")> like INetworkNode {
        @display("p=732.47,308.11");
    }

    host_fn_rly_113: <default("SensorNode")> like INetworkNode {
        @display("p=778.43,307.54");
    }

    host_fn_rly_114: <default("SensorNode")> like INetworkNode {
        @display("p=683.11,303.37");
    }

    host_fn_rly_115: <default("SensorNode")> like INetworkNode {
        @display("p=702.58,377.54");
    }

    host_fn_rly_116: <default("SensorNode")> like INetworkNode {
        @display("p=736.81,360.22");
    }

    host_fn_rly_117: <default("SensorNode")> like INetworkNode {
        @display("p=654.52,342.29");
    }

    host_fn_rly_118: <default("SensorNode")> like INetworkNode {
        @display("p=682.45,259.92");
    }

    host_fn_rly_119: <default("SensorNode")> like INetworkNode {
        @display("p=705.92,246.74");
    }

    host_fn_rly_120: <default("SensorNode")> like INetworkNode {
        @display("p=690.70,243.81");
    }

    host_fn_rly_121: <default("SensorNode")> like INetworkNode {
        @display("p=648.66,305.09");
    }

    host_fn_rly_122: <default("SensorNode")> like INetworkNode {
        @display("p=705.08,300.21");
    }

    host_fn_rly_123: <default("SensorNode")> like INetworkNode {
        @display("p=797.50,368.52");
    }

    host_fn_rly_124: <default("SensorNode")> like INetworkNode {
        @display("p=720.32,393.87");
    }

    host_fn_rly_125: <default("SensorNode")> like INetworkNode {
        @display("p=789.05,418.04");
    }

    host_fn_rly_126: <default("SensorNode")> like INetworkNode {
        @display("p=756.74,409.66");
    }

    host_fn_rly_127: <default("SensorNode")> like INetworkNode {
        @display("p=781.89,483.76");
    }

    host_fn_rly_128: <default("SensorNode")> like INetworkNode {
        @display("p=741.26,463.35");
    }

    host_fn_rly_129: <default("SensorNode")> like INetworkNode {
        @display("p=808.06,408.32");
    }

    host_fn_rly_130: <default("SensorNode")> like INetworkNode {
        @display("p=761.38,434.01");
    }

    host_fn_rly_131: <default("SensorNode")> like INetworkNode {
        @display("p=811.58,387.46");
    }

    host_fn_rly_132: <default("SensorNode")> like INetworkNode {
        @display("p=789.78,292.16");
    }

    host_fn_rly_133: <default("SensorNode")> like INetworkNode {
        @display("p=772.41,333.37");
    }

    host_fn_rly_134: <default("SensorNode")> like INetworkNode {
        @display("p=811.11,331.11");
    }

    host_fn_rly_135: <default("SensorNode")> like INetworkNode {
        @display("p=882.69,368.61");
    }

    host_fn_rly_136: <default("SensorNode")> like INetworkNode {
        @display("p=822.17,404.64");
    }

    host_fn_rly_137: <default("SensorNode")> like INetworkNode {
        @display("p=832.51,410.49");
    }

    host_fn_rly_138: <default("SensorNode")> like INetworkNode {
        @display("p=926.86,436.76");
    }

    host_fn_rly_139: <default("SensorNode")> like INetworkNode {
        @display("p=766.46,398.12");
    }

    host_fn_rly_140: <default("SensorNode")> like INetworkNode {
        @display("p=770.10,458.55");
    }

    host_fn_rly_141: <default("SensorNode")> like INetworkNode {
        @display("p=864.86,426.57");
    }

    host_fn_rly_142: <default("SensorNode")> like INetworkNode {
        @display("p=879.07,487.81");
    }

    host_fn_rly_143: <default("SensorNode")> like INetworkNode {
        @display("p=861.73,496.08");
    }

    host_fn_rly_144: <default("SensorNode")> like INetworkNode {
        @display("p=851.61,551.59");
    }

    host_fn_rly_145: <default("SensorNode")> like INetworkNode {
        @display("p=776.50,629.94");
    }

    host_fn_rly_146: <default("SensorNode")> like INetworkNode {
        @display("p=715.02,652.72");
    }

    host_fn_rly_147: <default("SensorNode")> like INetworkNode {
        @display("p=721.61,669.52");
    }

    host_fn_rly_148: <default("SensorNode")> like INetworkNode {
        @display("p=723.16,619.04");
    }

    host_fn_rly_149: <default("SensorNode")> like INetworkNode {
        @display("p=800.31,650.70");
    }

    host_fn_rly_150: <default("SensorNode")> like INetworkNode {
        @display("p=777.77,642.35");
    }

    host_fn_rly_151: <default("SensorNode")> like INetworkNode {
        @display("p=741.07,626.37");
    }

    host_fn_rly_152: <default("SensorNode")> like INetworkNode {
        @display("p=756.20,714.31");
    }

    host_fn_rly_153: <default("SensorNode")> like INetworkNode {
        @display("p=809.79,666.30");
    }

    host_fn_rly_154: <default("SensorNode")> like INetworkNode {
        @display("p=789.33,614.25");
    }

    host_fn_rly_155: <default("SensorNode")> like INetworkNode {
        @display("p=800.39,627.41");
    }

    host_fn_rly_156: <default("SensorNode")> like INetworkNode {
        @display("p=752.21,644.03");
    }

    host_fn_rly_157: <default("SensorNode")> like INetworkNode {
        @display("p=817.81,644.43");
    }

    host_fn_rly_158: <default("SensorNode")> like INetworkNode {
        @display("p=822.05,618.15");
    }

    host_fn_rly_159: <default("SensorNode")> like INetworkNode {
        @display("p=753.50,606.87");
    }

    host_fn_rly_160: <default("SensorNode")> like INetworkNode {
        @display("p=763.08,611.72");
    }

    host_fn_rly_161: <default("SensorNode")> like INetworkNode {
        @display("p=749.14,594.63");
    }

    host_fn_rly_162: <default("SensorNode")> like INetworkNode {
        @display("p=795.77,526.87");
    }

    host_fn_rly_163: <default("SensorNode")> like INetworkNode {
        @display("p=878.00,389.97");
    }

    host_fn_rly_164: <default("SensorNode")> like INetworkNode {
        @display("p=863.89,364.49");
    }

    host_fn_rly_165: <default("SensorNode")> like INetworkNode {
        @display("p=868.88,262.81");
    }

    host_fn_rly_166: <default("SensorNode")> like INetworkNode {
        @display("p=919.53,264.10");
    }

    host_fn_rly_167: <default("SensorNode")> like INetworkNode {
        @display("p=929.73,201.31");
    }

    host_fn_rly_168: <default("SensorNode")> like INetworkNode {
        @display("p=963.67,221.13");
    }

    host_fn_rly_169: <default("SensorNode")> like INetworkNode {
        @display("p=980.70,221.93");
    }

    host_fn_rly_170: <default("SensorNode")> like INetworkNode {
        @display("p=894.69,174.40");
    }

    host_fn_rly_171: <default("SensorNode")> like INetworkNode {
        @display("p=928.68,215.22");
    }

    host_fn_rly_172: <default("SensorNode")> like INetworkNode {
        @display("p=909.00,266.17");
    }

    host_fn_rly_173: <default("SensorNode")> like INetworkNode {
        @display("p=902.96,309.48");
    }

    host_fn_rly_174: <default("SensorNode")> like INetworkNode {
        @display("p=881.36,379.14");
    }

    host_fn_rly_175: <default("SensorNode")> like INetworkNode {
        @display("p=734.36,341.53");
    }

    host_fn_rly_176: <default("SensorNode")> like INetworkNode {
        @display("p=688.34,332.77");
    }

    host_fn_rly_177: <default("SensorNode")> like INetworkNode {
        @display("p=694.33,347.39");
    }

    host_fn_rly_178: <default("SensorNode")> like INetworkNode {
        @display("p=664.18,265.18");
    }

    host_fn_rly_179: <default("SensorNode")> like INetworkNode {
        @display("p=731.54,235.20");
    }

    host_fn_rly_180: <default("SensorNode")> like INetworkNode {
        @display("p=707.32,180.39");
    }

    host_fn_rly_181: <default("SensorNode")> like INetworkNode {
        @display("p=608.20,172.01");
    }

    host_fn_rly_182: <default("SensorNode")> like INetworkNode {
        @display("p=639.85,157.16");
    }

    host_fn_rly_183: <default("SensorNode")> like INetworkNode {
        @display("p=721.90,170.99");
    }

    host_fn_rly_184: <default("SensorNode")> like INetworkNode {
        @display("p=714.72,163.83");
    }

    host_fn_rly_185: <default("SensorNode")> like INetworkNode {
        @display("p=791.37,169.07");
    }

    host_fn_rly_186: <default("SensorNode")> like INetworkNode {
        @display("p=787.51,181.86");
    }

    host_fn_rly_187: <default("SensorNode")> like INetworkNode {
        @display("p=769.05,289.33");
    }

    host_fn_rly_188: <default("SensorNode")> like INetworkNode {
        @display("p=761.56,316.91");
    }

    host_fn_rly_189: <default("SensorNode")> like INetworkNode {
        @display("p=778.34,219.61");
    }

    host_fn_rly_190: <default("SensorNode")> like INetworkNode {
        @display("p=839.60,152.84");
    }

    host_fn_rly_191: <default("SensorNode")> like INetworkNode {
        @display("p=878.61,166.12");
    }

    host_fn_rly_192: <default("SensorNode")> like INetworkNode {
        @display("p=858.01,153.40");
    }

    host_fn_rly_193: <default("SensorNode")> like INetworkNode {
        @display("p=831.05,61.15");
    }

    host_fn_rly_194: <default("SensorNode")> like INetworkNode {
        @display("p=774.44,132.67");
    }

    host_fn_rly_195: <default("SensorNode")> like INetworkNode {
        @display("p=773.99,189.55");
    }

    host_fn_rly_196: <default("SensorNode")> like INetworkNode {
        @display("p=816.73,215.25");
    }

    host_fn_rly_197: <default("SensorNode")> like INetworkNode {
        @display("p=804.18,250.00");
    }

    host_fn_rly_198: <default("SensorNode")> like INetworkNode {
        @display("p=715.32,429.97");
    }

    host_fn_rly_199: <default("SensorNode")> like INetworkNode {
        @display("p=821.23,313.57");
    }

    host_fn_rly_200: <default("SensorNode")> like INetworkNode {
        @display("p=816.17,281.17");
    }

}

