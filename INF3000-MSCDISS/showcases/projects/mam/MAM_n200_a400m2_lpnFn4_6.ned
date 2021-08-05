
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn4_6
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
        @display("p=122.46,101.51");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=121.32,112.74");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=156.50,160.80");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=176.19,167.20");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=135.51,129.90");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=62.10,101.65");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=56.66,72.74");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=0.29,103.17");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=7.70,118.90");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=48.71,142.41");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=20.70,129.19");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=10.95,181.78");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=36.49,217.73");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=64.35,228.11");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=3.74,295.09");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=27.55,199.90");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=98.74,182.73");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=161.46,145.50");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=167.92,104.65");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=194.15,76.31");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=145.40,92.40");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=145.22,124.07");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=76.86,110.84");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=23.28,38.11");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=61.65,202.26");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=131.15,149.75");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=72.91,194.47");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=120.28,156.63");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=94.65,64.00");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=153.73,81.98");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=126.69,70.84");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=89.85,126.35");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=9.93,96.18");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=79.75,50.83");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=98.86,21.76");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=98.29,8.36");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=1.87,18.91");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=78.06,77.69");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=33.55,105.41");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=42.02,126.78");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=120.06,138.47");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=152.61,49.50");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=161.34,73.79");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=116.46,124.94");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=143.94,165.92");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=216.49,211.15");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=179.54,255.66");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=146.31,267.55");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=171.54,269.72");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=134.38,47.88");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=151.36,174.89");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=92.03,151.84");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=216.95,177.05");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=188.30,211.35");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=187.76,151.84");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=46.92,81.30");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=72.40,68.25");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=61.54,34.37");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=55.01,91.78");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=27.75,114.37");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=66.10,145.23");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=4.15,212.76");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=80.63,206.86");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=28.49,307.74");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=14.04,322.13");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=122.51,219.52");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=29.45,135.31");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=167.57,125.33");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=183.67,173.94");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=179.64,100.22");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=113.43,91.92");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=151.70,136.58");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=42.94,204.31");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=37.87,24.99");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=78.19,184.97");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=127.55,171.83");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=102.52,214.58");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=174.89,193.47");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=105.65,33.31");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=244.98,60.80");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=140.96,66.30");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=111.74,45.03");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=58.97,133.66");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=174.53,49.99");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=67.70,16.16");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=85.73,94.16");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=52.45,4.98");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=85.81,161.97");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=59.81,60.99");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=68.30,123.25");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=131.33,60.73");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=152.99,33.24");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=211.85,10.16");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=105.69,113.81");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=220.31,201.87");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=246.21,210.91");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=171.57,323.26");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=177.99,206.04");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=162.97,329.56");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=19.36,148.21");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=143.68,152.73");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=176.98,144.44");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=195.51,123.05");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=182.40,134.28");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=164.93,86.77");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=63.25,163.03");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=131.20,114.35");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=16.42,111.15");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=16.73,63.66");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=40.02,57.51");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=26.22,58.81");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=48.76,184.00");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=61.78,298.11");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=50.86,237.94");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=86.30,277.11");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=34.75,189.33");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=189.72,163.89");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=215.97,164.62");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=139.65,79.76");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=207.17,49.10");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=155.71,64.50");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=119.62,51.62");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=48.02,47.77");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=6.64,135.23");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=23.53,235.00");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=135.39,221.58");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=65.28,186.53");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=117.08,232.30");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=132.89,104.37");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=98.21,42.19");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=202.61,28.40");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=30.27,155.19");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=0.92,160.99");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=72.52,30.41");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=85.02,41.63");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=16.89,17.19");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=6.62,7.30");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=168.61,60.39");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=27.13,97.12");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=54.52,153.36");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=199.06,145.47");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=217.28,116.43");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=115.78,4.38");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=108.43,79.82");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=111.47,151.08");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=235.72,176.45");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=161.21,257.36");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=193.86,240.91");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=117.50,260.31");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=109.22,58.74");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=130.37,85.18");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=211.67,136.40");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=164.60,241.41");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=176.06,119.75");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=114.69,184.71");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=51.34,111.00");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=23.27,82.67");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=48.04,172.79");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=12.81,203.10");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=38.97,139.99");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=34.63,89.75");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=16.66,258.30");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=49.40,225.39");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=135.81,265.76");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=73.18,334.95");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=38.46,245.15");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=155.32,122.42");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=170.27,183.71");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=207.44,89.90");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=217.83,49.53");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=165.94,8.00");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=157.92,96.29");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=30.02,174.51");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=37.31,13.05");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=128.24,256.26");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=139.74,204.65");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=82.84,259.95");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=93.86,196.41");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=130.06,16.74");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=179.78,31.38");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=186.33,65.01");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=70.70,44.14");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=23.58,72.19");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=88.12,0.25");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=115.97,33.50");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=140.73,9.63");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=60.13,50.74");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=148.80,16.85");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=6.60,65.50");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=2.33,87.43");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=127.17,209.39");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=232.55,85.52");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=146.77,57.67");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=91.48,82.14");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=237.77,162.42");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=143.49,237.18");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=95.07,308.37");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=131.69,285.63");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=129.47,350.73");
    }

}

