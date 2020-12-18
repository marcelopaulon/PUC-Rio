
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn8_1
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
        @display("p=108.61,706.99");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=139.12,630.26");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=77.42,707.36");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=127.63,655.11");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=193.48,662.27");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=230.60,594.24");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=222.13,623.22");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=250.11,642.07");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=255.41,669.05");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=241.93,612.17");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=250.11,533.96");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=309.70,488.35");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=308.66,462.72");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=377.57,487.36");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=294.87,517.91");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=307.31,527.92");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=347.17,544.55");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=397.88,537.43");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=373.41,442.77");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=344.22,406.67");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=408.67,406.58");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=401.70,307.31");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=369.71,375.94");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=309.88,373.60");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=144.60,745.67");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=115.46,717.70");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=145.90,660.76");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=156.82,730.10");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=109.09,649.07");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=204.69,618.14");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=217.87,582.33");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=184.75,586.36");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=305.32,666.90");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=220.08,605.29");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=224.77,532.40");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=270.36,508.27");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=367.30,487.97");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=312.00,538.40");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=451.69,434.36");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=239.33,562.23");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=305.65,581.10");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=326.31,545.36");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=365.10,526.75");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=337.83,459.04");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=402.40,446.47");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=328.98,396.96");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=399.36,241.67");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=359.24,374.88");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=298.34,297.44");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=117.81,680.47");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=175.29,687.03");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=130.48,618.43");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=48.74,694.16");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=175.52,662.01");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=179.50,697.00");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=171.78,630.76");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=281.51,621.85");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=202.05,683.09");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=219.85,712.55");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=213.57,664.70");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=234.23,508.47");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=343.83,468.67");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=347.08,444.71");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=418.64,498.48");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=277.97,520.70");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=342.72,483.47");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=435.17,552.95");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=356.09,455.00");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=357.54,432.87");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=333.49,375.71");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=437.47,401.05");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=461.63,326.99");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=343.54,333.39");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=408.08,375.96");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=87.55,697.29");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=137.06,666.09");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=122.21,663.87");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=116.33,787.10");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=149.24,579.54");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=134.17,640.96");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=308.29,652.53");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=194.08,638.63");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=228.24,670.03");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=241.90,653.63");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=322.72,620.17");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=207.43,514.62");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=295.20,507.04");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=331.95,491.41");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=352.50,475.10");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=362.20,543.95");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=293.07,475.44");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=335.74,522.81");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=421.15,555.81");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=379.84,458.23");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=403.36,420.59");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=396.63,409.79");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=365.71,306.30");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=366.50,355.96");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=318.03,399.92");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=145.37,711.75");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=105.75,675.39");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=118.92,634.27");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=91.67,623.26");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=75.51,662.17");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=152.67,695.35");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=158.21,613.46");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=250.59,563.04");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=253.16,619.77");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=244.54,665.10");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=275.41,698.77");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=315.70,514.53");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=293.59,455.18");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=292.08,552.26");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=396.23,483.18");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=295.13,531.80");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=243.64,600.79");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=360.78,502.26");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=392.64,473.70");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=387.41,399.66");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=332.04,414.11");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=412.58,434.63");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=408.16,316.95");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=386.67,430.11");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=243.69,329.17");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=113.04,733.51");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=85.95,648.40");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=179.78,650.81");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=56.45,638.77");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=149.02,597.34");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=186.06,688.29");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=161.90,652.17");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=212.64,704.41");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=250.53,696.54");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=248.01,747.73");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=289.71,578.95");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=199.81,482.92");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=305.00,556.30");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=274.97,486.30");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=410.59,513.06");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=314.65,501.14");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=373.28,509.54");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=321.88,639.25");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=403.27,461.13");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=468.34,418.80");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=330.16,436.41");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=316.70,441.67");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=412.04,294.16");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=390.53,378.83");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=295.80,346.12");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=52.51,680.71");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=78.55,740.57");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=59.87,654.11");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=141.91,735.26");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=48.84,624.05");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=129.40,708.26");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=234.64,682.79");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=205.28,630.59");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=265.71,674.15");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=284.87,608.27");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=281.34,648.81");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=170.34,584.52");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=394.73,514.05");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=314.47,452.97");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=442.01,455.85");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=245.30,507.38");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=328.07,568.93");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=378.19,544.20");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=402.61,524.44");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=447.74,477.14");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=361.10,418.81");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=429.50,375.41");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=368.97,289.90");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=285.99,339.37");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=297.96,281.17");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=155.35,764.06");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=91.51,730.16");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=185.26,544.28");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=97.23,640.77");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=97.38,747.45");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=192.44,740.99");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=258.46,595.40");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=257.12,580.09");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=254.58,652.83");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=289.01,634.20");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=228.01,643.17");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=210.21,551.02");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=318.56,482.43");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=335.28,509.47");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=356.51,556.12");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=248.22,476.56");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=334.13,581.65");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=344.59,614.05");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=450.05,492.02");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=424.96,357.42");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=368.19,459.21");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=428.37,409.30");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=336.01,363.19");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=406.69,392.44");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=311.05,388.58");
    }

}

