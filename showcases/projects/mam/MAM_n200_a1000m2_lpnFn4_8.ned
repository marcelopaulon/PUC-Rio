
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn4_8
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
        @display("p=74.21,107.85");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=91.27,67.10");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=34.17,42.08");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=30.16,63.85");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=19.61,64.21");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=99.08,112.03");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=76.05,122.31");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=120.01,177.04");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=114.31,143.54");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=50.19,151.41");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=46.33,59.80");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=91.74,77.98");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=156.15,99.30");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=212.24,158.67");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=220.90,168.76");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=288.15,98.84");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=325.58,115.16");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=338.85,64.26");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=332.23,44.65");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=317.72,79.87");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=318.34,14.73");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=270.62,98.28");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=292.13,4.27");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=364.37,7.68");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=345.00,12.84");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=398.66,49.39");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=386.59,50.55");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=369.89,79.20");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=432.40,34.76");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=453.70,72.93");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=385.21,14.75");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=365.13,18.41");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=421.44,33.02");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=442.98,18.47");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=476.40,96.26");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=509.98,102.74");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=507.87,37.67");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=422.81,63.12");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=430.16,51.17");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=502.07,14.54");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=448.49,90.88");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=426.20,119.90");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=495.24,131.47");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=498.52,106.12");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=501.17,148.98");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=500.42,122.46");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=527.50,123.16");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=541.05,110.13");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=623.37,156.75");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=89.35,92.19");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=26.30,154.05");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=8.30,114.56");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=74.85,44.44");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=20.91,93.62");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=25.43,37.07");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=126.87,147.45");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=91.58,133.10");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=116.77,199.83");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=134.21,72.38");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=0.28,133.51");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=80.89,81.94");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=148.31,51.58");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=137.80,170.09");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=253.87,167.00");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=273.64,211.97");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=307.69,163.75");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=287.05,42.43");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=249.55,19.79");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=263.06,41.29");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=361.26,146.02");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=297.92,16.13");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=264.10,145.80");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=309.20,22.97");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=343.30,99.13");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=374.75,70.32");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=352.47,54.21");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=350.87,74.98");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=463.54,87.40");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=396.24,62.74");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=539.59,95.29");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=340.49,33.04");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=332.47,4.87");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=410.60,27.66");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=475.02,75.29");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=495.36,164.09");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=493.71,83.13");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=502.64,63.01");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=405.32,13.27");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=515.02,13.36");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=488.79,24.60");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=488.19,93.14");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=459.48,131.14");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=438.01,209.70");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=466.53,55.65");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=508.62,139.86");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=506.28,187.78");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=526.52,168.56");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=596.08,83.09");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=625.13,230.21");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=108.49,94.54");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=93.39,36.22");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=162.34,1.40");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=57.95,33.44");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=31.10,111.71");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=12.07,99.55");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=65.33,137.89");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=7.75,69.26");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=92.29,149.49");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=34.73,171.35");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=28.15,195.19");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=45.74,33.31");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=63.76,103.83");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=187.71,91.97");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=195.18,224.53");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=267.73,180.18");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=317.62,33.43");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=286.31,86.68");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=294.10,61.97");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=369.33,127.23");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=309.85,65.74");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=361.09,83.96");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=319.29,175.24");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=277.13,61.54");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=389.25,28.64");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=399.72,78.55");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=484.04,51.04");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=376.43,89.43");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=316.62,51.92");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=470.86,106.47");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=482.16,137.55");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=471.78,29.12");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=393.88,107.66");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=447.70,55.58");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=397.41,38.45");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=419.28,79.32");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=497.12,176.21");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=493.92,43.96");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=393.38,130.70");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=412.33,39.66");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=465.62,67.89");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=443.66,131.80");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=421.63,190.47");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=459.98,115.35");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=550.42,28.23");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=558.09,183.64");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=511.58,82.94");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=593.65,153.99");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=551.43,86.00");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=612.73,134.60");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=119.33,118.62");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=39.67,155.88");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=106.11,58.38");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=3.34,42.42");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=68.48,76.30");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=83.67,51.50");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=105.73,44.83");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=122.32,37.61");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=87.20,199.07");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=112.47,214.53");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=61.96,148.10");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=54.27,20.39");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=53.42,47.97");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=134.70,98.90");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=292.12,142.51");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=280.02,228.35");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=325.50,166.00");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=347.68,190.71");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=303.14,39.01");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=267.02,64.59");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=238.41,92.13");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=232.07,38.44");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=180.99,142.06");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=232.21,22.85");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=457.22,15.71");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=385.47,38.90");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=417.38,13.40");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=371.66,60.01");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=416.53,144.11");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=444.23,39.00");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=487.12,66.00");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=357.14,43.56");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=427.41,16.67");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=349.33,0.87");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=383.03,63.18");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=501.41,75.16");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=582.07,146.56");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=526.92,71.98");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=498.20,94.47");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=471.16,128.34");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=568.82,63.34");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=422.28,92.48");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=368.84,183.06");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=431.11,142.59");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=546.83,43.53");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=529.50,235.05");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=525.64,153.67");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=472.37,206.38");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=516.17,123.40");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=585.56,159.96");
    }

}

