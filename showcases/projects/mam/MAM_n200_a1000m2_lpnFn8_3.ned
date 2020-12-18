
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn8_3
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
        @display("p=32.96,901.72");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=87.56,937.74");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=14.03,963.49");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=2.77,978.35");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=34.31,976.05");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=36.03,954.98");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=50.13,962.01");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=17.04,891.42");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=47.19,932.53");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=76.65,852.87");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=114.17,847.23");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=130.51,932.61");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=79.12,918.23");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=82.15,894.04");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=94.50,880.19");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=160.64,913.42");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=242.68,954.25");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=290.80,967.05");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=370.07,914.61");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=390.02,920.20");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=403.12,880.71");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=367.83,930.27");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=357.05,924.78");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=347.12,918.26");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=69.48,865.02");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=22.83,859.02");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=110.32,960.38");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=87.43,984.70");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=62.60,939.83");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=104.13,976.15");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=26.67,916.56");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=34.43,995.50");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=40.22,837.44");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=84.98,950.56");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=59.06,869.42");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=128.19,806.35");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=137.48,920.22");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=27.34,987.41");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=96.86,862.11");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=22.41,815.32");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=159.06,934.44");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=253.21,942.22");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=297.32,959.17");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=362.24,837.79");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=424.56,958.49");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=393.68,910.38");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=401.23,966.81");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=449.09,934.27");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=280.97,934.37");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=114.77,929.67");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=5.74,861.11");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=140.81,966.17");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=77.14,940.56");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=15.77,986.89");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=53.01,922.16");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=1.66,962.58");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=68.04,923.21");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=39.45,876.13");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=136.42,902.22");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=45.47,775.01");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=109.43,860.33");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=114.92,996.44");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=27.08,888.48");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=123.82,819.03");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=99.98,813.52");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=195.13,953.53");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=254.91,958.40");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=375.51,958.15");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=374.13,874.29");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=345.91,947.14");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=388.99,849.62");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=419.76,941.03");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=388.46,931.92");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=342.17,906.95");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=95.18,832.66");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=54.77,905.96");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=166.62,926.95");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=70.44,976.36");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=13.89,930.65");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=79.20,959.57");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=58.38,893.93");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=93.66,925.89");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=67.37,843.36");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=75.67,930.62");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=109.48,907.64");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=158.09,811.73");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=145.81,855.92");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=67.29,952.64");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=78.96,906.25");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=107.30,875.39");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=231.16,911.42");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=188.25,981.20");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=295.05,879.68");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=393.62,985.28");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=417.15,898.44");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=451.17,891.27");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=316.27,882.22");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=348.42,932.86");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=342.05,978.50");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=75.22,880.06");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=37.88,861.61");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=58.07,973.63");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=13.86,973.97");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=0.39,881.70");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=127.73,965.14");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=34.67,936.66");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=108.37,988.78");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=71.47,815.15");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=122.03,875.93");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=14.07,785.58");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=141.18,866.15");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=152.05,961.78");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=120.38,895.71");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=69.95,912.36");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=172.02,937.91");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=181.50,949.10");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=170.04,992.48");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=310.19,922.24");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=333.89,916.61");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=402.18,925.27");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=461.59,911.71");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=375.58,970.55");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=318.57,913.84");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=336.39,865.33");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=197.67,908.84");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=8.64,813.32");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=136.10,880.62");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=35.98,920.56");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=91.37,975.31");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=21.98,998.47");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=47.75,974.12");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=0.10,908.44");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=11.47,909.98");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=11.81,879.83");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=112.98,804.99");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=83.29,863.93");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=142.84,834.49");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=56.55,953.18");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=15.22,951.14");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=106.11,839.92");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=174.25,837.93");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=183.42,908.93");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=333.02,996.88");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=413.21,930.82");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=349.26,884.76");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=382.40,908.82");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=317.03,989.51");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=425.38,924.10");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=310.82,970.48");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=131.31,838.03");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=100.18,957.97");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=120.12,916.86");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=53.07,878.37");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=26.34,949.32");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=58.73,990.07");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=37.97,890.15");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=141.28,933.37");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=4.39,935.56");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=10.29,841.20");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=88.29,777.85");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=23.03,875.58");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=91.41,913.84");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=150.71,881.42");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=155.98,895.13");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=94.09,891.67");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=150.52,905.67");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=200.36,988.11");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=231.55,992.75");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=429.62,847.58");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=358.45,965.95");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=399.33,893.47");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=375.71,939.21");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=316.47,860.52");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=334.21,826.38");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=68.95,891.10");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=11.79,830.53");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=38.76,851.62");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=6.74,900.16");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=46.60,988.33");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=50.52,944.35");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=5.12,919.45");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=83.08,969.35");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=65.74,827.38");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=140.17,951.42");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=110.21,887.15");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=154.44,924.68");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=185.02,887.35");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=163.44,965.33");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=89.06,844.31");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=159.65,838.76");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=155.70,851.69");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=235.50,941.66");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=319.49,956.03");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=345.85,895.07");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=392.40,958.73");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=449.07,829.46");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=333.80,946.42");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=399.01,936.77");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=347.79,861.76");
    }

}

