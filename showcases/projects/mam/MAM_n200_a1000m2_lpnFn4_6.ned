
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn4_6
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
        @display("p=100.00,900.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=16.21,924.21");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=71.92,939.84");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=60.30,956.66");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=31.25,897.53");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=51.03,896.19");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=70.32,870.99");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=67.77,894.26");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=75.44,923.89");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=113.31,980.17");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=179.90,983.90");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=194.27,893.61");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=153.27,836.02");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=183.14,841.40");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=186.99,755.00");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=180.38,689.39");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=181.52,676.59");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=216.34,693.13");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=226.57,620.88");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=282.99,660.58");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=316.77,724.08");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=399.58,755.55");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=428.66,837.43");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=453.05,796.96");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=429.90,709.49");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=423.55,750.63");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=410.76,669.63");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=334.68,627.95");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=259.55,639.76");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=294.67,627.99");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=324.29,655.41");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=255.48,621.00");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=237.88,662.94");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=145.74,656.72");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=174.62,644.89");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=194.97,677.56");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=188.64,610.42");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=144.19,610.62");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=73.67,633.92");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=38.89,715.60");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=78.70,722.50");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=71.39,646.28");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=79.81,679.58");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=133.05,669.65");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=158.44,625.14");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=176.51,622.17");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=171.25,551.79");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=134.56,472.77");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=101.23,528.76");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=152.31,475.32");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=130.93,828.12");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=35.45,907.20");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=111.64,926.23");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=70.11,964.68");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=83.28,930.87");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=9.42,829.08");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=53.42,885.36");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=16.83,815.15");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=81.67,907.65");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=129.35,931.89");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=167.52,987.42");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=196.73,941.35");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=157.44,771.85");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=93.00,825.11");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=191.93,799.75");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=101.34,696.95");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=213.12,739.65");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=228.44,730.11");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=236.59,608.03");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=316.36,634.00");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=361.87,692.29");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=488.37,775.31");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=463.73,775.99");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=434.90,789.10");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=412.94,751.01");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=380.22,780.40");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=358.57,609.90");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=305.23,616.27");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=344.33,647.97");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=252.55,661.30");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=279.02,734.52");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=250.52,598.04");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=192.80,629.40");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=163.95,746.51");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=236.95,679.01");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=205.07,614.91");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=237.00,619.74");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=187.99,577.80");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=28.34,569.24");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=51.94,739.48");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=92.70,704.03");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=22.54,695.42");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=38.44,641.82");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=88.38,610.73");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=90.51,685.57");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=264.74,577.03");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=201.61,534.94");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=121.81,429.26");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=126.52,598.10");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=69.65,473.54");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=89.03,891.12");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=98.57,876.49");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=84.38,945.20");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=113.57,966.67");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=113.37,945.08");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=113.41,894.40");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=120.16,816.90");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=58.11,859.89");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=135.22,988.53");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=124.17,967.76");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=243.71,969.68");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=240.70,892.23");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=142.35,742.05");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=168.87,901.12");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=176.16,778.74");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=149.11,727.23");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=234.84,648.24");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=242.48,697.71");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=211.95,629.03");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=208.32,704.71");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=268.16,768.36");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=318.52,755.33");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=472.13,799.84");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=444.48,737.90");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=462.08,734.64");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=373.56,736.49");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=448.70,706.38");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=328.21,590.24");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=312.70,563.57");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=299.41,676.10");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=374.17,582.55");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=270.06,601.56");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=309.27,697.38");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=146.36,668.02");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=186.07,561.30");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=137.80,634.63");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=255.89,568.74");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=87.98,599.21");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=98.91,586.33");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=22.91,749.56");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=103.89,642.75");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=46.53,576.18");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=48.98,678.58");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=121.38,685.29");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=76.03,669.34");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=175.90,588.65");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=112.78,615.00");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=205.50,450.65");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=76.21,511.96");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=189.41,485.55");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=9.95,942.52");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=41.03,924.18");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=142.03,892.11");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=102.39,921.69");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=21.16,980.36");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=60.04,902.34");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=88.81,872.80");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=154.71,882.11");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=165.26,937.25");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=146.48,956.98");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=157.68,973.71");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=206.03,874.27");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=144.79,863.92");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=145.04,846.83");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=138.53,813.77");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=114.65,643.99");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=216.18,648.78");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=245.91,647.08");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=253.25,708.23");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=333.16,670.13");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=296.40,754.00");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=313.09,711.34");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=444.83,819.99");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=532.66,744.96");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=430.83,805.74");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=384.91,818.50");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=400.73,628.51");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=422.11,589.41");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=291.70,561.27");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=271.12,654.57");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=300.96,592.12");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=320.73,682.79");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=160.50,680.65");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=67.36,656.66");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=90.01,675.45");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=155.31,647.22");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=162.07,593.99");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=98.27,626.55");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=112.57,724.08");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=57.44,708.61");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=110.10,675.29");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=112.00,656.55");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=0.30,682.79");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=69.08,733.49");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=229.56,573.40");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=131.19,624.34");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=220.47,601.25");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=185.37,398.95");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=33.98,478.81");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=170.80,487.54");
    }

}

