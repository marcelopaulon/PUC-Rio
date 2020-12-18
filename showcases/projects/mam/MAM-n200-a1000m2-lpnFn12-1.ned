
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn12-1
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
        @display("p=129.00,490.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=126.25,479.42");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=143.70,417.44");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=199.26,416.32");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=135.07,346.97");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=144.94,341.83");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=154.60,330.14");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=101.94,280.56");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=137.57,257.73");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=144.36,244.30");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=173.56,190.60");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=130.67,119.40");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=135.25,32.11");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=146.37,24.86");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=98.87,26.46");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=37.98,50.46");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=25.96,41.51");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=187.17,516.18");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=146.14,434.03");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=47.17,432.33");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=292.70,449.57");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=176.38,349.70");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=159.50,385.41");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=92.75,340.74");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=105.57,296.49");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=122.67,261.08");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=146.83,213.76");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=135.17,193.85");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=85.78,198.17");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=112.89,38.92");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=197.19,39.30");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=22.37,16.86");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=109.55,80.81");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=36.19,21.24");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=95.48,436.73");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=68.53,486.97");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=219.76,392.47");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=175.31,475.73");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=96.69,289.83");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=108.56,399.76");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=176.31,299.82");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=76.71,248.40");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=125.20,236.85");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=171.86,241.79");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=223.28,138.37");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=135.99,77.81");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=77.00,80.16");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=82.63,51.34");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=171.59,54.77");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=115.45,1.97");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=67.24,22.77");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=169.26,517.21");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=114.07,497.81");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=135.14,397.46");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=179.44,386.74");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=207.43,307.18");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=207.31,274.25");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=138.15,305.90");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=52.74,299.25");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=201.04,232.02");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=157.15,239.21");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=207.93,119.30");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=153.81,134.49");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=90.15,95.49");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=97.11,106.78");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=105.98,47.00");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=26.99,7.92");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=33.23,124.97");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=122.67,508.06");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=171.01,436.27");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=150.74,409.16");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=228.78,367.94");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=79.27,363.02");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=183.04,254.30");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=136.56,374.23");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=85.53,289.51");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=134.52,280.78");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=216.42,217.06");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=149.16,164.36");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=62.91,169.73");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=162.60,11.37");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=206.32,64.36");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=123.19,48.69");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=89.60,125.24");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=9.99,120.49");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=64.28,446.99");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=77.68,480.22");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=171.05,418.28");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=234.70,331.92");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=148.65,319.90");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=72.05,332.38");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=161.99,259.25");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=16.51,280.33");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=194.31,318.75");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=91.40,222.96");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=105.12,140.69");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=144.07,126.99");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=222.86,42.00");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=81.99,30.00");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=75.98,5.38");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=18.17,133.95");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=30.02,75.42");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=180.13,544.57");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=162.40,549.46");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=78.64,406.94");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=225.59,377.64");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=67.30,360.80");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=195.91,354.23");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=193.15,369.55");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=70.26,195.75");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=185.05,189.17");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=160.92,320.57");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=253.41,219.43");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=111.05,62.62");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=54.54,55.52");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=173.47,38.61");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=45.85,65.46");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=47.30,30.33");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=78.02,104.28");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=115.43,587.62");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=127.64,578.33");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=208.70,409.79");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=227.61,423.22");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=166.63,375.00");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=155.31,366.02");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=142.56,390.35");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=119.00,356.02");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=207.03,287.36");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=104.12,332.54");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=188.04,270.52");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=123.48,85.52");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=196.83,104.18");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=174.95,23.99");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=121.21,10.50");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=11.34,45.72");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=65.18,109.52");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=65.19,553.45");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=71.49,523.34");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=200.44,455.27");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=251.39,495.69");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=66.03,416.59");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=151.89,350.07");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=110.64,373.41");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=110.64,274.30");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=135.70,217.58");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=106.19,213.98");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=165.17,174.07");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=133.94,171.27");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=146.94,42.96");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=158.12,34.04");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=51.43,13.69");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=63.08,80.12");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=16.39,65.23");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=146.17,497.79");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=117.58,487.97");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=164.61,409.47");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=225.75,321.50");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=171.37,284.16");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=91.30,300.44");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=125.80,367.72");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=28.79,256.52");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=158.57,206.83");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=131.69,334.02");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=163.66,153.48");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=222.08,81.56");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=228.90,62.14");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=151.35,0.84");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=105.40,3.26");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=87.59,0.38");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=98.77,68.30");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=130.15,465.11");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=107.27,484.51");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=174.50,368.62");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=264.43,427.68");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=148.31,280.83");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=175.31,322.67");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=57.31,338.42");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=93.58,240.42");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=73.59,235.88");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=53.55,242.28");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=212.60,196.76");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=69.30,153.98");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=39.43,39.50");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=134.89,43.18");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=108.04,15.41");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=76.85,60.53");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=64.45,58.86");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=38.19,498.43");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=101.31,518.63");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=93.99,409.31");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=164.46,426.51");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=182.73,310.51");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=205.55,390.54");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=167.53,355.72");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=169.81,270.03");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=85.60,328.76");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=160.02,220.49");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=236.31,265.04");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=86.93,77.30");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=180.81,5.72");
    }

}

