
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn12_8
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
        @display("p=189.27,910.79");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=136.28,856.19");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=192.78,829.37");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=107.13,794.36");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=68.78,822.64");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=149.24,788.78");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=148.24,817.04");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=138.40,801.62");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=158.54,798.44");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=189.00,799.19");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=276.53,777.27");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=282.81,792.50");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=243.14,819.40");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=229.02,824.13");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=176.42,785.30");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=89.29,750.31");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=108.26,941.62");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=195.32,814.42");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=158.56,823.51");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=227.87,909.35");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=76.22,878.78");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=39.71,801.30");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=127.12,861.37");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=130.25,832.44");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=154.35,844.59");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=153.20,854.68");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=166.92,777.33");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=254.10,820.36");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=303.78,775.11");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=206.99,832.81");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=212.84,847.87");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=121.85,795.00");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=78.07,676.86");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=149.12,939.75");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=112.74,920.24");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=113.29,809.18");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=200.87,778.53");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=24.81,778.79");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=9.49,863.21");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=177.01,717.37");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=138.05,768.69");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=179.26,870.21");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=76.65,843.51");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=196.15,859.21");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=286.78,758.35");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=231.87,861.52");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=222.04,836.68");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=314.92,793.25");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=141.52,832.98");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=124.02,742.43");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=191.41,892.83");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=209.98,885.78");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=94.56,928.92");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=167.89,897.19");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=65.48,882.99");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=33.46,758.89");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=133.72,880.83");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=175.37,803.56");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=218.40,761.78");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=122.50,825.21");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=112.20,763.11");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=245.71,718.48");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=320.40,765.33");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=300.39,805.00");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=165.38,787.73");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=181.03,689.52");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=103.33,746.68");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=84.00,972.09");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=255.53,979.81");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=184.58,823.59");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=203.82,903.89");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=20.58,831.64");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=56.56,791.60");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=138.55,707.72");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=201.29,799.16");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=144.99,886.18");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=97.81,730.90");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=173.02,763.72");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=253.09,779.94");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=344.01,796.02");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=162.52,864.44");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=244.81,803.36");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=192.66,735.88");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=159.60,750.19");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=49.37,901.25");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=262.97,883.71");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=122.60,911.14");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=275.36,850.76");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=55.92,873.54");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=108.17,849.29");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=122.82,879.27");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=222.51,785.33");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=97.80,821.12");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=221.12,866.90");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=176.37,859.06");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=296.08,749.45");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=244.60,751.63");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=196.04,790.46");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=260.33,831.40");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=118.49,726.93");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=87.46,664.90");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=29.58,866.21");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=170.31,960.79");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=101.58,805.06");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=184.29,837.57");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=85.84,781.71");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=102.13,870.86");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=51.00,779.76");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=58.24,840.04");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=163.05,877.27");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=244.75,847.13");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=138.29,745.42");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=264.49,770.10");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=283.60,802.64");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=237.88,833.88");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=271.42,824.31");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=227.62,851.90");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=117.59,667.35");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=49.34,911.29");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=188.40,930.79");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=153.28,879.53");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=235.63,780.05");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=184.73,852.80");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=67.80,768.43");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=211.38,790.09");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=77.28,854.16");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=170.48,834.73");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=147.08,737.49");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=133.15,791.34");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=256.45,734.24");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=292.76,782.54");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=291.14,826.75");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=236.26,790.69");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=181.22,749.47");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=36.60,831.13");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=120.90,950.69");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=245.65,976.66");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=205.59,875.43");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=127.57,847.77");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=153.03,867.82");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=71.27,900.80");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=203.23,731.54");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=151.97,904.12");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=162.84,713.18");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=145.05,757.92");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=192.36,753.54");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=218.43,808.09");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=297.74,879.05");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=232.44,871.73");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=246.48,862.77");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=271.22,803.85");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=72.17,749.84");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=92.35,847.92");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=238.63,925.32");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=47.11,852.10");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=179.32,737.03");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=84.28,792.09");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=110.84,834.71");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=228.98,743.18");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=78.54,831.78");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=135.99,781.63");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=130.69,719.41");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=201.35,845.26");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=258.42,851.09");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=262.15,812.77");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=241.51,762.87");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=272.06,866.07");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=114.97,707.12");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=52.74,754.41");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=86.45,888.02");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=284.06,917.34");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=82.42,862.99");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=266.58,790.47");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=68.02,731.26");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=46.94,880.02");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=149.76,773.42");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=98.33,755.53");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=116.67,895.78");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=171.65,816.49");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=158.29,725.39");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=312.61,836.11");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=343.55,825.26");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=246.12,895.96");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=211.93,746.57");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=191.01,867.89");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=79.55,767.76");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=127.08,923.18");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=221.31,918.65");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=182.59,944.77");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=229.28,806.65");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=79.54,698.37");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=132.28,814.12");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=206.00,711.09");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=129.48,730.15");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=176.55,845.35");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=112.01,774.39");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=207.17,821.39");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=314.28,708.85");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=305.47,789.15");
    }

}

