
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn8_1
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=70.71,192.46");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=79.63,133.77");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=36.52,85.01");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=48.02,96.69");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=67.59,154.50");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=100.87,75.37");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=106.13,90.89");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=76.64,102.54");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=33.33,159.41");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=46.57,181.67");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=113.91,217.69");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=59.99,300.26");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=83.87,314.69");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=25.95,264.67");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=53.22,244.42");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=104.43,229.15");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=141.72,205.19");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=149.05,195.01");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=115.75,168.21");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=22.75,139.87");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=72.57,87.55");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=52.80,79.13");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=25.76,45.41");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=50.21,22.29");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=93.00,58.82");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=29.20,132.03");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=78.91,54.72");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=24.96,82.45");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=95.01,164.83");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=29.49,205.88");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=63.93,144.01");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=65.15,66.72");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=63.00,113.11");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=59.65,133.04");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=40.51,211.45");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=120.09,250.12");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=136.75,352.15");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=4.90,291.24");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=32.25,277.94");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=128.70,287.23");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=126.29,242.17");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=158.36,132.11");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=229.33,237.97");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=132.93,179.58");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=52.41,213.80");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=158.33,101.68");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=35.83,39.19");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=32.83,22.74");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=123.61,60.72");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=121.69,100.21");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=99.51,128.81");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=50.57,167.09");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=50.58,119.17");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=15.98,13.14");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=87.96,106.86");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=178.71,137.93");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=113.53,32.98");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=137.00,56.71");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=34.99,240.28");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=15.37,166.58");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=186.50,195.00");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=14.28,341.63");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=78.05,342.87");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=1.55,275.37");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=55.83,155.42");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=187.13,274.47");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=181.78,150.60");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=200.56,169.61");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=97.19,147.45");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=31.78,175.73");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=9.00,118.17");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=15.91,37.68");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=94.43,32.35");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=2.11,47.67");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=128.42,78.21");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=75.78,204.01");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=123.29,195.19");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=34.65,119.44");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=8.55,97.92");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=106.74,159.97");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=51.53,59.46");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=64.46,77.71");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=85.03,162.84");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=50.05,226.98");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=85.38,241.11");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=107.12,195.93");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=66.97,287.66");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=47.00,342.52");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=71.22,219.61");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=64.19,259.95");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=138.49,249.00");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=227.21,252.87");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=132.37,223.34");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=18.73,153.98");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=35.49,192.98");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=150.37,36.88");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=122.62,41.92");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=11.98,50.15");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=75.97,10.56");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=173.82,120.29");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=65.02,178.40");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=153.26,165.62");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=88.03,70.34");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=17.83,103.67");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=40.83,231.82");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=8.41,84.54");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=118.57,21.59");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=119.88,70.01");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=20.33,124.58");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=84.91,180.41");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=67.97,245.79");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=24.87,354.48");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=83.87,274.43");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=113.66,275.60");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=14.99,264.18");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=128.62,261.19");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=137.79,189.42");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=187.53,250.02");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=135.33,168.39");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=59.78,90.20");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=36.69,143.91");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=41.19,16.99");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=25.96,95.78");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=63.12,26.93");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=148.79,73.92");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=127.53,160.83");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=77.76,150.39");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=100.19,13.96");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=7.02,74.05");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=3.25,227.63");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=9.70,60.89");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=119.21,121.24");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=26.97,61.51");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=104.46,175.95");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=102.16,215.28");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=93.97,224.92");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=73.29,313.33");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=72.33,277.53");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=59.19,202.08");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=107.43,285.31");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=103.05,266.97");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=148.23,140.13");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=159.91,222.21");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=146.26,255.74");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=5.62,190.22");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=24.43,114.78");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=127.67,31.53");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=22.59,21.04");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=135.82,15.66");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=70.76,127.98");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=78.11,172.84");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=114.28,141.19");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=35.98,54.71");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=138.67,82.58");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=66.76,165.24");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=45.00,34.01");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=103.33,62.03");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=133.84,116.01");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=8.26,143.42");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=98.03,189.83");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=84.01,222.42");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=61.14,269.58");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=97.14,292.94");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=36.92,289.62");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=40.36,334.37");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=104.59,248.56");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=161.32,300.35");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=206.60,256.68");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=143.05,131.11");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=9.46,133.46");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=114.05,57.10");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=64.17,42.29");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=4.71,34.21");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=30.31,7.85");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=38.71,104.09");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=26.61,222.72");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=156.81,118.38");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=133.22,66.92");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=76.94,32.19");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=60.93,236.21");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=125.26,87.76");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=167.14,20.60");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=107.30,23.44");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=6.06,205.55");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=48.95,281.20");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=123.36,135.49");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=33.78,318.60");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=115.50,227.68");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=47.81,264.71");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=54.33,319.79");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=160.08,200.82");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=157.39,259.34");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=217.37,227.56");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=23.57,187.99");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=1.88,174.18");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=132.23,104.08");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=39.25,73.89");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=88.32,6.01");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=89.30,46.05");
    }

}

