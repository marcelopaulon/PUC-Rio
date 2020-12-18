
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn8-7
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
        @display("p=80.00,219.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=153.50,260.16");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=104.02,240.48");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=180.55,249.93");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=186.61,271.91");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=219.79,178.47");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=262.08,223.55");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=295.62,129.73");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=360.81,56.11");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=279.01,36.94");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=328.80,94.23");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=296.23,165.29");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=248.13,203.00");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=216.88,231.95");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=269.36,185.98");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=313.42,200.32");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=295.35,286.54");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=281.30,361.20");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=361.43,363.49");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=350.57,458.67");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=328.17,449.75");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=262.09,482.80");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=293.93,503.52");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=233.93,554.80");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=205.44,517.84");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=77.09,200.77");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=229.36,272.91");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=50.83,178.14");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=125.14,244.06");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=183.24,260.39");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=236.71,171.64");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=315.62,276.04");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=257.30,167.62");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=428.71,13.29");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=336.19,7.77");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=333.44,32.51");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=285.78,167.47");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=222.63,262.37");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=268.71,287.49");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=287.92,153.45");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=320.68,183.91");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=300.84,309.20");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=298.77,348.57");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=423.64,334.89");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=301.66,389.27");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=307.96,411.76");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=182.82,430.30");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=295.89,516.44");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=245.26,604.32");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=260.02,536.08");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=67.66,177.14");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=88.50,253.00");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=82.80,160.12");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=155.88,233.29");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=152.47,201.90");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=282.69,199.24");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=219.38,195.36");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=306.95,160.21");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=277.13,84.68");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=284.96,95.55");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=368.02,157.10");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=301.81,94.65");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=301.02,273.77");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=218.21,244.20");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=190.09,213.98");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=343.20,233.56");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=365.18,314.55");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=281.45,341.64");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=452.28,383.57");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=339.11,473.13");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=395.97,505.74");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=189.71,491.26");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=381.86,484.41");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=235.14,517.72");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=202.92,498.26");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=91.05,177.03");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=156.39,348.45");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=113.16,330.72");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=177.34,233.70");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=201.22,276.09");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=199.56,223.80");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=265.28,211.98");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=259.16,113.18");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=408.86,22.35");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=306.06,55.13");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=288.92,120.32");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=238.33,105.88");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=225.54,286.15");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=210.01,201.39");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=347.10,172.12");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=355.10,252.34");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=381.60,253.25");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=372.18,402.46");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=314.49,326.53");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=379.21,526.71");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=301.52,458.50");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=275.99,483.56");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=318.61,528.36");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=218.06,558.59");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=204.50,553.75");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=109.70,227.72");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=161.67,325.33");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=158.09,279.30");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=258.24,312.24");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=285.00,259.06");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=201.60,174.65");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=290.85,219.13");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=277.11,157.76");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=339.59,79.07");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=236.88,54.08");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=335.68,115.23");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=299.41,184.14");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=212.51,139.75");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=245.12,225.64");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=249.30,135.19");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=314.37,152.40");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=269.90,231.20");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=262.81,354.86");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=386.45,455.36");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=381.26,393.01");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=359.02,476.27");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=238.11,499.74");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=255.16,519.55");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=187.77,561.85");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=131.10,532.18");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=104.29,155.42");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=176.72,279.15");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=139.93,184.34");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=123.43,298.20");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=232.82,234.66");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=177.55,153.35");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=235.49,284.89");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=301.51,120.44");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=400.25,40.49");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=354.23,79.51");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=423.98,105.21");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=337.01,171.52");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=195.10,254.08");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=205.81,233.77");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=288.17,183.30");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=357.54,238.96");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=375.87,301.03");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=249.77,429.06");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=386.91,321.73");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=327.62,499.24");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=299.46,362.37");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=221.27,545.55");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=279.37,524.16");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=243.83,552.19");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=114.72,521.41");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=59.13,229.51");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=148.92,212.01");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=102.71,278.86");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=135.80,322.83");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=125.86,266.55");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=226.69,156.59");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=175.93,207.53");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=294.28,142.01");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=325.14,11.19");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=360.00,36.88");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=350.39,42.52");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=273.38,107.83");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=207.90,263.36");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=172.29,299.23");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=315.87,230.52");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=337.25,185.91");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=283.70,373.22");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=212.06,348.45");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=368.05,283.26");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=365.15,459.79");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=329.94,467.61");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=187.76,474.45");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=343.35,553.94");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=247.44,537.96");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=247.54,449.37");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=93.19,227.34");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=114.33,244.01");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=97.94,314.06");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=184.98,174.99");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=131.55,231.78");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=198.60,204.24");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=224.22,313.79");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=216.40,151.02");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=301.64,14.22");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=204.13,60.96");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=344.48,1.49");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=348.80,144.03");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=307.94,247.21");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=213.77,212.40");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=275.06,207.35");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=335.33,248.23");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=295.96,241.87");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=254.13,296.85");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=367.37,342.00");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=318.64,384.14");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=242.81,485.17");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=226.12,420.80");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=283.55,495.46");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=277.25,508.83");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=215.40,516.07");
    }

}

