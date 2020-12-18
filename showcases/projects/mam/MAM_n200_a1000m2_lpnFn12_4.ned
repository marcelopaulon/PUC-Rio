
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn12_4
{
    parameters:
        @display("bgb=1000,1000;bgg=100,1,grey95;bgu=m");
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=86.56,44.60");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=103.57,2.00");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=93.26,8.44");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=145.51,26.50");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=169.45,40.81");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=182.21,60.99");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=139.83,140.26");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=101.26,150.32");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=23.70,189.64");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=61.39,155.20");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=19.62,135.25");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=43.19,106.43");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=75.47,165.21");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=128.52,220.81");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=140.84,228.23");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=149.15,254.52");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=16.97,111.29");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=63.87,73.83");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=65.39,1.74");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=86.04,62.83");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=122.97,13.19");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=99.09,33.56");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=174.88,74.34");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=140.18,122.03");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=115.77,158.03");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=12.83,221.01");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=134.79,188.91");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=81.54,101.47");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=8.32,103.56");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=85.49,262.59");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=115.54,282.38");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=118.33,228.30");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=142.82,295.82");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=16.89,82.76");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=2.59,3.19");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=126.73,33.76");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=47.78,85.44");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=106.83,116.62");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=159.11,59.09");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=228.23,99.32");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=62.57,196.14");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=86.95,147.49");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=11.71,188.84");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=55.60,110.02");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=48.61,133.13");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=25.89,102.21");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=163.67,142.55");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=88.09,193.70");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=117.55,202.20");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=148.92,210.91");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=146.74,69.30");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=118.07,128.93");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=159.09,24.22");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=75.56,79.30");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=200.22,43.07");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=178.19,19.42");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=235.05,121.90");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=168.23,104.66");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=154.49,155.96");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=5.03,271.11");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=4.35,157.27");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=66.80,136.85");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=46.71,26.59");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=47.25,205.42");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=67.92,260.91");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=95.21,293.32");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=122.57,274.39");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=36.41,63.54");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=137.89,108.90");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=24.81,45.10");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=11.47,8.98");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=143.47,39.92");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=218.85,114.55");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=156.08,88.16");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=121.31,100.92");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=129.55,244.15");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=111.62,183.75");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=33.33,181.78");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=7.89,119.45");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=90.59,118.61");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=74.27,220.31");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=97.45,138.14");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=203.80,269.67");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=149.21,264.78");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=120.80,24.09");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=166.91,90.36");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=31.59,5.42");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=89.29,25.41");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=189.09,109.67");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=181.46,137.71");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=198.01,97.48");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=130.41,133.34");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=127.64,144.09");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=97.07,163.41");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=50.17,123.11");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=14.30,69.25");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=97.63,56.18");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=79.20,155.26");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=107.82,265.73");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=144.16,279.09");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=219.03,223.26");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=50.07,149.93");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=75.23,34.06");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=157.70,37.15");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=125.99,45.93");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=198.31,10.90");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=221.82,53.22");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=262.23,59.17");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=205.98,176.38");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=32.47,137.07");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=57.86,279.00");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=7.51,145.18");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=28.78,211.24");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=60.31,86.20");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=65.29,242.21");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=105.21,225.89");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=134.53,209.29");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=96.90,200.69");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=126.88,72.32");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=135.17,58.24");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=73.41,17.15");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=113.31,32.53");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=142.28,16.75");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=213.42,39.10");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=185.07,90.97");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=215.57,75.93");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=115.04,214.97");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=21.29,157.42");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=90.50,242.44");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=70.64,182.52");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=11.50,50.16");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=27.64,170.91");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=207.97,209.66");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=109.19,251.34");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=73.58,293.12");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=164.76,74.84");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=44.26,38.07");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=11.21,38.21");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=57.62,12.03");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=136.22,7.62");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=179.74,36.28");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=260.33,106.03");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=57.37,176.34");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=153.09,179.58");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=50.23,186.66");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=77.21,128.01");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=67.75,124.23");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=96.72,90.17");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=98.53,250.16");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=218.29,240.40");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=223.76,186.87");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=230.07,235.89");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=44.90,50.31");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=137.15,91.61");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=46.07,73.16");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=78.39,54.30");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=187.93,44.94");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=124.47,116.64");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=255.41,75.29");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=184.14,147.87");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=70.67,105.71");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=1.69,229.99");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=82.38,112.64");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=65.39,212.87");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=103.14,44.43");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=44.25,164.81");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=179.35,168.80");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=170.66,219.81");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=163.88,280.09");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=107.11,87.96");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=116.27,74.54");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=134.36,23.55");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=55.83,36.93");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=241.77,46.03");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=196.60,132.84");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=259.09,39.99");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=109.97,102.21");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=193.61,183.30");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=17.59,204.62");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=34.64,120.72");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=67.68,95.62");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=4.94,28.81");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=106.03,207.86");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=166.71,131.63");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=130.65,256.57");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=183.91,346.02");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=110.73,19.23");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=108.58,61.19");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=96.16,79.41");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=120.19,0.27");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=166.69,5.42");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=231.92,76.29");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=193.56,58.58");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=212.82,136.35");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=77.66,231.69");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=87.46,218.89");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=0.35,128.58");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=19.09,124.01");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=89.94,178.88");
    }

}

