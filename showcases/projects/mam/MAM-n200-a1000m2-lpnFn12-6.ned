
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn12-6
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
        @display("p=78.00,417.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=124.38,402.18");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=167.48,463.24");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=247.33,455.41");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=278.82,490.00");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=264.16,504.41");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=253.47,415.12");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=234.48,344.92");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=331.14,369.05");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=365.99,458.21");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=347.11,465.39");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=333.90,544.27");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=244.47,515.18");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=175.76,488.73");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=184.18,481.54");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=175.57,516.78");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=219.17,442.23");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=30.34,375.33");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=24.97,392.26");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=192.08,464.45");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=249.50,369.45");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=201.40,474.17");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=234.01,583.42");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=257.71,489.08");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=292.72,355.96");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=388.82,399.85");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=342.12,454.81");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=367.05,469.93");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=346.87,509.33");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=259.50,450.61");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=102.12,534.58");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=273.55,500.09");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=101.56,574.68");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=269.74,404.92");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=135.78,492.69");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=126.23,417.29");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=212.44,430.79");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=335.61,423.77");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=323.47,527.35");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=233.54,550.13");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=234.89,358.68");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=175.11,278.56");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=367.06,378.01");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=316.88,481.63");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=306.22,472.94");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=346.83,521.89");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=255.52,578.35");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=116.99,469.67");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=159.75,402.98");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=208.75,559.52");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=230.36,430.96");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=68.33,340.10");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=103.40,393.65");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=182.05,464.84");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=269.56,447.47");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=250.15,556.15");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=259.28,515.82");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=263.15,434.33");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=275.45,275.46");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=249.47,349.38");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=399.60,542.72");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=359.91,494.16");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=346.59,562.90");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=232.78,458.04");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=85.63,490.90");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=172.60,452.02");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=81.12,513.73");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=237.88,401.75");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=144.01,456.37");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=192.05,339.29");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=109.13,457.35");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=233.46,470.69");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=227.69,488.67");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=220.61,506.24");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=242.04,424.89");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=223.94,311.05");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=309.90,307.97");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=368.20,434.71");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=317.61,446.22");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=332.88,484.33");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=197.71,487.64");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=151.50,515.47");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=164.20,489.17");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=211.22,501.38");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=234.44,413.75");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=61.21,458.77");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=126.00,338.36");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=158.32,472.48");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=234.79,377.60");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=259.93,539.17");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=240.15,439.41");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=307.46,441.11");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=260.11,318.85");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=323.32,376.47");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=403.99,366.58");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=394.47,486.92");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=304.46,522.23");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=209.20,600.36");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=151.59,480.19");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=93.31,467.46");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=171.88,478.91");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=223.34,367.93");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=74.83,365.83");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=194.02,368.77");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=188.39,427.70");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=188.77,412.32");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=297.59,500.03");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=300.51,549.20");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=215.35,397.89");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=196.96,419.03");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=370.89,320.76");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=417.68,411.01");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=344.79,397.62");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=325.64,550.47");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=285.29,541.68");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=191.68,563.17");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=190.63,510.25");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=157.28,604.48");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=213.08,362.69");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=95.28,404.59");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=79.93,406.23");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=217.57,540.44");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=277.43,425.69");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=217.79,452.68");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=235.74,597.06");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=303.84,426.45");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=223.60,355.34");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=345.37,368.57");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=397.66,515.73");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=414.31,536.27");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=334.07,509.42");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=311.11,543.52");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=217.64,571.24");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=225.29,407.49");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=200.39,524.19");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=177.94,499.34");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=99.80,443.10");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=77.34,444.26");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=261.18,479.34");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=259.09,462.00");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=255.34,400.26");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=230.11,536.97");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=213.92,465.59");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=321.67,296.57");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=381.53,369.70");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=315.24,425.52");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=384.16,494.33");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=355.08,546.98");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=268.63,595.90");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=112.65,427.45");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=127.07,455.12");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=156.27,528.15");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=172.07,419.06");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=76.11,456.45");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=86.89,364.38");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=115.35,534.49");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=273.54,527.60");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=358.65,477.07");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=281.29,474.80");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=182.72,344.70");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=180.23,398.78");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=377.74,392.97");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=295.83,460.59");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=293.45,484.60");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=371.09,554.72");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=311.01,455.95");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=128.23,480.07");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=122.46,559.08");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=181.64,580.13");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=291.64,377.01");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=13.54,391.09");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=99.22,426.47");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=150.07,497.57");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=249.22,470.39");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=281.91,521.81");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=254.48,427.71");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=244.61,386.69");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=200.95,307.55");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=351.54,417.05");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=378.64,422.60");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=393.80,455.24");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=339.76,573.72");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=289.63,508.80");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=172.62,529.33");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=200.99,513.86");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=191.54,600.00");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=140.50,428.80");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=122.23,388.73");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=41.77,402.83");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=136.32,381.69");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=162.41,444.97");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=336.66,531.81");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=268.53,465.43");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=172.65,376.24");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=221.97,281.02");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=304.12,359.08");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=362.03,444.13");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=401.66,461.76");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=290.26,579.24");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=235.17,611.22");
    }

}

