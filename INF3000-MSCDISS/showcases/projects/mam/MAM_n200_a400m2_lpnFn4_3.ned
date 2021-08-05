
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn4_3
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
        @display("p=141.69,185.25");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=98.07,209.38");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=143.01,144.28");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=150.89,158.13");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=61.20,174.43");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=66.01,97.53");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=57.36,111.15");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=40.76,89.85");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=27.61,81.90");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=58.01,56.18");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=50.24,45.71");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=25.19,25.97");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=69.73,33.90");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=71.12,67.89");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=142.96,39.03");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=114.34,31.93");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=99.95,19.15");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=58.65,21.57");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=100.75,39.31");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=22.64,48.84");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=32.63,10.19");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=42.82,4.97");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=51.74,31.19");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=45.37,20.45");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=38.11,33.40");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=37.03,125.39");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=30.96,147.17");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=69.24,182.54");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=22.80,153.12");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=15.80,105.21");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=98.10,151.82");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=84.90,71.32");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=97.09,56.48");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=190.80,46.52");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=172.23,123.52");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=242.54,128.71");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=209.14,59.08");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=163.21,68.79");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=179.62,11.13");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=174.91,20.53");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=250.60,32.27");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=161.26,40.78");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=204.88,72.82");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=285.10,97.20");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=279.82,183.08");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=275.01,226.35");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=257.82,210.05");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=225.65,292.00");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=171.26,308.20");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=106.25,129.19");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=158.55,125.75");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=140.02,286.48");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=123.02,141.46");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=192.52,169.65");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=65.73,80.73");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=135.19,25.94");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=34.02,165.86");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=30.85,66.06");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=15.15,128.98");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=132.67,82.69");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=48.70,74.17");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=82.99,48.03");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=141.88,91.24");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=142.41,76.24");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=134.37,2.80");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=123.64,125.54");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=109.24,46.32");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=129.93,57.18");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=86.03,32.29");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=116.07,21.30");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=69.53,16.83");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=118.50,3.88");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=103.96,69.33");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=33.76,20.80");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=128.35,38.33");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=62.67,151.41");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=76.68,163.55");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=77.69,223.35");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=5.03,200.80");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=79.15,146.04");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=50.90,166.18");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=134.56,46.76");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=161.83,87.59");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=160.84,20.95");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=173.87,208.48");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=247.06,186.82");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=287.76,64.45");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=210.60,105.38");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=219.99,8.98");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=186.76,29.90");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=252.07,132.14");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=218.00,39.81");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=201.64,28.58");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=289.53,135.50");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=322.07,103.75");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=341.24,197.44");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=331.92,149.20");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=297.88,307.36");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=122.23,347.20");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=172.25,81.73");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=108.92,259.11");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=111.91,218.56");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=178.72,66.05");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=86.41,153.47");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=147.50,207.11");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=127.86,95.55");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=58.46,129.18");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=42.04,141.17");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=104.81,119.27");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=145.95,52.03");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=14.95,67.30");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=16.59,117.21");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=10.53,55.65");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=75.90,77.51");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=162.40,3.02");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=115.89,118.11");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=89.27,85.12");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=125.52,66.59");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=90.42,2.72");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=39.52,44.64");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=57.17,87.31");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=6.73,43.32");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=31.04,116.10");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=3.15,107.41");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=49.03,122.61");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=135.24,116.29");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=80.87,134.25");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=80.58,90.92");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=58.21,214.66");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=89.87,170.51");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=168.03,172.20");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=174.15,51.50");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=88.16,114.45");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=148.00,3.82");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=212.80,145.73");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=255.87,110.76");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=264.74,54.60");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=236.52,100.99");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=198.33,3.65");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=147.90,18.68");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=237.21,37.13");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=232.35,85.43");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=199.88,87.47");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=264.19,142.70");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=216.15,183.24");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=317.30,315.22");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=251.85,271.36");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=252.05,234.03");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=197.38,319.09");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=116.57,88.75");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=163.36,185.06");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=121.16,172.30");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=130.47,176.93");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=108.43,167.11");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=69.87,204.26");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=57.91,1.19");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=76.82,113.84");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=109.03,81.46");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=25.56,91.74");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=41.45,61.54");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=109.37,105.08");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=7.76,0.95");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=102.64,6.94");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=140.15,104.22");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=122.64,13.75");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=76.32,55.67");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=124.62,29.04");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=77.10,10.25");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=89.61,13.76");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=11.11,91.20");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=75.73,0.26");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=70.97,45.66");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=18.66,15.16");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=101.20,88.27");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=1.99,20.69");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=93.20,187.02");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=89.52,128.35");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=63.37,139.87");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=0.01,120.22");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=6.06,75.85");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=97.66,163.18");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=115.47,133.32");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=99.72,138.78");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=196.79,144.43");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=242.25,111.12");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=230.28,70.34");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=168.47,107.40");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=215.92,71.08");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=167.13,13.14");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=232.08,17.51");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=278.74,0.70");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=213.91,85.10");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=238.07,58.10");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=326.92,25.45");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=230.05,179.13");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=273.40,130.07");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=178.70,168.70");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=238.12,288.42");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=78.46,281.11");
    }

}

