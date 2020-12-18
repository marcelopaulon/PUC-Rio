
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn4_7
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
        @display("p=76.60,942.87");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=168.71,905.60");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=197.98,914.72");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=249.89,951.84");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=243.82,962.74");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=292.57,974.23");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=280.70,907.35");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=230.30,889.73");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=223.22,797.62");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=208.27,763.42");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=205.03,738.75");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=153.13,673.69");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=112.15,684.57");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=125.25,777.90");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=81.54,851.60");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=119.11,834.71");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=135.30,822.51");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=174.87,782.36");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=141.38,841.79");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=168.88,842.83");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=168.53,807.63");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=89.37,821.52");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=106.37,817.49");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=26.41,841.47");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=95.45,811.94");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=91.19,765.45");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=101.34,756.47");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=49.15,770.52");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=40.92,706.59");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=72.69,699.37");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=43.18,732.87");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=66.06,771.34");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=16.38,767.76");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=65.80,801.51");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=61.37,811.10");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=67.79,864.24");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=92.16,906.81");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=132.54,951.20");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=100.01,914.15");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=128.02,902.11");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=88.39,927.93");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=61.31,999.47");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=82.04,990.82");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=38.01,968.92");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=26.82,951.35");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=80.32,954.68");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=40.60,889.26");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=10.30,911.48");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=35.09,900.66");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=88.38,893.86");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=87.83,943.02");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=252.98,868.51");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=225.16,998.78");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=240.60,921.52");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=341.02,951.15");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=275.86,981.68");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=245.61,986.84");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=309.50,878.09");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=230.11,815.20");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=155.80,793.67");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=190.21,752.51");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=165.11,659.37");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=17.95,681.27");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=124.13,705.15");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=124.54,918.76");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=100.81,870.29");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=140.03,810.54");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=246.48,730.91");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=164.71,883.35");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=88.63,865.24");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=185.62,770.58");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=155.87,834.51");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=57.53,780.13");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=17.23,849.93");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=109.97,805.22");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=79.51,751.11");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=147.15,759.15");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=18.31,738.07");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=7.03,667.25");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=8.16,751.09");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=63.70,709.17");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=50.00,805.05");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=11.58,789.73");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=30.47,773.34");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=93.08,838.76");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=163.21,854.52");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=89.46,980.62");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=119.23,938.80");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=107.37,974.72");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=114.24,857.22");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=79.03,917.99");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=108.78,955.60");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=47.31,951.45");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=33.61,933.94");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=12.43,933.35");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=149.02,942.32");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=128.42,888.99");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=22.60,984.71");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=46.34,904.94");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=105.42,884.34");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=108.38,943.42");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=74.49,900.08");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=208.02,895.41");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=222.76,984.20");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=188.83,901.31");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=327.41,893.50");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=284.88,942.08");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=261.09,939.36");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=184.37,858.29");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=194.00,776.27");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=248.66,768.93");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=119.69,643.81");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=183.61,666.00");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=44.14,829.17");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=167.74,829.78");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=193.20,787.51");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=142.04,798.40");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=155.14,733.93");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=150.47,891.73");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=188.58,838.81");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=125.50,856.26");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=93.12,734.59");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=75.79,799.91");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=1.98,870.52");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=128.35,798.45");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=81.02,770.41");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=179.44,761.95");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=75.12,828.55");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=55.38,641.40");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=122.15,733.99");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=84.82,682.01");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=71.83,744.69");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=69.35,726.14");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=131.91,874.20");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=38.19,816.92");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=0.64,937.05");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=32.04,872.29");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=117.90,960.35");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=49.54,849.67");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=142.22,903.66");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=133.07,990.52");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=36.09,956.28");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=35.24,921.12");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=46.69,978.39");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=100.03,962.93");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=6.10,898.03");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=42.79,863.41");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=23.40,910.59");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=55.40,897.72");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=107.86,847.91");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=6.69,879.89");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=118.59,972.09");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=181.70,949.92");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=239.98,941.77");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=251.98,973.76");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=298.06,954.98");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=283.31,921.55");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=199.71,884.70");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=210.91,781.10");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=216.39,751.66");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=274.29,753.05");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=90.72,639.72");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=132.49,727.95");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=161.39,715.82");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=52.66,879.35");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=209.96,849.37");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=155.18,807.72");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=146.26,718.53");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=153.11,846.39");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=227.03,841.64");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=179.38,828.74");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=83.76,786.02");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=139.66,736.00");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=56.57,833.65");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=145.62,788.47");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=131.52,760.24");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=113.46,776.14");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=39.76,750.21");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=43.53,791.79");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=114.05,713.34");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=12.21,704.49");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=29.80,680.75");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=8.37,839.30");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=72.21,810.64");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=34.89,834.90");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=92.22,877.79");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=70.02,845.38");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=165.26,976.85");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=108.99,833.74");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=149.81,914.43");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=89.82,917.66");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=65.28,957.64");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=138.68,921.59");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=46.64,962.96");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=53.27,936.12");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=68.37,875.98");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=12.23,870.45");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=1.98,972.46");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=109.33,919.80");
    }

}

