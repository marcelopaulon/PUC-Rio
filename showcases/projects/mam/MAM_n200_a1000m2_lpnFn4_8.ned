
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn4_8
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
        @display("p=66.50,883.49");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=27.76,854.48");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=25.48,794.28");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=15.69,824.51");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=60.07,820.57");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=69.40,797.58");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=39.97,761.36");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=43.16,714.60");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=24.89,709.89");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=93.99,684.14");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=87.36,768.80");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=119.69,778.48");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=27.68,779.16");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=52.30,829.67");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=42.55,911.22");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=85.13,915.19");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=71.56,908.34");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=68.37,925.16");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=146.09,984.66");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=182.74,946.13");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=191.96,982.70");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=155.91,958.56");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=95.52,947.81");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=105.88,866.43");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=72.36,865.87");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=22.53,902.03");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=5.16,820.44");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=38.35,887.84");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=64.76,853.73");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=102.26,820.19");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=99.08,805.78");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=113.07,741.43");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=154.36,750.63");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=195.33,751.31");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=196.48,716.63");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=178.48,667.96");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=231.08,665.22");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=209.84,608.50");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=142.63,623.64");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=224.58,620.16");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=258.71,672.47");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=323.71,615.18");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=302.30,607.10");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=315.98,651.54");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=312.56,665.40");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=299.00,647.35");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=222.98,589.18");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=217.71,508.10");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=176.05,532.44");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=125.68,900.51");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=105.36,951.00");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=56.31,884.55");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=67.61,809.17");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=22.20,811.58");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=142.89,874.73");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=96.67,755.34");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=74.84,769.88");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=84.24,655.18");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=12.57,616.60");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=33.62,678.28");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=58.63,752.98");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=94.04,845.84");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=2.88,859.74");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=117.48,866.07");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=9.05,931.75");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=87.25,834.55");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=33.61,918.25");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=137.79,944.29");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=162.03,992.44");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=112.48,892.87");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=195.60,952.48");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=216.57,922.59");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=103.80,996.39");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=133.50,847.17");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=147.18,927.78");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=22.33,870.72");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=47.03,840.37");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=8.18,805.90");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=136.84,863.89");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=87.91,820.93");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=115.95,847.75");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=159.06,652.86");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=158.78,740.54");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=159.61,835.25");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=164.61,712.39");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=175.07,642.33");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=241.26,733.18");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=206.91,622.41");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=51.54,603.29");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=170.83,609.95");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=173.84,657.14");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=324.66,594.50");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=313.32,616.27");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=258.32,577.66");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=303.21,723.38");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=350.20,656.52");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=224.30,565.02");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=207.80,519.65");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=194.92,508.25");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=161.57,914.53");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=30.88,895.55");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=96.37,884.32");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=49.81,774.52");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=11.33,790.10");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=92.72,742.82");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=90.89,860.72");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=34.99,800.99");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=53.20,634.86");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=38.41,663.54");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=63.91,590.73");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=80.62,751.48");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=186.44,719.20");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=67.08,742.66");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=44.94,818.46");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=85.65,969.90");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=81.70,948.83");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=155.52,889.42");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=86.37,937.62");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=149.24,973.09");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=101.99,924.53");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=209.25,986.02");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=125.23,934.51");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=93.33,995.89");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=169.40,806.36");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=80.88,925.29");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=82.80,895.35");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=0.40,798.50");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=54.24,932.91");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=159.59,868.40");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=143.03,802.90");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=152.47,726.56");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=72.14,682.66");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=215.31,786.20");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=261.35,795.03");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=145.87,790.01");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=271.22,687.91");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=207.40,721.15");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=240.83,559.40");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=104.57,653.91");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=203.78,693.57");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=333.83,646.22");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=307.21,627.87");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=223.43,552.06");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=274.09,644.78");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=340.70,684.70");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=297.48,671.04");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=268.50,560.09");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=298.42,508.59");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=154.51,537.06");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=106.33,877.34");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=52.26,860.89");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=14.53,844.69");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=4.85,745.49");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=35.84,830.15");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=131.95,753.85");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=34.38,733.72");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=25.65,763.51");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=54.06,716.23");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=48.15,683.68");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=75.38,623.56");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=50.35,809.96");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=114.32,796.17");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=95.80,708.45");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=81.56,736.01");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=31.18,980.35");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=123.13,881.78");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=93.76,983.35");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=24.83,990.57");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=141.82,908.00");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=171.57,970.25");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=217.66,952.85");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=135.42,983.78");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=99.01,910.53");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=156.58,899.82");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=27.11,938.41");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=82.74,881.69");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=14.91,720.94");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=15.29,942.12");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=118.38,823.19");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=178.94,824.41");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=150.81,848.54");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=120.75,719.29");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=172.11,735.85");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=251.16,706.95");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=257.98,784.24");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=139.83,655.76");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=195.51,594.97");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=185.63,553.19");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=161.72,560.10");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=301.19,567.50");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=225.51,650.93");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=406.56,600.57");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=374.67,541.12");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=382.73,705.75");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=330.70,677.58");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=282.66,675.22");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=269.39,611.04");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=181.50,460.51");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=165.09,524.45");
    }

}

