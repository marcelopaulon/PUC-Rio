
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn8_8
{
    parameters:
        @display("bgb=2000,2000;bgg=100,1,grey95;bgu=m");
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
        @display("p=130.07,851.69");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=58.80,801.71");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=101.81,728.93");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=168.06,732.82");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=152.78,772.23");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=203.40,797.81");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=189.78,835.37");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=234.04,835.97");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=205.21,784.60");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=168.10,830.32");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=249.58,842.40");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=307.78,853.44");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=360.11,825.61");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=287.22,793.91");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=298.24,842.53");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=235.75,810.91");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=244.38,819.15");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=187.20,731.45");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=158.35,729.95");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=130.60,719.73");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=48.76,753.07");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=41.30,797.16");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=4.05,798.62");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=0.74,774.03");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=76.80,905.64");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=117.11,874.99");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=72.53,763.20");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=98.13,697.70");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=130.78,706.96");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=228.17,766.68");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=254.44,807.02");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=287.00,847.84");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=308.63,783.56");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=216.83,845.72");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=167.26,921.83");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=248.88,871.47");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=291.13,897.96");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=396.63,897.89");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=260.65,796.58");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=337.03,901.06");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=267.70,901.18");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=280.97,881.25");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=181.10,673.30");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=207.66,688.58");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=85.37,734.18");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=44.15,741.32");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=48.20,787.18");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=16.65,771.02");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=50.41,770.72");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=22.41,862.57");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=89.58,871.23");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=33.23,886.05");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=151.45,669.71");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=171.28,750.07");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=96.67,714.56");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=206.03,745.16");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=216.96,927.18");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=267.92,829.25");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=187.26,793.45");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=142.52,804.92");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=233.43,865.41");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=221.22,868.78");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=387.52,798.75");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=374.33,833.54");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=219.06,794.94");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=268.97,888.38");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=321.78,863.71");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=163.17,817.76");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=217.88,704.10");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=137.46,682.12");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=94.99,774.52");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=83.99,842.99");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=56.31,815.10");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=12.43,761.26");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=78.05,938.34");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=125.30,948.63");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=46.84,720.58");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=72.27,744.23");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=131.47,799.18");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=236.78,786.22");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=108.76,827.06");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=211.40,864.17");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=294.32,762.36");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=156.85,802.05");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=169.38,840.43");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=257.08,930.97");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=303.45,864.85");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=302.76,889.32");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=354.30,772.91");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=386.74,856.14");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=221.21,807.90");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=251.14,786.52");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=239.70,766.23");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=116.12,718.10");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=159.31,712.68");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=42.89,655.96");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=64.33,705.78");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=15.62,828.65");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=28.10,696.04");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=96.16,889.86");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=104.91,866.09");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=38.39,709.05");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=150.95,694.90");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=197.87,733.50");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=83.45,799.86");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=150.86,849.60");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=110.62,795.16");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=231.44,850.75");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=224.71,743.34");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=109.83,838.29");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=282.83,821.16");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=303.03,929.16");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=404.24,809.20");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=213.46,755.99");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=252.40,765.04");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=264.56,763.56");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=198.63,889.11");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=142.79,652.63");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=214.77,649.30");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=108.28,634.78");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=102.66,809.39");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=55.48,779.35");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=1.92,700.06");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=31.27,811.96");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=123.60,909.83");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=178.89,784.79");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=124.47,738.87");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=75.98,672.92");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=232.58,713.57");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=203.87,713.79");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=247.60,731.88");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=171.06,909.27");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=216.19,825.84");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=211.03,814.79");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=135.86,765.90");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=256.20,823.56");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=312.26,766.40");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=364.77,743.40");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=260.99,778.07");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=283.77,864.34");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=298.64,832.18");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=207.33,842.01");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=180.51,828.20");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=154.08,757.59");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=73.37,721.19");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=144.61,727.02");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=86.81,816.17");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=89.89,788.15");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=9.34,807.46");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=77.44,858.35");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=38.99,835.13");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=57.37,836.48");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=70.03,653.83");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=235.02,674.02");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=188.05,709.17");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=117.01,816.76");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=166.58,857.63");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=262.52,847.00");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=203.65,763.70");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=180.59,892.00");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=232.99,906.80");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=403.42,828.17");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=355.19,860.76");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=259.42,708.92");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=313.37,820.51");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=177.30,763.80");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=187.78,861.24");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=192.10,746.82");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=163.65,776.36");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=177.51,740.44");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=57.19,742.40");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=61.92,718.77");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=42.20,845.79");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=11.45,788.74");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=62.32,959.19");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=71.53,786.14");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=11.05,746.06");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=131.57,755.01");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=137.89,663.65");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=197.55,807.42");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=281.71,757.14");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=167.57,871.15");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=323.69,873.65");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=139.35,746.90");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=106.47,762.10");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=201.93,912.43");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=283.47,949.19");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=303.76,797.89");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=273.23,874.16");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=325.89,841.61");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=267.47,807.59");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=230.23,820.88");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=190.35,764.48");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=181.70,751.15");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=34.81,746.41");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=6.56,711.15");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=47.49,807.20");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=56.51,860.05");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=68.19,797.57");
    }

}

