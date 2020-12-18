
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn8_5
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
        @display("p=60.73,808.92");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=114.84,791.02");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=103.60,798.11");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=39.42,821.49");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=23.61,733.12");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=2.40,803.21");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=69.93,819.50");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=130.69,744.82");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=113.25,776.98");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=121.37,765.83");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=98.09,784.93");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=33.43,775.80");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=14.40,855.52");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=36.03,943.21");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=75.46,883.25");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=39.40,931.35");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=113.61,896.39");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=54.07,903.66");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=52.03,890.78");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=66.83,871.06");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=129.33,930.68");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=132.78,886.16");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=58.77,949.67");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=38.33,870.83");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=73.84,973.13");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=105.43,840.43");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=134.34,813.62");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=126.10,824.26");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=25.57,749.30");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=14.69,680.01");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=84.38,802.27");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=139.85,769.68");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=167.68,667.20");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=52.55,764.77");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=127.67,778.53");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=192.77,793.60");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=105.63,827.90");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=24.95,855.12");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=18.56,965.40");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=93.30,914.04");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=69.60,953.41");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=184.28,853.65");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=15.67,884.52");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=51.68,867.91");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=81.63,894.67");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=135.14,955.05");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=157.75,944.86");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=55.55,963.95");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=64.28,900.33");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=72.55,937.66");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=74.44,778.71");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=142.14,725.72");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=135.10,858.24");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=54.64,828.11");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=121.87,723.37");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=87.67,791.73");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=79.95,825.51");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=214.61,782.54");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=135.46,843.07");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=70.62,851.34");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=149.64,741.83");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=47.07,697.55");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=25.54,840.73");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=48.54,986.82");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=31.38,888.97");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=32.55,993.38");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=44.74,848.79");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=60.30,843.90");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=57.48,935.92");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=154.37,911.85");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=108.53,966.39");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=170.22,912.07");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=35.89,854.08");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=17.61,825.39");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=198.32,895.21");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=71.81,831.60");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=32.18,809.46");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=59.46,774.34");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=37.96,835.85");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=10.49,638.93");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=39.29,755.39");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=77.66,791.31");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=135.37,707.06");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=133.08,799.68");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=73.05,741.38");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=46.02,805.13");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=5.96,759.79");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=80.87,869.84");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=39.71,956.14");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=87.39,905.63");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=41.99,916.07");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=186.23,928.92");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=120.77,836.42");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=150.83,899.84");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=56.03,856.37");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=126.67,966.68");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=147.57,849.59");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=16.85,949.05");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=19.55,865.09");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=67.31,911.04");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=103.18,815.36");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=51.27,789.35");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=33.00,740.24");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=21.89,768.00");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=98.01,731.72");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=47.10,717.01");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=64.91,885.44");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=59.70,735.58");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=91.47,695.07");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=94.84,767.50");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=111.33,746.24");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=11.19,715.81");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=15.01,838.60");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=16.40,927.99");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=70.64,926.20");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=46.44,946.18");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=90.44,874.83");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=89.99,929.58");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=122.58,903.08");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=154.48,865.32");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=196.21,939.17");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=185.33,948.58");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=13.46,995.90");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=33.50,908.85");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=195.33,873.31");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=6.50,862.34");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=26.40,819.24");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=161.45,834.76");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=51.71,814.84");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=61.07,747.55");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=13.96,791.31");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=79.04,758.66");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=139.90,647.22");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=182.51,822.95");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=105.96,678.61");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=94.66,809.73");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=124.88,809.17");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=12.03,780.17");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=108.19,945.71");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=114.67,847.08");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=115.48,983.83");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=104.40,874.84");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=18.54,983.08");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=33.67,923.14");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=10.68,875.85");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=126.88,995.14");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=139.88,964.30");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=98.07,940.88");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=66.86,791.98");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=102.94,858.78");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=43.33,736.65");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=151.06,753.35");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=85.82,777.01");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=24.10,779.59");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=10.70,742.60");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=83.83,747.92");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=85.73,841.07");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=151.23,666.03");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=85.55,711.00");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=169.28,822.80");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=168.62,745.96");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=24.97,801.32");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=44.09,880.58");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=2.56,943.26");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=144.45,826.38");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=57.60,920.17");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=112.09,866.76");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=146.09,874.53");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=5.10,889.22");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=120.10,922.93");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=125.39,940.41");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=182.97,812.50");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=142.86,940.56");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=121.82,854.34");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=143.73,837.40");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=74.81,725.58");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=170.20,783.74");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=31.07,762.31");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=100.22,887.06");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=74.98,690.24");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=28.75,723.25");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=86.25,856.03");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=197.64,704.37");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=141.86,793.74");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=103.42,713.23");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=132.07,734.11");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=108.38,765.55");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=0.30,853.90");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=4.56,902.32");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=133.30,902.65");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=3.48,916.71");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=165.20,974.51");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=41.50,898.89");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=94.16,976.44");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=142.15,918.35");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=122.32,890.42");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=167.94,944.32");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=53.83,974.20");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=129.20,868.10");
    }

}

