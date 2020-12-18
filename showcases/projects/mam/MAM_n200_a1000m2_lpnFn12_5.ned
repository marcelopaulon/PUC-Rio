
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn12_5
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
        @display("p=134.51,885.76");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=150.28,888.30");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=144.33,798.75");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=58.68,760.74");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=71.52,751.96");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=63.31,822.84");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=144.61,841.51");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=149.82,818.51");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=245.38,803.62");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=332.78,824.53");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=280.05,827.91");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=350.63,844.16");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=284.77,875.18");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=355.05,912.85");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=350.04,956.31");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=369.96,960.88");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=75.68,883.50");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=164.41,928.73");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=162.94,887.70");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=203.93,812.59");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=113.57,747.20");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=37.06,738.74");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=94.92,731.50");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=131.40,855.90");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=201.53,868.69");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=179.98,791.20");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=336.75,903.44");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=214.05,851.72");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=410.13,790.32");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=311.01,866.57");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=366.02,901.18");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=348.46,876.90");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=319.36,947.41");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=139.19,870.37");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=161.10,914.75");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=73.13,840.97");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=221.83,786.87");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=106.11,714.21");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=72.65,716.87");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=15.68,908.97");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=124.46,897.75");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=141.47,855.61");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=249.51,788.46");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=364.56,916.77");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=269.48,749.31");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=255.34,864.36");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=277.12,866.89");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=299.60,946.33");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=257.14,980.35");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=412.25,957.26");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=62.55,843.62");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=112.08,800.23");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=183.49,943.49");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=121.34,873.74");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=29.41,759.73");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=106.34,830.55");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=73.73,900.28");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=123.98,839.93");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=198.33,840.53");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=329.14,810.27");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=360.51,797.46");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=327.01,865.17");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=346.16,854.13");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=289.55,854.70");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=359.67,926.85");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=375.62,924.93");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=443.97,909.40");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=112.53,918.10");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=76.19,826.07");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=95.87,945.58");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=97.87,765.26");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=107.65,726.20");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=42.50,709.39");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=9.23,852.34");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=117.63,856.87");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=108.73,756.11");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=259.48,780.67");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=361.90,740.57");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=351.04,863.64");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=345.67,896.83");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=274.03,931.21");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=308.20,888.50");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=287.02,930.24");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=378.44,974.56");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=50.51,890.52");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=112.66,939.37");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=166.25,872.47");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=128.52,777.42");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=57.64,721.38");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=124.05,801.29");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=5.74,885.72");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=106.52,820.05");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=162.79,737.84");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=242.07,776.03");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=349.36,774.56");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=274.03,785.64");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=365.01,865.13");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=269.10,875.74");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=376.11,824.29");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=306.26,978.41");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=399.72,887.97");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=134.60,895.82");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=136.38,817.97");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=93.16,961.86");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=198.04,743.39");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=123.85,735.08");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=15.18,805.28");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=42.01,906.04");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=115.88,824.46");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=182.91,906.15");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=212.25,792.50");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=388.67,773.83");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=277.96,743.73");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=336.52,838.05");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=317.97,927.73");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=340.30,964.27");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=420.49,938.20");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=458.79,952.39");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=67.32,955.73");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=198.22,935.48");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=107.97,966.73");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=158.37,808.16");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=17.94,737.53");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=6.06,781.38");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=82.53,864.46");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=97.84,798.42");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=174.63,883.49");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=235.31,808.29");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=371.03,810.49");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=257.94,908.30");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=390.86,879.55");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=218.36,946.30");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=433.55,921.33");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=341.01,937.04");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=367.12,946.27");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=80.49,932.86");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=152.96,867.22");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=130.82,911.09");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=177.46,780.37");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=127.66,701.95");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=54.97,781.40");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=32.51,916.00");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=155.96,854.53");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=185.96,828.37");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=265.42,763.65");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=324.32,838.79");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=303.27,853.58");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=382.13,895.46");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=319.01,911.08");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=420.94,876.13");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=407.20,942.91");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=395.39,922.35");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=96.94,887.59");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=74.38,924.61");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=145.76,906.67");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=50.46,810.12");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=125.16,819.35");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=162.86,725.75");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=50.37,839.56");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=73.84,857.72");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=216.54,765.00");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=251.30,818.73");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=343.82,827.20");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=269.57,817.26");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=412.41,849.25");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=243.20,933.24");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=436.55,893.14");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=405.02,988.74");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=437.27,968.25");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=54.31,968.15");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=95.02,837.28");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=159.65,837.23");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=82.97,771.25");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=46.76,757.84");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=20.23,695.31");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=35.94,856.97");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=169.04,855.60");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=87.85,853.48");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=263.00,737.13");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=315.31,734.40");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=301.53,835.51");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=423.47,790.83");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=228.69,797.48");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=375.84,986.96");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=356.75,969.65");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=430.90,986.44");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=107.21,867.09");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=54.39,929.62");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=72.66,945.62");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=172.27,812.47");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=63.21,737.04");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=154.08,767.97");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=8.68,827.97");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=146.68,878.02");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=187.90,847.48");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=283.35,724.36");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=339.58,811.24");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=266.50,829.91");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=339.66,777.84");
    }

}

