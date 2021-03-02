
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn8_1
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
        @display("p=149.25,98.37");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=210.22,104.92");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=197.34,111.93");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=185.32,182.87");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=184.76,201.65");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=213.18,235.32");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=218.33,212.43");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=265.90,167.27");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=298.54,174.00");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=355.01,256.15");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=410.92,269.92");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=436.86,298.25");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=418.28,354.86");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=415.88,289.49");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=406.65,302.92");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=386.39,285.17");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=388.83,373.48");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=351.61,293.54");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=353.36,342.32");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=337.25,277.21");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=399.36,213.11");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=419.96,194.10");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=427.32,220.71");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=417.06,166.94");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=114.64,115.30");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=153.62,85.02");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=226.44,96.55");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=205.50,121.46");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=272.83,181.58");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=190.07,135.36");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=198.24,189.53");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=191.01,210.38");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=318.68,207.22");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=345.38,158.68");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=286.14,225.47");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=452.97,236.93");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=393.32,382.93");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=398.71,409.75");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=420.42,322.99");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=443.68,221.52");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=357.32,194.07");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=385.10,414.86");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=351.12,203.06");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=407.78,391.78");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=362.81,266.16");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=395.13,269.13");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=354.73,166.88");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=441.57,205.64");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=390.05,108.81");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=86.04,126.81");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=142.27,84.75");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=185.52,121.00");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=229.37,47.39");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=217.58,249.09");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=163.15,221.72");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=277.82,271.13");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=257.21,233.10");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=249.20,253.10");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=226.98,109.30");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=320.66,238.72");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=405.44,233.48");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=469.82,212.85");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=471.35,311.86");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=461.41,282.65");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=438.96,252.82");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=447.65,272.49");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=401.18,359.74");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=297.93,269.43");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=327.59,336.76");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=361.52,312.02");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=366.97,142.68");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=411.07,135.54");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=493.41,233.98");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=389.37,121.93");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=119.52,181.17");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=219.24,88.17");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=179.70,95.85");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=255.48,31.20");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=167.29,145.86");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=169.99,201.63");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=239.85,217.40");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=265.35,157.07");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=261.95,179.35");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=387.02,155.77");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=419.72,278.06");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=423.08,253.52");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=404.27,348.73");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=402.56,371.65");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=434.41,329.87");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=375.91,228.10");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=418.58,300.07");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=442.18,348.96");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=306.48,294.09");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=351.34,282.23");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=310.34,217.34");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=467.66,144.41");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=450.10,179.98");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=440.02,177.55");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=454.30,210.96");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=155.30,17.82");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=174.82,51.91");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=144.72,33.35");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=208.18,72.79");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=201.04,279.01");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=214.00,127.66");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=216.24,326.42");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=268.18,260.99");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=270.83,135.34");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=287.85,118.15");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=260.57,270.72");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=343.66,262.90");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=489.11,252.43");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=395.04,433.94");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=402.45,312.70");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=495.51,288.58");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=382.60,255.95");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=296.56,410.00");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=291.68,330.14");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=368.46,335.14");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=366.66,203.98");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=462.39,179.39");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=443.01,189.13");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=467.53,229.68");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=390.79,139.00");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=8.47,99.57");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=143.82,73.73");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=222.91,141.11");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=161.58,71.68");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=235.47,155.45");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=148.91,208.56");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=194.95,230.14");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=206.04,258.53");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=296.07,210.93");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=292.18,156.25");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=402.47,281.71");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=491.03,321.00");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=421.75,236.19");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=517.60,349.77");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=467.65,326.43");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=386.25,344.30");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=387.22,306.21");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=314.00,410.97");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=352.76,305.89");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=319.67,302.28");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=345.27,319.95");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=315.71,175.26");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=377.36,208.53");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=395.40,232.95");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=402.53,200.12");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=121.94,90.51");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=142.03,150.60");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=199.36,92.62");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=171.20,135.46");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=170.68,167.18");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=139.07,241.96");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=251.89,200.01");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=158.42,235.58");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=243.50,186.93");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=238.06,124.30");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=335.89,243.08");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=400.78,334.88");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=403.71,323.81");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=392.24,395.52");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=377.92,351.95");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=471.77,368.32");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=441.21,239.38");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=370.44,453.42");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=337.77,312.30");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=370.80,435.26");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=318.81,282.95");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=416.15,203.46");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=401.57,112.44");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=431.62,186.69");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=494.36,129.12");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=71.04,124.16");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=98.33,28.38");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=241.01,94.69");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=217.50,152.78");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=158.21,196.25");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=274.06,199.43");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=220.30,223.14");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=140.73,217.68");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=310.33,247.48");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=234.56,194.66");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=333.41,256.52");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=383.23,331.69");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=444.36,314.16");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=515.05,337.44");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=384.87,216.59");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=432.37,364.59");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=361.98,242.72");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=434.12,377.21");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=377.38,295.97");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=364.94,419.87");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=344.30,335.61");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=418.50,156.50");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=495.15,172.90");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=355.73,233.04");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=390.60,178.96");
    }

}

