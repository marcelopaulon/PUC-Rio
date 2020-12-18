
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn4_9
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
        @display("p=85.74,903.12");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=90.56,881.86");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=66.07,918.80");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=63.93,882.99");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=31.39,850.64");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=61.09,841.69");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=47.55,937.05");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=105.04,908.69");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=165.05,845.99");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=240.08,834.46");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=263.94,898.96");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=245.97,890.53");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=239.86,962.39");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=233.39,952.20");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=211.06,855.51");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=218.18,877.98");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=228.92,884.60");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=321.09,891.49");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=339.79,893.81");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=357.90,883.17");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=352.30,807.31");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=328.06,799.33");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=338.93,876.88");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=429.94,905.70");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=418.77,918.52");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=478.92,924.64");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=551.17,889.89");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=530.97,847.30");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=526.96,756.20");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=529.89,799.70");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=516.59,773.40");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=493.03,825.64");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=446.68,852.12");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=514.37,858.34");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=580.31,825.84");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=508.03,845.34");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=576.41,774.41");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=587.95,785.53");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=604.84,820.48");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=656.07,735.23");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=580.54,761.78");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=537.18,717.19");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=518.74,686.40");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=597.99,635.40");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=620.11,635.91");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=697.48,685.27");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=757.91,697.34");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=718.07,618.21");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=747.37,711.44");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=156.74,975.18");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=64.68,904.33");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=143.36,819.71");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=101.45,919.84");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=115.03,851.00");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=44.61,864.69");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=85.34,799.69");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=16.71,940.13");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=204.60,914.52");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=131.61,795.79");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=210.75,823.70");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=266.90,871.95");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=149.96,874.30");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=239.21,976.71");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=256.73,861.21");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=132.63,892.30");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=168.60,911.87");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=177.53,916.76");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=306.61,882.87");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=423.91,861.11");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=323.80,949.25");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=301.76,811.22");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=334.30,710.92");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=364.64,873.55");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=411.87,856.34");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=458.03,988.72");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=493.11,932.76");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=606.98,837.52");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=513.85,760.74");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=556.81,770.61");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=475.96,818.28");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=489.87,777.38");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=477.81,837.44");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=498.01,802.09");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=468.43,832.30");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=568.82,807.96");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=503.51,857.29");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=490.14,733.92");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=603.00,876.19");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=656.22,842.07");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=667.54,741.79");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=590.70,711.51");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=617.67,750.50");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=487.90,619.77");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=592.30,645.74");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=609.51,633.45");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=702.26,603.25");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=767.87,653.70");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=700.62,670.67");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=806.39,755.09");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=102.35,838.84");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=162.46,951.63");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=59.78,933.29");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=88.11,866.61");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=4.25,904.57");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=54.79,889.03");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=124.21,914.83");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=68.62,950.95");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=120.41,974.01");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=144.15,899.39");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=243.54,846.58");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=279.99,875.10");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=201.00,885.79");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=212.65,970.14");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=242.67,946.25");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=177.45,872.65");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=216.05,888.21");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=243.50,923.40");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=348.34,933.98");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=260.06,889.06");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=352.30,853.71");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=271.80,863.00");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=239.29,792.80");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=294.13,959.27");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=429.11,883.29");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=365.76,935.16");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=463.92,935.70");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=571.83,916.04");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=535.18,858.46");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=436.90,780.77");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=562.01,734.01");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=531.55,766.84");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=448.30,809.38");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=496.51,896.33");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=454.89,888.31");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=554.62,873.29");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=578.14,867.04");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=555.14,793.68");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=554.59,758.73");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=610.99,810.65");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=684.61,697.82");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=627.46,835.01");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=450.02,764.47");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=428.44,675.07");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=528.24,626.08");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=667.61,640.18");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=639.66,645.42");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=851.57,708.93");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=796.16,668.83");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=819.62,713.08");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=96.93,992.80");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=103.71,808.08");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=88.71,955.33");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=158.06,915.49");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=31.42,861.19");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=47.13,913.74");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=31.66,755.74");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=54.08,992.72");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=32.43,877.22");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=192.77,863.70");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=225.25,759.07");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=224.34,894.37");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=276.20,909.59");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=204.55,991.88");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=208.88,953.11");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=180.45,823.32");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=189.53,878.42");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=290.77,897.33");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=368.85,957.59");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=335.40,844.61");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=410.73,928.91");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=302.81,730.29");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=334.12,817.47");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=403.97,938.33");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=416.47,821.26");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=360.00,904.81");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=438.80,921.53");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=490.85,846.93");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=532.24,932.60");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=582.81,724.24");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=563.90,705.85");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=520.10,721.18");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=482.56,859.85");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=379.32,815.55");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=523.50,837.18");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=585.54,837.54");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=578.31,904.40");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=628.63,691.47");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=551.71,780.39");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=559.65,836.04");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=638.22,731.62");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=561.26,744.32");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=550.43,728.69");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=504.16,656.65");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=560.77,642.56");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=569.89,571.95");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=655.67,666.97");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=706.09,781.79");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=710.66,651.15");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=726.55,682.51");
    }

}

