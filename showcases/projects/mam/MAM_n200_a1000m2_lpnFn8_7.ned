
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn8_7
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
        @display("p=164.11,860.16");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=182.70,829.83");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=188.20,814.76");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=248.48,760.36");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=260.73,661.84");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=312.62,649.11");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=342.12,639.15");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=360.11,678.12");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=363.03,694.92");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=352.10,700.36");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=415.82,711.81");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=387.70,800.20");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=409.40,882.51");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=371.67,917.95");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=387.46,897.77");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=401.29,908.11");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=336.72,864.96");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=305.61,799.93");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=332.71,790.80");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=397.13,736.03");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=357.36,730.60");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=294.42,709.47");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=405.18,772.11");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=329.11,776.64");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=128.53,922.17");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=191.49,838.41");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=237.80,788.16");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=206.77,810.27");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=235.23,812.47");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=317.01,614.62");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=222.85,611.78");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=427.67,672.42");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=302.94,692.17");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=415.24,683.48");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=418.77,771.90");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=462.39,785.72");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=356.79,848.54");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=429.62,831.40");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=407.32,862.54");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=305.83,946.93");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=444.73,894.79");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=317.77,857.64");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=267.21,835.99");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=375.71,849.77");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=388.55,650.30");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=284.32,784.01");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=256.45,782.30");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=488.60,765.69");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=348.94,742.16");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=80.43,936.13");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=243.53,867.15");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=187.15,912.36");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=231.50,880.32");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=273.05,760.02");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=286.38,588.98");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=327.69,565.16");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=282.61,651.06");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=368.46,663.85");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=348.14,760.68");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=370.88,704.75");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=503.10,732.49");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=365.62,812.68");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=357.74,805.50");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=349.60,975.05");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=389.08,956.24");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=421.97,984.54");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=335.10,877.16");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=345.15,805.31");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=324.24,846.30");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=415.52,792.37");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=379.05,778.75");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=338.35,694.09");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=361.95,753.61");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=242.09,734.14");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=60.90,939.29");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=127.84,779.87");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=266.43,865.28");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=163.40,830.79");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=252.02,795.74");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=275.46,623.73");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=269.11,562.38");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=402.71,699.45");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=346.86,725.62");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=288.12,661.15");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=301.08,678.35");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=491.31,718.44");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=368.28,782.46");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=446.72,868.13");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=426.78,860.57");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=382.99,974.15");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=412.60,913.68");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=282.29,819.61");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=346.30,831.64");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=317.58,777.99");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=401.02,718.42");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=381.13,712.49");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=321.10,799.45");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=400.33,780.87");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=343.66,773.06");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=112.44,877.56");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=183.18,778.92");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=174.05,814.03");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=202.57,800.32");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=296.01,758.12");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=272.04,732.23");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=330.59,675.88");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=316.39,664.87");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=366.29,739.44");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=426.68,709.07");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=327.88,707.38");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=390.57,721.24");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=439.88,762.25");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=344.76,907.18");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=373.99,997.04");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=449.53,966.42");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=429.26,956.90");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=381.74,936.82");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=305.37,788.06");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=344.24,815.70");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=466.38,808.06");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=432.60,737.97");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=272.91,798.23");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=391.31,768.87");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=291.21,861.34");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=35.23,931.64");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=241.26,832.95");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=218.67,829.39");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=151.24,847.27");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=291.04,681.35");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=241.54,682.49");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=316.12,600.15");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=401.42,673.43");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=384.01,744.33");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=398.73,748.86");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=279.08,684.27");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=366.98,719.27");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=397.45,852.14");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=424.90,846.77");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=420.53,896.63");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=349.67,886.20");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=400.57,920.10");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=269.40,852.33");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=301.54,817.53");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=366.61,873.35");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=398.68,833.42");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=337.92,710.19");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=274.31,715.51");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=410.38,753.50");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=303.84,743.52");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=94.12,929.43");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=223.55,896.04");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=110.17,848.38");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=178.06,788.22");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=281.80,752.77");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=246.26,634.08");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=246.41,597.65");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=414.79,645.86");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=447.13,682.31");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=391.85,696.97");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=361.87,710.49");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=445.29,666.34");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=361.06,790.16");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=360.80,882.18");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=341.90,955.07");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=424.29,880.92");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=479.64,865.61");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=355.43,816.16");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=359.68,861.94");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=261.15,804.92");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=436.13,822.86");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=289.73,730.19");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=264.68,681.27");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=327.52,760.13");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=304.63,777.18");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=140.36,957.17");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=197.06,880.00");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=111.38,837.35");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=111.25,811.03");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=258.59,722.32");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=201.04,649.45");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=312.04,722.57");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=324.65,626.11");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=454.84,697.03");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=416.55,634.40");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=285.53,718.90");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=377.39,758.82");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=422.19,726.53");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=449.20,941.96");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=359.69,930.63");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=402.01,936.77");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=392.69,841.97");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=298.71,925.20");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=285.53,797.66");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=308.01,853.69");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=382.17,789.30");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=412.45,805.98");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=383.03,733.13");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=445.93,813.29");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=283.79,836.94");
    }

}

