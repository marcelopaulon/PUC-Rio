
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn8_6
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
        @display("p=147.31,939.17");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=115.35,904.14");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=119.65,861.16");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=127.01,848.39");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=154.42,891.50");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=190.34,804.19");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=211.94,789.66");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=225.45,764.67");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=276.48,762.85");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=288.76,754.41");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=211.28,714.56");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=130.33,696.08");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=157.85,730.66");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=158.09,746.05");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=140.42,683.52");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=114.61,634.68");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=85.24,627.93");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=32.21,605.96");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=46.90,558.56");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=9.17,611.36");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=35.82,567.07");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=16.39,571.81");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=37.04,538.70");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=18.18,556.20");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=76.20,896.40");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=175.50,911.48");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=34.04,901.68");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=120.64,819.01");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=189.27,869.30");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=213.36,895.65");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=138.05,759.96");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=187.25,794.44");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=193.79,837.44");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=205.10,693.87");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=248.78,712.68");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=234.50,650.23");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=42.22,728.94");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=177.60,675.51");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=158.05,697.30");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=66.41,673.71");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=92.83,646.92");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=32.41,620.67");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=37.57,589.25");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=94.23,526.55");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=39.51,634.40");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=51.09,604.49");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=62.52,571.79");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=109.92,551.62");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=25.00,630.22");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=7.89,905.49");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=158.62,849.04");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=63.06,828.84");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=140.37,828.20");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=148.75,929.14");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=233.41,899.59");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=244.63,746.54");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=117.92,797.45");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=229.20,792.64");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=357.19,706.13");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=326.65,787.63");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=147.30,785.58");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=146.24,724.97");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=225.38,730.67");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=177.83,781.76");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=132.98,717.35");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=103.06,583.21");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=142.33,703.56");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=20.38,659.64");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=94.64,567.34");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=44.00,689.38");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=84.64,575.39");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=5.88,492.79");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=85.48,462.69");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=16.49,489.98");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=87.45,996.52");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=138.44,920.52");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=86.83,875.29");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=138.78,842.18");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=120.68,756.49");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=176.64,936.82");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=153.55,794.92");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=206.49,833.21");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=154.10,831.45");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=309.44,797.84");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=294.90,765.74");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=231.24,713.65");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=99.34,705.65");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=201.56,726.89");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=131.32,813.53");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=131.13,667.44");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=129.02,614.53");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=52.25,615.91");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=53.48,531.54");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=67.48,593.97");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=22.99,613.59");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=46.38,579.44");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=65.85,533.31");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=77.81,620.10");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=1.28,628.62");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=118.73,829.96");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=160.80,932.94");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=93.30,931.24");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=79.23,796.77");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=65.38,888.72");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=202.59,804.42");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=171.30,809.33");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=247.54,766.67");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=167.78,732.24");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=291.22,778.67");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=292.64,789.80");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=196.22,706.77");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=121.16,671.08");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=156.39,709.84");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=245.28,698.65");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=69.01,724.04");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=75.08,601.03");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=163.22,605.19");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=79.27,641.74");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=117.40,561.55");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=4.08,596.02");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=86.22,554.08");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=57.12,561.07");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=108.17,516.70");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=8.53,564.02");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=65.86,950.80");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=181.25,923.59");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=159.03,958.43");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=140.35,866.25");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=90.23,854.35");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=214.44,861.78");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=157.43,811.32");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=243.61,791.82");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=252.04,831.41");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=254.69,680.58");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=336.97,797.53");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=228.19,776.53");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=224.19,662.73");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=227.88,689.39");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=163.70,790.18");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=99.70,634.30");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=81.66,720.36");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=93.22,693.50");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=102.12,655.02");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=13.44,529.16");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=24.55,709.02");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=16.86,588.70");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=13.65,647.06");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=99.06,540.93");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=31.94,525.20");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=146.65,881.78");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=219.79,942.32");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=73.47,861.82");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=91.58,802.89");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=115.29,870.26");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=192.61,859.59");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=110.54,778.53");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=161.48,772.45");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=197.54,784.41");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=230.96,826.70");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=377.55,744.63");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=180.90,702.53");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=153.55,756.36");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=101.27,765.29");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=199.93,773.30");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=166.48,637.78");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=123.60,647.55");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=76.73,581.96");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=61.61,642.66");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=72.01,513.09");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=0.64,707.91");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=10.13,660.86");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=62.21,628.86");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=35.33,509.97");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=29.38,492.14");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=95.07,909.60");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=156.20,945.49");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=204.27,866.26");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=114.25,844.61");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=116.41,787.03");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=239.66,847.68");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=178.52,712.34");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=250.23,722.71");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=188.66,713.87");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=305.72,745.06");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=215.82,749.08");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=177.91,737.89");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=163.16,655.06");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=71.14,772.41");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=132.61,746.70");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=154.65,661.35");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=202.32,627.06");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=146.79,630.03");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=3.82,639.02");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=129.14,599.80");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=69.53,552.70");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=79.21,490.06");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=26.96,550.09");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=16.99,461.18");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=45.05,493.94");
    }

}

