
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn4-5
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
        @display("p=129.00,59.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=133.39,85.27");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=229.60,84.47");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=186.81,126.44");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=147.14,84.26");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=194.19,83.27");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=109.01,66.64");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=83.78,86.07");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=177.10,91.11");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=172.76,54.76");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=260.18,100.86");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=233.37,125.59");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=159.83,23.59");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=207.89,72.24");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=301.05,72.12");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=278.66,137.17");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=308.47,126.03");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=315.78,143.00");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=334.37,154.66");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=324.13,135.07");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=338.04,206.87");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=436.63,214.63");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=482.51,301.36");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=429.94,249.04");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=486.95,197.32");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=494.72,181.93");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=464.16,185.10");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=490.70,172.31");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=503.26,167.27");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=418.00,216.40");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=381.02,279.13");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=365.08,282.43");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=353.06,244.68");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=445.07,247.82");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=451.74,162.35");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=513.04,198.76");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=510.50,188.13");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=376.36,145.29");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=392.47,192.96");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=401.59,216.28");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=336.72,239.98");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=455.46,246.47");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=443.90,149.89");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=484.80,138.24");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=541.19,151.78");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=508.95,102.02");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=459.26,143.44");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=418.22,94.88");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=349.18,78.74");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=362.82,45.73");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=183.58,65.75");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=139.73,172.72");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=222.03,150.93");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=173.50,199.99");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=123.76,108.59");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=122.15,32.01");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=125.07,72.47");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=72.98,70.06");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=85.52,76.21");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=101.29,33.24");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=353.58,90.62");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=276.96,170.69");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=135.29,117.73");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=181.95,46.71");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=349.29,152.41");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=298.28,132.94");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=365.51,90.87");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=319.79,104.09");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=402.46,158.69");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=339.28,117.47");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=344.80,230.63");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=413.63,244.62");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=543.35,369.27");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=461.86,208.67");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=458.10,126.01");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=558.18,140.70");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=494.66,210.76");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=515.06,154.44");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=444.01,127.01");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=436.07,156.33");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=300.20,297.07");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=421.54,230.91");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=389.49,227.69");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=353.90,278.17");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=366.54,113.60");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=604.51,226.33");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=507.40,208.56");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=409.86,171.72");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=303.74,235.14");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=467.46,168.12");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=407.55,286.27");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=493.43,257.59");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=425.54,125.38");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=470.95,117.66");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=549.83,75.89");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=538.44,42.49");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=383.57,99.38");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=491.76,91.75");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=332.34,2.98");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=458.10,42.24");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=117.15,8.91");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=151.80,118.43");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=275.42,154.40");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=238.46,53.02");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=158.26,175.84");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=195.45,29.97");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=77.53,2.97");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=18.70,100.05");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=202.00,173.85");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=232.83,42.05");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=229.06,164.87");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=214.37,116.29");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=247.14,7.85");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=198.41,65.22");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=273.28,39.02");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=200.68,93.46");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=384.62,169.27");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=244.59,154.61");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=351.91,162.45");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=299.84,165.84");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=275.50,199.22");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=511.74,273.61");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=468.76,313.46");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=491.30,284.33");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=553.66,127.18");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=549.22,166.29");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=472.40,250.09");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=421.35,201.70");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=484.56,231.05");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=325.94,249.26");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=378.27,314.55");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=331.47,294.67");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=316.09,227.04");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=454.60,309.40");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=424.32,171.30");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=572.46,130.70");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=451.83,191.85");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=433.03,202.38");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=363.87,139.86");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=386.81,239.66");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=281.68,284.20");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=466.57,282.64");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=448.54,210.97");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=479.03,179.95");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=472.54,100.69");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=434.96,38.40");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=487.31,103.01");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=415.53,113.87");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=331.33,58.08");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=402.39,76.60");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=141.67,49.68");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=178.31,0.65");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=223.14,101.15");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=247.84,165.61");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=110.24,168.35");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=219.17,176.27");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=173.91,71.19");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=66.61,123.14");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=182.27,14.70");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=159.91,38.38");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=247.35,102.42");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=208.82,157.81");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=142.69,24.54");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=235.17,72.34");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=313.54,37.22");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=290.88,155.58");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=254.37,111.53");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=325.78,174.05");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=375.14,125.45");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=362.39,194.18");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=302.83,247.39");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=386.64,181.51");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=553.81,300.96");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=351.30,261.63");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=440.71,112.67");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=523.65,182.73");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=479.13,86.93");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=501.71,200.08");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=446.58,172.13");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=438.68,281.42");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=428.69,277.30");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=436.55,257.67");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=374.51,238.29");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=468.20,326.88");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=409.01,142.65");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=494.66,147.80");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=527.89,282.39");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=359.07,100.64");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=393.70,149.24");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=424.40,185.80");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=368.23,250.20");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=426.77,294.65");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=409.80,85.42");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=439.27,137.57");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=497.03,72.11");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=492.56,33.92");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=453.57,102.96");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=373.91,20.52");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=317.77,52.32");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=329.48,80.72");
    }

}

