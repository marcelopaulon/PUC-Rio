
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn4_2
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
        @display("p=154.34,665.96");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=181.47,682.26");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=149.89,643.52");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=169.22,719.77");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=178.88,756.37");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=233.34,695.05");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=295.85,702.58");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=315.09,663.90");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=384.60,615.00");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=402.91,623.70");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=423.19,563.62");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=387.42,520.74");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=410.97,540.10");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=321.93,551.46");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=298.96,558.36");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=287.82,544.25");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=304.77,546.55");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=412.95,575.07");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=493.77,536.48");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=547.01,575.50");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=523.26,595.16");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=448.79,602.59");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=494.41,565.80");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=477.83,576.89");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=509.22,500.66");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=513.99,429.32");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=475.85,436.30");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=467.90,462.01");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=477.66,459.77");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=484.75,386.51");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=438.41,379.73");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=481.81,425.29");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=479.17,356.71");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=454.64,364.79");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=389.35,387.21");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=421.41,370.51");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=414.05,361.26");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=334.72,411.85");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=301.00,486.00");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=256.72,447.01");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=315.04,410.29");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=295.99,401.01");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=216.36,355.88");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=134.05,317.73");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=121.61,295.76");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=152.65,346.48");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=105.78,275.16");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=128.79,345.70");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=150.49,333.44");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=86.63,679.99");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=191.48,660.23");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=193.50,589.18");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=152.33,625.92");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=153.45,746.44");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=219.60,692.96");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=272.64,634.59");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=309.09,688.06");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=274.56,659.61");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=413.59,597.93");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=469.64,685.40");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=430.03,470.69");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=379.74,597.93");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=481.43,596.97");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=319.11,569.62");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=281.99,552.58");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=231.20,586.98");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=392.09,504.99");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=424.37,549.03");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=533.25,616.29");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=533.16,571.33");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=516.80,549.17");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=492.56,670.21");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=529.46,549.82");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=536.17,527.28");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=483.00,508.06");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=519.46,361.62");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=498.54,371.00");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=546.70,466.47");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=515.47,444.04");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=560.37,408.07");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=454.99,378.75");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=530.13,396.85");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=475.99,326.54");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=484.35,412.62");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=356.75,412.86");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=417.08,287.98");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=351.00,367.82");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=336.20,348.50");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=329.25,390.37");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=321.50,450.29");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=309.73,356.43");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=321.94,401.66");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=200.15,329.43");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=182.39,321.67");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=160.93,271.23");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=233.10,402.49");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=184.65,272.36");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=91.66,360.40");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=88.02,398.15");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=145.22,699.91");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=118.79,705.16");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=252.93,666.47");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=75.80,601.86");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=183.58,727.00");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=209.43,742.07");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=292.79,714.97");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=254.22,683.78");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=362.50,659.18");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=393.88,638.98");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=454.79,704.45");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=504.78,540.82");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=332.00,452.85");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=449.27,487.59");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=259.99,480.62");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=379.51,530.38");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=341.63,492.05");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=338.46,574.20");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=469.66,500.66");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=482.54,559.22");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=465.27,570.17");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=521.48,579.65");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=531.02,644.00");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=438.94,561.62");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=417.72,618.71");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=441.13,463.00");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=588.03,363.86");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=528.20,448.76");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=456.86,456.98");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=493.21,425.26");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=545.90,340.36");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=485.75,335.45");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=425.03,431.66");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=511.03,349.90");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=478.95,375.45");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=406.73,416.89");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=471.23,303.28");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=463.68,316.36");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=424.27,451.18");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=381.83,446.59");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=219.68,536.10");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=276.15,434.94");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=336.19,434.77");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=212.76,366.50");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=165.66,303.13");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=41.20,326.26");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=107.42,401.26");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=77.32,267.65");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=86.81,415.55");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=82.88,325.11");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=74.09,770.95");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=122.58,695.86");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=228.99,625.76");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=246.86,640.09");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=159.02,679.29");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=194.42,775.07");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=253.84,652.88");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=212.85,655.37");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=268.34,697.53");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=484.21,607.87");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=364.30,631.45");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=445.65,577.87");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=370.84,562.06");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=408.42,551.83");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=225.47,564.91");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=285.31,564.89");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=334.70,549.84");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=312.74,514.09");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=351.23,631.77");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=531.34,498.00");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=564.37,546.98");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=519.99,658.25");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=417.47,671.12");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=457.01,550.61");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=431.90,492.46");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=452.41,532.01");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=542.00,445.28");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=457.30,467.62");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=488.75,460.51");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=511.04,457.19");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=509.73,380.03");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=500.11,457.03");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=464.15,420.84");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=455.08,337.82");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=435.67,436.76");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=391.23,401.52");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=440.43,300.27");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=429.20,358.93");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=370.83,426.46");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=327.78,505.40");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=242.10,467.44");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=318.45,497.21");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=266.70,428.54");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=181.83,288.05");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=70.33,390.08");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=163.96,379.69");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=189.03,361.54");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=65.37,256.21");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=44.31,394.79");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=184.63,251.20");
    }

}

