
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn8_7
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
        @display("p=100.44,922.00");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=101.44,957.62");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=65.17,932.89");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=45.66,930.96");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=13.02,999.23");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=16.41,989.59");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=55.38,890.52");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=25.37,913.99");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=44.66,873.63");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=78.42,837.56");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=142.23,832.26");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=174.57,740.98");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=144.80,648.01");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=146.13,622.46");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=171.78,618.51");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=203.43,701.13");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=261.23,758.45");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=301.65,797.72");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=244.70,846.32");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=257.41,796.52");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=269.28,803.60");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=228.50,767.55");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=258.53,780.42");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=214.90,741.33");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=110.52,901.88");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=142.07,863.26");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=115.20,984.32");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=66.94,958.21");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=33.29,949.34");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=55.93,967.30");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=65.58,988.55");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=4.64,940.43");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=19.43,924.59");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=10.64,886.35");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=36.57,769.23");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=216.54,803.64");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=232.03,781.68");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=162.60,702.11");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=166.34,540.22");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=184.66,652.61");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=245.26,759.42");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=203.07,797.79");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=291.12,780.71");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=287.51,870.55");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=266.11,844.24");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=270.49,817.46");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=178.67,815.29");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=353.08,774.63");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=172.57,663.40");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=38.96,887.93");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=120.99,891.10");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=111.02,953.09");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=81.19,886.17");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=50.34,900.73");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=84.65,961.28");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=53.57,978.08");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=22.36,896.40");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=64.28,855.46");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=14.37,874.67");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=116.99,851.67");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=156.68,877.86");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=176.69,764.94");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=202.11,576.78");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=166.91,585.50");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=112.54,562.39");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=197.02,685.16");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=248.95,802.28");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=366.19,738.79");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=247.79,776.84");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=330.30,768.61");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=231.28,831.94");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=286.62,761.54");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=274.51,863.03");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=270.19,714.19");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=177.54,865.36");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=84.13,903.39");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=121.61,910.72");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=39.63,914.24");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=95.74,973.14");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=90.56,993.65");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=20.23,975.33");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=61.73,881.39");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=86.19,873.14");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=101.52,807.54");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=36.26,858.71");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=61.41,791.02");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=194.60,774.91");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=98.86,728.03");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=109.40,611.25");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=112.07,583.02");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=226.59,698.31");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=197.11,814.12");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=368.15,811.37");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=238.11,815.11");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=307.81,773.70");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=223.27,755.71");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=186.84,685.67");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=223.99,792.01");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=182.55,781.77");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=132.60,851.72");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=177.54,925.43");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=155.94,950.49");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=123.07,873.52");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=125.17,930.23");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=56.47,941.80");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=102.15,985.12");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=38.14,965.49");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=2.01,899.16");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=34.11,869.42");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=148.90,777.81");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=207.03,861.93");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=158.47,748.52");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=140.51,608.38");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=104.03,633.25");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=136.19,632.40");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=207.45,635.56");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=343.05,707.75");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=324.95,778.16");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=333.28,849.61");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=318.97,740.89");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=310.53,839.88");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=186.62,731.75");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=246.86,830.80");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=237.49,699.23");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=27.96,847.01");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=160.59,915.19");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=164.19,895.41");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=93.10,848.53");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=48.07,848.44");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=9.29,910.72");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=42.65,988.68");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=73.14,906.44");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=99.19,940.28");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=36.54,902.42");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=15.91,859.79");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=109.29,886.60");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=106.85,788.57");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=120.04,624.52");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=89.97,590.97");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=137.24,683.83");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=114.35,660.41");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=323.93,813.04");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=339.53,798.51");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=188.73,864.74");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=218.24,777.82");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=328.35,758.23");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=168.78,805.73");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=275.02,829.90");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=169.50,724.27");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=100.16,864.07");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=54.68,835.14");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=139.83,989.68");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=17.32,944.57");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=114.03,941.41");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=27.33,991.71");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=56.66,995.82");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=78.55,856.37");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=1.20,954.31");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=89.86,805.81");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=72.14,877.42");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=152.87,822.18");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=144.38,732.17");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=150.86,637.44");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=78.96,615.88");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=213.03,690.83");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=286.63,645.72");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=246.64,725.00");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=273.21,785.34");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=293.07,791.56");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=311.53,814.05");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=198.48,736.76");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=190.32,852.56");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=274.41,762.21");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=254.37,745.34");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=86.27,927.77");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=145.44,880.12");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=85.37,945.34");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=153.33,968.53");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=111.69,929.01");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=13.82,958.90");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=48.29,958.65");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=73.75,827.82");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=82.62,979.95");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=80.89,795.45");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=90.89,766.42");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=229.37,862.97");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=141.69,749.01");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=196.63,666.06");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=165.33,637.26");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=206.46,535.80");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=293.90,681.21");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=297.06,714.53");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=313.07,763.26");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=248.90,867.74");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=201.53,845.23");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=327.64,878.41");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=191.48,702.32");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=201.80,750.78");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=180.53,715.84");
    }

}

