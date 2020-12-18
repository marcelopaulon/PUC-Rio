
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn4-0
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
        @display("p=643.00,842.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=602.07,819.22");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=514.92,808.57");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=504.02,891.93");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=485.72,881.89");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=493.20,839.94");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=452.05,874.86");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=492.73,950.58");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=479.15,975.59");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=540.53,938.64");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=491.71,961.81");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=400.78,980.03");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=355.61,978.98");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=278.42,991.13");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=283.82,939.58");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=245.09,966.85");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=260.55,972.15");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=352.97,998.59");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=319.58,975.63");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=233.38,996.08");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=253.57,925.40");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=229.61,926.93");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=159.27,930.19");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=109.30,927.37");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=105.83,945.49");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=130.03,942.91");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=148.81,958.97");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=89.19,994.02");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=86.10,897.98");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=86.49,878.31");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=45.02,923.96");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=60.93,855.19");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=66.94,789.91");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=66.09,837.68");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=118.88,796.67");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=107.84,832.25");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=136.41,923.53");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=117.16,937.96");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=145.43,999.85");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=155.63,981.65");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=173.78,899.09");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=116.14,960.11");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=86.01,956.64");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=59.07,928.32");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=96.05,857.40");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=93.29,919.43");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=66.01,905.95");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=70.75,921.84");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=40.69,966.29");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=30.48,945.95");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=698.43,898.13");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=559.08,838.75");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=498.58,869.75");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=439.72,826.17");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=468.73,896.96");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=514.37,822.05");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=444.14,881.02");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=494.72,934.39");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=453.31,907.88");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=572.87,862.30");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=585.03,974.24");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=454.96,934.54");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=291.89,960.66");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=327.85,983.51");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=251.06,876.26");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=165.68,938.09");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=262.58,950.09");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=435.20,961.35");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=232.21,938.09");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=138.90,987.90");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=270.08,889.53");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=249.52,843.11");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=209.73,975.17");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=94.83,908.13");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=34.43,935.22");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=129.82,964.64");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=155.62,942.86");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=100.93,982.45");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=83.86,826.02");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=53.26,941.80");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=37.13,838.29");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=43.56,762.67");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=103.34,846.13");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=2.25,820.59");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=56.79,768.91");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=116.78,779.93");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=191.80,853.90");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=156.23,907.45");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=243.50,986.82");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=187.14,968.95");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=243.86,938.20");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=58.99,882.61");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=52.29,988.48");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=88.49,968.38");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=83.17,844.00");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=117.67,879.05");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=76.35,893.34");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=15.11,958.26");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=67.83,988.94");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=46.97,875.51");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=583.60,900.11");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=656.69,736.74");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=534.92,852.68");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=420.20,845.53");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=396.90,876.88");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=517.70,900.71");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=354.15,893.49");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=467.37,862.98");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=490.15,999.70");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=542.96,951.24");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=443.36,931.67");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=307.07,949.62");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=367.69,977.60");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=333.54,956.11");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=366.95,890.36");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=225.69,961.82");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=184.35,944.84");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=374.18,992.61");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=339.45,904.92");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=246.85,997.15");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=295.78,906.34");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=231.20,916.31");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=150.27,917.62");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=133.45,905.47");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=194.49,930.70");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=187.16,877.87");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=109.10,969.15");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=4.17,965.22");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=119.64,917.82");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=16.39,873.41");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=33.39,897.29");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=86.03,865.69");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=95.82,750.44");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=47.80,816.96");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=34.00,822.52");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=162.46,801.83");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=137.65,844.42");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=97.69,930.45");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=113.71,993.13");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=225.49,978.05");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=175.54,851.51");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=117.59,977.58");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=170.20,981.25");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=58.65,868.74");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=44.75,803.57");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=88.47,942.58");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=54.33,913.14");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=73.73,939.78");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=67.16,968.24");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=26.22,960.20");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=655.98,874.53");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=611.90,743.63");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=505.01,805.80");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=462.00,922.48");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=406.34,905.38");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=450.45,852.27");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=433.19,892.37");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=432.84,984.37");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=495.28,924.20");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=531.03,875.09");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=552.99,917.94");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=382.07,999.70");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=384.03,916.69");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=314.44,996.33");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=288.94,915.58");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=264.44,986.86");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=255.31,981.42");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=416.65,922.17");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=316.39,899.70");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=194.71,946.28");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=229.34,902.45");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=209.41,888.18");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=106.95,912.82");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=129.64,932.33");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=140.22,881.23");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=144.87,930.38");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=168.40,917.38");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=51.43,966.52");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=85.41,931.88");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=45.95,906.95");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=29.25,923.11");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=67.55,864.17");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=24.80,805.98");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=138.37,826.36");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=105.43,731.85");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=162.05,829.82");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=176.38,875.14");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=143.35,948.87");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=176.07,967.76");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=174.00,929.23");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=100.72,880.06");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=142.99,971.98");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=73.40,960.34");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=0.72,930.26");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=51.34,861.21");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=51.45,832.92");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=16.75,976.54");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=72.31,847.08");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=3.52,942.20");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=32.17,863.74");
    }

}

