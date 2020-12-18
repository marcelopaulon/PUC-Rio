
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn8-8
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
        @display("p=492.00,8.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=475.39,5.52");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=521.95,81.68");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=547.12,99.84");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=494.37,153.03");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=499.67,174.27");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=475.69,136.54");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=426.27,109.87");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=362.02,63.24");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=326.11,4.83");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=309.07,38.32");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=343.58,72.13");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=350.14,84.59");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=301.38,91.85");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=338.68,84.47");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=375.35,137.88");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=348.12,110.95");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=279.84,54.29");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=259.85,61.56");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=259.27,42.26");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=248.01,29.97");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=406.46,62.49");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=471.70,124.25");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=502.64,122.00");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=464.18,150.55");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=513.91,73.00");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=443.05,25.04");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=472.37,56.26");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=504.11,80.57");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=529.31,133.66");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=529.84,240.87");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=413.28,162.96");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=395.47,151.14");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=312.67,10.84");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=289.28,12.64");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=291.60,67.64");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=267.23,25.05");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=357.67,118.79");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=273.94,119.59");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=409.77,82.33");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=352.67,197.09");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=404.15,138.22");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=298.32,57.80");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=237.54,32.63");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=214.91,17.70");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=255.89,76.26");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=414.64,101.48");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=521.16,153.43");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=454.09,151.88");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=505.95,98.61");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=469.92,44.88");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=381.30,23.75");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=455.59,97.92");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=583.89,135.56");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=494.04,186.12");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=487.99,142.48");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=481.19,120.83");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=444.68,110.94");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=376.98,11.23");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=317.74,46.99");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=331.22,69.50");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=322.04,79.33");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=387.47,137.89");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=335.91,121.29");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=295.12,155.79");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=396.88,127.83");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=341.98,148.77");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=237.57,9.86");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=177.26,94.52");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=194.85,3.75");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=242.71,82.88");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=321.06,91.38");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=502.18,109.81");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=466.34,93.19");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=505.09,211.30");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=544.81,7.01");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=386.84,39.29");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=548.19,112.82");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=558.56,105.03");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=442.14,187.40");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=537.33,108.30");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=456.38,192.65");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=423.17,130.54");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=397.70,73.41");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=366.15,34.08");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=344.81,11.18");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=370.56,70.76");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=254.92,97.83");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=306.76,79.81");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=272.09,136.78");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=406.20,193.42");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=301.40,112.38");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=310.65,64.82");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=335.42,34.96");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=188.96,80.26");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=270.92,36.22");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=426.50,66.73");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=475.16,85.29");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=533.14,146.90");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=492.13,58.78");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=516.76,21.57");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=456.16,17.51");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=598.22,105.64");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=543.76,88.26");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=514.71,172.02");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=522.37,206.02");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=424.44,219.21");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=484.84,44.61");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=366.81,127.62");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=381.14,84.78");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=274.58,72.00");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=288.55,128.61");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=298.14,132.46");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=338.54,133.40");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=355.02,73.27");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=363.55,163.66");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=267.29,107.95");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=335.35,16.19");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=235.88,59.41");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=255.68,142.18");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=254.43,119.46");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=470.18,26.34");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=562.53,163.26");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=587.81,150.01");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=534.59,161.54");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=487.13,18.95");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=546.84,33.45");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=541.70,140.78");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=615.50,145.86");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=543.92,154.02");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=464.28,168.43");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=432.02,156.25");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=432.36,120.34");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=317.65,29.49");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=334.83,100.46");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=304.97,20.00");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=356.64,41.68");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=350.45,140.99");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=214.82,46.95");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=373.87,99.85");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=354.18,128.49");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=310.18,125.43");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=291.52,102.80");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=234.38,44.68");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=226.50,6.75");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=242.74,50.94");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=387.54,51.87");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=445.84,172.17");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=512.65,144.03");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=543.34,129.86");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=394.97,4.10");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=500.03,34.85");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=508.44,42.57");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=572.32,111.09");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=535.04,77.06");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=490.04,198.84");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=518.50,191.76");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=451.70,161.60");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=365.38,82.82");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=394.99,17.95");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=282.73,44.49");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=361.46,99.87");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=374.06,173.75");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=216.58,97.49");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=282.06,86.11");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=337.20,158.55");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=373.87,195.02");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=191.05,20.52");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=344.08,58.74");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=218.54,63.90");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=232.92,88.22");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=397.16,55.50");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=391.29,110.93");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=455.99,70.28");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=468.84,244.51");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=410.49,30.54");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=430.36,49.41");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=506.16,57.00");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=628.28,74.07");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=441.13,208.08");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=482.37,207.87");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=396.25,189.27");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=502.43,139.95");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=371.75,118.18");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=353.45,3.92");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=351.55,32.23");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=277.23,94.98");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=329.11,151.41");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=240.31,168.39");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=313.22,104.26");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=367.38,144.49");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=396.72,161.47");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=220.00,130.45");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=201.44,91.97");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=173.92,26.40");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=158.25,49.61");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=454.32,130.08");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=453.70,119.37");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=487.80,87.60");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=442.93,144.10");
    }

}

