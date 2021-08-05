
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn8_0
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
        @display("p=138.58,192.19");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=78.39,204.53");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=128.35,178.63");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=187.87,254.16");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=152.54,169.14");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=173.68,179.52");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=255.59,150.36");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=249.40,65.06");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=247.10,211.02");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=225.31,234.15");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=246.24,240.56");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=258.90,255.98");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=290.80,339.90");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=305.16,244.18");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=284.91,242.77");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=326.82,163.52");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=304.61,180.22");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=331.32,219.02");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=323.11,247.37");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=412.82,271.30");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=362.96,191.79");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=350.82,181.91");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=371.33,129.39");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=389.72,95.55");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=136.10,113.51");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=126.17,244.80");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=88.97,204.08");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=126.12,136.41");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=215.26,336.42");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=131.06,226.97");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=120.58,218.52");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=168.55,103.85");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=316.18,136.68");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=321.70,178.75");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=157.50,214.95");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=242.77,253.75");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=273.71,299.15");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=341.06,393.07");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=279.11,193.38");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=294.20,232.74");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=332.27,122.40");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=283.50,104.27");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=394.43,179.23");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=304.36,341.50");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=382.35,254.13");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=331.39,254.54");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=300.16,142.82");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=377.73,151.08");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=308.90,89.04");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=87.62,93.84");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=68.72,261.09");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=84.28,215.06");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=149.01,141.67");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=175.37,216.29");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=165.67,128.34");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=206.53,132.32");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=226.84,199.53");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=181.70,79.92");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=290.46,193.22");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=227.93,246.73");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=211.51,220.92");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=239.76,285.08");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=219.15,301.46");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=249.58,320.22");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=210.22,239.18");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=367.09,244.25");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=346.60,143.50");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=410.37,199.85");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=274.34,279.13");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=424.59,334.94");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=274.03,224.14");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=355.96,172.80");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=427.67,140.71");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=390.58,165.02");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=47.06,75.98");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=134.89,166.40");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=46.32,142.77");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=114.32,266.47");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=181.18,319.68");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=200.27,203.43");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=140.20,221.78");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=182.15,190.37");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=242.32,98.23");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=262.35,203.25");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=185.24,171.97");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=184.45,224.01");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=186.77,205.70");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=349.31,399.31");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=297.84,255.79");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=317.75,235.69");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=336.20,177.08");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=377.51,243.41");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=320.17,209.26");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=285.36,159.40");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=354.77,290.23");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=360.41,113.57");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=344.64,277.08");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=284.84,140.55");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=324.51,28.38");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=41.14,162.17");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=82.07,146.41");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=30.60,220.99");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=159.97,193.52");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=259.22,286.33");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=190.76,152.03");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=163.00,139.87");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=255.89,234.39");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=229.73,43.12");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=276.79,165.11");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=284.00,203.48");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=217.22,195.00");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=325.45,323.76");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=205.13,322.70");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=367.34,182.35");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=364.59,233.89");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=372.96,194.32");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=258.42,213.91");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=403.21,171.91");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=343.67,267.03");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=425.46,186.32");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=354.54,278.53");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=399.91,223.89");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=291.91,75.17");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=485.42,91.37");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=100.16,34.29");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=98.66,224.42");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=81.53,275.02");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=101.32,194.74");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=193.43,317.58");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=140.72,129.96");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=184.06,143.44");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=333.72,95.62");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=201.64,44.85");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=305.18,203.43");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=207.81,260.89");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=232.62,276.86");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=231.83,322.85");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=277.19,344.37");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=241.68,231.59");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=285.98,180.56");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=283.54,232.08");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=368.77,160.26");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=357.15,251.54");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=378.41,222.27");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=425.96,295.04");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=387.93,191.67");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=378.28,114.66");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=345.94,47.70");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=359.57,83.03");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=108.80,108.91");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=76.60,244.63");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=103.86,249.72");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=77.13,187.27");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=231.00,210.97");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=116.95,170.10");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=151.63,179.23");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=339.41,160.46");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=221.15,149.43");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=267.93,183.18");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=135.41,263.09");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=334.40,242.56");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=261.24,271.40");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=247.08,414.18");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=290.62,266.81");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=213.47,279.94");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=263.41,123.86");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=291.33,169.46");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=308.27,217.04");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=312.00,172.91");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=414.08,299.44");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=400.12,209.02");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=272.64,147.24");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=370.69,99.54");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=446.29,112.78");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=76.77,103.09");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=105.79,280.98");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=44.34,206.24");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=161.98,163.96");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=162.95,249.28");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=207.46,146.71");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=158.03,150.97");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=257.51,132.47");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=237.86,5.72");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=331.01,188.43");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=278.37,269.51");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=257.04,246.14");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=252.34,302.13");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=348.10,385.76");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=350.86,227.79");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=264.49,161.84");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=242.59,178.70");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=338.18,135.97");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=352.94,195.26");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=370.75,171.67");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=387.75,275.90");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=309.77,123.76");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=347.60,92.60");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=440.19,65.01");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=364.90,74.49");
    }

}

