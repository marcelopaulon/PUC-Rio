
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn12_7
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
        @display("p=125.50,52.38");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=154.77,123.48");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=254.28,122.00");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=277.15,144.01");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=324.18,210.20");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=370.43,239.05");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=405.43,188.74");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=435.40,132.89");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=394.01,109.00");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=404.17,107.94");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=365.11,120.59");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=452.54,37.00");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=435.75,45.08");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=464.31,35.17");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=459.80,69.11");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=523.47,62.40");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=76.95,134.42");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=175.65,95.00");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=122.48,76.58");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=250.96,45.75");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=229.60,110.26");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=378.01,254.82");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=404.88,267.12");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=448.90,161.32");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=460.26,84.36");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=397.84,99.02");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=418.14,156.94");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=332.73,140.27");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=458.52,25.90");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=472.17,74.70");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=441.39,61.36");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=474.71,135.08");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=501.98,21.08");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=172.09,50.61");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=40.03,44.43");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=118.77,119.29");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=291.95,66.03");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=246.65,133.30");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=337.09,294.08");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=315.73,300.14");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=384.42,133.43");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=466.20,55.81");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=377.13,104.52");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=425.68,116.00");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=438.63,100.71");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=476.39,38.04");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=395.70,132.12");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=522.48,22.56");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=367.52,73.57");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=527.92,33.22");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=112.91,158.28");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=137.04,71.06");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=144.90,119.29");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=267.05,220.61");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=352.29,118.95");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=308.13,261.29");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=305.66,281.03");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=381.48,150.48");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=506.55,183.03");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=351.85,81.39");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=366.21,21.56");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=297.65,185.56");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=456.19,12.68");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=406.98,50.92");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=410.33,36.09");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=496.84,61.29");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=582.21,109.68");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=109.05,85.05");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=210.35,94.73");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=195.75,80.84");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=216.36,80.01");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=302.29,165.32");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=317.83,196.96");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=363.15,227.13");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=404.15,165.45");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=445.08,138.35");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=421.28,37.14");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=476.50,107.92");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=380.39,122.15");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=378.28,22.48");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=364.33,10.63");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=507.34,111.93");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=427.92,83.65");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=541.82,20.28");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=95.07,108.80");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=224.75,51.59");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=158.90,87.02");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=290.61,118.14");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=332.46,126.44");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=279.34,132.23");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=344.36,266.17");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=385.34,211.72");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=353.92,94.89");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=364.29,198.86");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=448.96,83.72");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=271.24,110.52");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=482.44,56.03");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=438.68,2.74");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=479.52,4.50");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=544.59,34.88");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=562.37,75.34");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=36.03,168.53");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=149.03,133.44");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=148.02,90.33");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=180.71,110.76");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=328.45,115.40");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=278.96,284.19");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=466.73,223.24");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=417.67,169.01");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=450.40,107.89");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=461.04,153.05");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=367.29,47.03");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=423.72,190.66");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=523.81,49.78");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=483.58,97.26");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=478.57,28.17");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=472.03,86.36");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=597.58,53.42");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=141.81,141.31");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=223.21,69.52");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=207.20,153.96");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=215.68,144.99");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=240.25,150.93");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=287.00,208.23");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=343.88,192.54");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=347.47,204.17");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=488.84,77.86");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=396.33,38.47");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=414.22,200.43");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=384.31,82.42");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=517.63,12.77");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=381.14,60.90");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=415.47,94.93");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=533.59,135.73");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=490.45,121.69");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=148.13,75.48");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=133.29,89.96");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=162.47,134.32");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=233.91,36.12");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=263.52,130.28");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=256.18,251.06");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=414.17,252.99");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=372.74,173.14");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=476.65,168.23");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=338.61,64.13");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=483.97,141.38");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=355.66,31.56");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=517.93,90.00");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=418.03,49.30");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=404.86,65.72");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=382.98,42.90");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=453.86,51.09");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=53.64,120.84");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=118.17,64.90");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=143.17,189.96");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=231.15,98.35");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=324.13,155.71");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=277.14,223.73");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=346.89,237.68");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=441.16,198.85");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=475.60,147.93");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=334.37,187.40");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=429.40,73.51");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=343.95,106.18");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=398.92,78.42");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=413.42,72.17");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=390.34,70.89");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=510.82,45.88");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=551.90,124.93");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=41.63,78.89");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=196.73,10.08");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=135.58,60.64");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=194.65,46.32");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=266.78,173.34");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=368.10,259.86");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=349.89,162.42");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=423.22,143.31");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=518.86,160.76");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=394.43,190.30");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=434.24,178.57");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=424.35,100.79");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=415.51,3.58");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=486.31,21.17");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=422.18,62.20");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=510.94,154.42");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=518.07,72.64");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=104.32,119.29");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=120.29,23.12");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=180.97,61.52");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=303.71,113.11");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=298.94,77.01");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=307.64,246.90");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=427.85,200.29");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=457.69,122.33");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=444.11,181.51");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=360.22,157.15");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=458.55,165.52");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=355.14,218.49");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=465.94,113.50");
    }

}

