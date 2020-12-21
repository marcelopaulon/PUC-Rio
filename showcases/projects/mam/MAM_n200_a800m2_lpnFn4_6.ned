
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn4_6
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=123.68,67.70");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=177.77,125.66");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=204.04,113.27");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=212.60,177.56");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=270.51,185.72");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=264.96,220.20");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=217.73,304.13");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=201.70,281.73");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=193.94,337.11");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=168.06,382.63");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=118.77,359.94");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=132.61,353.88");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=59.46,333.78");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=5.97,342.22");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=63.09,304.69");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=74.44,206.25");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=81.83,217.57");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=10.34,160.29");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=106.51,163.40");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=36.80,143.99");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=45.90,208.49");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=57.89,286.50");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=97.27,218.56");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=138.19,157.57");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=180.00,143.13");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=202.82,136.19");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=168.76,29.07");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=131.63,26.36");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=101.16,34.18");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=198.04,19.86");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=173.32,76.01");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=184.94,70.54");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=192.38,114.23");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=216.12,130.97");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=235.01,82.14");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=211.62,78.19");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=228.11,50.86");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=188.95,45.90");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=252.32,24.82");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=283.33,20.99");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=371.62,26.95");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=317.90,72.56");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=359.52,27.11");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=393.49,49.29");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=435.78,120.78");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=400.38,156.44");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=304.23,137.94");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=224.59,177.60");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=268.39,202.20");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=30.21,95.76");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=140.29,32.35");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=221.61,101.86");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=208.07,96.86");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=199.81,192.19");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=284.05,158.39");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=255.14,285.88");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=236.99,315.01");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=208.68,312.94");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=140.98,379.91");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=107.45,442.60");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=130.43,441.42");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=162.43,259.83");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=50.44,348.63");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=46.85,415.44");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=144.34,307.70");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=13.41,186.93");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=106.50,180.18");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=26.14,163.29");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=100.80,191.20");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=49.42,151.04");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=94.92,206.57");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=45.10,274.10");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=27.59,196.09");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=118.87,118.14");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=118.98,157.22");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=229.82,189.25");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=103.52,66.91");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=76.75,11.58");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=45.21,52.29");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=165.08,95.27");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=227.91,7.49");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=227.35,67.37");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=268.48,112.25");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=168.09,117.79");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=299.03,153.97");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=260.02,3.15");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=155.23,4.71");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=213.91,22.60");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=264.39,98.12");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=354.85,17.34");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=381.88,33.76");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=315.06,57.91");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=385.50,75.37");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=409.18,55.71");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=466.60,69.94");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=366.47,187.55");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=293.53,129.34");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=313.93,183.74");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=314.14,221.21");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=90.09,102.71");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=145.71,46.68");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=229.27,165.77");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=255.96,116.97");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=261.10,133.72");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=341.26,131.22");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=361.04,199.91");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=185.51,225.76");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=137.83,239.79");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=119.08,399.34");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=205.47,401.05");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=103.92,346.11");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=143.03,340.88");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=80.04,318.36");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=5.39,315.81");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=106.71,302.66");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=36.79,160.06");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=90.16,193.37");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=13.77,100.55");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=146.77,219.33");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=66.35,107.05");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=16.43,242.52");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=31.67,269.37");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=185.95,189.60");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=191.33,141.71");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=227.39,224.45");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=199.48,78.59");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=189.07,81.87");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=137.30,54.36");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=80.64,71.46");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=184.99,34.27");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=145.63,116.70");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=178.19,48.47");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=185.38,60.11");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=238.09,53.54");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=175.32,104.15");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=226.08,89.76");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=211.96,60.98");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=242.00,14.86");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=277.41,61.12");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=266.02,19.77");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=411.35,71.07");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=266.04,39.05");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=458.05,24.73");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=476.91,31.39");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=433.41,61.34");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=416.49,126.48");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=334.81,145.57");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=164.46,165.46");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=232.54,263.01");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=46.95,173.94");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=138.35,140.14");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=131.68,125.26");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=236.71,96.70");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=199.44,214.57");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=317.69,129.70");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=281.34,224.25");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=160.67,302.27");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=205.21,271.57");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=249.11,298.62");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=217.04,435.29");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=169.31,349.66");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=83.72,306.78");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=125.74,272.28");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=44.79,292.02");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=17.98,370.71");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=21.59,281.25");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=125.22,203.44");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=12.48,148.18");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=126.18,177.79");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=69.15,142.86");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=41.64,196.78");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=134.26,294.53");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=81.92,183.88");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=57.03,123.34");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=153.29,159.62");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=161.56,72.66");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=127.24,85.64");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=94.17,60.85");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=80.28,32.37");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=119.53,45.41");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=231.60,32.27");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=118.95,28.46");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=251.93,64.02");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=147.16,192.52");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=150.04,101.37");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=245.45,81.60");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=325.55,57.10");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=126.35,104.27");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=273.28,70.50");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=369.12,14.62");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=344.32,118.30");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=359.57,89.17");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=434.23,32.05");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=372.79,121.16");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=490.96,107.83");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=411.58,149.65");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=355.40,101.40");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=239.08,169.32");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=236.07,251.74");
    }

}

