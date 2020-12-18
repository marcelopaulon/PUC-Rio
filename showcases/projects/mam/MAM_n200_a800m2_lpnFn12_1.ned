
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn12_1
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
        @display("p=79.65,691.55");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=126.47,696.20");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=98.06,730.45");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=40.76,742.46");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=60.93,738.49");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=132.80,744.16");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=156.84,727.38");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=226.82,685.94");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=285.28,669.54");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=314.28,644.00");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=328.34,625.57");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=257.57,651.00");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=306.49,574.40");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=284.03,564.21");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=273.34,493.55");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=279.21,530.82");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=82.54,715.29");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=115.08,688.61");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=132.71,775.94");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=86.41,732.71");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=115.62,791.03");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=128.55,754.34");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=115.99,769.28");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=166.80,757.43");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=185.14,682.89");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=243.30,644.90");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=388.35,607.92");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=373.51,593.50");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=324.33,717.73");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=311.74,483.68");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=300.73,614.15");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=292.03,502.60");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=340.04,581.50");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=38.20,680.88");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=103.63,664.54");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=168.25,729.32");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=52.16,698.07");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=87.39,752.17");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=49.03,713.53");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=195.68,746.13");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=115.04,741.95");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=242.87,663.39");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=278.72,576.81");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=327.94,664.89");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=315.51,657.33");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=258.75,624.58");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=322.97,572.52");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=249.90,531.16");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=203.20,502.97");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=339.46,541.75");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=76.53,678.49");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=63.92,694.45");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=91.03,628.74");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=72.11,749.23");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=30.67,762.17");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=3.77,752.86");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=155.16,716.31");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=139.86,669.57");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=139.35,649.95");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=351.67,607.58");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=238.32,606.02");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=317.80,549.93");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=277.57,695.35");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=294.93,569.79");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=274.24,516.49");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=207.91,467.76");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=238.62,506.42");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=73.90,795.91");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=115.04,752.91");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=181.29,629.65");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=53.54,653.96");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=120.02,709.88");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=86.50,764.74");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=199.12,720.57");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=174.03,650.27");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=198.99,613.70");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=241.76,718.26");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=332.85,677.03");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=367.95,581.18");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=239.41,732.51");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=276.59,590.69");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=294.04,538.37");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=259.78,528.48");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=213.29,501.88");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=98.94,710.40");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=132.68,707.90");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=117.41,602.34");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=16.69,691.97");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=30.28,787.86");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=42.25,663.38");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=86.63,702.68");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=151.71,691.12");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=139.40,732.55");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=281.16,707.57");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=344.95,637.95");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=319.53,604.31");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=269.01,676.31");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=308.45,529.34");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=290.85,514.95");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=266.47,466.38");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=332.76,529.25");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=181.36,712.94");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=40.08,694.21");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=141.28,699.54");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=107.87,717.68");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=47.76,730.27");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=90.86,794.87");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=90.92,691.64");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=178.07,737.37");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=302.60,689.07");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=304.35,763.86");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=260.33,638.19");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=291.45,693.87");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=267.42,693.02");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=333.25,648.59");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=348.54,521.27");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=294.55,412.46");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=314.46,497.01");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=55.06,723.33");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=68.23,721.11");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=213.52,693.27");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=120.38,723.59");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=19.28,711.96");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=72.31,767.91");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=180.18,672.30");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=147.31,756.52");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=297.12,733.31");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=224.11,724.54");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=307.17,708.71");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=358.37,627.45");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=232.96,640.18");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=270.80,599.54");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=256.16,606.83");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=304.03,495.10");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=227.32,541.99");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=137.53,719.76");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=71.45,738.36");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=111.00,698.30");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=98.67,654.46");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=8.23,791.63");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=5.31,730.16");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=192.95,733.82");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=93.05,777.57");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=252.49,693.82");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=362.66,652.64");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=341.61,597.17");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=299.13,663.60");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=248.87,580.10");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=245.52,615.19");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=259.91,560.68");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=276.51,542.16");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=316.53,516.09");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=141.41,632.29");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=124.51,616.29");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=194.19,673.84");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=38.97,723.66");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=48.53,683.27");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=30.64,773.37");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=167.00,689.63");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=160.49,749.43");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=241.45,677.98");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=364.94,685.65");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=314.84,724.11");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=316.79,616.00");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=185.83,654.36");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=275.01,483.26");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=355.46,507.26");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=305.50,514.77");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=295.21,435.60");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=94.56,606.48");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=116.66,670.52");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=150.96,671.23");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=30.10,735.75");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=4.22,705.28");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=8.79,770.00");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=169.01,793.92");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=238.34,777.41");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=204.64,710.95");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=314.44,683.46");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=288.46,633.43");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=289.71,599.65");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=317.10,699.12");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=245.25,545.52");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=220.33,519.66");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=360.34,455.53");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=258.23,542.10");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=26.83,653.58");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=73.24,621.40");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=135.52,600.21");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=21.37,681.96");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=19.19,740.42");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=48.56,752.39");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=142.45,785.42");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=130.81,633.13");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=221.55,673.29");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=239.85,694.57");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=341.27,725.35");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=339.31,614.82");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=199.23,648.60");
    }

}

