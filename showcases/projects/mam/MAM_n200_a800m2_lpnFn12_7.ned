
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn12_7
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
        @display("p=108.90,668.41");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=150.58,646.41");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=159.63,590.30");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=132.87,612.30");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=89.09,523.17");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=32.95,476.54");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=101.51,527.97");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=172.48,499.30");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=183.60,439.68");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=260.85,467.21");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=294.95,453.44");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=299.82,531.99");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=293.78,519.82");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=338.69,554.04");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=351.88,475.12");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=351.37,490.76");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=140.20,732.96");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=99.78,633.59");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=208.15,675.53");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=229.85,639.60");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=146.59,522.98");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=155.44,471.65");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=120.29,495.25");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=79.84,590.32");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=177.57,484.06");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=151.64,505.61");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=278.65,512.69");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=323.91,446.66");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=316.09,516.10");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=305.41,520.10");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=354.35,551.87");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=405.33,441.84");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=332.84,403.82");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=156.17,761.34");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=117.41,589.97");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=116.60,635.16");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=188.79,654.93");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=144.14,592.26");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=73.59,512.61");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=44.34,522.97");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=89.87,624.76");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=212.79,546.45");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=216.88,431.84");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=271.98,453.17");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=288.68,552.48");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=376.47,532.84");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=273.71,534.97");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=284.45,529.65");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=387.20,458.97");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=305.56,508.34");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=82.41,649.66");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=124.85,760.24");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=108.82,615.77");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=65.04,588.71");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=185.93,556.65");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=25.73,466.90");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=80.03,530.00");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=14.37,490.34");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=168.20,532.69");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=193.72,423.42");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=181.98,418.08");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=304.66,457.10");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=329.76,537.69");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=336.87,467.77");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=325.57,486.96");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=354.63,450.76");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=367.52,411.88");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=91.89,706.95");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=174.86,620.01");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=219.43,658.38");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=240.44,542.57");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=80.28,552.25");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=69.42,521.89");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=96.96,446.76");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=96.79,431.50");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=156.02,495.60");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=120.59,453.23");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=244.25,465.16");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=336.65,416.52");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=270.65,593.99");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=303.05,578.55");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=369.86,517.94");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=450.17,471.99");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=351.77,513.80");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=117.60,744.57");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=198.39,628.21");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=140.35,622.62");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=125.47,580.90");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=93.86,589.41");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=64.44,429.87");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=97.98,509.35");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=61.35,467.74");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=190.71,517.06");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=269.35,404.59");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=242.73,454.29");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=282.08,461.28");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=315.21,600.07");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=320.57,529.65");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=315.25,568.62");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=415.06,454.78");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=286.78,478.18");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=43.56,731.92");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=189.86,723.86");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=180.07,670.59");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=206.96,610.06");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=128.69,539.27");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=106.47,479.19");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=88.76,468.17");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=17.47,573.25");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=146.70,578.32");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=125.11,377.79");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=289.94,439.24");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=227.85,506.44");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=372.43,545.21");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=318.10,579.47");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=364.60,597.80");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=396.02,474.87");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=370.67,459.42");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=91.32,749.84");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=117.69,732.52");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=133.82,655.36");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=193.11,601.29");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=166.71,663.72");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=30.27,531.88");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=41.78,471.28");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=72.16,568.66");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=138.67,556.03");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=239.24,492.74");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=256.09,448.96");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=337.30,449.95");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=284.57,542.02");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=284.85,495.83");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=328.90,460.97");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=384.15,403.48");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=416.75,530.85");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=105.22,752.88");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=44.75,641.15");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=168.57,638.38");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=210.19,642.49");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=95.49,656.65");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=118.29,559.18");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=58.65,532.14");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=8.82,526.61");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=179.82,515.98");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=192.62,365.09");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=201.10,509.04");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=204.51,441.27");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=211.34,502.97");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=326.82,521.49");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=306.21,619.18");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=435.17,470.44");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=382.01,562.21");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=108.70,716.52");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=146.32,682.07");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=152.64,632.12");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=226.91,536.95");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=117.32,601.34");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=172.59,552.78");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=42.51,453.11");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=7.36,555.06");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=134.49,410.81");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=171.08,452.48");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=272.83,439.66");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=374.62,440.41");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=350.34,599.00");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=257.28,545.30");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=297.48,632.73");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=299.25,483.80");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=411.62,549.12");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=85.21,685.06");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=107.52,681.33");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=156.27,694.89");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=93.60,600.35");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=168.11,604.80");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=65.79,489.04");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=19.38,391.52");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=111.23,536.70");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=183.34,470.31");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=126.43,506.04");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=230.58,466.99");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=219.94,516.22");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=394.96,503.82");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=369.28,570.85");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=355.27,635.31");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=379.03,507.17");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=426.26,504.22");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=106.88,739.16");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=64.92,685.91");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=206.73,690.85");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=255.12,561.32");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=121.78,618.68");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=149.63,536.49");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=35.13,386.65");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=55.82,518.17");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=182.74,505.53");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=209.33,402.89");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=247.70,477.30");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=376.60,477.50");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=303.47,548.92");
    }

}

