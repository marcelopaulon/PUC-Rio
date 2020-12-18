
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn12_6
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
        @display("p=77.08,140.53");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=62.21,105.69");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=53.39,113.92");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=36.57,107.17");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=69.47,69.04");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=47.64,27.54");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=37.69,1.78");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=58.69,76.47");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=109.71,21.51");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=183.50,60.57");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=195.06,29.25");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=153.75,91.99");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=67.97,40.96");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=70.65,122.18");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=17.68,109.76");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=52.91,144.40");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=94.85,23.34");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=75.85,156.42");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=108.40,174.67");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=57.75,126.21");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=117.79,109.94");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=0.32,106.69");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=142.03,11.18");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=67.18,30.53");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=9.94,76.04");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=186.84,5.29");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=192.94,19.41");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=235.60,28.12");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=138.75,153.32");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=57.16,91.60");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=64.23,147.49");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=39.25,125.66");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=24.56,145.79");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=148.63,35.79");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=99.99,219.15");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=145.08,144.94");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=0.42,88.11");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=121.18,77.80");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=71.33,4.55");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=57.27,36.08");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=33.91,18.04");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=33.18,62.54");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=79.84,15.75");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=142.98,67.54");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=173.11,25.71");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=195.53,105.76");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=76.45,57.32");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=112.53,33.66");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=17.43,23.39");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=22.32,235.80");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=88.99,108.32");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=17.62,179.14");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=136.54,171.63");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=79.25,26.43");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=28.91,87.93");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=90.15,89.43");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=87.41,37.99");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=20.71,51.60");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=124.41,64.85");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=98.71,43.47");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=169.82,59.34");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=188.63,85.11");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=157.48,68.20");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=132.65,58.73");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=100.75,196.33");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=6.68,115.12");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=16.50,223.81");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=89.38,134.98");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=46.95,86.82");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=81.59,66.74");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=74.43,180.19");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=22.15,165.38");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=87.80,56.33");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=27.68,42.47");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=4.77,54.00");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=48.36,67.55");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=158.73,0.61");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=258.97,83.46");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=175.64,81.75");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=136.67,135.75");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=133.56,73.18");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=75.10,98.21");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=52.00,52.63");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=125.59,152.57");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=153.95,116.49");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=105.10,157.51");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=91.32,177.94");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=8.36,94.36");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=22.15,125.03");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=40.02,46.93");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=104.07,84.31");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=48.21,10.96");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=15.09,61.04");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=118.24,50.13");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=265.02,99.53");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=182.29,14.39");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=105.03,65.77");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=113.87,5.19");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=94.65,67.81");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=50.72,202.68");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=28.21,193.37");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=61.56,186.82");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=34.68,135.46");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=30.03,174.33");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=63.31,52.64");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=0.18,176.23");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=70.51,85.64");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=22.34,2.18");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=2.63,66.84");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=89.43,166.11");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=102.15,6.81");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=215.38,70.27");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=177.06,2.49");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=133.52,19.47");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=8.29,35.11");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=135.41,108.80");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=30.27,118.89");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=35.37,73.30");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=169.98,72.01");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=150.44,208.42");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=118.72,136.29");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=117.75,123.91");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=11.11,199.21");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=134.45,89.72");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=44.95,101.41");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=104.95,53.94");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=100.06,144.58");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=114.19,94.03");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=232.58,74.31");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=243.22,4.19");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=187.33,44.90");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=24.84,69.58");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=56.00,212.85");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=10.95,167.63");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=59.82,174.16");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=117.04,196.16");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=85.32,123.16");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=96.94,118.29");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=72.11,200.98");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=37.60,150.48");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=77.70,45.77");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=78.39,112.37");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=9.96,10.85");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=56.23,158.85");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=145.08,101.58");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=153.32,81.04");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=211.31,49.18");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=189.73,130.80");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=49.15,132.12");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=46.69,218.97");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=105.24,126.37");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=125.48,212.01");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=21.09,135.13");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=163.40,134.70");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=133.17,120.41");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=119.09,181.01");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=21.34,98.58");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=77.89,77.54");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=62.90,18.87");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=122.58,24.50");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=8.75,145.69");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=208.08,10.01");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=169.35,94.09");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=206.45,26.82");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=160.06,100.86");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=66.81,134.44");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=111.77,207.63");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=17.54,88.06");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=46.99,168.93");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=181.24,71.25");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=161.67,178.14");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=90.80,155.11");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=87.92,75.82");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=24.41,12.32");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=34.16,33.50");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=142.82,45.54");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=128.27,33.57");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=58.76,8.20");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=146.58,21.70");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=243.18,77.87");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=126.70,8.42");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=250.65,100.44");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=88.03,4.66");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=134.51,191.01");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=11.08,131.58");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=84.52,208.91");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=126.90,98.10");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=121.35,169.79");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=100.78,184.00");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=106.96,113.00");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=77.93,169.12");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=138.72,0.79");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=1.51,18.18");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=0.04,1.32");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=110.82,147.06");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=129.96,48.67");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=169.43,110.15");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=219.43,112.84");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=174.45,133.75");
    }

}

