
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn12_3
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
        @display("p=114.67,879.51");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=136.46,921.75");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=124.12,851.66");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=114.10,797.62");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=79.57,810.30");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=99.24,803.42");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=9.80,761.75");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=1.15,706.95");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=1.69,694.17");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=37.91,731.66");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=84.13,681.84");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=134.74,732.55");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=111.98,740.25");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=45.17,634.44");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=12.61,711.21");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=58.48,703.21");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=129.95,980.94");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=115.46,808.62");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=192.60,871.58");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=131.11,844.17");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=140.26,840.11");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=95.30,816.29");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=106.37,707.02");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=8.68,778.10");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=44.66,702.89");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=13.25,697.08");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=6.08,736.87");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=87.57,731.38");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=130.99,709.56");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=118.31,754.34");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=104.36,648.95");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=68.37,636.11");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=35.98,681.20");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=31.03,968.52");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=94.47,877.39");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=105.52,931.92");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=82.03,839.54");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=129.78,800.56");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=51.67,820.29");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=148.96,726.92");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=49.15,790.21");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=44.03,745.35");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=82.28,666.06");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=72.65,701.22");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=85.26,705.10");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=91.79,777.36");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=75.13,650.21");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=92.31,599.21");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=47.72,675.75");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=106.41,694.22");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=103.08,967.51");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=114.09,903.90");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=166.27,861.60");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=148.64,940.85");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=172.26,729.65");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=93.81,836.23");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=133.83,722.03");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=95.28,757.60");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=19.72,735.93");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=29.20,743.48");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=16.78,680.48");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=78.24,713.87");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=179.50,697.47");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=106.83,662.63");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=33.26,643.03");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=66.60,774.71");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=84.03,797.76");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=161.40,894.82");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=73.74,940.20");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=161.18,881.32");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=186.59,833.00");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=165.36,778.44");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=154.05,856.33");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=49.19,769.61");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=9.97,846.13");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=37.34,763.26");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=35.45,709.45");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=18.80,656.35");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=145.46,741.49");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=142.78,808.18");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=133.51,779.22");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=120.02,627.03");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=72.45,689.38");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=108.76,631.55");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=12.59,925.42");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=172.05,919.17");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=137.76,957.90");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=184.23,900.46");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=30.43,816.70");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=68.38,830.82");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=186.82,762.87");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=43.85,840.08");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=6.76,636.92");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=65.96,679.65");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=60.42,745.42");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=158.44,664.84");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=212.25,676.38");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=74.47,821.63");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=38.44,586.18");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=23.29,722.85");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=26.82,623.45");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=51.67,925.97");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=42.92,886.00");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=124.73,909.31");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=131.56,816.26");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=58.44,843.27");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=126.31,863.75");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=101.24,888.66");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=43.91,722.36");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=48.07,688.43");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=2.26,679.13");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=10.67,646.43");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=103.79,621.59");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=195.12,712.28");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=117.02,777.66");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=69.65,591.09");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=23.06,768.10");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=150.73,695.51");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=138.16,869.66");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=100.70,911.90");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=144.80,973.70");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=74.81,901.11");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=125.71,893.73");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=23.18,887.05");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=13.04,820.43");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=18.58,856.65");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=26.68,611.51");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=25.21,780.52");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=15.89,748.13");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=166.75,683.40");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=165.95,762.53");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=167.46,814.02");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=42.85,615.41");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=95.30,702.04");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=90.81,716.78");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=55.68,898.72");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=88.20,947.36");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=50.57,956.95");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=115.71,862.51");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=180.85,802.01");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=58.35,797.78");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=101.87,769.56");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=25.66,703.04");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=4.91,720.96");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=33.34,657.31");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=13.60,791.17");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=143.58,710.94");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=74.50,767.57");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=34.78,793.41");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=54.57,639.69");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=0.70,767.77");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=44.73,663.95");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=196.38,892.21");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=100.22,949.74");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=118.92,999.77");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=149.95,926.90");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=73.25,723.41");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=67.72,785.40");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=151.53,819.32");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=50.86,753.28");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=12.04,665.98");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=2.13,785.82");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=32.40,754.51");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=124.25,696.22");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=168.11,719.95");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=160.64,704.68");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=55.72,717.59");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=77.17,778.79");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=96.20,670.94");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=124.40,965.91");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=116.91,818.77");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=187.36,915.72");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=134.02,756.86");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=106.87,730.98");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=34.68,831.00");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=42.26,862.07");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=64.43,809.06");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=64.13,761.60");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=56.13,657.48");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=8.12,799.93");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=130.66,597.90");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=169.66,788.08");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=136.08,681.67");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=23.12,689.02");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=90.98,655.29");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=129.01,635.39");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=63.40,928.37");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=146.32,897.49");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=116.93,931.69");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=64.46,881.65");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=155.92,791.84");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=44.60,810.24");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=53.54,875.26");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=19.00,800.61");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=3.73,615.87");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=47.03,779.99");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=58.35,728.04");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=52.30,607.33");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=136.69,663.30");
    }

}

