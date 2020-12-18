
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn4_0
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
            @display("p=100,100");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=133.47,150.47");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=196.04,167.98");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=225.92,78.33");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=238.75,59.11");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=179.04,131.07");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=118.14,116.88");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=55.40,46.64");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=96.60,46.57");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=29.24,20.20");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=4.99,41.53");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=2.88,68.43");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=94.00,79.71");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=134.76,54.47");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=128.25,42.22");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=107.47,43.64");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=98.96,63.15");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=141.28,83.05");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=140.17,41.82");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=214.78,6.15");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=262.80,27.76");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=239.68,20.33");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=205.19,34.63");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=186.95,62.31");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=141.79,7.58");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=173.31,49.48");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=184.31,96.70");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=157.57,216.09");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=195.63,188.09");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=208.58,208.51");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=179.99,186.38");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=244.63,119.09");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=288.27,126.66");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=322.00,145.81");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=362.09,142.76");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=357.09,153.79");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=332.01,200.07");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=395.99,228.25");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=364.12,308.13");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=308.72,330.60");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=292.78,355.15");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=236.08,348.49");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=256.74,370.59");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=212.46,387.23");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=177.10,377.22");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=184.63,395.06");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=270.49,373.62");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=248.87,398.00");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=257.79,348.50");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=226.38,366.93");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=65.10,133.06");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=207.10,117.84");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=206.44,135.33");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=213.66,99.75");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=302.76,112.56");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=160.81,132.23");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=33.87,162.13");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=35.23,37.33");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=23.70,44.80");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=42.70,50.22");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=62.82,97.71");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=7.11,54.58");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=35.69,75.39");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=110.55,73.50");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=194.98,21.15");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=115.63,86.16");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=145.06,60.72");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=94.28,119.56");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=207.39,55.42");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=230.42,30.70");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=248.34,42.52");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=195.66,100.59");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=224.60,16.06");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=243.46,94.22");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=165.19,29.14");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=200.61,7.04");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=245.54,167.54");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=135.98,140.04");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=269.33,226.29");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=255.69,252.43");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=145.75,250.03");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=220.24,129.91");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=265.72,143.69");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=387.43,219.15");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=266.84,114.81");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=302.14,124.21");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=374.32,167.97");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=300.48,240.80");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=388.21,251.80");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=286.70,332.65");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=257.30,310.73");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=244.21,339.05");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=219.43,336.40");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=257.62,359.09");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=95.63,323.78");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=139.87,350.33");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=204.55,362.35");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=208.89,313.80");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=334.35,318.29");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=229.32,380.75");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=86.32,165.04");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=49.22,189.51");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=113.89,197.60");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=155.70,46.14");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=291.65,99.61");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=115.16,162.41");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=192.53,78.91");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=20.45,133.28");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=124.63,32.49");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=6.80,31.21");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=53.31,57.42");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=8.35,113.84");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=83.58,68.79");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=133.85,69.66");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=153.39,16.19");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=117.29,1.00");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=72.29,33.17");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=84.89,32.26");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=148.86,36.69");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=174.14,88.07");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=237.72,104.13");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=213.18,73.35");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=143.28,103.90");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=263.85,98.13");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=152.60,0.59");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=213.26,88.40");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=132.81,166.78");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=233.83,249.89");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=198.18,226.28");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=214.58,219.75");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=198.69,201.40");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=187.69,136.77");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=331.02,104.19");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=326.59,167.60");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=311.50,77.80");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=334.49,157.31");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=364.31,261.71");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=387.48,264.95");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=305.28,310.76");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=274.90,352.10");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=348.93,321.10");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=279.79,267.21");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=334.95,365.11");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=177.35,345.80");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=195.40,280.56");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=217.94,351.31");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=207.53,297.80");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=232.97,358.62");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=210.48,267.55");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=300.20,320.28");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=161.02,170.09");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=100.40,148.62");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=165.34,207.45");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=191.83,147.10");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=176.70,69.49");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=186.75,110.93");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=107.23,177.65");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=50.95,36.19");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=124.00,10.48");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=82.89,21.45");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=21.57,94.44");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=61.00,5.21");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=158.10,96.21");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=129.50,79.81");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=163.32,109.08");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=98.14,13.03");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=74.71,79.58");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=139.73,25.76");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=123.49,62.60");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=200.46,68.59");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=287.35,17.82");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=242.33,32.11");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=281.74,69.15");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=242.06,1.47");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=183.80,40.23");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=149.95,89.01");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=155.20,159.65");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=169.86,123.02");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=222.38,162.72");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=213.57,170.71");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=251.84,179.20");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=180.98,151.66");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=347.76,88.99");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=357.90,173.63");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=352.86,122.90");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=309.38,172.29");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=336.99,211.24");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=399.88,175.79");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=388.81,283.01");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=347.18,331.68");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=198.36,386.72");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=253.53,388.21");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=245.22,363.87");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=191.78,374.74");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=113.85,303.92");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=111.98,389.37");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=321.31,373.84");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=302.69,384.31");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=224.20,324.75");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=304.12,372.30");
    }

}

