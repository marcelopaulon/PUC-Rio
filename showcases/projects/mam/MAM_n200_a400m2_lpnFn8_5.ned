
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn8_5
{
    parameters:
        @display("bgb=400,400;bgg=100,1,grey95;bgu=m");
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=117.88,59.98");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=99.05,26.74");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=69.86,20.35");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=126.99,40.60");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=120.95,75.10");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=149.39,12.14");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=146.69,55.64");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=76.03,82.05");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=27.47,74.51");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=57.38,39.69");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=136.03,75.03");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=122.41,99.15");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=92.20,125.70");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=169.11,132.21");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=201.10,179.03");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=186.20,168.09");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=132.54,196.85");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=45.57,169.21");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=107.89,190.71");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=90.57,109.55");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=46.53,107.23");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=30.65,119.25");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=92.56,188.35");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=125.14,246.21");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=120.18,144.43");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=131.44,61.02");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=3.35,40.97");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=112.25,34.85");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=114.32,14.29");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=186.42,54.06");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=127.94,8.53");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=147.29,38.10");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=115.32,111.41");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=19.63,112.36");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=49.30,61.86");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=154.69,148.03");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=64.52,122.63");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=56.79,216.02");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=149.30,102.76");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=180.67,110.82");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=212.61,231.90");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=174.89,123.48");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=114.92,209.91");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=101.10,160.61");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=132.85,160.49");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=1.74,128.59");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=9.37,81.37");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=94.73,250.53");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=154.86,319.06");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=152.61,82.99");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=101.31,144.20");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=193.46,7.31");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=98.63,77.63");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=215.33,69.29");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=197.82,96.46");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=167.45,5.61");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=166.25,77.49");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=74.57,140.70");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=15.15,37.87");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=86.21,47.50");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=167.50,106.53");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=175.37,64.53");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=49.43,88.25");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=253.42,134.93");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=184.96,145.05");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=192.35,159.43");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=127.84,285.72");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=79.66,159.98");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=119.83,181.83");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=110.25,102.06");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=20.33,125.02");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=62.65,182.77");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=85.21,146.54");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=151.08,218.97");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=55.70,168.65");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=157.97,33.95");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=131.61,30.63");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=95.74,59.67");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=116.09,130.44");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=165.86,52.74");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=121.83,28.28");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=154.48,120.79");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=67.10,75.61");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=3.96,102.76");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=138.18,44.48");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=83.44,58.54");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=133.55,118.47");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=165.04,146.60");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=149.54,70.19");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=175.86,206.59");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=207.70,114.43");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=180.22,219.02");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=9.37,115.58");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=175.81,163.56");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=39.46,76.66");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=54.72,145.31");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=61.27,153.16");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=68.53,165.91");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=161.05,255.34");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=88.26,178.76");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=156.05,44.06");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=69.14,39.04");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=41.62,8.09");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=140.63,108.20");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=101.27,50.83");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=91.96,3.63");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=140.42,129.67");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=86.88,83.60");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=1.31,3.47");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=37.67,135.95");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=156.05,62.35");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=59.74,68.68");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=62.22,90.97");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=220.19,212.08");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=232.34,181.93");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=226.36,233.55");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=104.70,120.98");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=24.76,90.63");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=28.27,143.00");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=152.50,184.81");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=57.75,8.14");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=4.42,164.73");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=75.22,218.90");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=132.07,232.48");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=75.69,6.72");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=189.77,84.97");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=103.73,9.88");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=56.89,21.51");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=193.27,45.35");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=76.86,128.15");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=171.67,41.87");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=220.77,42.54");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=105.77,87.11");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=19.12,62.99");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=65.79,60.20");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=160.23,92.41");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=137.73,2.27");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=22.77,192.72");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=131.16,87.45");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=219.13,161.51");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=224.10,189.61");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=135.12,217.34");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=103.87,241.02");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=163.06,186.51");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=56.98,49.95");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=49.46,32.31");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=82.33,95.81");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=50.72,200.97");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=108.32,263.97");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=52.74,116.92");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=189.94,126.01");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=151.71,2.00");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=35.36,58.08");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=80.15,34.78");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=212.55,94.05");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=182.77,9.21");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=129.69,140.22");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=27.85,132.08");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=60.69,108.05");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=37.31,19.97");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=75.02,52.58");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=200.64,143.79");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=125.12,207.10");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=142.71,197.63");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=108.22,171.77");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=239.12,201.43");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=165.23,226.44");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=111.39,223.88");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=82.65,257.47");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=94.15,208.21");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=82.97,18.05");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=89.63,69.28");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=104.55,133.79");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=125.09,295.89");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=38.20,160.04");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=181.32,133.36");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=31.91,1.30");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=111.38,23.86");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=190.34,31.55");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=170.32,27.93");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=130.87,18.12");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=241.74,44.91");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=112.10,46.59");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=83.34,116.96");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=12.07,9.06");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=201.91,25.21");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=199.17,120.15");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=94.59,152.63");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=135.52,97.22");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=259.02,166.46");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=209.22,255.14");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=108.75,201.06");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=32.56,214.53");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=146.73,268.56");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=90.31,36.55");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=36.62,102.50");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=41.10,123.35");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=82.49,188.56");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=155.58,208.95");
    }

}

