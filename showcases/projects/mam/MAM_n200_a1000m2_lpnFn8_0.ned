
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn8_0
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
        @display("p=136.90,845.62");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=113.07,852.91");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=206.23,821.13");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=184.12,847.03");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=217.25,836.53");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=262.96,808.38");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=248.68,796.06");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=210.51,779.55");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=279.72,843.05");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=257.72,868.96");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=247.18,859.89");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=236.89,861.09");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=240.71,830.38");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=310.40,797.51");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=374.58,795.57");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=411.11,854.63");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=453.97,869.61");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=454.85,842.55");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=471.25,837.61");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=492.46,850.01");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=521.03,825.88");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=616.60,834.80");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=590.06,860.71");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=569.62,877.21");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=165.24,845.77");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=105.07,828.19");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=58.91,855.31");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=140.00,776.76");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=103.27,809.54");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=222.33,859.83");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=300.81,780.82");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=270.98,790.70");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=211.78,769.44");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=340.49,780.18");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=323.56,879.13");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=268.66,948.13");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=237.07,899.17");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=226.73,875.58");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=400.79,782.18");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=342.47,805.85");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=423.00,869.52");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=424.35,849.84");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=484.44,838.87");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=502.70,863.78");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=546.54,790.55");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=565.52,776.33");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=542.34,845.68");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=572.51,934.74");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=557.57,878.03");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=111.56,911.93");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=164.80,904.37");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=29.16,828.48");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=170.42,792.33");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=215.71,867.37");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=199.88,869.89");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=197.77,739.59");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=191.98,804.16");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=209.08,800.31");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=254.78,841.36");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=338.16,894.27");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=236.44,954.78");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=255.30,828.43");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=247.89,891.59");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=284.81,863.73");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=464.50,795.93");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=386.30,821.23");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=451.84,956.29");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=448.19,743.94");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=480.48,827.40");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=445.37,888.30");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=499.54,809.72");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=640.25,796.63");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=630.31,858.61");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=542.25,883.58");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=48.33,838.71");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=186.09,874.87");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=103.77,838.64");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=151.86,904.92");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=178.95,909.05");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=165.47,875.81");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=278.15,853.34");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=247.50,748.03");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=238.77,758.40");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=271.02,860.37");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=183.18,918.47");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=221.62,827.14");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=323.22,898.04");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=232.96,807.90");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=307.75,867.94");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=384.96,779.22");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=396.07,853.35");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=403.86,878.63");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=536.96,867.34");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=474.09,810.10");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=577.82,895.28");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=541.88,759.82");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=615.20,820.56");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=571.82,839.39");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=586.54,873.12");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=70.58,873.53");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=188.80,891.75");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=106.79,879.73");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=227.83,783.71");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=152.86,870.43");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=247.29,870.15");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=301.82,880.80");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=234.32,749.31");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=158.94,715.92");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=292.20,836.60");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=283.67,897.49");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=284.62,877.41");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=297.21,848.03");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=288.84,909.83");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=287.94,790.42");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=375.00,721.51");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=357.59,937.57");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=473.27,919.76");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=502.23,821.10");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=445.65,762.91");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=526.77,848.18");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=512.79,813.73");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=675.49,837.73");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=588.38,847.82");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=564.97,892.52");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=149.76,860.41");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=173.30,757.67");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=75.56,885.18");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=228.68,914.78");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=245.38,771.96");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=268.62,920.31");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=250.98,807.92");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=186.91,763.46");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=199.16,772.91");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=238.67,787.28");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=224.47,814.91");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=159.53,825.33");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=255.36,957.93");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=165.98,834.41");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=343.02,882.35");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=431.51,743.20");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=424.88,839.03");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=402.78,832.44");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=452.26,879.50");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=502.93,895.97");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=427.76,878.54");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=567.32,824.94");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=564.33,864.93");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=558.80,847.73");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=618.50,846.71");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=22.67,838.22");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=181.10,773.27");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=90.79,852.70");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=176.75,837.88");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=175.30,862.17");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=147.01,846.30");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=296.26,816.82");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=333.37,763.62");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=291.45,727.24");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=311.33,852.54");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=263.12,835.77");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=287.00,773.95");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=206.25,883.28");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=197.09,784.52");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=264.67,738.04");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=369.17,879.04");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=461.70,859.35");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=454.24,924.31");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=491.30,923.87");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=461.38,819.76");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=549.15,853.60");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=562.42,739.09");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=684.11,864.86");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=548.74,864.59");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=536.64,902.61");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=77.25,831.79");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=115.87,833.13");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=85.26,804.17");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=223.59,894.20");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=156.56,793.03");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=144.24,881.69");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=272.32,803.88");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=178.27,807.26");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=157.10,741.49");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=257.64,851.51");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=203.50,851.38");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=254.70,915.13");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=199.41,837.11");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=270.41,890.69");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=311.16,780.23");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=448.76,857.15");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=373.64,937.66");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=429.49,812.51");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=472.31,820.90");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=429.38,924.36");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=480.39,796.82");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=578.02,756.65");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=639.01,809.26");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=564.08,906.75");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=629.36,884.75");
    }

}

