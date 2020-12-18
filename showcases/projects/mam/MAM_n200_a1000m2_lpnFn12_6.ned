
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn12_6
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
        @display("p=130.95,806.32");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=134.93,784.63");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=146.83,787.50");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=133.52,736.45");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=220.02,689.25");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=229.67,751.48");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=163.96,788.28");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=196.39,871.39");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=247.12,882.14");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=274.03,861.10");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=308.85,941.76");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=233.15,902.73");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=219.70,930.47");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=215.65,984.22");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=182.25,972.35");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=144.39,964.13");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=96.16,826.21");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=110.42,797.60");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=152.23,764.04");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=96.95,847.55");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=95.88,682.50");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=186.21,752.40");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=252.22,776.26");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=253.23,763.66");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=188.13,853.89");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=282.83,939.07");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=293.00,820.28");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=379.36,963.66");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=159.76,916.12");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=199.98,909.73");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=180.74,953.61");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=142.95,897.98");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=104.62,914.23");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=88.64,874.22");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=113.56,711.30");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=54.69,754.66");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=136.42,851.64");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=127.01,663.54");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=255.81,720.58");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=222.90,742.94");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=130.08,824.91");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=227.83,938.19");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=288.76,926.42");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=283.63,889.62");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=249.35,866.88");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=172.05,849.33");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=246.14,938.01");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=238.76,984.13");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=253.92,992.06");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=205.23,947.02");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=117.95,934.56");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=117.67,818.57");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=209.67,833.08");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=71.59,803.97");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=153.78,728.82");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=258.55,637.22");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=171.06,689.70");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=137.71,816.06");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=202.71,881.40");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=344.95,875.65");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=283.12,845.44");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=309.22,928.36");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=247.27,921.88");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=215.80,901.92");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=234.21,892.36");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=194.04,959.30");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=113.13,961.61");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=137.35,926.12");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=154.42,855.63");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=178.48,820.08");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=216.14,803.59");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=67.99,781.20");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=270.97,765.42");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=312.02,697.62");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=129.83,761.04");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=260.57,858.55");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=235.43,920.26");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=334.17,898.47");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=329.20,939.16");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=312.24,893.10");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=285.95,971.66");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=177.05,930.57");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=274.56,998.39");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=162.43,967.09");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=113.11,877.61");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=85.78,852.07");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=54.50,814.89");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=135.81,795.01");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=109.25,748.82");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=169.70,773.05");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=213.68,753.31");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=183.61,841.85");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=148.44,823.53");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=258.54,885.76");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=208.03,787.60");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=359.15,887.17");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=269.78,924.79");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=132.21,950.56");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=188.81,984.41");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=261.99,978.50");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=161.96,944.85");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=92.79,887.87");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=116.07,770.72");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=152.15,805.80");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=217.89,819.35");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=49.40,690.58");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=188.47,725.23");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=264.18,774.23");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=226.60,795.61");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=158.19,833.36");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=259.35,869.27");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=251.21,853.27");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=323.61,899.64");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=183.84,873.06");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=201.97,932.21");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=221.36,993.53");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=181.32,995.15");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=99.48,963.47");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=32.95,873.21");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=59.96,763.49");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=144.24,721.81");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=190.49,774.34");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=130.17,700.67");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=225.18,720.04");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=210.85,681.37");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=88.91,724.73");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=170.04,956.29");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=235.47,873.70");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=331.01,849.40");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=334.57,912.81");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=225.39,916.02");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=223.51,967.94");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=123.98,978.93");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=206.69,962.01");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=142.93,872.79");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=134.09,971.08");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=122.72,782.30");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=152.87,744.32");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=159.16,845.40");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=75.98,746.47");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=200.15,738.57");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=259.03,710.27");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=83.65,739.17");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=237.01,808.69");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=273.30,903.66");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=295.71,940.13");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=369.60,939.89");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=201.13,855.63");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=159.52,891.85");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=214.02,914.14");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=199.69,999.72");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=136.63,991.14");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=63.99,875.09");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=161.10,810.82");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=47.71,778.16");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=168.23,706.62");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=95.14,771.78");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=295.49,730.88");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=243.92,836.45");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=213.93,775.41");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=264.27,899.06");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=270.46,873.34");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=280.83,830.47");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=309.38,954.05");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=249.80,820.13");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=312.43,913.90");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=173.40,914.20");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=252.69,952.22");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=175.11,984.15");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=121.81,869.67");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=108.92,785.61");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=43.24,765.77");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=213.54,732.16");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=188.66,665.51");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=240.29,700.12");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=278.59,681.84");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=180.89,801.15");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=178.28,861.46");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=248.65,907.37");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=336.42,867.16");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=260.04,935.83");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=212.35,860.98");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=219.02,884.99");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=181.77,903.12");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=217.44,943.56");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=162.97,992.42");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=81.65,948.78");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=75.72,731.36");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=68.63,837.95");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=85.84,808.77");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=125.61,711.67");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=258.32,656.38");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=220.92,762.21");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=122.60,841.42");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=159.80,928.28");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=191.78,881.39");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=297.76,862.51");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=398.72,940.53");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=222.68,846.99");
    }

}

