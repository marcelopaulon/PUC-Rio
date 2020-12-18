
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn8-0
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
        @display("p=245.00,315.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=266.49,375.20");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=257.06,361.08");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=271.96,391.48");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=290.42,309.30");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=334.08,278.28");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=336.58,232.68");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=361.93,191.92");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=343.17,188.04");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=282.47,247.48");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=289.06,224.05");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=300.72,222.94");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=246.28,173.11");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=218.25,213.02");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=170.72,299.90");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=203.40,342.33");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=183.31,317.61");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=180.19,288.26");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=205.83,271.03");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=257.04,322.83");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=266.17,242.88");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=220.35,271.22");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=136.22,325.28");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=158.41,418.73");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=118.23,508.37");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=167.80,316.43");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=213.54,367.04");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=219.28,320.13");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=254.51,388.82");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=363.91,288.77");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=383.38,297.67");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=412.11,169.03");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=344.69,101.87");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=356.83,228.54");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=189.48,283.48");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=375.18,264.30");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=210.76,242.55");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=259.98,123.31");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=193.37,196.40");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=246.32,300.25");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=242.84,371.78");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=241.37,391.50");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=129.62,244.74");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=167.57,249.51");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=256.39,339.73");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=348.61,285.66");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=220.12,291.06");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=158.51,283.96");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=182.43,439.58");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=116.29,523.28");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=207.57,292.73");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=322.80,343.60");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=265.80,417.41");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=290.94,424.12");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=322.26,300.04");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=311.21,251.08");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=379.13,241.38");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=326.72,198.58");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=326.31,179.24");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=240.29,199.97");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=325.20,225.09");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=299.26,235.85");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=320.22,111.74");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=211.55,188.07");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=149.51,268.10");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=156.17,380.03");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=179.32,379.89");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=156.50,335.42");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=201.63,259.30");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=306.24,329.50");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=287.95,209.50");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=187.00,304.56");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=126.52,285.66");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=102.38,347.78");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=187.29,526.60");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=315.88,274.92");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=293.22,338.71");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=262.07,350.03");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=268.54,308.58");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=360.72,260.95");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=396.30,254.29");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=390.28,271.84");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=429.85,179.99");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=315.42,207.34");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=314.68,155.10");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=257.49,189.87");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=249.46,263.65");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=307.13,201.28");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=309.74,180.47");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=110.86,371.79");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=177.12,368.13");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=205.71,330.53");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=117.05,227.16");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=193.05,270.80");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=235.52,300.92");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=278.85,306.37");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=274.88,277.92");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=179.17,267.68");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=170.03,446.83");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=81.12,539.04");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=201.61,313.06");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=193.87,353.32");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=290.34,399.76");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=304.08,420.87");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=245.55,354.27");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=310.87,299.28");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=391.73,231.96");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=360.88,153.85");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=338.52,172.81");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=253.80,247.09");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=245.75,273.63");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=234.21,224.98");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=243.59,98.55");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=316.27,232.45");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=234.60,351.62");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=172.09,430.97");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=129.94,397.50");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=270.05,288.72");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=261.94,211.37");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=290.76,414.05");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=241.84,217.15");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=224.69,193.95");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=189.57,337.21");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=69.64,400.19");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=46.61,507.13");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=206.16,233.20");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=268.86,364.84");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=217.86,301.89");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=232.45,457.47");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=222.39,238.97");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=333.23,299.82");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=346.00,253.20");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=323.12,260.75");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=363.56,163.80");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=277.33,221.08");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=382.76,199.19");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=272.76,151.45");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=220.93,258.46");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=216.78,159.91");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=156.96,323.88");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=164.60,390.73");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=172.76,337.59");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=128.85,266.10");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=190.86,325.62");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=315.02,350.27");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=317.18,316.65");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=229.73,310.64");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=100.32,312.74");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=85.64,418.48");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=148.94,522.38");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=207.50,354.39");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=247.89,466.13");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=302.07,394.02");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=358.53,372.78");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=338.64,388.99");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=342.97,222.24");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=409.09,231.35");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=299.42,179.53");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=334.63,162.97");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=199.75,245.77");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=274.14,233.42");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=316.62,219.22");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=160.49,187.98");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=172.37,197.92");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=161.64,363.12");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=236.11,332.75");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=93.90,338.77");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=185.50,222.23");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=176.01,182.68");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=354.96,322.65");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=210.41,253.87");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=256.18,271.55");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=83.25,317.48");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=95.72,376.56");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=154.30,438.53");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=242.08,410.07");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=332.45,363.42");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=249.11,421.94");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=227.76,377.31");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=254.94,224.18");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=353.38,350.71");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=271.70,264.01");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=350.13,172.22");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=351.13,211.24");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=284.38,324.36");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=285.06,235.06");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=295.52,197.68");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=298.18,160.80");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=262.24,154.96");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=190.67,295.19");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=138.05,414.91");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=234.80,260.13");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=144.09,237.39");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=300.14,265.49");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=161.43,346.47");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=265.22,253.37");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=273.63,195.63");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=155.05,258.54");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=201.72,400.96");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=120.95,456.65");
    }

}

