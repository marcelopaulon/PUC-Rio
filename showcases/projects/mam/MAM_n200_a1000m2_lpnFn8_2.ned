
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn8_2
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
        @display("p=67.44,910.19");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=89.23,966.88");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=125.14,962.26");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=51.63,895.14");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=22.03,931.58");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=76.17,969.56");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=102.70,950.52");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=53.61,877.72");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=6.60,918.21");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=105.32,908.93");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=186.72,867.53");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=244.66,884.92");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=258.36,877.16");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=311.59,813.42");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=291.17,826.64");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=276.85,835.37");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=203.70,829.74");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=207.51,817.44");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=239.06,754.19");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=269.51,789.62");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=274.98,847.94");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=255.37,752.48");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=266.11,757.12");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=328.32,716.39");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=72.90,896.40");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=11.49,929.89");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=147.55,970.44");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=185.29,927.97");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=24.12,815.40");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=16.85,889.89");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=65.44,982.58");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=9.82,973.78");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=52.13,857.84");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=89.54,922.29");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=104.29,935.51");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=162.89,828.98");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=331.62,917.80");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=247.85,871.28");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=302.59,803.99");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=270.79,739.98");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=264.19,865.13");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=171.98,736.02");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=236.99,792.21");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=211.63,694.72");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=322.30,794.24");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=237.66,900.32");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=278.28,710.84");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=248.31,738.17");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=305.03,734.40");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=73.25,988.91");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=128.54,934.50");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=61.21,958.91");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=153.19,938.00");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=55.06,822.16");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=75.85,939.50");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=113.36,970.84");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=70.94,872.46");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=136.40,874.37");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=9.29,905.76");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=40.62,876.94");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=195.41,921.90");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=208.43,968.47");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=263.74,936.99");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=343.33,749.92");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=263.34,835.67");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=346.29,843.21");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=230.72,876.71");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=188.35,810.87");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=226.35,756.64");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=346.23,798.59");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=228.99,807.81");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=277.72,730.81");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=276.18,759.55");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=316.62,697.21");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=90.22,872.73");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=87.36,955.54");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=135.16,904.28");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=200.94,986.75");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=46.51,885.51");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=10.44,868.98");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=55.88,991.73");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=147.46,865.22");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=44.39,952.52");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=25.05,912.22");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=127.53,980.13");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=211.38,891.27");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=290.81,927.21");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=354.04,889.80");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=366.76,889.73");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=378.20,791.36");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=285.10,854.80");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=202.93,854.82");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=171.18,797.02");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=290.56,721.39");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=269.80,696.50");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=306.02,886.12");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=257.15,789.27");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=278.86,779.88");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=318.36,683.82");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=131.93,815.93");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=37.57,840.73");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=169.57,923.80");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=38.61,938.26");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=4.60,940.51");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=103.11,974.03");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=31.48,984.58");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=151.81,903.23");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=117.28,809.68");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=33.98,907.49");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=90.75,912.16");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=234.93,866.37");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=296.81,939.37");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=271.40,883.74");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=299.67,775.42");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=261.56,891.77");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=334.07,833.85");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=201.83,786.31");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=163.39,899.95");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=239.21,718.86");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=307.45,829.02");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=267.80,822.29");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=225.74,792.26");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=253.42,820.36");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=332.76,690.51");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=137.45,922.79");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=60.25,946.33");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=134.34,996.46");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=185.12,942.63");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=81.23,890.15");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=31.28,954.87");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=38.65,969.42");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=104.24,990.11");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=37.08,924.43");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=67.56,997.22");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=32.57,891.02");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=190.53,840.33");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=187.33,909.30");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=236.91,850.57");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=224.83,820.99");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=324.68,741.73");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=258.16,811.43");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=111.73,829.69");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=176.00,827.55");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=256.80,764.98");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=220.47,720.62");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=249.10,798.36");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=218.13,731.64");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=263.29,772.93");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=341.96,717.70");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=114.20,871.13");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=104.38,925.04");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=72.10,929.08");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=133.23,955.82");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=11.04,985.43");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=18.40,945.21");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=164.08,954.84");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=112.69,889.09");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=122.86,946.15");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=58.93,974.79");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=147.85,924.31");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=214.71,808.94");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=262.40,906.07");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=329.64,871.83");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=285.47,883.28");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=314.03,845.31");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=316.44,859.03");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=135.78,853.28");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=223.87,837.10");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=204.35,735.42");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=335.93,809.94");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=358.06,801.43");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=290.12,709.63");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=282.24,740.63");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=300.20,701.44");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=124.08,852.19");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=125.43,878.53");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=98.21,888.27");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=90.23,980.74");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=33.92,808.16");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=50.30,908.19");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=75.08,951.83");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=57.67,867.63");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=43.02,862.50");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=61.33,918.68");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=103.44,838.31");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=167.08,878.19");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=203.62,867.86");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=250.31,893.77");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=310.84,904.71");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=300.28,792.87");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=248.79,843.71");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=174.62,810.25");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=182.90,847.80");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=190.19,792.69");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=235.58,699.62");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=286.43,868.25");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=321.32,781.58");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=344.92,727.86");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=274.22,635.14");
    }

}

