
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn12_0
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=148.52,62.48");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=224.34,47.67");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=237.65,36.84");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=210.19,142.92");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=135.80,162.53");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=118.93,179.49");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=55.19,208.94");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=61.50,217.86");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=25.25,198.02");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=9.27,169.50");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=37.07,184.51");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=63.30,193.33");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=91.80,196.02");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=64.07,127.30");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=63.72,110.47");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=51.25,151.39");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=107.56,92.11");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=135.29,58.93");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=306.06,57.72");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=167.69,13.80");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=225.66,151.10");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=83.35,112.36");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=126.24,241.26");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=126.37,213.41");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=78.08,210.51");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=31.58,166.34");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=18.52,187.89");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=83.51,138.55");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=95.57,149.07");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=79.29,160.40");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=89.79,213.68");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=127.00,117.31");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=10.34,130.12");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=118.17,56.12");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=193.22,111.45");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=201.64,42.56");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=255.89,14.03");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=279.89,110.63");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=153.91,128.99");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=176.15,155.54");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=105.25,226.34");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=85.45,182.72");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=98.74,178.12");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=2.96,201.05");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=42.23,157.09");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=127.68,186.06");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=136.08,149.28");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=46.04,192.43");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=13.44,120.35");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=104.26,136.75");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=43.32,144.72");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=186.26,23.23");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=210.09,49.93");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=262.14,80.58");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=227.37,99.64");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=71.62,141.73");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=72.36,186.15");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=75.45,277.75");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=67.93,230.39");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=39.01,245.88");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=20.21,173.01");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=2.63,270.23");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=20.81,250.54");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=73.89,175.21");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=65.08,96.79");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=136.85,127.04");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=22.46,233.01");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=38.39,81.29");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=119.17,156.59");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=144.60,72.12");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=264.94,45.32");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=294.20,181.42");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=92.01,161.06");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=115.18,222.91");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=5.92,190.77");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=121.64,145.30");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=36.03,196.78");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=76.33,220.61");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=11.04,226.50");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=66.95,248.34");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=106.33,238.17");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=57.31,134.86");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=91.05,51.76");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=49.23,241.83");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=102.48,35.68");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=160.97,39.30");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=214.85,11.38");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=271.42,21.94");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=266.58,174.88");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=145.13,89.65");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=115.32,166.70");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=16.85,155.55");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=135.48,284.71");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=11.34,140.30");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=31.97,112.76");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=34.84,217.52");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=120.22,127.95");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=166.78,234.30");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=42.21,123.11");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=29.85,143.58");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=27.08,60.79");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=51.11,33.50");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=167.12,123.20");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=220.16,61.90");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=211.66,30.07");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=167.17,107.81");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=148.75,179.04");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=125.94,171.89");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=19.73,289.42");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=67.65,258.67");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=30.41,208.49");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=0.49,97.26");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=105.74,151.83");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=84.36,285.27");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=0.13,228.38");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=14.63,107.76");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=66.77,85.20");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=32.02,90.59");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=161.36,60.28");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=149.48,49.56");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=196.68,101.87");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=254.23,34.68");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=224.55,136.31");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=134.06,232.23");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=110.53,212.90");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=103.64,276.99");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=102.31,254.26");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=33.98,230.70");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=100.70,189.20");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=0.48,259.09");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=64.90,170.51");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=77.45,197.72");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=109.23,197.37");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=54.14,105.53");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=27.83,76.90");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=63.39,32.45");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=134.24,105.22");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=205.10,60.81");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=292.75,112.94");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=213.74,198.09");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=178.04,229.51");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=183.36,249.80");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=1.48,212.35");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=25.68,260.84");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=14.58,198.81");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=83.69,231.47");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=47.73,260.54");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=44.08,177.09");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=96.13,262.53");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=84.92,62.07");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=42.09,68.49");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=53.52,181.96");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=86.38,77.37");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=169.15,90.40");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=148.15,101.58");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=296.18,81.18");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=227.32,179.48");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=200.90,176.89");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=194.06,187.99");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=2.96,240.81");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=33.67,267.20");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=48.01,220.88");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=4.77,150.67");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=125.61,203.19");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=42.26,111.47");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=128.97,261.45");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=26.78,154.37");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=144.37,111.52");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=68.23,153.08");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=174.58,115.11");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=102.53,64.86");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=148.18,10.93");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=309.06,3.74");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=211.11,129.06");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=142.48,190.93");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=146.65,233.66");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=19.44,208.80");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=57.88,228.20");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=87.41,267.90");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=12.94,239.86");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=52.38,165.78");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=43.66,209.03");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=165.95,206.87");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=47.89,58.16");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=25.64,26.58");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=135.89,200.34");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=89.56,95.93");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=109.61,10.94");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=228.40,14.81");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=237.83,24.03");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=249.76,117.57");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=155.05,258.55");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=177.34,184.46");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=56.24,276.09");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=35.13,134.71");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=28.81,282.12");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=22.86,124.07");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=105.16,113.19");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=35.97,256.94");
    }

}

