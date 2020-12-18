
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn8_5
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
        @display("p=80.18,846.72");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=2.49,897.80");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=73.55,923.28");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=156.21,930.48");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=140.58,951.95");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=92.71,963.38");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=150.21,901.07");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=193.07,871.44");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=233.41,839.78");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=247.25,911.00");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=335.15,949.98");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=339.64,858.74");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=306.78,862.96");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=400.07,830.16");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=357.10,823.85");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=388.63,788.17");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=328.81,769.93");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=299.60,724.92");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=353.42,644.26");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=398.44,579.81");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=443.09,647.06");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=405.65,675.62");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=399.37,685.88");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=426.37,681.41");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=107.01,919.72");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=92.06,843.58");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=49.72,971.11");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=64.34,960.91");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=119.16,924.28");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=125.89,875.52");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=78.62,971.60");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=140.74,816.40");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=127.02,904.58");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=175.69,790.16");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=245.35,940.38");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=312.46,879.42");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=312.74,905.06");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=243.27,807.62");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=386.67,834.91");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=304.36,766.37");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=321.89,832.25");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=302.62,688.48");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=246.89,652.53");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=277.03,685.46");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=347.79,635.41");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=444.47,612.94");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=395.49,718.79");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=357.57,676.61");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=393.77,656.32");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=41.66,927.29");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=56.05,860.29");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=11.82,918.55");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=162.40,921.61");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=232.55,934.53");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=198.03,930.94");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=160.19,967.83");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=209.37,850.50");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=114.24,849.74");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=264.70,880.71");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=210.18,924.93");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=299.76,975.43");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=357.51,941.17");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=347.55,804.91");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=389.84,822.83");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=298.60,801.16");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=306.92,732.06");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=266.34,734.82");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=336.81,779.52");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=324.68,631.38");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=413.24,565.80");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=437.98,547.64");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=485.27,730.57");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=483.37,700.98");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=425.27,694.69");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=170.88,893.77");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=135.44,920.79");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=84.82,877.85");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=105.39,842.75");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=191.99,885.70");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=107.03,960.74");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=67.65,949.03");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=159.40,874.80");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=170.79,911.68");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=229.90,888.91");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=263.65,908.20");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=379.44,959.68");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=401.11,921.26");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=297.30,836.67");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=375.06,801.18");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=324.39,878.12");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=395.25,778.70");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=311.05,798.83");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=284.78,740.94");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=364.67,688.58");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=444.66,627.87");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=423.98,645.92");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=444.16,684.34");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=315.73,694.87");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=419.96,732.83");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=92.86,864.12");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=72.42,839.05");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=101.40,884.92");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=102.36,933.85");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=183.85,978.21");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=149.62,994.85");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=24.02,972.60");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=150.23,885.00");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=143.45,841.34");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=302.07,878.22");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=230.18,916.13");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=347.05,951.82");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=279.02,833.74");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=273.10,921.16");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=486.45,848.20");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=377.44,736.89");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=452.82,819.83");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=345.96,842.59");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=300.04,714.60");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=305.81,623.78");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=382.91,595.06");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=368.53,710.28");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=320.36,640.42");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=388.35,754.17");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=382.14,608.19");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=88.19,946.64");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=84.23,927.38");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=17.71,880.41");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=45.01,945.18");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=145.97,932.97");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=178.88,877.67");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=12.79,931.73");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=215.39,949.61");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=119.89,834.91");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=195.00,900.14");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=211.15,877.42");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=375.05,888.28");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=324.97,909.35");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=357.66,792.37");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=356.20,768.99");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=271.45,824.56");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=361.79,748.61");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=360.17,729.65");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=323.12,746.92");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=386.25,627.46");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=342.49,546.02");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=376.61,622.79");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=432.59,730.03");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=341.67,733.27");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=441.58,775.11");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=136.38,896.42");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=52.31,834.82");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=14.63,821.52");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=71.90,864.56");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=218.71,867.27");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=159.46,908.41");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=54.09,934.47");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=141.46,871.33");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=234.24,904.75");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=239.65,821.89");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=217.03,932.50");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=303.61,921.77");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=311.97,947.12");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=279.45,847.49");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=405.51,799.44");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=391.15,896.01");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=307.84,780.42");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=254.65,745.46");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=308.85,679.92");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=283.78,632.20");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=314.58,582.88");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=371.99,664.55");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=462.67,754.71");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=393.24,666.76");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=453.94,668.67");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=23.71,895.06");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=166.47,857.13");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=0.96,801.54");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=93.30,917.88");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=84.75,902.08");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=189.32,993.17");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=142.01,975.89");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=118.28,823.50");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=185.74,863.02");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=244.02,855.55");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=287.29,873.46");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=320.50,898.68");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=424.34,822.21");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=292.64,861.96");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=418.85,809.03");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=336.34,810.79");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=427.23,800.77");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=292.16,753.56");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=334.69,718.19");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=346.59,679.33");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=474.36,551.57");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=441.23,698.43");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=395.44,741.32");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=382.54,713.27");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=382.82,654.46");
    }

}

