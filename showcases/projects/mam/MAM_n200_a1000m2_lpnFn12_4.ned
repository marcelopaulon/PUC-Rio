
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn12_4
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
        @display("p=195.37,908.12");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=190.74,943.21");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=215.21,925.46");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=166.65,968.16");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=161.75,978.81");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=118.77,973.69");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=162.07,919.33");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=67.09,941.46");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=44.12,972.31");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=67.81,908.47");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=107.56,953.21");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=99.26,912.45");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=109.00,937.21");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=121.22,884.45");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=197.43,824.85");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=187.62,827.64");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=100.52,884.37");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=166.00,838.85");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=114.91,921.50");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=200.65,928.64");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=181.24,958.36");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=128.95,892.50");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=33.68,943.94");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=238.36,943.37");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=53.99,947.73");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=39.89,919.42");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=36.97,816.74");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=94.81,949.88");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=101.16,967.23");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=93.91,939.60");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=134.03,882.43");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=244.49,895.14");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=208.36,795.35");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=72.12,847.11");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=243.42,952.71");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=169.75,939.22");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=230.81,928.37");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=231.89,967.65");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=178.44,984.97");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=142.41,975.74");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=206.44,909.80");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=41.28,955.50");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=25.90,977.77");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=87.55,813.09");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=140.51,933.31");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=58.23,915.71");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=130.50,966.40");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=26.92,895.80");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=195.18,767.26");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=217.58,826.62");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=189.80,894.43");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=120.04,944.97");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=157.96,891.97");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=147.03,962.43");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=107.20,989.35");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=198.24,986.38");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=125.98,956.99");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=190.18,923.92");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=72.73,951.17");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=82.09,938.29");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=13.59,905.17");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=76.20,974.01");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=58.33,861.75");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=136.00,901.72");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=46.31,870.88");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=177.90,882.75");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=210.92,733.34");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=81.02,890.81");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=165.89,910.07");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=270.76,913.41");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=218.00,985.84");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=120.19,906.91");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=200.83,967.11");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=103.99,926.10");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=172.96,919.04");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=64.47,926.00");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=84.58,964.81");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=73.80,918.26");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=25.46,996.37");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=52.85,964.31");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=91.32,860.73");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=89.08,908.40");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=119.06,837.58");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=212.76,808.95");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=58.71,886.90");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=285.85,901.00");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=157.68,958.98");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=216.83,888.62");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=228.69,956.43");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=171.57,953.85");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=159.61,945.61");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=118.21,896.53");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=48.37,936.93");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=4.19,969.71");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=24.56,923.17");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=119.98,994.20");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=115.98,865.39");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=152.92,925.14");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=141.86,913.40");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=244.38,911.83");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=127.04,792.93");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=178.13,852.89");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=217.60,876.14");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=150.18,984.73");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=265.03,928.25");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=214.59,963.41");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=150.97,998.05");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=61.49,980.78");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=148.21,895.70");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=77.63,989.98");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=35.81,932.03");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=123.97,925.80");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=49.20,910.48");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=125.76,872.30");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=146.79,856.67");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=154.97,904.73");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=183.26,804.33");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=114.57,853.91");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=35.32,852.86");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=284.04,884.82");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=200.20,998.34");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=181.19,929.35");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=250.54,961.75");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=130.48,988.09");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=175.71,902.57");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=260.81,911.42");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=100.04,999.34");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=47.20,987.53");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=85.48,878.38");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=33.81,971.08");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=58.90,900.80");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=108.25,974.81");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=101.65,813.59");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=202.31,871.38");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=131.69,846.70");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=77.69,866.49");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=221.14,899.51");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=186.79,979.43");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=144.62,879.49");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=174.64,998.25");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=134.00,997.84");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=88.01,986.36");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=166.57,870.72");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=119.29,934.78");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=41.04,890.05");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=95.56,978.31");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=62.41,996.83");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=94.68,825.65");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=58.61,935.26");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=152.29,789.42");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=154.21,847.43");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=184.50,747.92");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=53.55,926.51");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=192.26,863.79");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=261.50,996.05");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=253.54,926.78");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=226.45,999.56");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=201.85,947.22");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=139.37,954.93");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=224.74,842.05");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=12.89,941.66");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=12.21,931.11");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=43.37,826.07");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=189.29,994.88");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=73.37,832.51");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=103.40,849.06");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=137.61,815.16");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=225.38,804.82");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=169.12,787.63");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=89.75,920.78");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=259.68,978.69");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=279.47,933.03");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=226.70,885.55");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=198.88,881.58");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=163.27,999.48");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=211.01,978.47");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=161.72,881.48");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=73.71,881.46");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=129.07,939.54");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=12.53,873.68");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=81.33,927.44");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=137.57,923.56");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=167.13,989.23");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=201.07,853.45");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=198.60,803.54");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=279.57,851.47");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=39.44,900.02");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=209.54,954.19");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=149.10,947.96");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=213.14,940.29");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=257.66,939.45");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=152.72,973.82");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=214.16,997.64");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=145.80,825.04");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=2.89,984.49");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=12.35,975.53");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=29.08,823.58");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=140.34,867.30");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=33.96,987.15");
    }

}

