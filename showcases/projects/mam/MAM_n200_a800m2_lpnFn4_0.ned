
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn4_0
{
    parameters:
        @display("bgb=1600,1600;bgg=100,1,grey95;bgu=m");
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
        @display("p=15.07,750.48");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=14.20,654.12");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=27.04,567.15");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=17.05,524.64");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=37.97,487.89");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=104.54,497.50");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=154.25,415.92");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=167.18,477.09");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=146.71,541.27");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=138.91,504.58");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=82.36,439.69");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=84.29,368.69");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=57.30,386.92");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=77.21,384.25");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=92.51,378.88");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=49.97,434.83");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=55.25,402.78");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=139.92,389.10");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=143.49,342.26");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=161.63,298.09");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=157.22,395.52");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=169.32,411.50");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=217.40,430.52");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=241.86,475.09");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=275.71,481.82");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=305.81,409.89");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=248.17,373.86");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=231.19,455.24");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=178.04,491.39");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=124.89,419.15");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=162.78,441.04");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=185.84,430.59");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=101.44,415.83");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=82.43,454.46");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=85.62,420.28");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=138.72,469.82");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=200.82,461.88");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=211.01,467.82");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=173.88,467.62");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=128.26,495.76");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=204.13,434.05");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=227.86,471.28");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=273.92,428.01");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=308.92,438.75");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=318.11,420.46");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=297.02,423.33");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=293.44,325.02");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=363.94,290.10");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=307.07,358.45");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=103.67,684.75");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=11.23,797.63");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=67.65,737.60");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=55.92,559.37");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=27.37,512.73");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=44.44,497.45");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=101.36,448.27");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=61.50,432.82");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=236.25,544.56");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=62.45,532.29");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=65.94,550.21");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=100.25,459.96");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=74.62,361.20");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=44.10,361.79");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=120.88,460.84");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=107.02,367.10");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=115.81,430.33");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=139.96,401.38");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=125.28,388.07");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=137.45,258.92");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=161.06,272.57");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=113.82,441.29");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=247.61,465.73");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=238.74,429.79");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=207.03,510.15");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=304.52,471.71");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=372.48,433.33");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=223.14,408.61");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=184.42,393.36");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=183.17,503.73");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=75.08,464.90");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=134.70,433.11");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=168.86,344.96");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=116.43,344.22");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=150.37,486.17");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=128.91,345.04");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=49.55,479.03");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=164.07,543.03");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=218.77,491.13");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=225.26,419.35");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=196.04,481.47");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=266.77,361.03");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=249.34,510.73");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=298.77,453.70");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=310.55,387.53");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=290.78,378.82");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=314.71,451.08");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=283.17,308.43");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=336.33,292.20");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=278.74,397.44");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=89.30,708.28");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=19.25,729.93");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=4.10,657.66");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=96.93,557.03");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=0.62,493.09");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=38.77,472.59");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=68.32,494.34");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=103.63,329.96");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=184.02,453.71");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=122.66,615.41");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=170.65,509.85");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=71.35,413.71");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=36.27,375.86");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=106.67,402.55");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=70.08,376.88");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=4.69,419.69");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=42.21,445.78");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=77.90,328.20");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=175.70,437.62");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=147.93,370.96");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=181.22,337.17");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=133.85,457.43");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=157.53,377.92");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=249.88,396.80");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=193.14,543.14");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=219.56,512.39");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=384.36,405.47");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=323.15,363.31");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=223.16,538.10");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=187.48,473.34");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=159.71,459.59");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=127.83,512.14");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=207.95,448.08");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=54.93,371.68");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=141.25,492.19");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=95.18,485.27");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=201.21,391.91");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=155.84,469.48");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=260.63,553.09");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=121.77,539.35");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=116.17,570.03");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=213.40,344.82");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=146.71,456.01");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=333.66,412.04");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=387.58,415.83");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=381.94,364.85");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=333.10,461.74");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=244.89,325.83");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=453.22,317.18");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=286.95,340.13");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=114.02,661.31");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=105.84,749.99");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=41.45,676.74");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=35.00,555.00");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=36.65,529.05");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=9.39,476.01");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=54.39,415.90");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=156.19,321.76");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=207.13,522.47");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=96.05,525.85");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=149.03,530.88");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=90.59,431.10");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=28.58,350.92");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=46.33,347.35");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=115.32,378.58");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=42.01,322.34");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=20.19,376.82");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=121.33,361.98");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=104.98,384.78");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=190.76,374.91");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=155.76,334.34");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=101.66,315.02");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=160.90,367.47");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=254.25,522.28");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=245.16,489.23");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=285.00,488.80");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=324.68,382.08");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=291.65,396.55");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=270.72,370.49");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=172.17,550.58");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=89.70,401.38");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=188.99,514.92");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=255.67,452.56");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=26.68,445.30");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=83.60,478.87");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=85.52,346.66");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=65.87,517.77");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=140.00,415.99");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=137.32,517.64");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=183.78,382.95");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=113.93,511.11");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=234.77,402.78");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=265.87,498.66");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=272.30,467.83");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=351.54,467.84");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=415.73,417.30");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=372.30,487.01");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=278.75,321.87");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=425.63,280.06");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=284.08,361.29");
    }

}

