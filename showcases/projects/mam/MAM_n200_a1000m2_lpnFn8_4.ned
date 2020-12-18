
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn8_4
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
        @display("p=118.33,835.38");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=173.79,780.21");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=140.77,763.48");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=84.56,839.82");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=93.99,847.91");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=65.58,920.47");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=69.74,956.36");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=118.85,906.74");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=82.85,957.54");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=60.29,836.70");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=110.47,859.40");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=76.73,906.04");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=97.82,938.17");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=108.02,925.85");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=148.67,691.99");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=234.65,702.77");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=304.38,689.75");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=218.08,686.86");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=243.73,687.04");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=199.49,742.28");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=194.78,776.44");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=175.50,852.18");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=157.79,876.98");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=140.10,903.17");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=115.41,937.05");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=129.73,818.90");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=190.49,823.80");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=202.88,793.79");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=102.02,888.30");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=76.50,920.74");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=137.91,891.08");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=65.89,940.35");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=115.99,874.76");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=89.87,973.28");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=102.86,841.91");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=69.32,797.70");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=175.42,921.58");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=89.92,944.70");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=128.39,899.48");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=174.00,667.24");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=191.22,716.72");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=310.02,716.09");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=145.32,703.11");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=169.80,714.50");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=216.11,758.39");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=140.80,752.64");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=165.76,841.58");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=215.77,839.80");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=168.15,951.77");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=29.03,847.39");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=138.27,859.96");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=261.43,737.19");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=174.09,801.07");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=35.59,827.55");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=27.30,789.83");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=153.03,953.79");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=75.00,967.80");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=134.18,966.50");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=91.10,915.92");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=71.50,874.89");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=44.34,894.09");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=81.22,893.24");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=81.69,989.06");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=31.22,929.75");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=157.39,615.28");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=241.96,719.21");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=330.29,600.95");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=148.84,718.35");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=208.76,666.65");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=172.74,745.76");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=144.13,805.38");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=247.06,909.46");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=219.13,953.05");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=116.16,818.55");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=76.74,857.35");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=162.04,811.19");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=86.46,800.49");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=116.70,783.08");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=133.42,781.35");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=29.56,861.98");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=107.75,953.03");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=90.13,860.17");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=172.47,863.04");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=58.25,869.99");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=34.93,881.98");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=172.79,909.59");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=115.77,917.17");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=108.35,969.98");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=52.77,917.53");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=136.82,650.17");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=249.63,699.96");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=225.89,674.02");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=209.92,627.96");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=178.26,720.46");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=191.82,700.13");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=240.34,761.87");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=172.11,875.59");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=189.40,866.39");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=142.58,924.03");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=96.29,809.95");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=72.59,811.34");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=178.29,769.99");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=119.58,756.59");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=116.18,767.30");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=137.37,844.58");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=82.36,824.30");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=153.64,935.72");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=69.39,890.16");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=128.15,984.69");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=47.77,828.42");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=104.71,868.21");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=160.27,920.46");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=114.48,987.21");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=122.33,928.95");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=89.46,749.73");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=181.57,700.34");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=265.24,670.63");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=183.58,622.31");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=215.69,777.03");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=238.50,778.61");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=221.73,708.85");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=245.27,808.01");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=150.21,849.41");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=176.32,826.58");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=50.19,969.88");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=171.20,757.53");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=257.52,783.01");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=149.75,768.64");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=49.20,798.26");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=86.06,875.36");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=46.75,938.80");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=159.90,992.13");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=185.54,927.62");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=7.97,984.31");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=148.97,829.61");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=126.62,863.65");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=45.13,860.04");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=10.34,931.83");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=144.55,981.74");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=120.37,625.88");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=247.87,729.50");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=319.12,740.66");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=277.01,620.29");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=296.36,676.07");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=236.45,734.11");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=180.05,838.44");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=191.29,806.46");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=165.13,795.64");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=130.46,911.06");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=175.27,932.83");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=206.41,870.55");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=125.36,741.98");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=96.88,720.78");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=96.03,830.61");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=11.86,794.06");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=67.12,985.58");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=77.35,947.45");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=25.37,893.52");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=142.77,950.17");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=63.38,854.32");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=142.14,792.15");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=105.08,825.77");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=170.92,997.37");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=159.41,889.90");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=89.06,662.01");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=289.64,728.67");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=378.26,667.98");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=173.40,731.08");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=232.88,628.15");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=216.93,729.62");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=150.89,732.74");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=203.72,858.48");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=124.52,941.71");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=208.56,964.82");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=23.34,962.25");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=120.66,854.76");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=195.56,732.85");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=183.11,786.70");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=19.70,827.72");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=0.59,829.90");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=24.38,873.02");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=45.97,952.38");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=206.28,922.10");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=77.00,978.79");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=37.29,817.28");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=114.17,896.35");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=3.89,906.81");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=143.84,874.08");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=36.82,917.18");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=74.31,744.81");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=197.02,659.09");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=337.51,740.82");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=222.94,651.29");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=238.57,747.49");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=272.42,737.40");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=203.91,805.00");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=136.19,828.04");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=133.45,955.64");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=222.91,857.99");
    }

}

