
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn1-2
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
        @display("p=743.00,946.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=672.14,877.06");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=595.66,861.96");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=650.50,823.32");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=628.92,746.27");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=598.61,820.20");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=621.87,805.22");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=642.25,760.77");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=646.24,774.38");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=668.91,768.75");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=721.50,829.16");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=634.41,849.28");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=636.69,836.52");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=714.05,876.49");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=759.51,886.51");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=747.35,847.75");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=731.80,861.70");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=748.09,885.09");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=712.26,909.11");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=741.02,987.45");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=824.47,992.19");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=748.78,978.39");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=808.34,994.09");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=759.83,981.91");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=782.79,945.18");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=766.91,965.29");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=736.49,938.36");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=679.87,981.84");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=661.29,992.61");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=636.53,925.21");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=560.74,905.72");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=580.19,887.29");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=680.40,788.65");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=594.33,800.17");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=613.16,784.31");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=660.25,798.00");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=683.25,819.63");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=661.22,837.69");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=644.28,802.73");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=549.99,777.53");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=622.26,824.98");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=691.92,794.92");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=656.27,742.67");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=626.15,762.69");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=524.83,829.67");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=525.09,807.49");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=574.52,764.62");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=644.37,709.94");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=651.40,702.60");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=625.39,781.61");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=706.22,830.96");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=655.14,879.18");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=649.59,915.65");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=621.65,888.60");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=650.29,734.02");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=654.34,896.93");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=628.18,905.75");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=633.94,977.38");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=571.88,989.36");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=637.62,955.46");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=702.92,895.64");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=666.13,975.50");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=674.39,945.31");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=683.80,934.49");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=691.35,962.31");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=623.06,950.01");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=608.74,966.27");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=614.39,868.69");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=684.61,857.17");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=727.44,841.58");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=716.19,851.70");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=769.56,920.99");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=673.07,831.58");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=615.97,766.43");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=563.76,833.39");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=581.35,816.88");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=610.01,811.36");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=688.19,828.60");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=668.98,855.19");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=716.88,807.97");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=663.10,713.79");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=705.79,683.68");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=666.56,743.36");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=749.86,743.84");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=791.03,675.53");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=773.42,665.93");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=834.29,719.31");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=900.93,764.68");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=811.87,805.34");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=901.84,777.44");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=914.56,711.16");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=975.99,710.20");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=994.35,710.71");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=969.00,768.88");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=986.63,823.01");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=993.57,852.05");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=963.11,890.89");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=950.58,901.62");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=921.91,948.66");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=982.68,997.62");
    }

    host_fn_rly_101: <default("SensorNode")> like INetworkNode {
        @display("p=990.22,988.26");
    }

    host_fn_rly_102: <default("SensorNode")> like INetworkNode {
        @display("p=947.11,861.53");
    }

    host_fn_rly_103: <default("SensorNode")> like INetworkNode {
        @display("p=978.15,890.95");
    }

    host_fn_rly_104: <default("SensorNode")> like INetworkNode {
        @display("p=982.22,837.57");
    }

    host_fn_rly_105: <default("SensorNode")> like INetworkNode {
        @display("p=994.80,905.74");
    }

    host_fn_rly_106: <default("SensorNode")> like INetworkNode {
        @display("p=977.85,848.12");
    }

    host_fn_rly_107: <default("SensorNode")> like INetworkNode {
        @display("p=897.23,890.66");
    }

    host_fn_rly_108: <default("SensorNode")> like INetworkNode {
        @display("p=886.50,881.08");
    }

    host_fn_rly_109: <default("SensorNode")> like INetworkNode {
        @display("p=857.64,927.51");
    }

    host_fn_rly_110: <default("SensorNode")> like INetworkNode {
        @display("p=854.58,938.12");
    }

    host_fn_rly_111: <default("SensorNode")> like INetworkNode {
        @display("p=800.28,932.60");
    }

    host_fn_rly_112: <default("SensorNode")> like INetworkNode {
        @display("p=789.65,969.08");
    }

    host_fn_rly_113: <default("SensorNode")> like INetworkNode {
        @display("p=744.04,906.19");
    }

    host_fn_rly_114: <default("SensorNode")> like INetworkNode {
        @display("p=585.29,842.36");
    }

    host_fn_rly_115: <default("SensorNode")> like INetworkNode {
        @display("p=612.03,895.67");
    }

    host_fn_rly_116: <default("SensorNode")> like INetworkNode {
        @display("p=660.91,920.25");
    }

    host_fn_rly_117: <default("SensorNode")> like INetworkNode {
        @display("p=695.23,936.61");
    }

    host_fn_rly_118: <default("SensorNode")> like INetworkNode {
        @display("p=758.58,853.49");
    }

    host_fn_rly_119: <default("SensorNode")> like INetworkNode {
        @display("p=828.26,849.15");
    }

    host_fn_rly_120: <default("SensorNode")> like INetworkNode {
        @display("p=832.97,795.03");
    }

    host_fn_rly_121: <default("SensorNode")> like INetworkNode {
        @display("p=859.18,810.48");
    }

    host_fn_rly_122: <default("SensorNode")> like INetworkNode {
        @display("p=876.09,821.94");
    }

    host_fn_rly_123: <default("SensorNode")> like INetworkNode {
        @display("p=888.93,806.53");
    }

    host_fn_rly_124: <default("SensorNode")> like INetworkNode {
        @display("p=839.77,780.87");
    }

    host_fn_rly_125: <default("SensorNode")> like INetworkNode {
        @display("p=821.21,824.46");
    }

    host_fn_rly_126: <default("SensorNode")> like INetworkNode {
        @display("p=865.91,840.90");
    }

    host_fn_rly_127: <default("SensorNode")> like INetworkNode {
        @display("p=908.35,899.04");
    }

    host_fn_rly_128: <default("SensorNode")> like INetworkNode {
        @display("p=991.70,801.30");
    }

    host_fn_rly_129: <default("SensorNode")> like INetworkNode {
        @display("p=872.90,889.52");
    }

    host_fn_rly_130: <default("SensorNode")> like INetworkNode {
        @display("p=846.06,875.45");
    }

    host_fn_rly_131: <default("SensorNode")> like INetworkNode {
        @display("p=851.01,853.07");
    }

    host_fn_rly_132: <default("SensorNode")> like INetworkNode {
        @display("p=844.21,914.81");
    }

    host_fn_rly_133: <default("SensorNode")> like INetworkNode {
        @display("p=873.11,918.75");
    }

    host_fn_rly_134: <default("SensorNode")> like INetworkNode {
        @display("p=882.30,951.55");
    }

    host_fn_rly_135: <default("SensorNode")> like INetworkNode {
        @display("p=932.04,874.82");
    }

    host_fn_rly_136: <default("SensorNode")> like INetworkNode {
        @display("p=925.26,900.42");
    }

    host_fn_rly_137: <default("SensorNode")> like INetworkNode {
        @display("p=897.23,913.84");
    }

    host_fn_rly_138: <default("SensorNode")> like INetworkNode {
        @display("p=837.98,835.46");
    }

    host_fn_rly_139: <default("SensorNode")> like INetworkNode {
        @display("p=804.22,909.87");
    }

    host_fn_rly_140: <default("SensorNode")> like INetworkNode {
        @display("p=766.00,877.20");
    }

    host_fn_rly_141: <default("SensorNode")> like INetworkNode {
        @display("p=764.29,827.36");
    }

    host_fn_rly_142: <default("SensorNode")> like INetworkNode {
        @display("p=765.14,845.67");
    }

    host_fn_rly_143: <default("SensorNode")> like INetworkNode {
        @display("p=837.12,820.81");
    }

    host_fn_rly_144: <default("SensorNode")> like INetworkNode {
        @display("p=749.99,781.68");
    }

    host_fn_rly_145: <default("SensorNode")> like INetworkNode {
        @display("p=790.93,764.46");
    }

    host_fn_rly_146: <default("SensorNode")> like INetworkNode {
        @display("p=821.67,770.87");
    }

    host_fn_rly_147: <default("SensorNode")> like INetworkNode {
        @display("p=801.01,833.06");
    }

    host_fn_rly_148: <default("SensorNode")> like INetworkNode {
        @display("p=862.06,874.27");
    }

    host_fn_rly_149: <default("SensorNode")> like INetworkNode {
        @display("p=908.09,924.88");
    }

    host_fn_rly_150: <default("SensorNode")> like INetworkNode {
        @display("p=889.29,964.89");
    }

    host_fn_rly_151: <default("SensorNode")> like INetworkNode {
        @display("p=943.19,935.59");
    }

    host_fn_rly_152: <default("SensorNode")> like INetworkNode {
        @display("p=952.98,923.15");
    }

    host_fn_rly_153: <default("SensorNode")> like INetworkNode {
        @display("p=914.92,978.59");
    }

    host_fn_rly_154: <default("SensorNode")> like INetworkNode {
        @display("p=847.17,992.64");
    }

    host_fn_rly_155: <default("SensorNode")> like INetworkNode {
        @display("p=874.71,877.02");
    }

    host_fn_rly_156: <default("SensorNode")> like INetworkNode {
        @display("p=823.02,806.99");
    }

    host_fn_rly_157: <default("SensorNode")> like INetworkNode {
        @display("p=769.79,800.62");
    }

    host_fn_rly_158: <default("SensorNode")> like INetworkNode {
        @display("p=760.92,725.18");
    }

    host_fn_rly_159: <default("SensorNode")> like INetworkNode {
        @display("p=700.93,650.87");
    }

    host_fn_rly_160: <default("SensorNode")> like INetworkNode {
        @display("p=669.09,648.49");
    }

    host_fn_rly_161: <default("SensorNode")> like INetworkNode {
        @display("p=761.54,611.57");
    }

    host_fn_rly_162: <default("SensorNode")> like INetworkNode {
        @display("p=714.05,609.26");
    }

    host_fn_rly_163: <default("SensorNode")> like INetworkNode {
        @display("p=690.16,684.93");
    }

    host_fn_rly_164: <default("SensorNode")> like INetworkNode {
        @display("p=684.56,669.99");
    }

    host_fn_rly_165: <default("SensorNode")> like INetworkNode {
        @display("p=649.46,672.50");
    }

    host_fn_rly_166: <default("SensorNode")> like INetworkNode {
        @display("p=748.80,661.64");
    }

    host_fn_rly_167: <default("SensorNode")> like INetworkNode {
        @display("p=768.39,685.92");
    }

    host_fn_rly_168: <default("SensorNode")> like INetworkNode {
        @display("p=845.19,705.78");
    }

    host_fn_rly_169: <default("SensorNode")> like INetworkNode {
        @display("p=812.98,733.90");
    }

    host_fn_rly_170: <default("SensorNode")> like INetworkNode {
        @display("p=803.83,719.55");
    }

    host_fn_rly_171: <default("SensorNode")> like INetworkNode {
        @display("p=785.04,842.24");
    }

    host_fn_rly_172: <default("SensorNode")> like INetworkNode {
        @display("p=743.00,798.19");
    }

    host_fn_rly_173: <default("SensorNode")> like INetworkNode {
        @display("p=795.50,853.83");
    }

    host_fn_rly_174: <default("SensorNode")> like INetworkNode {
        @display("p=814.81,853.50");
    }

    host_fn_rly_175: <default("SensorNode")> like INetworkNode {
        @display("p=809.47,941.56");
    }

    host_fn_rly_176: <default("SensorNode")> like INetworkNode {
        @display("p=723.89,952.59");
    }

    host_fn_rly_177: <default("SensorNode")> like INetworkNode {
        @display("p=739.16,959.11");
    }

    host_fn_rly_178: <default("SensorNode")> like INetworkNode {
        @display("p=813.80,932.34");
    }

    host_fn_rly_179: <default("SensorNode")> like INetworkNode {
        @display("p=783.26,986.87");
    }

    host_fn_rly_180: <default("SensorNode")> like INetworkNode {
        @display("p=716.44,991.75");
    }

    host_fn_rly_181: <default("SensorNode")> like INetworkNode {
        @display("p=718.87,979.52");
    }

    host_fn_rly_182: <default("SensorNode")> like INetworkNode {
        @display("p=795.04,900.60");
    }

    host_fn_rly_183: <default("SensorNode")> like INetworkNode {
        @display("p=837.22,868.10");
    }

    host_fn_rly_184: <default("SensorNode")> like INetworkNode {
        @display("p=776.07,819.01");
    }

    host_fn_rly_185: <default("SensorNode")> like INetworkNode {
        @display("p=757.28,795.23");
    }

    host_fn_rly_186: <default("SensorNode")> like INetworkNode {
        @display("p=681.82,803.95");
    }

    host_fn_rly_187: <default("SensorNode")> like INetworkNode {
        @display("p=702.59,809.20");
    }

    host_fn_rly_188: <default("SensorNode")> like INetworkNode {
        @display("p=735.54,820.37");
    }

    host_fn_rly_189: <default("SensorNode")> like INetworkNode {
        @display("p=749.28,807.24");
    }

    host_fn_rly_190: <default("SensorNode")> like INetworkNode {
        @display("p=811.74,829.14");
    }

    host_fn_rly_191: <default("SensorNode")> like INetworkNode {
        @display("p=695.35,778.70");
    }

    host_fn_rly_192: <default("SensorNode")> like INetworkNode {
        @display("p=695.66,862.12");
    }

    host_fn_rly_193: <default("SensorNode")> like INetworkNode {
        @display("p=587.18,787.61");
    }

    host_fn_rly_194: <default("SensorNode")> like INetworkNode {
        @display("p=598.96,759.69");
    }

    host_fn_rly_195: <default("SensorNode")> like INetworkNode {
        @display("p=514.86,748.78");
    }

    host_fn_rly_196: <default("SensorNode")> like INetworkNode {
        @display("p=532.37,786.70");
    }

    host_fn_rly_197: <default("SensorNode")> like INetworkNode {
        @display("p=520.46,695.11");
    }

    host_fn_rly_198: <default("SensorNode")> like INetworkNode {
        @display("p=555.58,647.07");
    }

    host_fn_rly_199: <default("SensorNode")> like INetworkNode {
        @display("p=543.03,629.32");
    }

    host_fn_rly_200: <default("SensorNode")> like INetworkNode {
        @display("p=554.59,632.21");
    }

}

