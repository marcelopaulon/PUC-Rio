
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn1-7
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
        @display("p=612.00,31.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=652.27,83.71");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=712.01,33.63");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=752.02,50.27");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=811.35,4.30");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=759.10,100.34");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=774.38,72.76");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=808.75,102.05");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=767.54,111.80");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=795.64,124.67");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=862.46,76.75");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=872.75,62.87");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=815.89,65.07");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=834.75,119.52");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=795.55,109.02");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=861.17,6.93");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=855.71,46.22");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=768.30,43.08");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=801.91,17.47");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=752.68,17.28");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=719.05,18.69");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=728.84,40.07");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=732.13,112.86");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=673.12,97.23");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=621.39,179.33");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=621.40,202.15");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=598.53,112.11");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=637.71,86.89");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=637.59,97.56");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=693.48,82.18");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=694.70,124.98");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=730.43,195.70");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=684.64,164.59");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=682.58,175.53");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=742.06,149.62");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=760.55,213.70");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=742.17,311.22");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=758.40,378.49");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=726.83,379.94");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=764.20,344.48");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=748.53,380.54");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=827.13,353.13");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=763.60,328.22");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=789.10,415.88");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=739.22,467.83");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=733.62,405.84");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=668.00,427.49");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=638.92,520.43");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=662.39,526.13");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=595.43,539.61");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=591.19,495.21");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=559.17,547.81");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=519.39,551.31");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=560.21,584.28");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=544.04,545.59");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=537.45,597.95");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=462.98,634.73");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=447.40,623.19");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=351.27,627.59");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=322.43,607.91");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=378.13,605.74");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=456.16,581.82");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=445.05,590.94");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=505.54,557.59");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=408.36,557.20");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=430.51,639.99");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=396.96,714.49");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=402.97,739.97");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=442.30,819.02");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=505.68,811.12");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=444.89,871.63");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=423.47,949.41");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=384.98,949.51");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=400.12,950.36");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=460.24,905.02");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=432.40,884.00");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=492.48,808.01");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=419.21,852.50");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=439.57,917.82");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=441.94,935.18");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=416.22,903.99");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=458.50,822.50");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=468.73,823.69");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=439.19,904.22");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=378.78,845.23");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=311.93,812.93");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=303.07,820.05");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=289.60,795.00");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=263.94,836.68");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=327.36,794.19");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=286.09,819.21");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=251.77,784.16");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=274.52,768.13");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=223.33,739.55");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=166.30,799.21");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=136.78,819.91");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=179.54,792.44");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=116.28,745.89");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=132.88,702.64");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=218.92,717.90");
    }

    host_fn_rly_101: <default("SensorNode")> like INetworkNode {
        @display("p=220.39,799.06");
    }

    host_fn_rly_102: <default("SensorNode")> like INetworkNode {
        @display("p=245.95,712.70");
    }

    host_fn_rly_103: <default("SensorNode")> like INetworkNode {
        @display("p=197.09,709.69");
    }

    host_fn_rly_104: <default("SensorNode")> like INetworkNode {
        @display("p=257.73,735.08");
    }

    host_fn_rly_105: <default("SensorNode")> like INetworkNode {
        @display("p=280.93,748.08");
    }

    host_fn_rly_106: <default("SensorNode")> like INetworkNode {
        @display("p=268.10,743.54");
    }

    host_fn_rly_107: <default("SensorNode")> like INetworkNode {
        @display("p=283.39,776.02");
    }

    host_fn_rly_108: <default("SensorNode")> like INetworkNode {
        @display("p=244.98,752.81");
    }

    host_fn_rly_109: <default("SensorNode")> like INetworkNode {
        @display("p=190.72,647.20");
    }

    host_fn_rly_110: <default("SensorNode")> like INetworkNode {
        @display("p=283.90,660.66");
    }

    host_fn_rly_111: <default("SensorNode")> like INetworkNode {
        @display("p=308.12,694.15");
    }

    host_fn_rly_112: <default("SensorNode")> like INetworkNode {
        @display("p=342.43,654.73");
    }

    host_fn_rly_113: <default("SensorNode")> like INetworkNode {
        @display("p=319.45,631.69");
    }

    host_fn_rly_114: <default("SensorNode")> like INetworkNode {
        @display("p=403.09,671.02");
    }

    host_fn_rly_115: <default("SensorNode")> like INetworkNode {
        @display("p=311.78,654.51");
    }

    host_fn_rly_116: <default("SensorNode")> like INetworkNode {
        @display("p=396.78,603.74");
    }

    host_fn_rly_117: <default("SensorNode")> like INetworkNode {
        @display("p=406.32,578.39");
    }

    host_fn_rly_118: <default("SensorNode")> like INetworkNode {
        @display("p=381.57,521.88");
    }

    host_fn_rly_119: <default("SensorNode")> like INetworkNode {
        @display("p=320.61,592.81");
    }

    host_fn_rly_120: <default("SensorNode")> like INetworkNode {
        @display("p=237.49,590.49");
    }

    host_fn_rly_121: <default("SensorNode")> like INetworkNode {
        @display("p=238.83,680.99");
    }

    host_fn_rly_122: <default("SensorNode")> like INetworkNode {
        @display("p=258.66,660.86");
    }

    host_fn_rly_123: <default("SensorNode")> like INetworkNode {
        @display("p=331.14,668.72");
    }

    host_fn_rly_124: <default("SensorNode")> like INetworkNode {
        @display("p=258.98,679.39");
    }

    host_fn_rly_125: <default("SensorNode")> like INetworkNode {
        @display("p=293.21,715.54");
    }

    host_fn_rly_126: <default("SensorNode")> like INetworkNode {
        @display("p=301.02,635.80");
    }

    host_fn_rly_127: <default("SensorNode")> like INetworkNode {
        @display("p=258.61,650.34");
    }

    host_fn_rly_128: <default("SensorNode")> like INetworkNode {
        @display("p=374.15,624.00");
    }

    host_fn_rly_129: <default("SensorNode")> like INetworkNode {
        @display("p=343.32,619.49");
    }

    host_fn_rly_130: <default("SensorNode")> like INetworkNode {
        @display("p=246.93,629.97");
    }

    host_fn_rly_131: <default("SensorNode")> like INetworkNode {
        @display("p=278.71,599.96");
    }

    host_fn_rly_132: <default("SensorNode")> like INetworkNode {
        @display("p=284.15,545.02");
    }

    host_fn_rly_133: <default("SensorNode")> like INetworkNode {
        @display("p=241.36,545.94");
    }

    host_fn_rly_134: <default("SensorNode")> like INetworkNode {
        @display("p=243.67,570.68");
    }

    host_fn_rly_135: <default("SensorNode")> like INetworkNode {
        @display("p=254.79,541.77");
    }

    host_fn_rly_136: <default("SensorNode")> like INetworkNode {
        @display("p=302.65,601.35");
    }

    host_fn_rly_137: <default("SensorNode")> like INetworkNode {
        @display("p=270.09,661.79");
    }

    host_fn_rly_138: <default("SensorNode")> like INetworkNode {
        @display("p=253.90,701.29");
    }

    host_fn_rly_139: <default("SensorNode")> like INetworkNode {
        @display("p=213.99,705.02");
    }

    host_fn_rly_140: <default("SensorNode")> like INetworkNode {
        @display("p=287.24,697.61");
    }

    host_fn_rly_141: <default("SensorNode")> like INetworkNode {
        @display("p=300.13,685.39");
    }

    host_fn_rly_142: <default("SensorNode")> like INetworkNode {
        @display("p=349.16,668.94");
    }

    host_fn_rly_143: <default("SensorNode")> like INetworkNode {
        @display("p=317.19,714.82");
    }

    host_fn_rly_144: <default("SensorNode")> like INetworkNode {
        @display("p=291.05,756.50");
    }

    host_fn_rly_145: <default("SensorNode")> like INetworkNode {
        @display("p=279.33,714.06");
    }

    host_fn_rly_146: <default("SensorNode")> like INetworkNode {
        @display("p=221.64,658.33");
    }

    host_fn_rly_147: <default("SensorNode")> like INetworkNode {
        @display("p=188.38,667.18");
    }

    host_fn_rly_148: <default("SensorNode")> like INetworkNode {
        @display("p=185.26,759.82");
    }

    host_fn_rly_149: <default("SensorNode")> like INetworkNode {
        @display("p=97.12,762.94");
    }

    host_fn_rly_150: <default("SensorNode")> like INetworkNode {
        @display("p=91.82,693.60");
    }

    host_fn_rly_151: <default("SensorNode")> like INetworkNode {
        @display("p=122.44,733.76");
    }

    host_fn_rly_152: <default("SensorNode")> like INetworkNode {
        @display("p=61.45,719.19");
    }

    host_fn_rly_153: <default("SensorNode")> like INetworkNode {
        @display("p=2.32,768.06");
    }

    host_fn_rly_154: <default("SensorNode")> like INetworkNode {
        @display("p=193.80,765.55");
    }

    host_fn_rly_155: <default("SensorNode")> like INetworkNode {
        @display("p=252.51,808.22");
    }

    host_fn_rly_156: <default("SensorNode")> like INetworkNode {
        @display("p=225.92,853.12");
    }

    host_fn_rly_157: <default("SensorNode")> like INetworkNode {
        @display("p=213.55,876.84");
    }

    host_fn_rly_158: <default("SensorNode")> like INetworkNode {
        @display("p=274.67,954.38");
    }

    host_fn_rly_159: <default("SensorNode")> like INetworkNode {
        @display("p=287.54,967.07");
    }

    host_fn_rly_160: <default("SensorNode")> like INetworkNode {
        @display("p=377.25,982.20");
    }

    host_fn_rly_161: <default("SensorNode")> like INetworkNode {
        @display("p=444.79,953.91");
    }

    host_fn_rly_162: <default("SensorNode")> like INetworkNode {
        @display("p=435.24,969.65");
    }

    host_fn_rly_163: <default("SensorNode")> like INetworkNode {
        @display("p=410.21,927.55");
    }

    host_fn_rly_164: <default("SensorNode")> like INetworkNode {
        @display("p=492.28,838.54");
    }

    host_fn_rly_165: <default("SensorNode")> like INetworkNode {
        @display("p=493.06,869.16");
    }

    host_fn_rly_166: <default("SensorNode")> like INetworkNode {
        @display("p=445.66,834.37");
    }

    host_fn_rly_167: <default("SensorNode")> like INetworkNode {
        @display("p=455.28,845.19");
    }

    host_fn_rly_168: <default("SensorNode")> like INetworkNode {
        @display("p=471.03,858.14");
    }

    host_fn_rly_169: <default("SensorNode")> like INetworkNode {
        @display("p=552.98,833.16");
    }

    host_fn_rly_170: <default("SensorNode")> like INetworkNode {
        @display("p=565.99,868.51");
    }

    host_fn_rly_171: <default("SensorNode")> like INetworkNode {
        @display("p=615.29,848.79");
    }

    host_fn_rly_172: <default("SensorNode")> like INetworkNode {
        @display("p=683.14,811.78");
    }

    host_fn_rly_173: <default("SensorNode")> like INetworkNode {
        @display("p=672.82,801.29");
    }

    host_fn_rly_174: <default("SensorNode")> like INetworkNode {
        @display("p=663.57,818.12");
    }

    host_fn_rly_175: <default("SensorNode")> like INetworkNode {
        @display("p=695.95,843.85");
    }

    host_fn_rly_176: <default("SensorNode")> like INetworkNode {
        @display("p=740.21,870.13");
    }

    host_fn_rly_177: <default("SensorNode")> like INetworkNode {
        @display("p=715.34,877.38");
    }

    host_fn_rly_178: <default("SensorNode")> like INetworkNode {
        @display("p=702.79,884.01");
    }

    host_fn_rly_179: <default("SensorNode")> like INetworkNode {
        @display("p=657.75,894.62");
    }

    host_fn_rly_180: <default("SensorNode")> like INetworkNode {
        @display("p=568.69,885.48");
    }

    host_fn_rly_181: <default("SensorNode")> like INetworkNode {
        @display("p=653.85,880.44");
    }

    host_fn_rly_182: <default("SensorNode")> like INetworkNode {
        @display("p=618.28,875.92");
    }

    host_fn_rly_183: <default("SensorNode")> like INetworkNode {
        @display("p=704.48,910.96");
    }

    host_fn_rly_184: <default("SensorNode")> like INetworkNode {
        @display("p=668.40,834.91");
    }

    host_fn_rly_185: <default("SensorNode")> like INetworkNode {
        @display("p=692.00,763.58");
    }

    host_fn_rly_186: <default("SensorNode")> like INetworkNode {
        @display("p=677.59,728.53");
    }

    host_fn_rly_187: <default("SensorNode")> like INetworkNode {
        @display("p=619.56,702.71");
    }

    host_fn_rly_188: <default("SensorNode")> like INetworkNode {
        @display("p=579.73,777.26");
    }

    host_fn_rly_189: <default("SensorNode")> like INetworkNode {
        @display("p=540.20,847.80");
    }

    host_fn_rly_190: <default("SensorNode")> like INetworkNode {
        @display("p=588.26,817.09");
    }

    host_fn_rly_191: <default("SensorNode")> like INetworkNode {
        @display("p=581.81,844.25");
    }

    host_fn_rly_192: <default("SensorNode")> like INetworkNode {
        @display("p=551.83,871.89");
    }

    host_fn_rly_193: <default("SensorNode")> like INetworkNode {
        @display("p=482.81,770.88");
    }

    host_fn_rly_194: <default("SensorNode")> like INetworkNode {
        @display("p=474.82,842.55");
    }

    host_fn_rly_195: <default("SensorNode")> like INetworkNode {
        @display("p=496.56,827.13");
    }

    host_fn_rly_196: <default("SensorNode")> like INetworkNode {
        @display("p=513.43,820.17");
    }

    host_fn_rly_197: <default("SensorNode")> like INetworkNode {
        @display("p=563.41,814.51");
    }

    host_fn_rly_198: <default("SensorNode")> like INetworkNode {
        @display("p=538.16,813.54");
    }

    host_fn_rly_199: <default("SensorNode")> like INetworkNode {
        @display("p=613.97,787.75");
    }

    host_fn_rly_200: <default("SensorNode")> like INetworkNode {
        @display("p=686.39,734.31");
    }

}

