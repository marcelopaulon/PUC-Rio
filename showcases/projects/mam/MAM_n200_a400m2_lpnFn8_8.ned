
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn8_8
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
        @display("p=93.71,277.82");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=98.01,328.94");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=120.58,283.87");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=154.89,323.37");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=97.02,242.13");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=40.98,313.27");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=64.62,274.58");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=32.57,222.82");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=59.50,143.95");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=11.21,105.06");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=0.60,124.92");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=16.81,122.00");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=30.59,110.77");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=98.32,130.24");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=62.89,57.07");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=80.09,49.43");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=85.72,58.43");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=148.96,96.60");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=165.79,145.86");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=207.64,91.30");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=175.29,61.53");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=173.58,121.60");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=86.92,121.31");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=137.52,93.91");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=73.78,368.95");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=117.25,271.75");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=13.56,321.97");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=105.93,263.16");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=219.82,387.94");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=149.03,197.33");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=63.29,344.49");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=53.46,197.05");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=72.41,246.86");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=134.32,136.72");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=85.40,141.07");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=71.14,146.70");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=38.42,176.65");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=4.21,80.32");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=79.43,38.99");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=35.45,52.87");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=23.64,94.35");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=87.56,156.20");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=124.56,94.05");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=109.45,124.44");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=216.88,67.32");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=83.25,79.62");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=186.63,124.57");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=134.17,109.97");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=89.28,20.90");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=112.34,380.27");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=67.79,303.26");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=138.68,345.96");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=148.26,356.76");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=154.30,394.43");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=133.11,243.95");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=28.80,272.94");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=56.11,299.47");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=110.80,170.19");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=59.20,111.91");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=28.36,18.04");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=12.25,34.76");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=22.92,218.40");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=51.65,128.93");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=197.71,139.25");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=42.54,26.62");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=13.07,59.69");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=70.13,100.27");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=183.54,175.05");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=220.59,120.65");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=265.02,110.49");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=232.82,47.85");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=178.49,153.10");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=43.50,118.77");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=190.31,98.59");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=63.57,236.54");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=27.88,248.46");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=102.70,362.31");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=125.14,381.02");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=132.80,360.85");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=105.55,187.26");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=90.17,232.54");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=145.07,226.95");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=48.53,218.27");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=75.45,216.57");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=11.34,69.73");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=29.61,162.80");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=83.53,91.32");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=99.68,173.99");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=51.06,85.82");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=20.23,79.80");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=152.35,26.34");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=90.79,48.91");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=187.51,50.70");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=106.56,77.11");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=211.27,106.86");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=136.92,66.12");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=160.76,186.34");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=90.65,105.07");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=118.75,145.38");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=87.59,299.62");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=117.32,309.94");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=146.14,378.64");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=146.46,301.84");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=122.25,354.90");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=120.13,228.65");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=34.33,323.52");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=15.40,253.69");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=68.85,292.98");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=58.45,77.06");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=11.24,146.24");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=67.95,171.64");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=36.67,139.60");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=23.91,130.19");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=79.44,112.57");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=72.75,65.65");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=117.86,16.18");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=98.35,87.64");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=195.58,80.31");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=167.58,88.83");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=152.21,150.22");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=205.11,65.48");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=120.07,42.13");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=113.24,112.81");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=108.33,61.39");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=83.36,243.29");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=144.54,282.14");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=52.09,314.08");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=179.65,270.49");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=189.89,292.40");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=67.39,262.54");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=83.61,349.59");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=60.37,285.81");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=5.92,260.18");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=77.19,158.36");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=27.55,45.22");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=7.12,175.46");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=48.50,98.13");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=16.48,160.16");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=113.85,136.47");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=94.27,30.46");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=41.39,81.70");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=95.01,76.21");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=159.00,103.58");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=183.79,141.43");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=262.27,62.91");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=161.37,39.14");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=260.11,167.92");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=63.92,208.32");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=139.58,170.57");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=163.57,237.75");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=135.07,301.68");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=24.30,261.68");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=148.03,264.25");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=132.86,317.34");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=82.95,224.55");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=77.41,333.38");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=50.68,340.33");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=51.33,230.11");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=68.76,133.52");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=12.53,16.82");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=23.68,151.33");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=26.68,172.59");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=67.47,188.83");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=145.95,83.27");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=56.44,30.33");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=109.15,34.05");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=163.64,116.59");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=207.53,27.41");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=240.07,178.82");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=225.71,22.18");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=118.07,73.00");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=142.45,216.05");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=149.87,54.76");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=137.44,189.88");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=86.53,268.68");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=179.30,237.94");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=93.53,353.31");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=148.00,334.05");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=200.21,273.32");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=46.11,272.46");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=28.46,346.36");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=83.75,280.28");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=64.85,225.98");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=61.54,93.17");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=21.30,6.69");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=31.63,71.25");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=70.59,123.37");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=39.22,102.42");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=58.55,176.30");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=101.88,15.87");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=147.87,67.48");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=111.44,50.89");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=170.69,75.55");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=194.28,110.13");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=275.92,27.42");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=194.69,14.95");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=231.69,74.51");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=102.70,142.66");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=188.87,64.50");
    }

}

