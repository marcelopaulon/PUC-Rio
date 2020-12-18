
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn12_8
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
        @display("p=160.57,26.20");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=147.23,20.76");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=192.80,79.11");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=222.84,74.20");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=238.88,148.84");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=270.20,148.02");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=320.43,67.28");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=339.99,124.94");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=316.41,153.87");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=277.94,106.69");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=306.10,108.13");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=398.64,91.12");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=394.18,177.58");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=387.42,103.90");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=364.28,156.39");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=379.15,187.16");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=116.09,3.45");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=229.93,84.46");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=220.83,21.77");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=123.36,147.31");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=231.61,54.12");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=247.58,190.34");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=238.03,224.92");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=291.63,67.71");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=376.65,114.53");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=288.85,102.51");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=241.82,107.59");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=208.17,98.16");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=392.72,20.68");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=353.46,201.32");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=392.59,39.96");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=357.20,174.22");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=343.95,227.87");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=193.15,131.67");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=212.72,56.72");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=100.90,85.47");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=224.60,167.73");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=193.31,23.26");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=153.74,117.82");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=233.85,126.79");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=352.42,77.04");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=375.45,129.70");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=277.89,210.93");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=305.61,91.36");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=265.93,189.35");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=318.42,132.29");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=345.88,111.95");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=365.78,107.07");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=337.85,178.17");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=382.36,172.51");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=82.08,81.85");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=193.05,66.62");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=157.03,50.45");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=127.86,8.95");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=214.54,82.67");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=291.04,201.10");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=226.65,146.38");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=268.77,62.28");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=363.18,119.71");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=283.38,132.69");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=279.34,86.43");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=227.42,100.57");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=376.31,150.48");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=395.49,189.27");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=384.84,94.10");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=394.04,238.16");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=345.53,191.44");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=122.28,105.48");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=120.68,71.81");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=233.60,21.41");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=127.40,89.53");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=248.70,47.54");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=235.75,191.47");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=199.49,183.73");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=354.67,53.14");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=342.89,36.98");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=264.03,156.27");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=299.71,82.16");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=247.54,122.36");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=309.82,64.04");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=357.13,137.64");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=335.40,90.23");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=356.26,187.25");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=399.16,248.78");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=50.67,171.09");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=158.32,12.24");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=63.88,4.34");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=194.20,94.27");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=273.31,127.65");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=235.72,138.30");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=188.18,114.01");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=267.43,8.34");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=369.39,56.45");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=331.45,154.69");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=249.85,58.70");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=256.34,40.04");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=372.71,99.08");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=385.24,199.54");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=395.82,118.60");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=393.29,161.03");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=280.64,182.29");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=139.48,142.04");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=131.77,27.11");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=161.77,37.78");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=165.86,117.01");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=206.25,14.36");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=298.12,169.87");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=331.39,188.15");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=306.76,48.64");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=291.77,125.11");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=335.89,115.22");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=223.64,114.26");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=315.63,76.56");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=337.16,101.33");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=381.35,220.84");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=371.68,80.97");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=346.66,243.92");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=356.57,275.13");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=120.32,53.22");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=176.00,8.67");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=88.08,99.95");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=198.85,56.95");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=268.48,28.19");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=323.09,161.32");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=197.23,119.89");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=335.77,45.92");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=323.74,120.02");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=325.28,197.50");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=311.15,180.85");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=381.09,54.84");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=343.27,151.66");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=369.38,168.94");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=340.65,163.41");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=393.87,143.79");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=373.20,195.52");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=150.92,87.03");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=121.35,21.98");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=74.54,58.84");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=266.27,81.83");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=202.29,72.14");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=285.64,170.80");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=256.55,84.45");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=327.05,53.55");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=271.08,175.47");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=303.30,158.42");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=289.91,159.39");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=341.70,67.09");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=358.96,93.26");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=369.40,219.23");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=321.77,174.07");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=335.40,247.48");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=395.82,208.44");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=129.43,134.53");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=160.91,72.79");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=86.15,48.59");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=222.14,90.90");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=183.30,99.47");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=204.77,170.93");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=248.08,177.56");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=308.01,21.77");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=281.49,153.12");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=260.02,146.59");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=282.70,34.28");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=250.08,136.04");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=378.87,72.81");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=352.60,256.13");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=367.38,21.78");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=385.50,130.64");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=362.94,195.67");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=102.11,112.48");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=175.25,62.56");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=143.57,3.36");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=200.65,108.43");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=211.69,4.97");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=241.81,215.20");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=309.71,225.82");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=398.31,74.35");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=346.78,214.52");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=313.71,240.30");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=292.50,93.03");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=311.58,11.04");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=317.90,100.47");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=383.05,244.28");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=350.97,124.65");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=291.58,144.55");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=295.32,236.43");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=153.05,102.52");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=169.01,52.92");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=137.68,93.84");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=175.11,142.97");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=135.69,103.82");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=183.93,159.48");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=213.11,135.28");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=305.01,33.25");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=272.53,72.48");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=310.63,125.78");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=269.64,118.00");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=353.28,147.54");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=363.81,38.07");
    }

}

