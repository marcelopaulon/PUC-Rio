
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn8_6
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
        @display("p=100.00,300.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=69.06,287.24");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=67.58,271.47");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=145.74,300.91");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=120.68,347.89");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=177.17,399.35");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=183.30,348.98");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=130.28,286.11");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=147.48,249.64");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=209.90,190.01");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=85.25,189.90");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=81.24,153.33");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=145.44,132.34");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=129.61,137.60");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=105.64,219.09");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=69.73,140.74");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=126.80,153.64");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=118.50,170.98");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=177.70,166.07");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=161.68,127.20");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=208.64,112.36");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=222.37,126.33");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=137.09,105.14");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=136.76,92.60");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=162.86,59.21");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=181.16,299.69");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=40.63,297.65");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=49.84,249.78");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=200.85,279.38");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=60.28,370.06");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=160.88,388.71");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=243.40,358.40");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=213.12,329.88");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=138.45,310.38");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=197.83,165.24");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=0.76,191.07");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=111.57,242.15");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=96.00,101.02");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=210.31,156.85");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=93.66,211.69");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=55.71,125.17");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=125.00,120.33");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=144.61,181.62");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=158.96,212.86");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=179.20,128.24");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=299.87,78.78");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=276.28,117.87");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=114.63,43.93");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=159.77,172.72");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=73.26,84.89");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=188.61,337.99");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=62.35,301.48");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=50.27,264.03");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=109.55,307.38");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=90.34,295.24");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=89.11,377.41");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=232.30,315.37");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=91.13,200.98");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=146.41,218.75");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=291.66,153.04");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=116.06,143.47");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=11.01,204.65");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=98.58,115.03");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=192.87,131.66");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=90.48,308.62");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=127.32,165.32");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=123.63,70.52");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=129.64,182.18");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=194.81,95.99");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=159.62,100.93");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=235.48,119.38");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=310.47,133.61");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=136.63,53.90");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=165.97,72.65");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=182.19,43.00");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=130.82,383.17");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=61.81,326.06");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=136.76,268.02");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=162.91,289.20");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=98.04,319.66");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=149.90,393.21");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=142.61,331.56");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=170.40,328.60");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=217.03,208.42");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=188.57,192.08");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=128.13,255.88");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=50.92,134.48");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=203.87,145.14");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=138.32,162.64");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=116.03,201.75");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=46.45,212.86");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=175.67,176.37");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=121.33,95.05");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=188.87,251.98");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=148.83,117.20");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=198.17,109.90");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=226.10,143.52");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=200.49,74.27");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=157.28,155.00");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=195.13,39.40");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=79.53,290.34");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=122.48,311.73");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=30.44,342.52");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=185.33,270.06");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=189.39,398.18");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=209.70,394.56");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=87.25,344.65");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=103.69,259.55");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=208.71,218.83");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=181.50,259.03");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=68.70,166.29");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=29.97,186.13");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=155.41,83.86");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=61.14,192.33");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=116.89,290.80");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=136.24,198.00");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=204.90,180.10");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=188.30,169.15");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=184.55,241.28");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=228.54,191.84");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=221.98,89.20");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=290.45,126.06");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=122.04,13.13");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=164.81,88.99");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=163.37,29.89");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=82.70,301.96");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=81.62,276.95");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=51.47,283.20");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=140.22,388.73");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=127.06,300.88");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=226.07,358.45");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=152.98,344.04");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=170.65,316.80");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=105.67,206.84");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=254.36,100.78");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=93.53,128.57");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=67.57,155.83");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=163.98,117.45");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=135.94,125.52");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=87.56,253.82");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=22.04,211.62");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=73.16,198.03");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=206.73,128.19");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=251.66,224.88");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=175.59,114.46");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=233.16,169.59");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=262.87,113.78");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=126.87,109.44");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=86.98,37.44");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=82.86,95.36");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=134.78,362.23");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=111.54,371.41");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=25.24,360.93");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=210.34,244.15");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=215.67,361.38");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=102.76,364.08");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=180.47,288.56");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=121.88,211.74");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=200.72,238.04");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=174.16,201.29");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=42.82,189.35");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=170.60,145.01");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=104.69,135.73");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=118.53,181.29");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=101.22,167.48");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=57.51,109.09");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=134.30,226.48");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=101.96,79.20");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=259.61,136.36");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=110.37,64.29");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=268.32,96.79");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=221.01,73.50");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=207.66,100.87");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=116.16,106.49");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=109.66,26.55");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=114.67,264.88");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=72.37,300.32");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=48.81,324.88");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=144.54,320.45");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=119.69,361.31");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=164.96,360.72");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=212.86,288.47");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=196.11,222.48");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=161.28,255.76");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=205.04,208.32");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=86.62,143.17");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=69.66,127.41");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=106.40,158.47");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=158.13,143.38");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=142.34,206.33");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=29.18,93.27");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=33.52,165.89");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=63.93,203.02");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=235.29,232.79");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=234.77,70.03");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=243.09,107.12");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=307.07,97.62");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=203.84,31.00");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=91.56,66.28");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=147.09,42.61");
    }

}

