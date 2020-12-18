
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn8_4
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
        @display("p=112.49,59.65");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=93.04,53.29");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=122.90,15.09");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=53.96,7.99");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=43.92,32.64");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=9.70,112.74");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=7.58,73.10");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=4.22,130.92");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=46.74,184.46");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=88.57,234.40");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=88.54,249.13");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=170.35,243.12");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=160.34,247.45");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=214.25,258.11");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=124.55,299.01");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=155.45,234.36");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=118.16,234.29");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=115.74,187.46");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=135.85,100.91");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=170.25,80.71");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=114.92,105.13");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=99.40,68.70");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=31.02,98.99");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=38.41,82.52");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=145.43,72.46");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=132.34,81.52");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=122.10,28.46");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=166.95,62.75");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=82.47,83.36");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=76.10,55.28");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=18.65,131.09");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=49.92,120.12");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=102.31,130.27");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=30.38,155.06");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=100.58,256.89");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=170.95,216.87");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=163.61,294.98");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=113.56,203.92");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=274.12,190.05");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=65.36,356.94");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=158.37,215.25");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=97.20,178.31");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=107.51,118.87");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=112.70,89.03");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=195.70,100.92");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=143.92,58.73");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=62.94,94.63");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=46.18,92.35");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=6.03,177.00");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=134.14,10.93");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=37.92,64.49");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=100.42,147.01");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=165.08,25.64");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=12.72,36.37");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=8.44,99.31");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=24.07,86.24");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=24.68,53.32");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=5.97,147.15");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=59.56,177.67");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=93.30,205.26");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=164.57,190.64");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=148.10,290.69");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=166.99,269.31");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=157.20,258.62");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=155.34,364.61");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=180.03,256.84");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=109.98,318.26");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=53.75,218.84");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=145.52,90.66");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=182.16,71.55");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=135.23,48.69");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=52.39,69.90");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=55.79,57.59");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=37.77,51.46");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=184.85,113.52");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=128.73,61.66");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=90.36,24.20");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=119.44,48.31");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=73.65,15.05");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=46.43,108.73");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=30.49,184.87");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=18.83,74.51");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=89.65,155.63");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=44.83,206.96");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=58.90,199.97");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=88.34,273.50");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=188.77,243.96");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=136.19,211.26");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=228.67,269.77");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=126.59,329.29");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=210.48,191.58");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=61.98,308.12");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=183.80,225.84");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=52.11,142.45");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=156.73,63.60");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=148.29,49.73");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=138.89,31.04");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=69.91,66.62");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=69.87,103.11");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=114.20,77.47");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=167.77,47.46");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=9.00,57.80");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=124.49,2.13");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=4.35,7.16");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=98.72,7.18");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=54.90,41.17");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=10.97,162.92");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=3.69,196.51");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=67.78,218.56");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=90.19,222.55");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=66.86,186.20");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=257.67,213.13");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=240.64,274.02");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=231.15,228.55");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=106.88,343.63");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=147.42,272.64");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=113.58,157.24");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=80.00,173.69");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=139.18,164.21");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=226.55,90.79");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=152.29,101.15");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=191.63,66.17");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=25.10,139.13");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=35.07,17.20");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=52.89,154.09");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=104.45,50.77");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=80.33,118.61");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=108.37,39.53");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=30.59,39.87");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=92.94,34.28");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=62.17,73.00");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=29.73,75.46");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=95.00,165.67");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=61.08,241.65");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=133.99,201.23");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=148.17,245.56");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=191.00,256.05");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=116.71,172.35");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=260.78,324.90");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=146.26,393.18");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=135.59,285.50");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=134.01,305.79");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=200.64,197.45");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=116.67,134.64");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=214.85,46.61");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=159.31,74.22");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=164.07,102.44");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=58.95,107.92");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=76.87,138.29");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=7.21,85.88");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=111.81,20.47");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=59.05,124.23");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=85.62,4.31");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=33.77,0.24");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=64.48,29.06");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=29.61,202.73");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=7.04,20.12");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=69.27,128.09");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=122.31,122.79");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=54.14,272.26");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=100.58,236.73");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=191.08,190.62");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=227.67,241.90");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=215.74,306.14");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=134.76,367.46");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=91.74,290.11");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=107.43,225.99");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=153.39,162.86");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=149.46,123.37");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=215.81,135.89");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=30.18,113.53");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=91.37,91.68");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=48.96,130.51");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=54.60,82.80");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=175.23,103.49");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=69.34,149.45");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=76.82,27.29");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=198.43,12.89");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=74.58,39.83");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=27.06,26.06");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=86.88,64.32");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=18.38,102.26");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=32.41,170.50");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=38.69,272.81");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=19.20,221.17");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=86.95,335.11");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=135.45,222.60");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=190.92,296.76");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=257.73,236.70");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=122.54,310.13");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=183.16,182.96");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=143.68,235.40");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=158.53,177.46");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=101.45,188.26");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=226.20,114.31");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=79.81,73.70");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=169.03,115.05");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=18.80,16.14");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=70.45,81.58");
    }

}

