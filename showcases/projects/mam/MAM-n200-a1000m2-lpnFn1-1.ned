
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn1-1
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
        @display("p=748.00,855.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=715.35,794.69");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=721.61,757.44");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=700.20,771.19");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=727.65,695.70");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=776.04,674.07");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=815.35,596.30");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=826.81,609.40");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=861.68,611.47");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=842.33,588.04");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=834.66,576.23");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=845.59,604.07");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=892.47,563.82");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=870.95,616.84");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=838.94,613.72");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=848.66,575.50");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=933.21,610.09");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=930.09,547.23");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=912.98,528.51");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=939.12,556.93");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=908.88,569.03");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=836.30,645.80");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=908.02,665.23");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=904.75,713.15");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=866.16,677.76");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=913.08,641.44");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=881.03,631.83");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=863.00,633.66");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=857.18,600.95");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=922.11,565.22");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=844.51,559.08");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=829.70,533.57");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=949.36,599.86");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=981.71,590.55");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=962.12,567.16");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=984.86,570.23");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=920.80,594.84");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=882.00,620.55");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=795.13,640.05");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=743.73,637.16");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=709.56,684.65");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=704.76,651.02");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=779.48,683.95");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=757.05,663.01");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=664.68,676.84");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=663.96,646.47");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=645.64,642.17");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=592.32,692.20");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=562.94,675.38");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=560.65,692.25");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=570.76,695.02");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=528.26,764.62");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=566.41,856.32");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=649.51,893.18");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=615.14,962.03");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=634.24,936.23");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=616.20,826.16");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=556.20,856.08");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=488.21,877.41");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=459.63,830.82");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=456.05,785.89");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=406.61,708.33");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=464.68,765.16");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=477.57,722.27");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=498.46,792.40");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=415.56,748.54");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=446.68,745.36");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=465.34,751.41");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=504.06,693.60");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=519.64,717.78");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=458.17,679.97");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=416.70,765.82");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=428.82,774.13");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=524.08,791.33");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=560.70,825.13");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=561.69,839.73");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=576.64,768.22");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=521.03,754.61");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=585.41,715.74");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=569.89,623.88");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=559.80,660.80");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=461.94,651.48");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=481.14,744.34");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=403.51,789.03");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=348.39,708.06");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=297.86,705.35");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=309.29,768.62");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=254.76,806.17");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=227.04,790.56");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=286.57,819.40");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=210.58,777.07");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=239.14,807.40");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=176.03,839.10");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=147.98,804.19");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=180.59,734.88");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=199.98,730.25");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=175.52,693.02");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=222.71,692.58");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=160.54,673.64");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=192.42,662.82");
    }

    host_fn_rly_101: <default("SensorNode")> like INetworkNode {
        @display("p=244.40,716.20");
    }

    host_fn_rly_102: <default("SensorNode")> like INetworkNode {
        @display("p=250.09,638.69");
    }

    host_fn_rly_103: <default("SensorNode")> like INetworkNode {
        @display("p=234.57,679.01");
    }

    host_fn_rly_104: <default("SensorNode")> like INetworkNode {
        @display("p=154.55,621.47");
    }

    host_fn_rly_105: <default("SensorNode")> like INetworkNode {
        @display("p=125.91,635.14");
    }

    host_fn_rly_106: <default("SensorNode")> like INetworkNode {
        @display("p=222.81,620.02");
    }

    host_fn_rly_107: <default("SensorNode")> like INetworkNode {
        @display("p=161.67,633.02");
    }

    host_fn_rly_108: <default("SensorNode")> like INetworkNode {
        @display("p=87.04,660.00");
    }

    host_fn_rly_109: <default("SensorNode")> like INetworkNode {
        @display("p=111.76,605.59");
    }

    host_fn_rly_110: <default("SensorNode")> like INetworkNode {
        @display("p=108.03,645.98");
    }

    host_fn_rly_111: <default("SensorNode")> like INetworkNode {
        @display("p=13.17,629.37");
    }

    host_fn_rly_112: <default("SensorNode")> like INetworkNode {
        @display("p=8.96,643.50");
    }

    host_fn_rly_113: <default("SensorNode")> like INetworkNode {
        @display("p=46.45,560.46");
    }

    host_fn_rly_114: <default("SensorNode")> like INetworkNode {
        @display("p=74.21,559.75");
    }

    host_fn_rly_115: <default("SensorNode")> like INetworkNode {
        @display("p=37.38,548.56");
    }

    host_fn_rly_116: <default("SensorNode")> like INetworkNode {
        @display("p=45.63,616.27");
    }

    host_fn_rly_117: <default("SensorNode")> like INetworkNode {
        @display("p=54.42,664.98");
    }

    host_fn_rly_118: <default("SensorNode")> like INetworkNode {
        @display("p=110.83,688.90");
    }

    host_fn_rly_119: <default("SensorNode")> like INetworkNode {
        @display("p=180.91,632.38");
    }

    host_fn_rly_120: <default("SensorNode")> like INetworkNode {
        @display("p=208.72,690.17");
    }

    host_fn_rly_121: <default("SensorNode")> like INetworkNode {
        @display("p=176.08,674.43");
    }

    host_fn_rly_122: <default("SensorNode")> like INetworkNode {
        @display("p=289.87,597.74");
    }

    host_fn_rly_123: <default("SensorNode")> like INetworkNode {
        @display("p=262.22,577.05");
    }

    host_fn_rly_124: <default("SensorNode")> like INetworkNode {
        @display("p=248.24,481.62");
    }

    host_fn_rly_125: <default("SensorNode")> like INetworkNode {
        @display("p=221.66,471.69");
    }

    host_fn_rly_126: <default("SensorNode")> like INetworkNode {
        @display("p=225.98,557.98");
    }

    host_fn_rly_127: <default("SensorNode")> like INetworkNode {
        @display("p=160.51,548.41");
    }

    host_fn_rly_128: <default("SensorNode")> like INetworkNode {
        @display("p=171.56,583.25");
    }

    host_fn_rly_129: <default("SensorNode")> like INetworkNode {
        @display("p=158.64,593.76");
    }

    host_fn_rly_130: <default("SensorNode")> like INetworkNode {
        @display("p=95.30,589.56");
    }

    host_fn_rly_131: <default("SensorNode")> like INetworkNode {
        @display("p=38.91,631.02");
    }

    host_fn_rly_132: <default("SensorNode")> like INetworkNode {
        @display("p=56.00,611.93");
    }

    host_fn_rly_133: <default("SensorNode")> like INetworkNode {
        @display("p=50.67,629.86");
    }

    host_fn_rly_134: <default("SensorNode")> like INetworkNode {
        @display("p=13.95,669.89");
    }

    host_fn_rly_135: <default("SensorNode")> like INetworkNode {
        @display("p=75.40,624.25");
    }

    host_fn_rly_136: <default("SensorNode")> like INetworkNode {
        @display("p=87.19,525.71");
    }

    host_fn_rly_137: <default("SensorNode")> like INetworkNode {
        @display("p=62.85,545.19");
    }

    host_fn_rly_138: <default("SensorNode")> like INetworkNode {
        @display("p=148.75,512.25");
    }

    host_fn_rly_139: <default("SensorNode")> like INetworkNode {
        @display("p=166.64,418.29");
    }

    host_fn_rly_140: <default("SensorNode")> like INetworkNode {
        @display("p=106.59,498.71");
    }

    host_fn_rly_141: <default("SensorNode")> like INetworkNode {
        @display("p=70.63,433.90");
    }

    host_fn_rly_142: <default("SensorNode")> like INetworkNode {
        @display("p=40.05,451.93");
    }

    host_fn_rly_143: <default("SensorNode")> like INetworkNode {
        @display("p=76.25,367.64");
    }

    host_fn_rly_144: <default("SensorNode")> like INetworkNode {
        @display("p=132.98,376.19");
    }

    host_fn_rly_145: <default("SensorNode")> like INetworkNode {
        @display("p=97.12,384.36");
    }

    host_fn_rly_146: <default("SensorNode")> like INetworkNode {
        @display("p=87.60,329.36");
    }

    host_fn_rly_147: <default("SensorNode")> like INetworkNode {
        @display("p=146.09,374.85");
    }

    host_fn_rly_148: <default("SensorNode")> like INetworkNode {
        @display("p=148.40,361.50");
    }

    host_fn_rly_149: <default("SensorNode")> like INetworkNode {
        @display("p=173.00,315.71");
    }

    host_fn_rly_150: <default("SensorNode")> like INetworkNode {
        @display("p=118.08,297.08");
    }

    host_fn_rly_151: <default("SensorNode")> like INetworkNode {
        @display("p=40.72,303.56");
    }

    host_fn_rly_152: <default("SensorNode")> like INetworkNode {
        @display("p=21.92,314.02");
    }

    host_fn_rly_153: <default("SensorNode")> like INetworkNode {
        @display("p=44.65,371.55");
    }

    host_fn_rly_154: <default("SensorNode")> like INetworkNode {
        @display("p=6.48,301.84");
    }

    host_fn_rly_155: <default("SensorNode")> like INetworkNode {
        @display("p=25.33,253.38");
    }

    host_fn_rly_156: <default("SensorNode")> like INetworkNode {
        @display("p=66.54,211.55");
    }

    host_fn_rly_157: <default("SensorNode")> like INetworkNode {
        @display("p=8.57,175.21");
    }

    host_fn_rly_158: <default("SensorNode")> like INetworkNode {
        @display("p=3.77,106.05");
    }

    host_fn_rly_159: <default("SensorNode")> like INetworkNode {
        @display("p=35.87,100.53");
    }

    host_fn_rly_160: <default("SensorNode")> like INetworkNode {
        @display("p=52.77,102.94");
    }

    host_fn_rly_161: <default("SensorNode")> like INetworkNode {
        @display("p=71.81,60.51");
    }

    host_fn_rly_162: <default("SensorNode")> like INetworkNode {
        @display("p=109.43,94.20");
    }

    host_fn_rly_163: <default("SensorNode")> like INetworkNode {
        @display("p=128.50,59.76");
    }

    host_fn_rly_164: <default("SensorNode")> like INetworkNode {
        @display("p=68.91,134.33");
    }

    host_fn_rly_165: <default("SensorNode")> like INetworkNode {
        @display("p=77.14,84.53");
    }

    host_fn_rly_166: <default("SensorNode")> like INetworkNode {
        @display("p=143.56,69.37");
    }

    host_fn_rly_167: <default("SensorNode")> like INetworkNode {
        @display("p=103.06,79.90");
    }

    host_fn_rly_168: <default("SensorNode")> like INetworkNode {
        @display("p=72.06,102.54");
    }

    host_fn_rly_169: <default("SensorNode")> like INetworkNode {
        @display("p=129.97,87.19");
    }

    host_fn_rly_170: <default("SensorNode")> like INetworkNode {
        @display("p=156.15,6.93");
    }

    host_fn_rly_171: <default("SensorNode")> like INetworkNode {
        @display("p=184.21,13.60");
    }

    host_fn_rly_172: <default("SensorNode")> like INetworkNode {
        @display("p=215.26,78.13");
    }

    host_fn_rly_173: <default("SensorNode")> like INetworkNode {
        @display("p=217.51,138.12");
    }

    host_fn_rly_174: <default("SensorNode")> like INetworkNode {
        @display("p=262.30,201.31");
    }

    host_fn_rly_175: <default("SensorNode")> like INetworkNode {
        @display("p=240.33,238.89");
    }

    host_fn_rly_176: <default("SensorNode")> like INetworkNode {
        @display("p=285.60,152.18");
    }

    host_fn_rly_177: <default("SensorNode")> like INetworkNode {
        @display("p=245.23,228.67");
    }

    host_fn_rly_178: <default("SensorNode")> like INetworkNode {
        @display("p=263.78,306.20");
    }

    host_fn_rly_179: <default("SensorNode")> like INetworkNode {
        @display("p=199.74,324.12");
    }

    host_fn_rly_180: <default("SensorNode")> like INetworkNode {
        @display("p=137.72,341.10");
    }

    host_fn_rly_181: <default("SensorNode")> like INetworkNode {
        @display("p=73.34,332.24");
    }

    host_fn_rly_182: <default("SensorNode")> like INetworkNode {
        @display("p=29.88,264.20");
    }

    host_fn_rly_183: <default("SensorNode")> like INetworkNode {
        @display("p=111.61,214.61");
    }

    host_fn_rly_184: <default("SensorNode")> like INetworkNode {
        @display("p=152.69,217.72");
    }

    host_fn_rly_185: <default("SensorNode")> like INetworkNode {
        @display("p=106.51,228.20");
    }

    host_fn_rly_186: <default("SensorNode")> like INetworkNode {
        @display("p=120.28,314.88");
    }

    host_fn_rly_187: <default("SensorNode")> like INetworkNode {
        @display("p=94.29,410.95");
    }

    host_fn_rly_188: <default("SensorNode")> like INetworkNode {
        @display("p=37.97,354.20");
    }

    host_fn_rly_189: <default("SensorNode")> like INetworkNode {
        @display("p=11.24,441.58");
    }

    host_fn_rly_190: <default("SensorNode")> like INetworkNode {
        @display("p=46.64,490.88");
    }

    host_fn_rly_191: <default("SensorNode")> like INetworkNode {
        @display("p=65.25,574.48");
    }

    host_fn_rly_192: <default("SensorNode")> like INetworkNode {
        @display("p=114.89,581.69");
    }

    host_fn_rly_193: <default("SensorNode")> like INetworkNode {
        @display("p=82.90,479.35");
    }

    host_fn_rly_194: <default("SensorNode")> like INetworkNode {
        @display("p=38.41,477.28");
    }

    host_fn_rly_195: <default("SensorNode")> like INetworkNode {
        @display("p=92.85,511.87");
    }

    host_fn_rly_196: <default("SensorNode")> like INetworkNode {
        @display("p=135.12,463.14");
    }

    host_fn_rly_197: <default("SensorNode")> like INetworkNode {
        @display("p=151.01,421.51");
    }

    host_fn_rly_198: <default("SensorNode")> like INetworkNode {
        @display("p=142.36,324.79");
    }

    host_fn_rly_199: <default("SensorNode")> like INetworkNode {
        @display("p=137.81,304.24");
    }

    host_fn_rly_200: <default("SensorNode")> like INetworkNode {
        @display("p=164.47,224.05");
    }

}

